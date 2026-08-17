# Patrol Cancel

[中文](README_zh.md) | [English](README.md)

<p align="center"><img src="icon.png" width="128" alt="Patrol Cancel"></p>

**Patrol Cancel** 是给 Mindustry **v8**（原版与 MindustryX）用的轻量客户端模组：右键指挥选中单位时，自动解除它们的**巡逻（Patrol）**姿态，让巡逻单位立刻服从右键移动/攻击命令，不再卡在旧巡逻路线的循环里。

## 特性

### 右键解除巡逻

原版 v8 右键指挥选中单位时只发移动命令，从不触碰巡逻姿态。处于巡逻的单位到达点位后会被 `CommandAI` 把上一个点重新排进队列（`finishPath` 循环重排），表现为“右键拽不动、卡在原地”——实际上移动命令被巡逻行为盖掉了。

本模组在每次普通右键指挥选中单位时：

- 对所有选中的、当前处于巡逻姿态的可指挥单位清除 `Patrol` 姿态；
- 随后原版移动/攻击命令照常发出——点击事件绝不被吞掉。

### 有意的边界

- **中键排队（规划巡逻路线）不解除巡逻**——这正是你画巡逻路线的方式，保持原样可用。
- 右键点到敌人（攻击命令）同样会解除巡逻——显式命令应当压过驻留的巡逻行为。
- 只作用于**选中的可指挥单位**；你自己驾驶的单位没有巡逻姿态，无需处理。

### 兼容性

- 纯客户端模组：装到客户端即可（把 jar 拖进 mods 目录或模组菜单）。服务端无需安装。
- 沿用与原版右键命令相同的服务端权限校验，单机、联机、任何 v8 服务器（含 MindustryX）都可用。
- 同时兼容**原版 Mindustry v8** 与 **MindustryX**。

## 使用方法

1. 选中单位（命令模式，如按住 Shift）。
2. 如需巡逻，可先给单位设置巡逻姿态（命令栏/姿态快捷键），再用中键排队画巡逻路线。
3. 右键任意位置移动、或右键敌人攻击——巡逻姿态自动解除，单位立即服从。

## 构建

```
gradlew clean build
```

输出（同时复制到工作区 `构建/PatrolCancel/`）：

- `build/libs/PatrolCancel-v1.0.0.jar` —— 桌面版 jar
- `build/libs/PatrolCancel-v1.0.0.zip` —— jar + README 说明文件

需要 Java 17。模组对本地 Mindustry v8 jar（`../Mindustry-master/desktop/build/libs/Mindustry.jar`）编译；如需要可用 `tools/make_icon.ps1` 重新生成 `icon.png`。