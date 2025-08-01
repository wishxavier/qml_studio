# QML 常見錯誤與排解

## 1. 動畫相關

- **誤用 `targets` 造成警告**  
  - 錯誤訊息：Cannot assign binding of type Text to QObjectList
  - 應使用 `target`，指向單一物件

- **onStopped 內部屬性改法**  
  - 要寫 `fontSizeAnime.to = ...`，不能只寫 `to = ...`

## 2. QML Controls 樣式

- **警告：「The current style does not support customization of this control...」**  
  - 解法：main.cpp 裡加 `QQuickStyle::setStyle("Basic");`

## 3. CMake/編譯問題

- **'QQuickStyle' file not found**  
  - 解法：CMakeLists.txt 要加入 `QuickControls2`，並連結 `Qt6::QuickControls2`

## 4. 互動綁定

- **動畫觸發**  
  - 用 Button 的 `onClicked` 啟動動畫

---

> 持續補充，每當遇到新問題與解法時更新本文件！