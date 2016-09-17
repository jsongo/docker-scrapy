#!/bin/bash

PORT=8600
if [ $LISTEN_PORT  ]; then
    PORT=$LISTEN_PORT
fi
sed 's/\$PORT/'$PORT'/' /scrapyd.conf > /etc/scrapyd/scrapyd.conf
scrapyd
