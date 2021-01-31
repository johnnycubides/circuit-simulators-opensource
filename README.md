# Ejemplos de simulación de circuitos electricos con software libre

He querido compartir una documentación para la simulacióm de circuitos electricos
con software opensource; existe varios simuladores actualmente y es interesante
poderlos onservar un poco más desde adentro para ver la gama de posibilidades
con ellos.

Lista de software usado:

* [ngspice](http://ngspice.sourceforge.net/)
* [gEDA](http://www.geda-project.org/)
* [Lepton-eda](https://github.com/lepton-eda/lepton-eda)
* [gwave](https://sourceforge.net/projects/gwave/)

[Puedes ver la documentación Aquí](https://readthedocs.org/projects/circuit-simulators-opensource/en/latest/)

**Observación**: La documentación está en proceso de construcción, se irán agregando ejemplos
a medida que se vaya requiriendo.

Saludos,

Johnny

# Guia para el uso de ésta documentación

La documentación presentada a continuación está escrita en MarkDown y puede
ser visualizada en HTMl.

  * Para editar y/o agregar más documentación puede hacerlo en el directorio **docs/**.

  * El `Makefile` es responsable de las tareas de construcción y visualización de la información.
    Puede ver ayudas digitando `make`.

  * El proceso de visualización de la información es el siguiente:

    1.  Abra una terminal y ejecute `make serve`.

    2.  Abra el navegador y entre a la siguiente dirección web `localhost:8000`.

# Instalación de MkDocs

## En Linux

```bash
pip install mkdocs
```
## repositorios git

```bash
sudo python setup install
sudo python3 setup install (recomendado)
```

* https://github.com/mkdocs/mkdocs.git (no especifica)
* https://github.com/shauser/mkdocs-pdf-export-plugin (python3)
* https://github.com/squidfunk/mkdocs-material.git (python3)

## ¿ Más temas ?

[Temas](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes)

Atentamente:

Catalejo+ Team

jgcubidesc@unal.edu.co


## Dependencias

```bash
sudo apt install -y\
  zip unzip\
  gwave
```
