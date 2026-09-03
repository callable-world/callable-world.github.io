#!/usr/bin/env python3
"""Выпускает installation-токен GitHub App для публикации сайта.

Секретов внутри нет: приватный ключ читается из ~/.secrets/.
Токен живёт час, на диск не пишется — печатается в stdout и используется сразу.

Зачем это вообще: пуш обычным ключом или личным токеном оставляет логин
владельца в публичной вкладке Activity. App пушет от своего имени.
"""
import json
import sys
import time
import urllib.request
from pathlib import Path

APP_ID = "4820117"
KEY_PATH = Path.home() / ".secrets" / "callable-world-app.pem"
REPO = "callable-world/callable-world.github.io"

API = "https://api.github.com"
UA = "callable-world-publisher"


def _get(url, token, bearer="Bearer", method="GET"):
    req = urllib.request.Request(url, method=method)
    req.add_header("Authorization", f"{bearer} {token}")
    req.add_header("Accept", "application/vnd.github+json")
    req.add_header("User-Agent", UA)
    with urllib.request.urlopen(req, timeout=30) as r:
        return json.load(r)


def main():
    if not KEY_PATH.exists():
        sys.exit(f"нет приватного ключа: {KEY_PATH}")

    try:
        import jwt
    except ImportError:
        sys.exit("нет PyJWT: pip install pyjwt cryptography")

    now = int(time.time())
    assertion = jwt.encode(
        # iat со сдвигом назад: часы машины могут немного спешить относительно GitHub
        {"iat": now - 60, "exp": now + 540, "iss": APP_ID},
        KEY_PATH.read_text(),
        algorithm="RS256",
    )

    installations = _get(f"{API}/app/installations", assertion)
    if not installations:
        sys.exit("App никуда не установлен — поставь его на репозиторий")

    for inst in installations:
        account = (inst.get("account") or {}).get("login")
        token_url = f"{API}/app/installations/{inst['id']}/access_tokens"
        token = _get(token_url, assertion, method="POST")["token"]
        repos = _get(f"{API}/installation/repositories", token, bearer="token")
        names = [r["full_name"] for r in repos.get("repositories", [])]
        if REPO in names:
            print(token)
            return
        print(f"установка у {account} не видит {REPO}: {names}", file=sys.stderr)

    sys.exit(f"ни одна установка App не даёт доступа к {REPO}")


if __name__ == "__main__":
    main()
