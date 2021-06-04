am force-stop com.facebook.katana &&
rm -rf com.facebook.katana && 
tar -xvzf BACKUP_FILE && 
export zid=$(awk '/^com.facebook.katana/ {print $2}' /data/system/packages.list) &&
chown -R $zid:$zid com.facebook.katana && 
restorecon -R com.facebook.katana || true   
