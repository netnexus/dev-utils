# dev-utils

## git-outstanding-pushes.sh

```
git-outstanding-pushes.sh ~/projects
```

List all commits in all git repos which are not reflected on remote. In my crontab I have added this line, which should send me an mail each 30min if there are unpushed changes.


```
# check for missing pushes
*/30    *       *       *       *       COMMITS=$(/Users/johannes/Sites/dev-utils/git-outstanding-pushes.sh /Users/johannes/Sites | sed -E "s/"$'\E'"\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g") && if [ $(echo $COMMITS | wc -c) -gt "0" ]; then echo $COMMITS | mail -s "Missing git pushes" johannespfeiffer@netnexus.de; fi
```
