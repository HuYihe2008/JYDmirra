#!/bin/sh
echo '====^_^===='
echo '欢迎使用JamYido-Mirra程序'

echo '正在初始化nodejs'

echo '正在验证项目'

if [ ! -d '/usr/src/app/dist' ]; then
   echo '您获取的镜像可能损坏了，请联系管理员2812856215@qq.com;或提出issue：https://github.com/HuYihe2008/JYDmirra/issues'
fi

echo '程序初始化完成'
npm run serve