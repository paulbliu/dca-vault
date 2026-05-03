@echo off
cd "C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory"

echo =========================
echo Checking for changes...
echo =========================

git add .

git diff --cached --quiet
IF %ERRORLEVEL% EQU 0 (
    echo No changes to commit.
) ELSE (
    git commit -m "update notes"
    git push
    echo Changes pushed successfully!
)

echo =========================
echo Done.
echo =========================

pause