# XS Verison
XS-e7c6d5df6
* 修复k40g和n10p无限重启的问题
* 使用替换方法实现恢复原厂镜像
* 替换alpha更新通道为Xs alpha（可用于升级本版本面具管理器）
# alpha更新日志

## Magisk (47265651-alpha)
- [App] 正确处理来自magiskd的数据
- [App] 支持SharedUserId
- [App] 还原boot镜像后删除备份文件
- [App] 内置当前版本更新日志
- [App] 当无法下载stub时使用本地版本
- [App] 切换到Java 8的现代时间API
- [Busybox] 取消基于未定义行为的优化
- [General] 不再自动解锁设备块
- [General] Zygisk关闭时使用MagiskHide实现隐藏
- [App] 加快deny列表加载速度
- [App] deny列表使用传统搜索菜单
- [General] 提示zygisk/riru模块自动停用情况

### 如何安装？
通过Magisk应用来安装和卸载Magisk，一般情况应直接在应用内完成，第一次安装等特殊情况应修补镜像后使用fastboot/odin工具刷入。
通过自定义Recovery不是受支持的方式。


# 上游更新日志

## Magisk (d232cba0) (23012)

- DenyList unmounts no longer require an additional IPC
- Replace module fds with memfd to prevent dumb maps name scanning
- Fix Zygisk first stage unloading
- [MagiskSU] Fix the shell if isolated mount namespace is set
- [MagiskPolicy] Load `*_compat_cil_file` from system_ext
- [MagiskInit] Support `init.real` on some Sony devices
- [MagiskBoot] Support patching out `skip_initramfs` from dtb bootargs

## Diffs to v23.0

- [General] MagiskHide is removed from Magisk
- [General] Support 64-bit only systems
- [General] Support Android 12
- [Zygisk] Introduce new feature: Zygisk
- [Zygisk] Introduce DenyList feature to revert Magisk features in user selected processes
- [MagiskBoot] Support patching 32-bit kernel zImages
- [MagiskBoot] Support boot image header v4
- [MagiskBoot] Support patching out `skip_initramfs` from dtb bootargs
- [MagiskInit] Support `/proc/bootconfig` for loading boot configurations
- [MagiskInit] Better support for some Meizu devices
- [MagiskInit] Better support for some Oppo/Realme devices
- [MagiskInit] Support `init.real` on some Sony devices
- [MagiskPolicy] Load `*_compat_cil_file` from system_ext
- [MagiskSU] Use isolated devpts if the kernel supports it
- [MagiskSU] Fix root shell if isolated mount namespace is set
- [resetprop] Deleted properties are now wiped from memory instead of just unlinking
- [App] Build a single APK for all ABIs
- [App] Switch to use standard bottom navigation bar
- [App] Downloading modules within the Magisk app is removed
