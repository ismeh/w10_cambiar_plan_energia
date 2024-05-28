# Cambiador de plan de energía para Windows 10
Script simple para cambiar de plan de energía con un solo click desde la barra de tareas.

![imagen](https://github.com/ismeh/w10_cambiar_plan_energia/assets/81519191/af5e5721-18cc-4406-b20e-6ccc9c42c974)




## Como usarlo
Para cambiar de plan de energía primero debemos crear un plan extra, para ello seguiremos la siguiente [guía de Microsoft](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/create-a-custom-power-plan-technicalreference?view=windows-11#creating-a-customized-power-plan).

Una vez creado el plan de energía abrimos una terminal y escribimos ```powercfg /list``` de esta manera podemos ver el GUID, identificador, de cada uno de nuestros planes.

Dentro del script escribimos en identificador de nuestro plan en las variables iniciales.

Para añadir el script a la barra de tareas debemos crear un acceso directo (Click derecho en el archivo -> Crear acceso directo).

Abrimos las propiedades del acceso directo (Click derecho -> Propiedades)

Añadimos '''cmd /c''' en el destino, esto nos permitirá que el acceso directo pueda anclarse a la barra de tareas.

![imagen](https://github.com/ismeh/w10_cambiar_plan_energia/assets/81519191/1a615e47-54f3-4a60-bb38-53b1f34bc7cc)

Podemos cambiar el icono de la terminal desde las propiedades en 'Cambiar icono', para ello debemos utilizar un archivo .ico del sistema o bien descargar uno de internet. El que he utilizado yo se encuentra en la bibliografía.

Tras esto solo nos queda arrastras el acceso directo hacia la barra de tareas.


### Mi plan de energía
![imagen](https://github.com/ismeh/w10_cambiar_plan_energia/assets/81519191/607849e6-14d5-46fe-bd86-ec89d05fa38a)

### Resultados
![diferencia_reposo](https://github.com/ismeh/w10_cambiar_plan_energia/assets/81519191/645a863b-afb0-4f4e-b109-e12b6448cd75)

Del minuto 20 al 12 estamos en el modo bajo consumo del 12 al 3,5 en el plan equilibrado por defecto y el resto en bajo consumo de nuevo. Podemos apreciar una diferencia de temperatura de unos 10º por el simple hecho de limitar la CPU con el cargador enchufado.

## Bibliografía
- [Fuente del icono](https://icon-icons.com/download/41592/ICO/512/)
- [Anclar archivos](https://answers.microsoft.com/es-es/windows/forum/all/como-anclar-un-acceso-directo-que-da-a-un-archivo/4f9b0800-f0b2-44a3-b32c-8772aeb091a9)
- [Limitar consumo de energía](https://www.youtube.com/watch?v=Hgx0Q7Yjfis)
	
