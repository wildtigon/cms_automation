#!/bin/zsh
export zid=$(pm list packages -U | grep com.facebook.katana | awk -F ":" '{print $3}')
su -c chown -R $zid:$zid data/data/com.facebook.katana
echo $zid
