# Bug.n
> WM Write by AHK
## Basic
1. Mode：T M F
2. 3 Keys：最小化 Z | 最大化 X | 关闭 C
3. 显示：任务 Space 布局 Shift + Space | 图标 Shift Y | 标题 Shift D
## Layout
1. 轴调整：拉取 Ctrl ↑/→ | 推送 Ctrl ↓/← | 回到 `1x1 | =` Ctrl Back
2. 轴翻转：镜像 Shift Tab | 主轴 Tab | 堆栈 Ctrl Tab
3. 分配：选中 ↑↓ | 移动 Shift ↑↓ | 第一 Enter
4. 大小：←→ 窗口 | Shift ←→ 缝隙 | 切换视图边距 Shift *N*
5. 独立：浮动 Shift F | 移动 Shift M | 大小 Shift S
6. 标签：激活 N | 指定标签 Shift N | 全局窗口 Shift 0
## Config
1. 命令：Y
2. 编辑配置：Ctrl E
3. 保存当前布局到配置：Ctrl S
4. 退出：Ctrl Q
5. 一切重置：Ctrl R
## Unusage
- Log & Monitor
1. Alt Shift Enter 最大化 `重复`
2. Win Ctrl T 横纵转换
3. Win Ctrl N 增删标签
4. I 信息 / Shift I 列表信息
5. Win Tab 激活之前的模式 | Win Back 激活之前的视图
6. Alt Shift Y 指示布局区域 可能需要设置样式
7. 禁用动态平铺 (窗口不会随轴翻转变化)
   1. Alt ↑↓ 移动位置 (仅激活窗口)
   2. Alt N 到主轴的第n个位置 (同上)
   3. Alt Back 开关堆栈空间
## Config
```ini
; `congfig.ini` in %userprofile%\AppData\Roaming\bug.n
Monitor_#1_aView_#2=2
View_#1_#1_layout_#2=2


; Manual
Config_viewMargins=0;100;0;0
; Config_dynamicTiling=0
; Config_continuouslyTraceAreas=1

; 最大最小化
Config_hotkey=#z::Manager_minimizeWindow() ;Win Ctrl M 大改动
Config_hotkey=#x::Manager_maximizeWindow() ;Win Shift X

; 轴变换
Config_hotkey=#Tab::View_setLayoutProperty(Axis, 0, +1, 2) ;Win Ctrl Tab
Config_hotkey=#^Tab::View_setLayoutProperty(Axis, 0, +1, 3) ;Win Ctrl Shift Tab
Config_hotkey=#+Tab::View_setLayoutProperty(Axis, 0, +2, 1);Win Ctrl Enter
Config_hotkey=#^+Tab::View_setLayout(-1) ;Win Tab 腾位

; 窗口移动 & 间隙
Config_hotkey=#Enter::View_shuffleWindow(1);Win Shift Enter
; Config_hotkey=#^Left::View_setLayoutProperty(GapWidth, 0, -2) ;Win Shift ←
; Config_hotkey=#^Right::View_setLayoutProperty(GapWidth, 0, +2) ;Win Shift →

; 推送拉取
; Config_hotkey=#^Down::View_setLayoutProperty(MY, 0, +1) ;Win Ctrl ↑
; Config_hotkey=#^Up::View_setLayoutProperty(MY, 0, -1) ;Win Ctrl ↓
; Config_hotkey=#^Left::View_setLayoutProperty(MX, 0, +1) ;Win Ctrl →
; Config_hotkey=#^Right::View_setLayoutProperty(MX, 0, -1) ;Win Ctrl ←
```
