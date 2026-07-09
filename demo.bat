@echo off
chcp 65001 >nul
echo ==========================================
echo   DEMONSTRATION OF KEY-VALUE STORAGE
echo ==========================================
echo.

echo [1] Removing old data file...
if exist data.db del data.db
echo.

echo [2] Building project...
cargo build --release
echo.

echo [3] Inserting record...
target\release\akv_mem.exe data.db insert "username" "ivan_developer"
echo.

echo [4] Getting record by key...
target\release\akv_mem.exe data.db get "username"
echo.

echo [5] Inserting multiple records...
target\release\akv_mem.exe data.db insert "city" "Moscow"
target\release\akv_mem.exe data.db insert "age" "25"
echo.

echo [6] Getting all records...
target\release\akv_mem.exe data.db get "username"
target\release\akv_mem.exe data.db get "city"
target\release\akv_mem.exe data.db get "age"
echo.

echo [7] Updating record...
target\release\akv_mem.exe data.db update "city" "Saint Petersburg"
echo.

echo [8] Checking update...
target\release\akv_mem.exe data.db get "city"
echo.

echo [9] Deleting record...
target\release\akv_mem.exe data.db delete "age"
echo.

echo [10] Checking deletion...
target\release\akv_mem.exe data.db get "age"
echo.

echo [11] Demonstration of akv_disk...
target\release\akv_disk.exe data.db insert "country" "Russia"
target\release\akv_disk.exe data.db get "country"
echo.

echo ==========================================
echo   DEMONSTRATION COMPLETED
echo ==========================================
pause