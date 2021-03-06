#alpha has solved this question
#sed -i '/# Sign chromeos boot/ i ui_print "- rebuild for k40g酷安@响當當"\n.\/magiskboot hexpatch new-boot.img "0300000000617662746F6F6C20" "0000000000617662746F6F6C20"' ./scripts/boot_patch.sh
sed -i 's/主页/主页(XS)/' ./app/src/main/res/values-zh-rCN/strings.xml
sed -i "s/Magisk 将一直保持免费且开源，向开发者捐赠以表示支持。/Magisk 将一直保持免费且开源，向开发者捐赠以表示支持。\n酷安@响當當编译日期`date +%Y-%m-%d`/" ./app/src/main/res/values-zh-rCN/strings.xml
wget https://raw.githubusercontent.com/carey036/modify_magisk_for_k40g/main/script/magisk.jks
[ -f app/src/main/res/raw/changelog.md ] && cp app/src/main/res/raw/changelog.md /opt/changelog.md
sed -i '/keyStore/d' config.prop.sample
sed -i '/keyStorePass/d' config.prop.sample
sed -i '/keyPass/d' config.prop.sample
sed -i '/keyAlias/d' config.prop.sample
sed -i '/outdir/d' config.prop.sample
sed -i '/version/d' config.prop.sample
echo "XS-`git log -1 --format='%h'`" > /opt/MagiskVersion.prop
echo "version=XS-`git log -1 --format='%h'`" >> config.prop.sample
echo "outdir=out" >> config.prop.sample
echo "keyStore=./magisk.jks" >> config.prop.sample
echo "keyStorePass=magisk" >> config.prop.sample
echo "keyAlias=xingsuo" >> config.prop.sample
echo "keyPass=magisk" >> config.prop.sample
cat config.prop.sample > config.prop

#this is for restore offical image, only for test
cat>>./app/src/main/res/raw/manager.sh<<EOF
restore_imgs() {
[ -z \$SHA1 ] && return 1
local BACKUPDIR=/data/magisk_backup_\$SHA1
[ -d \$BACKUPDIR ] || return 1

get_flags
find_boot_image

for name in dtb dtbo; do
    [ -f \$BACKUPDIR/\${name}.img.gz ] || continue
    local IMAGE=\$(find_block \$name\$SLOT)
    [ -z \$IMAGE ] && continue
    flash_image \$BACKUPDIR/\${name}.img.gz \$IMAGE
done
[ -f \$BACKUPDIR/boot.img.gz ] || return 1
rm \$BOOTIMAGE
gzip -d \$BACKUPDIR/boot.img.gz
dd if=\$BACKUPDIR/boot.img of=\$BOOTIMAGE
gzip \$BACKUPDIR/boot.img
#flash_image \$BACKUPDIR/boot.img.gz \$BOOTIMAGE && rm -rf \$BACKUPDIR
}
EOF

#replace alpha channel to XS
sed -i "s/ALPHA_CHANNEL -> fetchAlphaUpdate()/ALPHA_CHANNEL -> fetchCustomUpdate(\"https:\/\/magisk.pages.dev\/alpha.json\")/" app/src/main/java/com/topjohnwu/magisk/data/repository/NetworkService.kt
sed -i "s/<item>Alpha/<item>XS alpha/" app/src/main/res/values/arrays.xml

#replace canary channel to XS
#not needed and not work
#sed -i "s/CANARY_CHANNEL -> fetchCanaryUpdate()/CANARY_CHANNEL -> fetchCustomUpdate(\"https:\/\/magisk.pages.dev\/canary.json\")/" app/src/main/java/com/topjohnwu/magisk/data/repository/NetworkService.kt
#sed -i "s/<item>Canary/<item>XS Canary/" app/src/main/res/values/arrays.xml