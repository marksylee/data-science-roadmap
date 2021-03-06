#   Lesson 0: 快速鍵及常用指令
#
#  《一、快速鍵》
#   ┌─────────────────────────────────────────────────────────────
#   │ 對於需要長時間 Coding 的工程師來說，快速鍵的使用是一個很    
#   │ 重要課題，或許它不能幫你解決邏輯問題、不能幫你撰寫程式，    
#   │ 但是卻能大大提升程式撰寫的效率、避免頻繁地切換滑鼠。        
#   │ 雙手離開鍵盤轉而使用滑鼠，是很沒有效率的一個動作，          
#   │ 更重要的是，會大大降低了你的帥氣程度！                         
#   └─────────────────────────────────────────────────────────────
#
#   在 R 的開發環境中，最少有兩個 Input 視窗，一個是可以撰寫 Script
#   的 Source 視窗，另一個則是可以同時進行 Input 和 Output 的 
#   Console 視窗，所以在以下的介紹中，有些快速鍵的功能是有限定視窗的。
#
#   以下快速鍵只適用於 RStudio，不保證其他 R GUI可行
#   ┌─────────────────────────────────────────────────────────────
#   │                       │  程式碼提示、自動完成，這應該算是   
#   │                       │  最頻繁使用的快速鍵，在輸入程式碼   
#   │   Tab                 │  時按下 Tab，系統會彈出視窗提示你   
#   │                       │  可用函式，如果在行首按則為如果在   
#   │                       │  行首按則為縮行                     
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + Enter        │ (Source) 執行該行或是被圈選的程式碼 
#   │─────────────────────────────────────────────────────────────
#   │   Esc                 │  中斷目前執行命令                   
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + Shift + C    │ (Source) 註解/反註解該行或被選取行  
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + 1            │  將游標切換到 Source 視窗           
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + 2            │  將游標切換到 Console 視窗          
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + L            │ (Console) 清空 Console 視窗         
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + D            │ (Source) 刪除該行                   
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + ↑            │ (Console) 彈出歷史命令              
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + W            │ (Source) 關閉當前 Source 檔案       
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + Shift + W    │ (Source) 關閉所有 Source 檔案       
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + Shift + X    │ (Source) 將選取的程式碼包裝成函式   
#   │─────────────────────────────────────────────────────────────
#   │   Ctrl + Shift + V    │ (Source) 將選取的程式碼包裝成變數   
#   │─────────────────────────────────────────────────────────────
#   │   Alt + ↑ or ↓        │ (Source) 將該行程式碼上/下移        
#   │─────────────────────────────────────────────────────────────
#   │   Alt + Shift + ↑/↓   │ (Source) 將該行向上/下複製一行      
#   │─────────────────────────────────────────────────────────────
#   │   F1                  │ 查詢游標所在的 function 說明(同?)   
#   └─────────────────────────────────────────────────────────────
#
#
#   《二、常用指令》
#
#   1.「help」/「?」: 查看 function 說明檔( function 名稱不用引號)
#      EXAMPLE: 查看 mean 這個 function 的說明文件
#
          help(mean)
          ?mean
#
#   2.「help.search」/「??」: 關鍵字查詢 function (關鍵字要引號)
#      EXAMPLE: 查詢任何和 mean 相關的 function 
#
          help.search("mean")
          ??"mean"
#
#   3.「example」: 展示 function 的小範例，大部分的 function 都有
#      EXAMPLE: 查詢 function mean 的使用範例
#
          example(mean)
#
#   4.「demo」: 展示較複雜的 function 使用範例，不是每個 function
#      都有，通常是比較複雜、龐大的範例
#      EXAMPLE: 繪出日文表
#
          demo(Japanese)
#
#   5.「ls」/「objects」: 列出定義的 object ( variable/function )
#      名稱，預設為「當前」環境中「所有」定義的 object 名稱，還可
#      以細部指定 package、pattern 等等
#
          ls()
          ls(pattern = "m") # 名稱含有 m 的 object
          ls(pattern = "m", baseenv()) # 查看 package 內名稱含有 m
#
#   6.「rm」: 刪除指定的 object
#
          rm("xm")
          rm(list = ls()) # 全部刪除(請小心使用！)
#
#   7.「sink」: 將執行的結果輸出至目標檔中(預設為 Console 視窗)
#
          sink("result.lis")
          sink()
#
#   8.「source」: 執行檔案
#
          source("R-Learning/src/Lesson 0.R")
