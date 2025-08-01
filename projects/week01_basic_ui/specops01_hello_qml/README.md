# specops01_hello_qml

**SpecOps QML 菁英訓練營 01：Hello QML!**

這是 QML 精英訓練第一關，目標是熟悉 QML 基本元件、屬性、信號處理（signal handling）與動畫。  
專案名稱靈感來自特種部隊（SpecOps），每一次訓練都是技能突破！

---

## 本專案內容

- 使用 Qt 6 + QML 開發互動介面
- 主畫面為黑色 Rectangle，中央顯示彩色文字
- 有一個客製化按鈕，點擊可觸發文字縮放動畫
- 動畫採用 NumberAnimation 動態改變字體大小
- 練習 QML property、id、信號處理（onClicked）等語法

---

## 主要技術點

- **QML 元件**：Window、Rectangle、Text、Button
- **信號處理**：`onClicked` 處理按鈕點擊事件
- **動畫**：`NumberAnimation` 動態變更 `font.pointSize`
- **Property 綁定**：Text 內容與外層 property 綁定
- **UI 美化**：自訂 Button 背景、文字顏色與粗體

---

## 執行方式

1. 以 Qt Creator 或 CMake + Qt6 編譯本專案
2. 執行 appspecops01_hello_qml
3. 點擊「點我看文字縮放」按鈕，體驗動畫效果

---

## 學習心得

- 了解 QML 信號（signal）與 handler（如 onClicked）如何應用
- 熟悉 QML property 宣告與元件互動
- QML 動畫設計方便直觀，UI 開發效率高

---

> 下一步：嘗試更多互動元件、資料綁定與自訂 signal！