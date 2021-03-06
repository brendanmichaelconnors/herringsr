@echo off

setlocal
:PROMPT
SET /P CONTINUE=Do you want to run mcmcevals (Y/N)?
IF /I "%CONTINUE%" NEQ "Y" GOTO END

@echo on

cd models/HG/AM2
if exist mcmc rd /s /q mcmc
md mcmc
iscam -mceval
mv *.csv mcmc

cd ../../PRD/AM2
if exist mcmc rd /s /q mcmc
md mcmc
iscam -mceval
mv *.csv mcmc

cd ../../CC/AM2
if exist mcmc rd /s /q mcmc
md mcmc
iscam -mceval
mv *.csv mcmc

cd ../../SoG/AM2
if exist mcmc rd /s /q mcmc
md mcmc
iscam -mceval
mv *.csv mcmc

cd ../../WCVI/AM2
if exist mcmc rd /s /q mcmc
md mcmc
iscam -mceval
mv *.csv mcmc

:END
endlocal