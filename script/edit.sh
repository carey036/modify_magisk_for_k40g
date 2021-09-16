sed -i '/# Sign chromeos boot/ i ui_print "- rebuild for k40g酷安@响當當"\n.\/magiskboot hexpatch new-boot.img "0300000000617662746F6F6C20" "0000000000617662746F6F6C20"' ./scripts/boot_patch.sh
sed -i 's/主页/主页(k40g n10p)/' ./app/src/main/res/values-zh-rCN/strings.xml
wget https://cdn.jsdelivr.net/gh/carey036/modify_magisk_for_k40g/script/magisk.jks
sed -i '/keyStore/d' config.prop.sample
sed -i '/keyStorePass/d' config.prop.sample
sed -i '/keyPass/d' config.prop.sample
sed -i '/keyAlias/d' config.prop.sample
sed -i '/outdir/d' config.prop.sample
sed -i '/version/d' config.prop.sample
echo "响當當`git log -1 --format='%h'`" > /opt/MagiskVersion.prop
echo "version=响當當`git log -1 --format='%h'`" >> config.prop.sample
echo "outdir=out" >> config.prop.sample
echo "keyStore=./magisk.jks" >> config.prop.sample
echo "keyStorePass=magisk" >> config.prop.sample
echo "keyAlias=xingsuo" >> config.prop.sample
echo "keyPass=magisk" >> config.prop.sample
cat config.prop.sample > config.prop
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
#try to add channel
sed -i "s/const val STABLE_CHANNEL = 0/const val XS = 5\nconst val STABLE_CHANNEL = 0" app/src/main/java/com/topjohnwu/magisk/core/Config.kt
sed -i "s/const val CUSTOM_CHANNEL = \"custom_channel\"/const val XS = \"k40\"const val CUSTOM_CHANNEL = \"custom_channel\"/" app/src/main/java/com/topjohnwu/magisk/core/Config.kt
sed -i "s/<item>Alpha<\/item>/<item>Alpha<\/item>\n<item>XS<\/item>/" app/src/main/res/values/arrays.xml
sed -i "s/import com.topjohnwu.magisk.core.Config.Value.CUSTOM_CHANNEL/import com.topjohnwu.magisk.core.Config.Value.XS\n            import com.topjohnwu.magisk.core.Config.Value.CUSTOM_CHANNEL/" app/src/main/java/com/topjohnwu/magisk/data/repository/NetworkService.kt
sed -i "s/CUSTOM_CHANNEL -> fetchCustomUpdate(Config.customChannelUrl)/XS -> fetchCustomUpdate(\"https:\/\/magisk.pages.dev\/alpha.json\")\nCUSTOM_CHANNEL -> fetchCustomUpdate(Config.customChannelUrl)/" app/src/main/java/com/topjohnwu/magisk/data/repository/NetworkService.kt
 