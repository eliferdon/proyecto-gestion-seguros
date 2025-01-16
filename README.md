# Proyecto Gestión de Seguros (COBOL)

Este proyecto implementa un sistema básico en COBOL para procesar datos de clientes y calcular el monto total asegurado.

## Descripción

El programa lee datos de clientes desde un archivo secuencial (`CLIENTES.DAT`) y calcula el monto total de las pólizas aseguradas. El resultado se muestra en pantalla.

### Funcionalidades

- Leer datos de clientes desde un archivo.
- Procesar montos de pólizas aseguradas.
- Calcular el total asegurado.

## Estructura del Proyecto

- **`COBOL/GestionSeguros.cbl`**: Código fuente del programa COBOL.
- **`COBOL/CLIENTES.DAT`**: Archivo de datos de ejemplo con información de clientes.

## Instalar y Ejecutar

- brew install gnu-cobol
- cobc -x GestionSeguros.cbl -o GestionSeguros

## Archivo de Datos de Ejemplo (`CLIENTES.DAT`)

```txt
C001    Juan Perez          10000.50
C002    Maria Lopez         20000.75
C003    Carlos Ramirez      15000.30
