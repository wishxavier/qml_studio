# Week 01 — QML 基本介面練習

## 學習目標

- 熟悉 QML 檔案結構與語法
- 了解基本元件（Rectangle、Text、Button 等）
- 練習 property 聲明、信號綁定、簡單動畫
- 穿插現代 C++（auto、lambda、範圍 for）

---

## 本週成果

### 1. SpecOps QML 菁英訓練營 01：Hello QML!

專案名稱：**specops01_hello_qml**  
目標是以特種部隊訓練精神，完成 QML 基礎 UI 結構與互動。

#### 完成內容
- 以 Window 和 Rectangle 架出主畫面，中央顯示彩色粗體文字
- 新增一顆自訂樣式的 Button，點擊可觸發文字縮放動畫
- 使用 QML property 進行資料綁定
- 採用 NumberAnimation 動態調整字體大小，動畫流暢
- 練習 QML 信號處理（onClicked）

#### 技術重點
- **QML 元件**：Window、Rectangle、Text、Button
- **Property 綁定**：透過 `property string` 傳遞資料
- **信號處理**：Button 的 `onClicked` handler 啟動動畫
- **動畫**：NumberAnimation 改變 `font.pointSize`
- **UI 美化**：自訂 Button 背景色、圓角、邊框

#### 程式片段（Main.qml 範例）
```qml
Button {
    id: textAnimeButton
    text: "點我看文字縮放"
    onClicked: {
        fontSizeAnime.start()
    }
}
NumberAnimation {
    id: fontSizeAnime
    target: helloText
    properties: "font.pointSize"
    from: 12
    to: 48
    duration: 1000
}
```

---

## 開發過程紀錄

1. **學習自定義 property，並透過 id 存取**  
   - 練習用 `property string` 宣告，並用 `id` 引用 property。

2. **透過 implicitHeight 讓 Rectangle 一起變化高度**  
   - 利用 `helloText.implicitHeight`，讓外層 Rectangle 隨文字動畫自動調整高度。

3. **學習 NumberAnimation 用法，並運用 onStopped 反轉動畫**  
   - 讓動畫來回切換字體大小。
   - ⚠️ 曾經誤用 `targets`（應為 `target`），導致警告：「Cannot assign binding of type Text to QObjectList」
   - 在 `onStopped` 裡，必須使用動畫的 id（如 `fontSizeAnime.to`）變更動畫屬性，不能直接寫 `to`。

4. **學習設置按鈕背景**  
   - 自訂 Button 背景顏色、圓角與邊框。
   - 為了消除警告「The current style does not support customization of this control...」，特地在 main.cpp 加入 `QQuickStyle::setStyle("Basic");`

5. **CMakeLists.txt 未加入 QuickControls2，導致 error**  
   - 出現 `'QQuickStyle' file not found`，後來補上 `find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)` 並加入 `Qt6::QuickControls2`。

6. **透過按鈕觸發動畫**  
   - Button 的 `onClicked` 信號處理，呼叫動畫 `start()`，實現互動效果。

---

## 學習心得

- QML 語法直觀，UI 互動設計很輕鬆
- 信號處理（signal handling）用 onXXX 寫 handler，事件處理簡單清楚
- 動畫系統易用，能快速做出吸睛效果
- CMake 與 QML module 的名稱規則要注意（不能數字開頭）
- 記錄開發過程與常見錯誤，有助後續查找與複習（可參見 `docs/qml_troubleshooting.md`）

---

## 下一步

- 嘗試更多 QML 元件（如 TextField、Slider）
- 練習自訂 signal 與 handler
- 開始資料綁定與 Model-View 練習