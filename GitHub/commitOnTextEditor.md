### Using editor to commit files
- This will show which editor is allocated for Git.
```git config --global --list | grep editor``` <br>
```
ubuntu $ git config --global --list | grep editor
core.editor=nano // It was nano editor

ubuntu $ git config --global core.editor vi
ubuntu $ git config --global --list | grep editor
core.editor=vi // now it is vi editor
```
- now if we type ```git commit <file_name>``` it will open the code editor and there we can write the commit, and then exit according to the code editor.