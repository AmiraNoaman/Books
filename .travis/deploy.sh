#!/bin/bash
set -e
git config --global push.default simple # we only want to push one branch — master
# specify the repo on the live server as a remote repo, and name it 'production'
# <user> here is the separate user you created for deploying
git remote add production ssh://amira_noaman@23.96.41.241//home/travis/build/AmiraNoaman/Books
git push production master # push our updates