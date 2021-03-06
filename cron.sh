#!/bin/bash

#open the directory
#打开cron目录
cd /data/www/taozywu.github.com/

#to avoid the new version changed by other users,git pull first
#避免其他用户更新了目录，先进行git pull到endIdx
git pull

#open the directory again
#再次打开目录
cd /data/www/taozywu.github.com/

#use the 'date' command to get the date, and output to the 'tmp1' file
#使用date命令获取时间，并重点向输出到文件tmp1
date > tmp1

#use the 'cat' command to merger 2 files
#使用cat 命令合并两个文件
cat tmp1 > cron.result

#add cron.sh and the result file to the git cache
#把cron.sh和result文件添加到git缓冲区
git add cron.sh
git add cron.result

#git commit the change
#提交更改
git commit -m "refresh"

#push to the github
#最后，上传到github
git push origin master
