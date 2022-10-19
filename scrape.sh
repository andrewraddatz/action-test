#! /bin/sh
cd "$(dirname ""$0"")"
timestamp=$(date -u)
echo "${timestamp}" > lastrun.txt
git config user.name "Automated Update"
git config user.email "automated.tracker@crontab.com"
git add -A
git commit -m "Latest data: ${timestamp}" || exit 0
git push

