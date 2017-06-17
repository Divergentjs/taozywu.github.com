---
layout:      post
title:       Changing the Git history of your repository using a script
category:    blog
description: Changing the Git history of your repository using a script
---

## windows

* Open Git Bash.
* Create a fresh, bare clone of your repository:

<pre>
git clone --bare https://github.com/user/repo.git
cd repo.git
</pre>

* Copy and paste the script, replacing the following variables based on the information you gathered:


<pre>
#!/bin/sh

git filter-branch --env-filter '
OLD_EMAIL="your-old-email@example.com"
CORRECT_NAME="Your Correct Name"
CORRECT_EMAIL="your-correct-email@example.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
</pre>

* Press Enter to run the script.
* Review the new Git history for errors.
* Push the corrected history to GitHub:

<pre>
git push --force --tags origin 'refs/heads/*'
</pre>

* Clean up the temporary clone:

<pre>
cd ..
rm -rf repo.git
</pre>

## linux/mac

follow above

