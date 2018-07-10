#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10383360 19a1c466fa2596bdfd5b1e1317d54d9b5a7ce803 7866368 c04f8082bc6dd9a4fa1d15c5e9d2bef1070a82b7
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:10383360:19a1c466fa2596bdfd5b1e1317d54d9b5a7ce803; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:7866368:c04f8082bc6dd9a4fa1d15c5e9d2bef1070a82b7 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 19a1c466fa2596bdfd5b1e1317d54d9b5a7ce803 10383360 c04f8082bc6dd9a4fa1d15c5e9d2bef1070a82b7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
