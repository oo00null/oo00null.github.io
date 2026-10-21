@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo   鍚姩鏈湴鏈嶅姟鍣?http://localhost:8000
echo   鍏虫帀杩欎釜绐楀彛灏卞仠姝€?echo.
start "" http://localhost:8000/index.html
where py >nul 2>nul && ( py -m http.server 8000 & goto :eof )
where python >nul 2>nul && ( python -m http.server 8000 & goto :eof )
where npx >nul 2>nul && ( npx --yes serve -l 8000 . & goto :eof )
echo.
echo   娌℃壘鍒?Python 鎴?Node.js锛岃涓€涓啀鍙屽嚮鏈枃浠躲€?echo   涓存椂鍔炴硶锛氱敤 VS Code 鐨?Live Server 鎻掍欢鎵撳紑 index.html銆?pause
