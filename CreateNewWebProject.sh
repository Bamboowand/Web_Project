#!/bin/bash

echo -n "請輸入 Project 名稱:"
read project_name

templateDir=Template/SimpleWebTemplate

# 將不是數字跟英文的排除
chars="$(echo $project_name | sed -e 's/[^[:alnum:]]//g')"

# 跟原本的名稱比對，如果不是代表為亂碼
if [ "$chars" = "$project_name" ]; then
    valid=1
else
    valid=0
fi

if [ "${valid}" == "0" ]; then
    echo "輸入亂碼，離開程序"
    exit 1
fi

mkdir $project_name
cp $templateDir/app.js $project_name/
cp -r $templateDir/public $project_name/
cp -r $templateDir/views $project_name/

cd $project_name
echo ${PWD}
npm init
npm install express nodemon ejs
cd ..
code $project_name
