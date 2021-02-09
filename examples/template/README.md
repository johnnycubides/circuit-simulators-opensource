# TÍTULO

## Análisis

![Análisis](./image-ana.png)

## Esquema

![Imagen de esquema](./img/image.png)

## Simulación

![Imagen de simulacion](./imagen-de-simulacion)

Descripción de los resultados de la simulación.

Descripción de la lo que se obtiene en la simulación

## Archivos fuentes

Descarga los archivos fuente desde
[AQUÍ](./projecto.zip)

Ejecuta los siguientes comando en la terminal para ver los resultados
con los archivos fuentes.

* `unzip projecto.zip` descomprimir archivos fuente
* `cd proyecto/` entra al directorio del proyecto
* `make ss`: Editar esquemático
* `make n`: Generar netlist
* `make s s=sim/tran.ngsim`: simulación transitoria
* `gwave out/tran.raw`: ver resultado de simulación
* `make s s=sim/dc.ngsim`: simulación en dc
* `gwave out/dc.raw`: ver resultado de simulación

### Observaciones

1. Para salir de la simulación de ngspice oprima `ctrl + d`
