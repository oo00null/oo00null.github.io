@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo   启动本地服务器 http://localhost:8000
echo   关掉这个窗口就停止。
echo.
start "" http://localhost:8000/index.html
where py >nul 2>nul && ( py -m http.server 8000 & goto :eof )
where python >nul 2>nul && ( python -m http.server 8000 & goto :eof )
where npx >nul 2>nul && ( npx --yes serve -l 8000 . & goto :eof )
echo.
echo   没找到 Python 或 Node.js，装一个再双击本文件。
echo   临时办法：用 VS Code 的 Live Server 插件打开 index.html。
pause
