#!/bin/bash

echo -e "\033[5m\033[32m\033[44m\033[1mCoucou les correcteurs\033[1m\033[0m \n"
git clone https://github.com/hugomd/parrot.live.git&>/dev/null
echo -e "\033[5m\033[32m\033[44m\033[1mD'abord le bundle install\033[1m\033[0m \033[0m\033[0m \n"
bundle install --without production
echo -e "\033[5m\033[32m\033[44m\033[1mLe programme va lancer le migrate\033[1m\033[0m \033[0m\033[m \n"
rails db:migrate
echo -e "\033[5m\033[32m\033[44m\033[1mMaintenant le seed va se lancer\033[1m\033[0m \033[0m\033[0m \n"
rails db:seed
echo -e "\033[5m\033[32m\033[44m\033[1mPuis le serveur pour avoir les photos de chatons\033[1m\033[0m\033[0m\033[0m \n"
rails s
curl parrot.live

