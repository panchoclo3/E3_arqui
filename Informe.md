# Estructura del proyecto:

## El Computador se compone de:
- CPU
- ROM : Almacenamiento de Instrucciones
- RAM : Almacenamiento de DATA
- Programmer

## Componentes Agregados ETAPA1:
- Multiplexores
- Registros
- STATUS
- Program Counter
- Control Unit
- ALU

## Componentes Agregados ETAPA2:
- Registro SP
- MUX PC
- MUX DATAIN
- MUX S
- 2 ADDER
- 

## Descripcion:
En la CPU se implementan las instrucciones a ser ejecutadas (MOV, ADD, SUB, JMP, AND, ETC...), ademas de la asignacion de señales por parte de la Control Unit por medio de OPCODE's, ademas de ser el medio por donde se pueden almacenar valores en las direcciones de memoria en RAM.

Por medio de la ROM se pueden implementar las instrucciones de 36 bits, las cuales seran ejecutadas por los otros componentes. Los 20 bits más significativos se utilizaron para los opcodes, mientras que los otros 16 son para el literal.

Se hace uso de señales para transportar distintos valores que sirven como bits de control, direcciones, entre otras.

En el archivo ```multiplicador.txt``` se encuentra el algoritmo de multiplicación implementado y el codigo de maquina escrito en la ROM de forma comentada.

La Basys es capaz de mostrar correctamente multiplicaciones incluyendo el 0, en la que además de guardar el resultado en la RAM, se deja en el REG B para mostrarlo en los ultimos displays.

Con la etapa 2 agregamos el assembly y tambien podemos llamar funciones

## Tabla Operaciones Implementadas:

