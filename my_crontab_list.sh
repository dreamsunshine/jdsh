#!/bin/sh

# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecode' | xargs rm -rf

# 日常任务
node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
echo "jd_bean_home.js"
#0 */2 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
