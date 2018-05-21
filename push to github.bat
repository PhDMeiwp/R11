@echo off
del /a /f /s /q "F:\~\R11\.git\*.*" & git init & git add -A & git commit -m "Source file update" & git branch master & git remote add origin git@github.com:PhDMeiwp/R11.git & git push origin master -f
