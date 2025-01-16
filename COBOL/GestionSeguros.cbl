IDENTIFICATION DIVISION.
PROGRAM-ID. GestionSeguros.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT ArchivoClientes ASSIGN TO 'CLIENTES.DAT'
        ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD ArchivoClientes.
01 RegistroCliente.
   05 IDCliente         PIC X(10).
   05 NombreCliente     PIC X(30).
   05 MontoPoliza       PIC 9(8)V99.

WORKING-STORAGE SECTION.
01 TotalAsegurado        PIC 9(8)V99 VALUE ZERO.
01 FinArchivo            PIC X VALUE 'N'.

PROCEDURE DIVISION.
ProcesoPrincipal.
    OPEN INPUT ArchivoClientes.
    PERFORM HASTA FinArchivo = 'S'
       LEER ArchivoClientes INTO RegistroCliente
           AT END MOVE 'S' TO FinArchivo
           NOT AT END ADD MontoPoliza TO TotalAsegurado.
    CLOSE ArchivoClientes.
    DISPLAY 'Monto Total Asegurado: ' TotalAsegurado.
    STOP RUN.
