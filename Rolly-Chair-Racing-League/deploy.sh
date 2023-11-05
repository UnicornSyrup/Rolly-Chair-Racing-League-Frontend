#!/usr/bin/env sh

# set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push -f https://github.com/UnicornSyrup/Rolly-Chair-Racing-League-Frontend.git master

# cd -