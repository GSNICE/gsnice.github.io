---
title: iOS：使用 Apple Configurator 获取 ipa 包及资源文件
tags:
- iOS
date: '2020-04-21 13:33:14'
layout: post
---

### 软件下载

在 App Store 搜索下载【Apple Configurator】的 App。

### 登录 Apple ID

把 iPhone 连接上 Mac，点击顶部菜单栏中的 `账户`

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220145489.png)

选择 `登录` （用连接设备的 Apple ID 进行登录）。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220202860.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

注意：需要下载的 App 需要在登录过的 Apple ID 下购买安装过才可以。

注意：备份iPhone的内容（避免数据丢失，非必选）

### 查找需要下载的 App

查看已登录的 Apple ID 下购买的 App 历史记录。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220220431.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220233769.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220244878.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

如你手机中已经安装了当前要下载的 App，所以会提示：该应用已经存在，是否需要替换？

此时，不要点任何按钮！不要点任何按钮！不要点任何按钮！

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220257822.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

不要操作 Apple Configurator，让它保持上图的状态。

### 查看下载下来的 ipa 文件

打开 Finder 前往文件夹，或者直接快捷键

`command + shift + G`

并输入下面路径

```zsh
~/Library/Group Containers/K36BKF7T3D.group.com.apple.configurator/Library/Caches/Assets/TemporaryItems/MobileApps/
```

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220316268.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

![在这里插入图片描述](https://img-blog.csdnimg.cn/2020042122032573.png)

点击前往，打开 ipa 包所在文件。将 ipa 文件 copy 出来。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220335685.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

这时候别忘了点击 Apple Configurator 窗口中的停止，你会发现刚才目录下的文件也消失了。

### 解包查看 ipa 包内的资源文件

拿到 ipa 文件后，你可以将后缀 .ipa 改为 .zip，然后解压。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200421220628129.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTI0Mzk0NDY=,size_16,color_FFFFFF,t_70)

就可以看到 Payload 下的包，显示包内容可以看到部分 APP 的资源以及 Assets.car。

如果你要解压 Assets.car， 可以使用 github 上的工具：
[https://github.com/pcjbird/AssetsExtractor](https://github.com/pcjbird/AssetsExtractor)

最后，提取出来的资源文件，请注意版权。本教程只为技术分享之用，非商业用途。
