# Godot 平台小遊戲

這是一個用 **Godot 4.x** 製作的簡易 2D 平台跳躍遊戲。

## 需要安裝插件嗎？

不需要，這個專案 **不依賴任何 Godot 外掛**。
只要使用 Godot 4 開啟資料夾即可。

## 遊玩方式

1. 打開 Godot Hub。
2. 按 **Import**，選擇這個資料夾內的 `project.godot`。
3. 載入後按 `F5` 執行。

## 控制方式

- `A / D` 或 `← / →`：左右移動
- `Space`：跳躍
- `R`：重新開始

## 如果你看不到改動（排錯）

1. 確認你開的是這個專案的 `project.godot`，不是其他專案。
2. 在 Godot 編輯器左上角確認目前場景是 `res://scenes/Main.tscn`。
3. 如果仍舊沒更新，嘗試關掉專案重新開啟，或刪除專案資料夾內的 `.godot/` 快取再重開。

## 專案結構

- `project.godot`：專案設定與輸入配置
- `scenes/Main.tscn`：主關卡（平台、金幣、UI）
- `scenes/Player.tscn`：玩家角色
- `scripts/player.gd`：角色移動與跳躍邏輯
- `scripts/coin.gd`：金幣收集邏輯
- `scripts/main.gd`：UI 顯示、過關判斷、重新開始
