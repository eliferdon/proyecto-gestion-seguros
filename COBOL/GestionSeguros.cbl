       IDENTIFICATION DIVISION.
       PROGRAM-ID. GestionSeguros.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ArchivoClientes ASSIGN TO "CLIENTES.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD ArchivoClientes.
       01 RegistroCliente.
           05 IdCliente        PIC X(5).
           05 NombreCliente    PIC X(20).
           05 MontoPoliza      PIC 9(7)V99.

       WORKING-STORAGE SECTION.
       01 FinArchivo         PIC X VALUE "N".
       01 TotalAsegurado     PIC 9(8)V99 VALUE 0.

       PROCEDURE DIVISION.
       ProcesoPrincipal.
           OPEN INPUT ArchivoClientes
           PERFORM UNTIL FinArchivo = "S"
               READ ArchivoClientes INTO RegistroCliente
                   AT END
                       MOVE "S" TO FinArchivo
                   NOT AT END
                       ADD MontoPoliza TO TotalAsegurado
               END-READ
           END-PERFORM
           CLOSE ArchivoClientes
           DISPLAY "Monto Total Asegurado: " TotalAsegurado
           STOP RUN.
