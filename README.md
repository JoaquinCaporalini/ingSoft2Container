# ingSoft2Container

Este proyecto espera poder resolver el problema de instalar y poner en funcionamiento las distintas herramientas necesarias para resolver el trabajo práctico planteado en la materia [Ingenieria del software 2](https://www.fceia.unr.edu.ar/ingsoft/) dictada por el **Dr Maximiliano Cristiá** para la [Lic. en Ciencias de la Computación - FCEIA - UNR](https://dcc.fceia.unr.edu.ar/).

## Herramientas

Las herramientas que se necesitan para el desarrollo del trabajo práctico son

### {Log}

Setlog es una herramienta desarrollada por Maximiliano Cristiá y Gianfranco Rossi la cual se enfoca en el diseño y desarrollo de un lenguaje de programación lógica de restricciones que incorpore las formas fundamentales de designación de conjuntos y una serie de operaciones primitivas para la gestión de conjuntos. Página oficial de los autores [aquí](https://www.clpset.unipr.it/setlog.Home.html).

### Z/Eves

Este pedazo de software es un asistente de pruebas el cual a partir de una especificación **Z** descripta en *LaTex* permite realizar demostraciones dadas en el.

### Fastest
Fastest es una herramienta cuyo desarrollo fue impulsado para intentar automatizar, lo más posible, el proceso de testing funcional basado en especificaciones Z. Este proyecto es construido por tesinistas de l departamento. Una tesina del tema [aquí](https://rephip.unr.edu.ar/server/api/core/bitstreams/e15ddf5a-6ea2-4c3c-a48e-676095901afb/content).

## Como usar este contenedor

Cosas a tener en cuenta se necesita docker.

Una vez clonado este repositorio (o hecho un fork 😉) solo tenes que ejecutar el script `run.sh`. Puede pasarte que necesites darle permiso de ejecución al script con

```bash
chmod u+x run.sh
```

Luego ya puedes ejecutar el script `./run.sh`. Otro inconveniente puede ser que se necesite ejecutar el script con permisos de **sudo** esto por como tengas configurado docker 😔.

El script carga todo el directorio dentro del contenedor así que todos los archivos que estén sueltos en el directorio serán cargados.

### Observación

Si usas mac con M1 tal vez debas modificar el script de run y agregarle `--platform linux/amd64`