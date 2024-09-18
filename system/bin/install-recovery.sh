#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:11068320:6b960ec2300c3b84f4ab978453c608d3f9e5b70c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:9687968:3cd464343580c593645f981afc25e2f1cda4721b EMMC:/dev/block/platform/bootdevice/by-name/recovery 6b960ec2300c3b84f4ab978453c608d3f9e5b70c 11068320 3cd464343580c593645f981afc25e2f1cda4721b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
