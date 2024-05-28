set plan_equilibrado=381b4222-f694-41f0-9685-ff5bb260df2e
set plan_bajo_rendimiento=b54f4c31-cb06-4429-b20a-9c60c8fae77e

rem Obtener el plan actual
for /f "tokens=6" %%a in ('powercfg /getactivescheme') do set plan_actual=%%a

if "%plan_actual%"=="%plan_equilibrado%" (
	rem Notificación del cambio
    msg * /time:1 "Cambiando al plan de bajo consumo."

    rem Cambio del plan
    powercfg /S %plan_bajo_rendimiento%    
) else (
    msg * /time:1 "Cambiando al plan equilibrado."
    powercfg /S %plan_equilibrado%
)
