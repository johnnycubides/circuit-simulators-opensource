# Divisor de voltaje

## Esquema

![divisor de voltaje ejemplo](./voltage-divider.png)

## Simulación

![simulación tran](./gwave-trans.png)

Se presentan dos posibles simulaciones desde un transitorio y desde una
simulación en DC

## Comandos

* `make ss`: Editar esquematico
* `make n`: Generar netlist
* `make s s=sim/tran.ngsim`: simulación transitoria
* `gwave out/tran.raw`: ver resultado de simulación
* `make s s=sim/dc.ngsim`: simulación en dc
* `gwave out/dc.raw`: ver resultado de simulación

### Observaciones

1. Para salir de la simulación de ngspice oprima `ctrl + d`

