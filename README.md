# dev-utils

## git-outstanding-pushes.sh

```
git-outstanding-pushes.sh ~/projects
```

List all commits in all git repos which are not reflected on remote. In my crontab I have added this line, which should send me an mail each 15min if there are unpushed changes.
More parameters can be used to give extra arguments to find, e.g. exlude some folders with  git-outstanding-pushes.sh /repo/root ! \( -path '/repo/root/exclude/.git' -o -path '/repo/root/exclude2/.git' \)

```
# check for missing pushes
*/15    *       *       *       *       COMMITS=$(/Users/johannes/Sites/dev-utils/git-outstanding-pushes.sh /Users/johannes/Sites | sed -E "s/"$'\E'"\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g") && if [ $(printf "$COMMITS" | wc -c) -gt "0" ]; then display osascript -e 'notification "Missing pushes" with title "git-oustanding-pushes"' && echo $COMMITS | mail -s "Missing git pushes" johannespfeiffer@netnexus.de; fi
```


## docker-cleanup.sh
```
docker-cleanup.sh
```

Remove docker containers and images no longer in use.
