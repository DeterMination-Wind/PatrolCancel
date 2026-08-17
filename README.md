# Patrol Cancel

[中文](README_zh.md) | [English](README.md)

<p align="center"><img src="icon.png" width="128" alt="Patrol Cancel"></p>

**Patrol Cancel** is a small QoL client mod for Mindustry **v8** (vanilla and MindustryX). When you right-click to command your selected units, it automatically clears their **Patrol** stance — so patrolling units obey your move / attack orders immediately instead of getting stuck looping their old patrol waypoints.

## Features

### Right-click cancels patrol

In vanilla v8, right-clicking selected units only moves them and never touches the Patrol stance. A unit in Patrol keeps dragging itself back into its waypoint loop (`CommandAI` re-queues the previous point on arrival), so it looks "stuck" — the move command is effectively ignored.

With this mod, every plain right-click command on selected units:

- clears the `Patrol` stance on all selected, commandable units that are currently patrolling;
- then lets the vanilla move / attack command fire normally — the click is never swallowed.

### Deliberately untouched

- **Middle-click (queue waypoints)** does *not* clear Patrol — that is exactly how you draw patrol routes, and it keeps working.
- Attack commands (right-click on an enemy) also clear Patrol, since an explicit order should override standing patrol behavior.
- Only affects **selected, commandable units**; your own driven unit has no Patrol stance to clear.

### Compatibility

- Client-side mod: install it on your client (drop the jar into the mods folder or the mod menu). No server-side install needed.
- Uses the same server-side permission checks as the vanilla right-click command, so it works on any v8 server (including MindustryX), singleplayer or multiplayer.
- Works on both **vanilla Mindustry v8** and **MindustryX**.

## Usage

1. Select units (command mode, e.g. hold Shift).
2. If you want, set the Patrol stance (command bar / stance keybind) and middle-click waypoints to draw a patrol route.
3. Right-click anywhere to move, or right-click an enemy to attack — the Patrol stance is cleared automatically and your units obey.

## Build

```
gradlew clean build
```

Outputs (also copied to `构建/PatrolCancel/` in the workspace):

- `build/libs/PatrolCancel-v1.0.0.jar` — desktop jar
- `build/libs/PatrolCancel-v1.0.0.zip` — jar + README files

Java 17 is required. The mod compiles against the local Mindustry v8 jar (`../Mindustry-master/desktop/build/libs/Mindustry.jar`). Regenerate `icon.png` with `tools/make_icon.ps1` if needed.