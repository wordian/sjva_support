#!/bin/sh
cd $HOME
mv alpine_profile2 /root/.profile
apk update
apk add --no-cache git ffmpeg
apk add --no-cache python3 py3-pip python3-dev py3-lxml py3-sqlalchemy py3-google-api-python-client py3-pillow py3-gevent py3-gevent-websocket py3-yarl py3-aiohttp py3-pycryptodome py3-markupsafe py3-wcwidth
#py3-google-api-python-client

pip3 install flask-login flask-socketio flask-sqlalchemy pytz apscheduler markdown selenium celery redis telepot sqlitedict 
guessit plexapi

cd ~
git clone --depth 1 https://github.com/soju6jan/sjva2_src_obfuscate SJVA2

sh /root/.profile
