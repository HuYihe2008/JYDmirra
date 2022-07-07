#!/bin/sh
echo '====^_^===='
echo '欢迎使用JamYido-Mirra程序'

if [ ! -d '/usr/src/app/dist']; then
    npm run build
fi

echo '程序初始化完成'

npm run serve