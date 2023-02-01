@echo off

setlocal enabledelayedexpansion
set /a reset=0

wmic cpu get loadpercentage /value

:loop

  for /f "tokens=2 delims==" %%a in ('wmic cpu get loadpercentage /value') do (
    set /a CPULoad=%%a
    if not defined CPULoad goto loop

  )


  if !CPULoad%! LSS 10 (

    if !reset! == 0 (
      echo Uso de CPU por debajo del 10%. Reiniciando sistema en una hora...
      shutdown /r /t 3600
      set /a reset=1

    ) else (
      echo Uso de CPU aun por debajo del 10%. Se reiniciara el sistema...

    )

  ) else (
    
    if !reset! == 1 (
      shutdown /a
      echo Uso de CPU por encima del 10%. Reinicio cancelado.
      set /a reset=0

    ) else (
      echo Uso de CPU por encima del 10%. No se realizan acciones

    )

  )

timeout /t 30

goto loop