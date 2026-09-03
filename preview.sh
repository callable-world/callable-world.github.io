#!/usr/bin/env bash
# Локальный предпросмотр сайта до публикации.
#
# Открывает http://127.0.0.1:4000 и пересобирает страницу при каждом
# сохранении файла. Смысл: увидеть вёрстку до того, как её увидит интернет.
#
# Gem'ы стоят в пользовательском каталоге, root не нужен.
set -euo pipefail

cd "$(dirname "$0")"

export GEM_HOME="$HOME/.gem/ruby/3.0.0"
export PATH="$GEM_HOME/bin:$PATH"

command -v jekyll >/dev/null || {
  echo "jekyll не найден. Установить: gem install --no-document github-pages" >&2
  exit 1
}

echo "Предпросмотр: http://127.0.0.1:4000"
echo "Остановить: Ctrl+C"
echo

# --drafts показывает и черновики из _drafts/, чтобы смотреть статью
# до того, как она станет постом.
exec jekyll serve --host 127.0.0.1 --port 4000 --drafts --livereload "$@"
