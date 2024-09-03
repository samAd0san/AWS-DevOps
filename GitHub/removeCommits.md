### Github commands to discard the commit and stages

- ```git reset --soft HEAD~1```
<b>Purpose:</b> Discards the most recent commit but keeps your changes staged.<br>
<b>Effect:</b> The commit is removed from the history, but your changes remain in the working directory and are staged for the next commit.<br>

- ```git reset --hard HEAD~1```
<b>Purpose:</b> Discards the most recent commit and all associated changes.<br>
<b>Effect:</b> The commit and all changes made in that commit are removed from both the working directory and the history. Your working directory is reset to the state of the commit before the one you reset.<br>
<b>NOTE -></b> If we wrote HEAD~2 then it'll discard two commits

- ```git checkout .```
<b>Purpose:</b> Discards all local changes in your working directory.<br>
<b>Effect:</b> Reverts all files in the current directory to their state in the last commit, discarding any changes that were made but not yet staged or committed.<br>