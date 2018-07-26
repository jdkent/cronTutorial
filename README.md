# cronTutorial
example cron usage to go along with the [cron presentation](https://slides.com/jameskent/cron)


## Story
You are in charge of backing up dirA into dirB (presumably on another drive and not just in an adjacent folder).
You know [rsync](https://en.wikipedia.org/wiki/Rsync) is the utility you want to use to back up dirA, but you don't want to keep running the same command over and over again (what will you do when you are on vacation?).
Additionally, sometimes people write in dirB when they shouldn't, so we want to delete any files that are in dirB, but are not in dirA.
Luckily, you've heard about cron and how it can automate your job for you, so you decide to take a stab at it.

### example crontab entry

* * * * * /home/jdkent/cronTutorial/cron_rsync.sh
