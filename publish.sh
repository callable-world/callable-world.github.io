#!/usr/bin/env bash
# Публикация сайта: выпускает временный токен GitHub App и пушит в main.
#
# Токен нигде не сохраняется — ни в URL remote, ни в конфиге, ни в reflog.
# Он передаётся git'у через credential helper на время одной команды.
set -euo pipefail

cd "$(dirname "$0")"

EXPECTED_ACTOR="callable-world-publisher"
REPO="callable-world/callable-world.github.io"

TOKEN="$(python3 tools/gh_token.py)"
[ -n "$TOKEN" ] || { echo "не удалось выпустить токен" >&2; exit 1; }

# shellcheck disable=SC2016
GIT_TOKEN="$TOKEN" git \
  -c credential.helper='!f() { echo username=x-access-token; echo password=$GIT_TOKEN; }; f' \
  push origin main "$@"

# Проверка не «нет ли личного логина» (тогда логин пришлось бы хранить в
# публичном репозитории), а «последний пуш сделан ботом» — утверждение
# положительное и ничего не раскрывает.
#
# Источник — страница /activity, а НЕ /events: пуши от GitHub App в ленту
# событий не попадают вообще, и /events отдаёт последний пуш человека,
# то есть выдаёт ложную тревогу на ровном месте.
echo
echo "Кем зарегистрирован последний пуш:"
sleep 3
ACTOR="$(curl -s "https://github.com/$REPO/activity" | python3 -c "
import re, sys
html = sys.stdin.read()
entries = re.findall(r'\"pushedAt\":\"([^\"]+)\".*?\"pusher\":\{\"login\":\"([^\"]+)\"', html)
print(entries[0][1] if entries else 'записей не найдено')
")"
ACTOR="${ACTOR%\[bot\]}"

if [ "$ACTOR" = "$EXPECTED_ACTOR" ]; then
  echo "  $ACTOR — верно, личность не раскрыта"
else
  echo "  ВНИМАНИЕ: $ACTOR (ожидался $EXPECTED_ACTOR)" >&2
  echo "  Пуш прошёл не от имени приложения — разобраться до следующей публикации." >&2
fi

echo "  сайт: https://callable-world.github.io"
