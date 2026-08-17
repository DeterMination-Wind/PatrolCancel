# Patrol Cancel

[中文](README_zh.md) | [English](README.md)

<p align="center"><img src="icon.png" width="128" alt="Patrol Cancel"></p>

**Patrol Cancel** 是给 Mindustry v8（原版与 MindustryX）用的轻量客户端模组。

## 右键移动解除巡逻

右键指挥选中单位时，自动解除它们的巡逻（Patrol）姿态。

原版 v8 右键指挥只发移动命令、从不触碰巡逻姿态，导致巡逻单位到达点位后仍被拖回旧巡逻路线，表现为「右键拽不动、卡在原地」。本模组在每次普通右键指挥选中单位时，先清除选中的可指挥单位的巡逻姿态，再让原版移动/攻击命令照常发出——单位立即服从命令，不再卡在巡逻循环里。