---
layout:     post
title:      Github为什么没有记录你的Contributions
category: blog
description: Github为什么没有记录你的Contributions
---

## 使用脚本来改变某个repo的Git历史
* Mac、Linux下打开Terminal，Windows下打开命令提示符（command prompt）

* 给你的repo创建一个全新的clone
```
git clone --bare https://github.com/user/repo.git
cd repo.git
```

* 复制粘贴脚本，并根据你的信息修改以下变量：旧的Email地址，正确的用户名，正确的邮件地址
```
#!/bin/sh
git filter-branch --env-filter '
OLD_EMAIL="旧的Email地址"
CORRECT_NAME="正确的用户名"
CORRECT_EMAIL="正确的邮件地址"
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
```
* 按 Enter键 执行脚本。

* 用git log命令看看新 Git 历史有没有错误

* 把正确历史 push 到 Github
```
git push --force --tags origin 'refs/heads/*'
```
* 删掉刚刚临时创建的 clone
```
cd ..
rm -rf repo.git
```
* 重新clone
