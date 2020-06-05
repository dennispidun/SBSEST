#!/bin/sh

while true; do
    inotify-hookable --exclude "[^t].$|[^e].$|[^x]$" -w . -c 'sh build.sh'
    echo "== $(date) : executed, continuing to monitor..."
done
