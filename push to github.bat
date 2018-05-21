@echo off
del /a /f /s /q "F:\~\MyRcodes\.git\*.*" & git init & git add -A & git commit -m "Source file update" & git branch master & git remote add origin git@github.com:PhDMeiwp/research1p1.git & git push origin master -f
