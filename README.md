# Godot 平台小遊戲

這是一個用 **Godot 4.x** 製作的簡易 2D 平台跳躍遊戲。

## 遊玩方式

1. 用 Godot 開啟這個資料夾。
2. 直接按 `F5` 執行。
3. 控制方式：
   - `A / D`：左右移動
   - `Space`：跳躍
   - `R`：重新開始

## 目標

收集地圖上的所有金幣，完成後畫面會顯示過關訊息。

## 專案結構

- `project.godot`：專案設定與輸入配置
- `scenes/Main.tscn`：主關卡（平台、金幣、UI）
- `scenes/Player.tscn`：玩家角色
- `scripts/player.gd`：角色移動與跳躍邏輯
- `scripts/coin.gd`：金幣收集邏輯
- `scripts/main.gd`：UI 顯示、過關判斷、重新開始
