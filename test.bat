for /l %%i in (%2, 1, %3) do (
@echo %%i
for /l %%a in (1, 1, 5) do @echo %%i_%%a
)