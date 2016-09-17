#!/bin/bash

PORT=8600
if [ $LISTEN_PORT  ]; then
    PORT=$LISTEN_PORT
fi
sed -Ei 's/\$PORT/'$PORT'/' /etc/scrapyd/scrapyd.conf
scrapyd
