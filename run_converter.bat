@echo off
cd /d "%~dp0"

if "%~1"=="" (
    python tsv_to_csv_or_txt.py --watch
    if errorlevel 1 (
        echo.
        echo Python launcher fallback...
        py tsv_to_csv_or_txt.py --watch
        if errorlevel 1 pause
    )
) else (
    python tsv_to_csv_or_txt.py %*
    if errorlevel 1 (
        echo.
        echo Python launcher fallback...
        py tsv_to_csv_or_txt.py %*
        if errorlevel 1 pause
    )
)
