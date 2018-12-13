#!/usr/bin/env bash
sudo apt-get install -y python3-pip flac lame sox mktorrent curl libmysqlclient-dev

sudo pip3 install pipenv
pipenv install --three

sudo chmod 777 media/book_data
sudo chmod 777 media/what_image_cache
sudo chmod 777 media/qobuz_uploads

cp -i WhatManager2/settings.example.py WhatManager2/settings.py
cp -i bibliotik/settings.example.py bibliotik/settings.py
cp -i myanonamouse/settings.example.py myanonamouse/settings.py
cp -i qobuz2/settings.example.py qobuz2/settings.py
