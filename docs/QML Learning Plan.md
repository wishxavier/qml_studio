# QML 極致基礎學習計畫（含 Modern C++ 穿插練習）

---

## 0. 預備知識

- 熟悉基本 C++、Qt Creator 介面
- 了解 Qt 專案結構、如何建新專案、build/run

> 你已經無問題，建議可穿插現代 C++（C++11/14/17/20）語法練習  
> 例如：auto、range-based for、lambda、智能指標、結構化綁定、constexpr、std::optional、std::variant 等

---

## 1. QML 語法與基礎型別（1週）

### 主題
- QML 語法結構（物件、屬性、信號、綁定語法）
- 常見元件（Rectangle、Text、Image、Button、ListView、Column/Row）
- QML 資料型別（int、double、string、color、bool、array、object）

### 實作練習
- 用 QML 畫一個基本介面（標題、按鈕、輸入框）
- 嘗試 property、信號綁定、簡單動畫

#### 穿插 Modern C++ (一)
- 練習 auto、範圍 for、nullptr、lambda  
- 嘗試用 lambda 當 signal/slot

---

## 2. QML 屬性、信號槽、事件（1週）

### 主題
- property 屬性聲明、動態綁定
- signal & handler（onClicked、onTextChanged）
- function 宣告與呼叫
- 狀態（State）、過渡（Transition）

### 實作練習
- 製作一個互動式表單，按鈕點擊會改變頁面內容
- 練習用 JS function 處理邏輯

#### 穿插 Modern C++ (二)
- 練習智能指標（unique_ptr, shared_ptr）
- 用 emplace_back、std::vector 初步資料結構練習

---

## 3. QML 版面與佈局（1週）

### 主題
- Row、Column、Grid、StackLayout、AnchorLayout 等
- 對齊、間距、邊界、響應式排版
- Loader 與動態元件生成

### 實作練習
- 模仿手機設定頁、資料總覽頁
- 練習一個彈性調整的資訊卡片

#### 穿插 Modern C++ (三)
- 結構化綁定（structured bindings）
- std::tuple、std::pair 應用

---

## 4. QML 資料與 Model-View（2週）

### 主題
- ListModel、XmlListModel、C++ model（QAbstractListModel 簡介）
- ListView、Repeater、GridView
- delegate 制定顯示方式
- 動態增減資料，資料同步

### 實作練習
- 做一個簡單的待辦清單、通訊錄
- 支援新增/刪除/修改項目

#### 穿插 Modern C++ (四)
- std::optional、std::variant
- C++17 if constexpr、switch with string_view
- 練習 enum class

---

## 5. QML 動畫與效果（1週）

### 主題
- PropertyAnimation、NumberAnimation、SequentialAnimation、ParallelAnimation
- Behavior、Transition
- 簡單的動畫設計美感

### 實作練習
- 做一個滑動展開式選單
- 按鈕點擊有動畫反饋

#### 穿插 Modern C++ (五)
- constexpr、inline variable
- std::chrono（計時器應用）

---

## 6. QML 與 C++ 互動（2週）

### 主題
- C++ 物件註冊到 QML（context property、qmlRegisterType）
- QML 呼叫 C++ function，C++ emit signal 讓 QML 回應
- 實作 QAbstractListModel 給 QML 使用

### 實作練習
- C++ 做一個資料模型，QML 顯示並可互動
- 讓 QML 按鈕呼叫 C++ method

#### 穿插 Modern C++ (六)
- noexcept、std::move、std::forward
- 更進階的 lambda 表達式（捕獲、mutable）

---

## 7. QML 組件化與大型專案架構（1週）

### 主題
- QML 元件拆分（自訂組件、.qml 檔管理）
- 結構規劃、檔案命名
- 重用性、可維護性設計

### 實作練習
- 專案模組化：將表單、列表、彈窗等拆成獨立元件並組裝

#### 穿插 Modern C++ (七)
- 模板（template）進階
- type_traits、std::enable_if、SFINAE(可選)

---

## 8. QML 樣式、主題與國際化（1週）

### 主題
- Qt Quick Controls 2 主題與樣式（Material, Fusion, Universal 等）
- Style、Palette、Font
- 多語言 i18n 處理

### 實作練習
- 為 UI 設計主題切換（深色/淺色）
- 建立多語言支援

#### 穿插 Modern C++ (八)
- std::filesystem（檔案處理）
- C++17/20 新增 STL 容器和算法

---

## 9. QML 測試與除錯（1週）

### 主題
- QML Debug、Console、執行時 log
- QML TestCase 單元測試
- 常見錯誤排查

### 實作練習
- 寫一份 QML 單元測試、練習排解動畫/資料不同步問題

#### 穿插 Modern C++ (九)
- C++17 std::any
- C++20 可選：concepts/三路比較（僅了解語法）

---

## 10. 綜合專題（2週）

- 自選一個實用 App（如記事本、天氣查詢、影音播放器）
- 從需求、設計到開發全流程，完整運用前述技能
- 強調架構、UI/UX、可維護性

#### 穿插 Modern C++ (十)
- 總結所有現代語法，做一份自我複習筆記

---

## 結語

- 每週至少動手寫一個小作品
- 定期回顧這份學習計畫
- 新對話時可提醒 Copilot：「請用我的 QML 學習計畫記憶，幫我規劃/出題/檢查/解惑」
- 若有某週主題想深究，請隨時提出

---

> 本文件可持續擴充，學習過程中若有心得或筆記，建議直接增添於相對應章節。