| Instrucción(OP) | Operandos | Comentario                                                                 |
|-----------------|-----------|----------------------------------------------------------------------------|
| MOV             |           |                                                                            |
|10000100000000000| A,B       | Guarda el valor de Reg B en el Reg A                                       |
|01100000000000000| B,A       | Guarda el valor de Reg A en el Reg B                                       |
|10001100000000000| A,LIT     | Guarda el valor de LIT en el Reg A                                         |
|01001100000000000| B,LIT     | Guarda el valor de LIT en el Reg B                                         |
|10001000000000000| A,(DIR)   | Guarda el valor almacenado en la direccion de MEM DIR en el Reg A          |
|01001000000000000| B,(DIR)   | Guarda el valor almacenado en la direccion de MEM DIR en el Reg B          |
|00100000001000000| (DIR),A   | Guarda el valor de Reg A en la direccion de MEM DIR                        |
|00000100001000000| (DIR),B   | Guarda el valor de Reg B en la direccion de MEM DIR                        |
|10001000000010000| A,(B)     | Guarda el valor almacenado en la direccion de B en el Reg A                |
|01001000000010000| B,(B)     | Guarda el valor almacenado en la direccion de B en el Reg B                |
|00100000001010000| (B),A     | Guarda el valor de Reg A en la direccion contenida en el Reg B             |
|00001100001010000| (B),LIT   | Guarda el valor de LIT en en la direccion contenida en  el Reg B           |
|-----------------|-----------|----------------------------------------------------------------------------|
| ADD             |           |                                                                            |
|10100100000000000| A,B       | Guarda el resultado de A OP B en Reg A                                     |
|01100100000000000| B,A       | Guarda el resultado de A OP B en Reg B                                     |
|10101100000000000| A,LIT     | Guarda el resultado de A OP LIT en Reg A                                   |
|01101100000000000| B,LIT     | Guarda el resultado de B OP LIT en Reg B                                   |
|10101000000000000| A,(DIR)   | Guarda el resultado de A OP Mem[DIR] en Reg A                              |
|01101000000000000| B,(DIR)   | Guarda el resultado de B OP Mem[DIR] en Reg B                              |
|00100100001000000| (DIR)     | Guarda el resultado de A OP B en Mem[Dir]                                  |
|10101000000010000| A,(B)     | Guarda el resultado de A OP (B) en Reg A                                   |
|01101000000010000| B,(B)     | Guarda el resultado de B OP (B) en Reg B                                   |
|-----------------|-----------|----------------------------------------------------------------------------|
| SUB             |           |                                                                            |
|10100100100000000| A,B       | Guarda el resultado de A OP B en Reg A                                     |
|01100100100000000| B,A       | Guarda el resultado de A OP B en Reg B                                     |
|10101100100000000| A,LIT     | Guarda el resultado de A OP LIT en Reg A                                   |
|01101100100000000| B,LIT     | Guarda el resultado de B OP LIT en Reg B                                   |
|10101000100000000| A,(DIR)   | Guarda el resultado de A OP Mem[DIR] en Reg A                              |
|01101000100000000| B,(DIR)   | Guarda el resultado de B OP Mem[DIR] en Reg B                              |
|00100100101000000| (DIR)     | Guarda el resultado de A OP B en Mem[Dir]                                  |
|10101000100010000| A,(B)     | Guarda el resultado de A OP (B) en Reg A                                   |
|01101000100010000| B,(B)     | Guarda el resultado de B OP (B) en Reg B                                   |
|-----------------|-----------|----------------------------------------------------------------------------|
| AND             |           |                                                                            |
|10100101000000000| A,B       | Guarda el resultado de A OP B en Reg A                                     |
|01100101000000000| B,A       | Guarda el resultado de A OP B en Reg B                                     |
|10101101000000000| A,LIT     | Guarda el resultado de A OP LIT en Reg A                                   |
|01101101000000000| B,LIT     | Guarda el resultado de B OP LIT en Reg B                                   |
|10101001000000000| A,(DIR)   | Guarda el resultado de A OP Mem[DIR] en Reg A                              |
|01101001000000000| B,(DIR)   | Guarda el resultado de B OP Mem[DIR] en Reg B                              |
|00100101001000000| (DIR)     | Guarda el resultado de A OP B en Mem[Dir]                                  |
|10101001000010000| A,(B)     | Guarda el resultado de A OP (B) en Reg A                                   |
|01101001000010000| B,(B)     | Guarda el resultado de B OP (B) en Reg B                                   |
|-----------------|-----------|----------------------------------------------------------------------------|
| OR              |           |                                                                            |
|10100101100000000| A,B       | Guarda el resultado de A OP B en Reg A                                     |
|01100101100000000| B,A       | Guarda el resultado de A OP B en Reg B                                     |
|10101101100000000| A,LIT     | Guarda el resultado de A OP LIT en Reg A                                   |
|01101101100000000| B,LIT     | Guarda el resultado de B OP LIT en Reg B                                   |
|10101001100000000| A,(DIR)   | Guarda el resultado de A OP Mem[DIR] en Reg A                              |
|01101001100000000| B,(DIR)   | Guarda el resultado de B OP Mem[DIR] en Reg B                              |
|00100101101000000| (DIR)     | Guarda el resultado de A OP B en Mem[Dir]                                  |
|10101001100010000| A,(B)     | Guarda el resultado de A OP (B) en Reg A                                   |
|01101001100010000| B,(B)     | Guarda el resultado de B OP (B) en Reg B                                   |
|-----------------|-----------|----------------------------------------------------------------------------|
| XOR             |           |                                                                            |
|10100110000000000| A,B       | Guarda el resultado de A OP B en Reg A                                     |
|01100110000000000| B,A       | Guarda el resultado de A OP B en Reg B                                     |
|10101110000000000| A,LIT     | Guarda el resultado de A OP LIT en Reg A                                   |
|01101110000000000| B,LIT     | Guarda el resultado de B OP LIT en Reg B                                   |
|10101010000000000| A,(DIR)   | Guarda el resultado de A OP Mem[DIR] en Reg A                              |
|01101010000000000| B,(DIR)   | Guarda el resultado de B OP Mem[DIR] en Reg B                              |
|00100110001000000| (DIR)     | Guarda el resultado de A OP B en Mem[Dir]                                  |
|10101010000010000| A,(B)     | Guarda el resultado de A OP (B) en Reg A                                   |
|01101010000010000| B,(B)     | Guarda el resultado de B OP (B) en Reg B                                   |
|-----------------|-----------|----------------------------------------------------------------------------|
| NOT             |           |                                                                            |
|10100010100000000| A         | Guarda el resultado de OP A en A                                           |
|01100010100000000| B,A       | Guarda el resultado de OP A en B                                           |
|00100010101000000| (DIR),A   | Guarda el resultado de OP A en Mem[Dir]                                    |
|00100010101010000| (B),A     | Guarda el resultado de OP A en Mem[B]                                      |
|-----------------|-----------|----------------------------------------------------------------------------|
| SHR             |           |                                                                            |
|10100011100000000| A         | Guarda el resultado de OP A en A                                           |
|01100011100000000| B,A       | Guarda el resultado de OP A en B                                           |
|00100011101000000| (DIR),A   | Guarda el resultado de OP A en Mem[Dir]                                    |
|00100011101010000| (B),A     | Guarda el resultado de OP A en Mem[B]                                      |
|-----------------|-----------|----------------------------------------------------------------------------|
| SHL             |           |                                                                            |
|10100011000000000| A         | Guarda el resultado de OP A en A                                           |
|01100011000000000| B,A       | Guarda el resultado de OP A en B                                           |
|00100011001000000| (DIR),A   | Guarda el resultado de OP A en Mem[Dir]                                    |
|00100011001010000| (B),A     | Guarda el resultado de OP A en Mem[B]                                      |
|-----------------|-----------|----------------------------------------------------------------------------|
| INC             |           |                                                                            |
|10101100000000000| A         | Incrementa el valor de Reg A en una unidad                                 |
|01010100000000000| B         | Incrementa el valor de Reg B en una unidad                                 |
|00011000001000000| DIR       | Incrementa el valor de MEM[DIR] en una unidad                              |
|00011000001010000| (B)       | Incrementa el valor de MEM[B] en una unidad                              |
|-----------------|-----------|----------------------------------------------------------------------------|
| DEC             |           |                                                                            |
|10101100100000000| A         | Decrementa el valor de A en una unidad                                     |
|-----------------|-----------|----------------------------------------------------------------------------|
| CMP             |           |                                                                            |
|00100100100000000| A,B       | Ejecuta la instrucción SUB A,B sin actualizar el valor de A                |
|00101100100000000| A,LIT     | Ejecuta la instrucción SUB A,LIT sin actualizar el valor de A              |
|00101000100000000| A,(DIR)   | Ejecuta la instrucción SUB A,DIR sin actualizar el valor de A              |
|00101000100010000| A,(B)     | Ejecuta la instrucción SUB A,(B) sin actualizar el valor de A              |
|-----------------|-----------|----------------------------------------------------------------------------|
| JMP             |           |                                                                            |
|00000000010000000| INS       | Carga la dirección de la instrucción Ins en PC                             |
| JEQ             |           |                                                                            |
|00000000110000000| INS       | Carga la dirección de la instrucción Ins en PC si en Status se cumple Z = 1|
| JNE             |           |                                                                            |
|00000001010000000| INS       | Carga la dirección de la instrucción Ins en PC si en Status se cumple Z = 0|
| JGT             |           |                                                                            |
|00000001110000000| INS       |                                                                            |
| JGE             |           |                                                                            |
|00000010010000000| INS       |                                                                            |
| JLT             |           |                                                                            |
|00000010110000000| INS       |                                                                            |
| JLE             |           |                                                                            |
|00000011010000000| INS       |                                                                            |
| JCR             |           |                                                                            |
|00000011110000000| INS       |                                                                            |
|-----------------|-----------|----------------------------------------------------------------------------|
| PUSH            |           |                                                                            |
|00100000001100001| A         | Mete en A en MEM[SP] y resta a SP 1                                        |
|00000100001100001| B         | Mete en B en MEM[SP] y resta a SP 1                                        |
|-----------------|-----------|----------------------------------------------------------------------------|
| POP             |           |                                                                            |
|00000000000000010| IncSP     | Incrementa SP en 1                                                         |
|10001000000100000| A         | Mete MEM[SP] en Reg A                                                      |
|                 | IncSP     | Incrementa SP en 1                                                         |
|01001000000100000| B         | Mete MEM[SP] en Reg B                                                         |
|-----------------|-----------|----------------------------------------------------------------------------|
| CALL            |           |                                                                            |
|00000000000000000|           | Guarda en MEM[SP] PC+1                                                      |
|-----------------|-----------|----------------------------------------------------------------------------|
| RET             |           |                                                                            |
|00000000000000000|           | Carga el valor de MEM[SP] en PC                                                      |
|-----------------|-----------|----------------------------------------------------------------------------|
| NOP             |           |                                                                            |
|00000000000000000|           | No hace ningun cambio                                                      |
|-----------------|-----------|----------------------------------------------------------------------------|

 **NOTA:** Esta misma tabla con las señales y opcodes se puede visualizar en el archivo excel llamado ```Template-senales.xlsx```
## Aporte de cada integrante:

### Felipe Gonzalez :
- Construccion de registros de 1 bit y 16 bits
- Construccion de STATUS
- Implementacion de MUX
- Construccion Program Counter
- Escritura y creacion de Informe y README
- Assembly
### Felipe Riquelme :
- Construccion de ALU
- Construccion de Full Adder de 16 bits
- Operaciones ALU
- Escritura de Componentes en CPU
- Engineer de Entidad MUX
- MUX PC/MUX S/MUX DATAIN
- Actualizacion informe ETAPA2
### David Parra :
- Asignacion de Opcodes
- Implementacion de Program Counter
- Construccion de Control Unit
- Escritura de Instrucciones en ROM
- Escritura Informe y README
- Reg SP
- ADDERS
