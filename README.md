# Repositorio Actividad Evaluada N°5 :zap:
### Diseño y Estructura de Computadoras :computer:

Este repositorio contiene tres ejercicios en lenguaje ensamblador diseñados para practicar y comprender conceptos fundamentales de programación de bajo nivel. Cada ejercicio aborda una operación aritmética básica utilizando diferentes tamaños de registros, lo que permite familiarizarse con la manipulación de datos en ensamblador.

### Características :memo:

- Implementación de algoritmos en lenguaje ensamblador para operaciones aritméticas.
- Utilización de registros de diferentes tamaños para operaciones específicas.
- Documentación detallada para cada ejercicio.

### Estructura del Repositorio :small_red_triangle_down:

El repositorio se organiza en carpetas dedicadas a cada ejercicio individual. A continuación, se presenta una descripción de cada ejercicio junto con un enlace directo a su respectiva carpeta:

## 1. Resta de Tres Enteros en Ensamblador                                     :heavy_minus_sign:

Este es un ejercicio de programación en lenguaje ensamblador que realiza la resta de tres números enteros utilizando registros de 16 bits ingresados por el usuario y muestra el resultado en la consola.

### Contenido de la Carpeta  :file_folder:
[Ejercicio_1_Resta](https://github.com/Ricardo24Heredia/HR21024/tree/main/Ejercicio_1_Resta) :link: contiene los siguientes archivos:

- `resta_tres_enteros.asm`: Este es el archivo principal que contiene el código en lenguaje ensamblador que realiza la resta de tres enteros.
- `resta_tres_enteros.0`: Este archivo es un archivo objeto que contiene el código ensamblador compilado para la resta de tres enteros.
- `resta_tres_enteros`: Este es el archivo ejecutable que realiza la resta de tres enteros.
  
### Propósito Detallado :pushpin:

El propósito principal de este ejercicio es proporcionar una introducción práctica a la programación en lenguaje ensamblador, centrándose en los siguientes aspectos:

- **Manipulación de Entrada y Salida Estándar:** El programa solicita al usuario tres números enteros del 1 al 9 a través de la entrada estándar (consola) y muestra el resultado de la resta también en la salida estándar (consola).
- **Operaciones Aritméticas en Ensamblador:** Se realiza la operación de resta de tres números enteros en lenguaje ensamblador utilizando registros de 16 bits. Esto implica cargar los valores ingresados por el usuario, realizar la resta y mostrar el resultado.
- **Interfaz Hombre-Máquina:** El ejercicio proporciona una oportunidad para comprender cómo interactúa el código ensamblador con el sistema operativo y la interfaz de usuario a través de llamadas al sistema.
- **Práctica con Instrucciones y Directivas de Ensamblador:** Se utilizan instrucciones y directivas específicas de ensamblador, para realizar las operaciones necesarias como `mov` `sub` `add`. 

### Instrucciones de Uso :clipboard:

1. Asegúrese de tener un ensamblador y un linker instalados en su sistema.
2. Clone este repositorio en su sistema local.
3. Abra un terminal y navegue al directorio donde se encuentra el archivo `resta_tres_enteros.asm`.
4. En el terminal, ensamble el código utilizando el ensamblador adecuado. Por ejemplo:

    ```bash
    nasm -f elf32 resta_tres_enteros.asm
    ```

5. Luego, linkee el archivo objeto generado para crear el ejecutable:

    ```bash
    ld -o resta_tres_enteros resta_tres_enteros.o
    ```

6. Ejecute el programa resultante:

    ```bash
    ./resta_tres_enteros
    ```

7. Siga las instrucciones en pantalla para ingresar los tres números enteros y observe el resultado de la resta mostrado en la consola.

### Notas Adicionales  :newspaper:

- Este ejercicio se ha desarrollado y probado en un entorno Linux utilizando la arquitectura x86. Es posible que se necesiten ajustes para ejecutarlo en otros sistemas operativos o arquitecturas.
- Se recomienda tener un conocimiento básico de lenguaje ensamblador y de programación en general para comprender completamente el código y el proceso de ejecución.

## 2. Multiplicación de Dos Enteros en Ensamblador                                     :heavy_multiplication_x:

Este es un ejercicio de programación en lenguaje ensamblador que realiza la multiplicación de dos números enteros utilizando registros de 8 bits ingresados por el usuario y muestra el resultado en la consola.

### Contenido de la Carpeta :file_folder:
[Ejercicio_2_Multiplicación](https://github.com/Ricardo24Heredia/HR21024/tree/main/Ejercicio_2_Multiplicación) :link: contiene los siguientes archivos:

- `multiplicación_dos_enteros.asm`: Este es el archivo principal que contiene el código en lenguaje ensamblador que realiza la multiplicación de dos enteros.
- `multiplicación_dos_enteros.0`: Este archivo es un archivo objeto que contiene el código ensamblador compilado para la multiplicación de dos enteros.
- `multiplicación_dos_enteros`: Este es el archivo ejecutable que realiza la multiplicación de dos números enteros.
  
### Propósito Detallado :pushpin:

El propósito principal de este ejercicio es proporcionar una introducción práctica a la programación en lenguaje ensamblador, centrándose en los siguientes aspectos:

- **Manipulación de Entrada y Salida Estándar:** El programa solicita al usuario dos números enteros del 1 al 9 a través de la entrada estándar (consola) y muestra el resultado de la resta también en la salida estándar (consola).
- **Operaciones Aritméticas en Ensamblador:** Se realiza la operación de multiplicar dos números enteros en lenguaje ensamblador utilizando registros de 8 bits . Esto implica cargar los valores ingresados por el usuario, realizar la multiplicación y mostrar el resultado.
- **Interfaz Hombre-Máquina:** El ejercicio proporciona una oportunidad para comprender cómo interactúa el código ensamblador con el sistema operativo y la interfaz de usuario a través de llamadas al sistema.
- **Práctica con Instrucciones y Directivas de Ensamblador:** Se utilizan instrucciones y directivas específicas de ensamblador, para realizar las operaciones necesarias como `mov` `sub` `add` `mul`. 

### Instrucciones de Uso :clipboard:

1. Asegúrese de tener un ensamblador y un linker instalados en su sistema.
2. Clone este repositorio en su sistema local.
3. Abra un terminal y navegue al directorio donde se encuentra el archivo `multiplicación_dos_enteros.asm`.
4. En el terminal, ensamble el código utilizando el ensamblador adecuado. Por ejemplo:

    ```bash
    nasm -f elf32 multiplicación_dos_enteros.asm
    ```

5. Luego, linkee el archivo objeto generado para crear el ejecutable:

    ```bash
    ld -o multiplicación_dos_enteros multiplicacion_dos_enteros.o
    ```

6. Ejecute el programa resultante:

    ```bash
    ./multiplicación_dos_enteros
    ```

7. Siga las instrucciones en pantalla para ingresar los dos números enteros y observe el resultado de la multiplicación mostrado en la consola.

### Notas Adicionales  :newspaper:

- Este ejercicio se ha desarrollado y probado en un entorno Linux utilizando la arquitectura x86. Es posible que se necesiten ajustes para ejecutarlo en otros sistemas operativos o arquitecturas.
- Se recomienda tener un conocimiento básico de lenguaje ensamblador y de programación en general para comprender completamente el código y el proceso de ejecución.

## 3. División de Dos Enteros en Ensamblador                                     :heavy_division_sign:

Este es un ejercicio de programación en lenguaje ensamblador que realiza la división de dos números enteros utilizando registros de 32 bits ingresados por el usuario y muestra el resultado en la consola.

### Contenido de la Carpeta :file_folder:
[Ejercicio_3_División](https://github.com/Ricardo24Heredia/HR21024/tree/main/Ejercicio_3_División) :link: contiene los siguientes archivos:

- `división_dos_enteros.asm`: Este es el archivo principal que contiene el código en lenguaje ensamblador que realiza la división de dos enteros.
- `división_dos_enteros.0`: Este archivo es un archivo objeto que contiene el código ensamblador compilado para la división de dos enteros.
- `división_dos_enteros`: Este es el archivo ejecutable que realiza la división de dos números enteros.
  
### Propósito Detallado :pushpin:

El propósito principal de este ejercicio es proporcionar una introducción práctica a la programación en lenguaje ensamblador, centrándose en los siguientes aspectos:

- **Manipulación de Entrada y Salida Estándar:** El programa solicita al usuario dos números enteros del 1 al 9 a través de la entrada estándar (consola) y muestra el resultado de la resta también en la salida estándar (consola).
- **Operaciones Aritméticas en Ensamblador:** Se realiza la operación de dividir dos números enteros en lenguaje ensamblador utilizando registros de 32 bits . Esto implica cargar los valores ingresados por el usuario, realizar la división y mostrar el resultado.
- **Interfaz Hombre-Máquina:** El ejercicio proporciona una oportunidad para comprender cómo interactúa el código ensamblador con el sistema operativo y la interfaz de usuario a través de llamadas al sistema.
- **Práctica con Instrucciones y Directivas de Ensamblador:** Se utilizan instrucciones y directivas específicas de ensamblador, para realizar las operaciones necesarias como `mov` `sub` `add` `div`. 

### Instrucciones de Uso :clipboard:

1. Asegúrese de tener un ensamblador y un linker instalados en su sistema.
2. Clone este repositorio en su sistema local.
3. Abra un terminal y navegue al directorio donde se encuentra el archivo `división_dos_enteros.asm`.
4. En el terminal, ensamble el código utilizando el ensamblador adecuado. Por ejemplo:

    ```bash
    nasm -f elf32 división_dos_enteros.asm
    ```

5. Luego, linkee el archivo objeto generado para crear el ejecutable:

    ```bash
    ld -o division_dos_enteros división_dos_enteros.o
    ```

6. Ejecute el programa resultante:

    ```bash
    ./división_dos_enteros
    ```

7. Siga las instrucciones en pantalla para ingresar los dos números enteros y observe el resultado de la división mostrado en la consola.

### Notas Adicionales  :newspaper:

- Este ejercicio se ha desarrollado y probado en un entorno Linux utilizando la arquitectura x86. Es posible que se necesiten ajustes para ejecutarlo en otros sistemas operativos o arquitecturas.
- Se recomienda tener un conocimiento básico de lenguaje ensamblador y de programación en general para comprender completamente el código y el proceso de ejecución.
