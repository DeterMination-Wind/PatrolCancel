# Patrol Cancel

> [!NOTE]
> 若有反馈，请发送反馈到bugsoc@qq.com / If you have any feedback, please send it to bugsoc@qq.com

> 让右键命令真正接管单位，不被旧的巡逻状态拖回去。

**Patrol Cancel** 是一个轻量的 Mindustry 客户端辅助模组。它解决的是一个很具体、也很烦人的指挥问题：单位明明收到了右键移动或攻击命令，却因为仍处于巡逻状态，在抵达后又回到旧的巡逻路线。

发送普通右键命令时，模组会自动清除选中单位的巡逻状态，然后交还给原版的移动或攻击流程。你不需要额外管理状态，原有的中键巡逻路线也不会受到影响。

支持 Mindustry v8 原版与 MindustryX，适合单人和多人游戏。它只在客户端处理指挥体验，不需要服务器安装。

## 安装

从项目 Release 下载模组文件，放入 Mindustry 的 mods 目录并在游戏内启用。

## 构建

使用项目提供的 Gradle 构建脚本生成发布产物。

~~~powershell
.\gradlew.bat build
~~~

## English

> Make right-click commands take priority over an old patrol state.

**Patrol Cancel** is a small Mindustry client-side helper for a specific command problem: units receive a normal move or attack order, but return to their previous patrol route because the patrol state was never cleared.

Before a normal right-click command is sent, the mod clears the patrol state of the selected units and lets the vanilla move or attack flow continue. Middle-click patrol-route building remains unchanged.

It supports vanilla Mindustry v8 and MindustryX, works in singleplayer and multiplayer, and does not require a server-side installation.

## Install

Download the mod from the project Release page, put it in Mindustry's mods directory, and enable it in-game.

## Build

Use the Gradle build script included in the project to produce the release artifact.

~~~powershell
.\gradlew.bat build
~~~
