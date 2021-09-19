# Xs version
XS-af5d2730
# alpha更新日志

## Magisk (63cfe7b4-alpha)
- [General] 基于 63cfe7b4 ，已经合并到上游的内容不再列出
- [App] 正确处理来自magiskd的任何数据
- [App] 支持SharedUserId
- [App] 还原boot镜像后删除备份文件
- [App] 内置当前版本更新日志
- [App] 当无法下载stub时使用本地版本，现在可以完全离线使用
- [Busybox] 修复默认shell路径
- [App] 切换到Java 8的现代时间API
- [DenyList] 处理可疑的props
- [App] 对SafetyNet扩展更新，更新snet.jar版本到18
- [App] 修复授权弹窗的计时器可能没有初始化
- [Sepolicy] 内置LSPosed的sepolicy

### 如何在Recovery使用APK文件？
一般情况建议通过Magisk应用来安装和卸载Magisk。
如果坚持使用自定义Recovery，将Magisk APK文件的`.apk`扩展名改为`.zip`即可刷入。
要卸载Magisk，zip文件名需要包含`uninstall`，例如将apk文件重命名为`uninstall.zip`。文件名不包含`uninstall`则会进行安装操作。

# 上游更新日志

### 从 23.0 到 63cfe7b4
- [General] 支持纯64位设备
- [General] 支持 Android 12 模拟器
- [Zygisk] 代码注入框架
- [General] 删除MagiskHide
- [General] 支持模拟器加载模块
- [MagiskBoot] 支持zImage格式
- [MagiskBoot] 添加zopfli编码器
- [MagiskInit] 支持bootconfig
- [App] 修复安装功能现在会检查/data/adb/magisk/下脚本未更新的情况
- [MagiskInit] 支持部分魅族设备
- [MagiskSU] 如果内核支持，使用隔离的devpts
- [MagiskSU] 修复pts配置代码，现在不再需要额外的sepolicy规则
- [MagiskBoot] 支持v4启动镜像头格式
- [MagiskInit] 支持部分一加、欧泊设备的oplus.fstab
- [App] 待重启更新模块，不允许标记为待删除状态
- [App] 删除在线仓库
- [App] 添加挂载信息到保存的日志文件
- [App] 适配Android 12 API级别
- [App] 隐藏/还原 app 时显示正在运行中的等待弹窗
- [Stub] 开源混淆功能
- [Script] 检查并显示模块的sepolicy规则文件夹
- [App] 弹窗时隐藏屏幕叠加层，需要Android 12+
- [App] 删除浮动底栏，改为一般的底部操作栏
- [General] 支持编译缓存
- [General] 添加拒绝列表功能
- [App] 删除DoH
- [App] 删除SafetyNet
- [App] 允许未安装Magisk时打开日志页面
- [Zygisk] 修复问题，app增加状态显示
# XS Verison
XS-986cbb7a
* 修复k40g和n10p无限重启的问题
* 使用替换方法实现恢复原厂镜像
* 替换alpha更新通道为Xs alpha（可用于升级本版本面具管理器）
# alpha更新日志

## Magisk (46e8f077-alpha)
- [General] 基于 46e8f077 ，已经合并到上游的内容不再列出
- [App] 正确处理来自magiskd的任何数据
- [App] 支持SharedUserId
- [App] 还原boot镜像后删除备份文件
- [App] 内置当前版本更新日志
- [App] 当无法下载stub时使用本地版本，现在可以完全离线使用
- [Busybox] 修复默认shell路径
- [App] 切换到Java 8的现代时间API
- [DenyList] 处理可疑的props
- [App] 对SafetyNet扩展更新，更新snet.jar版本到18
- [Sepolicy] 内置LSPosed的sepolicy

### 如何在Recovery使用APK文件？
一般情况建议通过Magisk应用来安装和卸载Magisk。
如果坚持使用自定义Recovery，将Magisk APK文件的`.apk`扩展名改为`.zip`即可刷入。
要卸载Magisk，zip文件名需要包含`uninstall`，例如将apk文件重命名为`uninstall.zip`。文件名不包含`uninstall`则会进行安装操作。

# 上游更新日志

### 从 23.0 到 46e8f077
- [General] 支持纯64位设备
- [General] 支持 Android 12 模拟器
- [Zygisk] 代码注入框架
- [General] 删除MagiskHide
- [General] 支持模拟器加载模块
- [MagiskBoot] 支持zImage格式
- [MagiskBoot] 添加zopfli编码器
- [MagiskInit] 支持bootconfig
- [App] 修复安装功能现在会检查/data/adb/magisk/下脚本未更新的情况
- [MagiskInit] 支持部分魅族设备
- [MagiskSU] 如果内核支持，使用隔离的devpts
- [MagiskSU] 修复pts配置代码，现在不再需要额外的sepolicy规则
- [MagiskBoot] 支持v4启动镜像头格式
- [MagiskInit] 支持部分一加、欧泊设备的oplus.fstab
- [App] 待重启更新模块，不允许标记为待删除状态
- [App] 删除在线仓库
- [App] 添加挂载信息到保存的日志文件
- [App] 适配Android 12 API级别
- [App] 隐藏/还原 app 时显示正在运行中的等待弹窗
- [Stub] 开源混淆功能
- [Script] 检查并显示模块的sepolicy规则文件夹
- [App] 弹窗时隐藏屏幕叠加层，需要Android 12+
- [App] 删除浮动底栏，改为一般的底部操作栏
- [General] 支持编译缓存
- [General] 添加拒绝列表功能
- [App] 删除DoH
- [App] 删除SafetyNet
- [App] 允许未安装Magisk时打开日志页面
- [App] 显示Zygisk状态，添加重启生效提醒
- [Zygisk] 修复问题
