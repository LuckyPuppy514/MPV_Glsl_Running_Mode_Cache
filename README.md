# 着色器运行模式缓存


适用于 windows10/11 的 MPV 着色器运行模式缓存脚本

本脚本包含以下功能：

1. 为不同着色器模式添加相应的快捷键。
2. 每次打开视频自动加载上一次的着色器模式。


## 内容列表

- [背景](#背景)
- [安装](#安装)
- [使用说明](#使用说明)
- [徽章](#徽章)
- [相关仓库](#相关仓库)
- [维护者](#维护者)
- [如何贡献](#如何贡献)
- [使用许可](#使用许可)

## 背景

最近在 MPV 使用了 Anime4K 着色器，每次打开视频都需要手动开启比较麻烦，所以写了这个脚本。

> 


## 安装

这个项目使用 [mpv](https://github.com/mpv-player/mpv) 或 [mpv-lazy](https://github.com/hooke007/MPV_lazy)。请确保你本地安装了它们。


1. 下载脚本和着色器文件
[Glsl_Running_Mode_Cache](https://github.com/LuckyPuppy514/MPV_Glsl_Running_Mode_Cache/releases)

2. 把脚本放入 mpv 脚本目录，二选一
> a. 推荐路径：MPV 安装目录/portable_config/scripts
> 注意：如果原来配置文件放在 %appdata%/mpv 目录
> 建议把该目录下所有配置迁移到 portable_config 目录下

> b. 其他路径：%appdata%/mpv/scripts
    

3. 修改input.conf配置
> 找到 MPV 配置文件目录，推荐：MPV 安装目录/portable_config，
> 或者：%appdata%/mpv，在input.conf（如果没有请新建）添加以下内容：
```
## 着色器模式 GLSL MODEL: Glsl_Running_Mode_Cache.lua
 CTRL+1 script-binding Glsl_Model_1
 CTRL+2 script-binding Glsl_Model_2
 CTRL+3 script-binding Glsl_Model_3
 CTRL+4 script-binding Glsl_Model_4
 CTRL+5 script-binding Glsl_Model_5
 CTRL+6 script-binding Glsl_Model_6
 CTRL+7 script-binding Glsl_Model_7
 CTRL+8 script-binding Glsl_Model_8
 CTRL+9 script-binding Glsl_Model_9
 CTRL+0 script-binding Glsl_Model_0
```

4. 添加glsl文件到配置文件目录
> 推荐路径：MPV 安装目录/portable_config/shaders
> 或者：%appdata%/mpv/shaders
> 注意：请确保跟配置文件在同一路径下

5. 最终目录结构示例
> MPV安装目录/portable_config/scripts/Glsl_Running_Mode_Cache.lua
> 
> MPV安装目录/portable_config/shaders
> 
> MPV安装目录/portable_config/input.conf

或者：
> %appdata%/mpv/scripts/Glsl_Running_Mode_Cache.lua
> 
> %appdata%/mpv/shaders
> 
> %appdata%/mpv/input.conf

## 使用说明

默认配置：
```
CTRL+1 Anime4K: Mode A (Fast)
CTRL+2 Anime4K: Mode B (Fast)
CTRL+3 Anime4K: Mode C (Fast)
CTRL+4 Anime4K: Mode A+A (Fast)
CTRL+5 Anime4K: Mode B+B (Fast)
CTRL+6 Anime4K: Mode C+A (Fast)
CTRL+7 RAVUzr3
CTRL+8 KrigBilateral
CTRL+9 AMD-FSR
CTRL+0 Clear
```
> 你可以根据自己需要，在 Glsl_Mode_Cache.lua 中修改着色器配置，例如：
```
Glsl_Model_9 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/AMD-FSR.glsl\";" ..
	" show-text \"AMD-FSR\"",
```
```
Glsl_Model_9 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/你的着色器文件.glsl\";" ..
	" show-text \"你想要显示的名称\"",
```


## 徽章

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)


## 相关仓库

- [mpv](https://github.com/mpv-player/mpv) — mpv播放器。
- [mpv-lazy](https://github.com/hooke007/MPV_lazy) — mpv播放器懒人版。
- [anime4k](https://github.com/bloc97/Anime4K) — anime4k着色器。

## 维护者

[@LuckyPuppy514](https://github.com/LuckyPuppy514)

## 如何贡献

非常欢迎你的加入！[提一个 Issue](https://github.com/LuckyPuppy514/MPV_Glsl_Running_Mode_Cache/issues/new) 或者提交一个 Pull Request。


## 使用许可

[MIT](https://github.com/LuckyPuppy514/MPV_Glsl_Running_Mode_Cache/blob/main/LICENSE) © LuckyPuppy514
