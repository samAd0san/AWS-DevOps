### Git Revert 
<b>git revert</b> creates a new commit that undoes the changes made by a previous commit, effectively reversing its effects. It does not remove the old commit from the history but instead adds a new commit that counters it.

- <b>git revert --edit HEAD:</b> Reverts the latest commit and opens an editor for you to modify the commit message before finalizing the revert.

- <b>git revert --no-edit HEAD:</b> Reverts the latest commit without opening an editor, using the default commit message for the revert.

Baiscally the difference is <b>--edit</b> opens an editor, where as <b>--no-edit</b> does not opens an editor.

<b>Example:</b>
```
ubuntu $ cd test/
ubuntu $ ls
testfile-01  testfile-02

ubuntu $ git log
commit 81679b2cfbfe42dd1215bd952723515171c8ac89 (HEAD -> master)
Author: John Doe <student@example.com>
Date:   Tue Sep 3 21:05:47 2024 +0000

    commit for testfile-02

commit 970bc9d761b5f56584a0dbd7c17b1daa73f39e30
Author: John Doe <student@example.com>
Date:   Tue Sep 3 21:05:47 2024 +0000

    commit for testfile-01

ubuntu $ cat testfile-01
first file

ubuntu $ cat testfile-02
second file

ubuntu $ git status
On branch master
nothing to commit, working tree clean

ubuntu $ git revert --no-edit HEAD
Removing testfile-02
[master a1ce797] Revert "commit for testfile-02"
 Date: Tue Sep 3 21:13:48 2024 +0000
 1 file changed, 1 deletion(-)
 delete mode 100644 testfile-02

ubuntu $ git log
commit a1ce7977308978c9cb1e7946bb6fd8ceda2fb00b (HEAD -> master)
Author: John Doe <student@example.com>
Date:   Tue Sep 3 21:13:48 2024 +0000

    Revert "commit for testfile-02"
    
    This reverts commit 81679b2cfbfe42dd1215bd952723515171c8ac89.

commit 81679b2cfbfe42dd1215bd952723515171c8ac89
Author: John Doe <student@example.com>
Date:   Tue Sep 3 21:05:47 2024 +0000

    commit for testfile-02

commit 970bc9d761b5f56584a0dbd7c17b1daa73f39e30
Author: John Doe <student@example.com>
Date:   Tue Sep 3 21:05:47 2024 +0000

    commit for testfile-01

ubuntu $ git diff
ubuntu $ ls
testfile-01

ubuntu $ git revert --no-edit HEAD  
[master 931715e] Revert "Revert "commit for testfile-02""
 Date: Tue Sep 3 21:15:57 2024 +0000

ubuntu $ git status    
On branch master
nothing to commit, working tree clean
ubuntu $ git revert --edit HEAD~3
Removing testfile-01
[master 82bc78e] Revert "commit for testfile-01"
 1 file changed, 1 deletion(-)
 delete mode 100644 testfile-01

ubuntu $ git log
commit 82bc78e1f4a853d7d459998d6dec403c521c3d70 (HEAD -> master)
Author: John Doe <student@example.com>
Date:   Tue Sep 3 21:16:53 2024 +0000
```