# cronTutorial
example cron usage to go along with the [cron presentation](https://slides.com/jameskent/cron)


## Story
You are in charge of backing up dirA into dirB (presumably on another drive and not just in an adjacent folder).
You know [rsync](https://en.wikipedia.org/wiki/Rsync) is the utility you want to use to back up dirA, but you don't want to keep running the same command over and over again (what will you do when you are on vacation?).
Additionally, sometimes people write in dirB when they shouldn't, so we want to delete any files that are in dirB, but are not in dirA.
Luckily, you've heard about cron and how it can automate your job for you, so you decide to take a stab at it.

### example crontab entry
In order to make a cron job, you must type `crontab -e` in the terminal.
This will open your crontab with your default text editor (most likely vim).

`* * * * * /Users/jdkent/cronTutorial/cron_rsync.sh`

_Note_: In order to change your default text editor to something more simple (and less scary), use nano instead.
You can do this by setting your `EDITOR` environment variable in your `.bash_profile`.
You would do this by opening your `.bash_profile` (e.g. `nano ~/.bash_profile`) and typing `export EDITOR="nano"` at the bottom of the file.

For added information, you can set a `MAILTO` variable at the top of your crontab, so cron will email you the output of the job script. (e.g. `MAILTO=james-kent@uiowa.edu`).
With the email, you can keep track of whether the cron job was successful or not (however, probably not very informative if the job is running every minute)
