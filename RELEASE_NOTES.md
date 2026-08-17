# PatrolCancel v1.0.0 — Release Notes / 发布说明

[中文](#中文) | [English](#english)

## 中文

**PatrolCancel 1.0.0** 首次发布。右键指挥选中单位时自动解除巡逻姿态，解决“巡逻单位右键拽不动、卡在原地”的问题。

- 右键移动 / 攻击命令会同时清除选中可指挥单位的 `Patrol` 姿态，单位立即服从命令。
- 中键排队（规划巡逻路线）不受影响，照常绘制巡逻环线。
- 纯客户端模组：单机 / 联机通用，服务端无需安装；沿用原版命令权限校验。
- 兼容原版 Mindustry v8 与 MindustryX。
- 对本地 Mindustry v8 源码树（`Mindustry-master`）编译，Java 17。

## English

**PatrolCancel 1.0.0** — first release. Right-clicking to command selected units now also clears their Patrol stance, fixing units that "refuse" to move and stay stuck in the patrol loop.

- Right-click move / attack orders clear the `Patrol` stance on selected commandable units, so they obey immediately.
- Middle-click waypoint queuing (how you build patrol routes) is intentionally left alone.
- Client-side only; works in singleplayer and multiplayer with no server-side install, using the same permission checks as vanilla right-click commands.
- Compatible with vanilla Mindustry v8 and MindustryX.
- Built against the local Mindustry v8 source tree (`Mindustry-master`) with Java 17.