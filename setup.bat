@echo off
REM Quick Setup Script for Windows

echo 🚀 Neovim Configuration Setup
echo ==============================
echo.

REM Check Neovim installation
where nvim >nul 2>nul
if errorlevel 1 (
    echo ❌ Neovim not found!
    echo Install from: https://github.com/neovim/neovim/releases
    echo Or use: choco install neovim
    pause
    exit /b 1
)

echo ✅ Neovim found
for /f "tokens=*" %%i in ('nvim --version 2^>nul ^| findstr "NVIM"') do echo   Version: %%i
echo.

echo 📦 Checking optional dependencies...
echo.

REM Check Node.js
where node >nul 2>nul
if errorlevel 1 (
    echo ⚠️  Node.js not found
    echo   Install from: https://nodejs.org
) else (
    for /f "tokens=*" %%i in ('node --version') do echo ✅ Node.js found: %%i
)

REM Check Python
where python >nul 2>nul
if errorlevel 1 (
    echo ⚠️  Python not found
    echo   Install from: https://python.org
) else (
    for /f "tokens=*" %%i in ('python --version') do echo ✅ Python found: %%i
)

REM Check Git
where git >nul 2>nul
if errorlevel 1 (
    echo ⚠️  Git not found
    echo   Install from: https://git-scm.com
) else (
    echo ✅ Git found
)

echo.
echo 🎯 Setup Complete!
echo.
echo Next steps:
echo   1. Open Neovim: nvim
echo   2. Wait for plugins to install (first launch ~10-30 seconds)
echo   3. Run: :Mason to install language servers
echo   4. Restart Neovim
echo.
echo Tips:
echo   • Press Space+? for keymap hints
echo   • Press Ctrl+P to find files
echo   • Press K on any symbol for docs
echo   • Type :checkhealth for diagnostics
echo.
echo Documentation:
echo   • README.md - Full configuration guide
echo   • KEYMAPS.md - All keybindings
echo   • UPDATES.md - What was changed
echo.
echo Happy coding! 🎉
echo.
pause
