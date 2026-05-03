@echo off
cd /d "%~dp0"

echo ===============================
echo Updating DCA Theory Vault
echo ===============================

git status --porcelain > temp_status.txt

for %%A in (temp_status.txt) do if %%~zA==0 (
    echo No changes to commit.
    del temp_status.txt
    goto push
)

del temp_status.txt

git add .
git commit -m "update notes %date% %time%"

:push
echo Pushing to GitHub...
git push

echo Opening GitHub Actions...
start https://github.com/paulbliu/dca-vault/actions
start https://github.com/paulbliu/paulbliu.github.io/actions

echo Opening live site...
start https://paulbliu.github.io

echo ===============================
echo Done!
echo ===============================

pause