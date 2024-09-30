#!/bin/bash

# 获取重启时间(秒)
REBOOT_DATE=$(who -b | awk '{print$2}')
REBOOT_DATE=$(date -d "$REBOOT_DATE" +%s)
# 获取当前时间(秒)
CURRENT_DATE=$(date +%Y-%m-%d)
CURRENT_DATE=$(date -d "$CURRENT_DATE" +%s)
# 计算休眠时间(天)
HIBERNATE_DAYS=$(( (CURRENT_DATE - REBOOT_DATE) / 86400 ))

REBOOT_DATE=$(date -d "$(who -b | awk '{print $2}')" +%y.%m.%d)
# 显示提醒弹窗
DISPLAY=:0 /usr/bin/notify-send "重启女仆提醒您" "您上次重启在 $REBOOT_DATE，已经连续休眠 $HIBERNATE_DAYS 天了，记得经常重启" --icon=/home/young/resource/picture/maid_sd.png
