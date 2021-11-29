# magisk_for_k40g_and_n10p

为k40g和n10p提供修改后的面具，不定时进行build

面具通用，k40g和n10p可以随意下载

### 说明

* 稳定版目前基于[Release Magisk v23.0 · topjohnwu/Magisk (github.com)](https://github.com/topjohnwu/Magisk/releases/tag/v23.0)进行修改

* alpha基于[vvb2060/Magisk at alpha (github.com)](https://github.com/vvb2060/Magisk/tree/alpha) 进行修改

* 原作者alpha版本已经处于可用状态，**<u>建议使用原作者版本，本版本只对还原原厂镜像做了修改（仅测试）</u>**

* 本版本面具与官方面具、之前在coolapk发布的修改版本面具签名不同，需要卸载之前安装的面具管理器，再进行安装这一个 

* ~~canary版本的面具每周四自动编译，如果需要订阅更新，可以使用自定义通道  https://magisk.pages.dev/alpha.json~~

* alpha版本不定时更新

### 下载方式

[稳定版（v23.0）](https://magisk.pages.dev/Magisk_stable_app.apk)

~~[canary](https://magisk.pages.dev/Magisk_canary_app.apk)~~停止维护

[alpha](https://magisk.pages.dev/Magisk_alpha_app.apk)

建议安卓11 使用稳定版本，安卓12使用alpha版本

### 相关下载

[k40g 一键root工具（蓝奏云）密码:dkiz](https://3ku.lanzoui.com/b02cngjad)
使用方法：
首先 下载【一键root脚本（不含boot）.zip】并解压
然后 下载对应的boot文件并解压，将解压后文件命名为root.img，放到解压后的目录里面
最后 双击 【一键刷入root.bat】

### 使用方法

#### 阶段1 解锁

参考 http://www.miui.com/unlock/index.html 

#### 阶段2 root

##### 情形1 已经安装官方root

系统更新界面  ->  下载最新完整包  ->  等待更新完成 ->  安装专用面具管理器 -> 安装到未使用的槽位  ->  重启

##### 情形2 可以自行提取boot

将提取出来的boot复制到手机  -> 安装专用版面具管理器  ->  选择并修补一个文件  ->  将修补好的文件复制到电脑  ->  手机关机，按住音量-开机进入fastboot模式  ->  使用‘fastboot flash boot 文件名’ 命令刷入即可

#####  情形3 完全不懂，上面两步都做不到

下载一键root工具  -> 手机关机，按住音量-开机进入fastboot模式  ->  使用一键root工具进行root（如果boot版本不对应会出现蓝牙wifi无法使用的情况，不要慌，继续操作） -> 系统更新界面  ->  下载最新完整包  ->  等待更新完成 ->  安装专用面具管理器 -> 安装到未使用的槽位  ->  重启

 

#### QA

Q：面具管理器中不出现 ‘安装到未使用的槽位’ 选项

A：可能是root以后，某些软件给你开启了selinux选项，关闭即可



Q：nfc是否可以正常使用

A：不开启magisk hide可正常使用，开启magisk hide不显示卡片，双击电源键可以使用，alpha版本的zygisk暂时有问题，不建议开启

### 扫个码吧亲

![zanshang](./zanshang.jpg)

