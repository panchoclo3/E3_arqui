# Estructura del proyecto:

## El Computador se compone de:
- CPU
- ROM : Almacenamiento de Instrucciones
- RAM : Almacenamiento de DATA
- Programmer

## Componentes Agregados:
- Multiplexores
- Registros
- STATUS
- Program Counter
- Control Unit
- ALU

## Descripcion:
En la CPU se implementan las instrucciones a ser ejecutadas (MOV, ADD, SUB, JMP, AND, ETC...), ademas de la asignacion de señales por parte de la Control Unit por medio de OPCODE's, ademas de ser el medio por donde se pueden almacenar valores en las direcciones de memoria en RAM.

Por medio de la ROM se pueden implementar las instrucciones de 36 bits, las cuales seran ejecutadas por los otros componentes. Los 20 bits más significativos se utilizaron para los opcodes, mientras que los otros 16 son para el literal.

Se hace uso de señales para transportar distintos valores que sirven como bits de control, direcciones, entre otras.

En el archivo ```multiplicador.txt``` se encuentra el algoritmo de multiplicación implementado y el codigo de maquina escrito en la ROM de forma comentada.

La Basys es capaz de mostrar correctamente multiplicaciones incluyendo el 0, en la que además de guardar el resultado en la RAM, se deja en el REG B para mostrarlo en los ultimos displays.

## Tabla Operaciones Implementadas:

| Instrucción(OP) | Operandos | Comentario                                                                 |
|-----------------|-----------|----------------------------------------------------------------------------|
| MOV             | A,B       | Guarda el valor de Reg B en el Reg A                                       |
|                 | B,A       | Guarda el valor de Reg A en el Reg B                                       |
|                 | A,LIT     | Guarda el valor de LIT en el Reg A                                         |
|                 | B,LIT     | Guarda el valor de LIT en el Reg B                                         |
|                 | A,(DIR)   | Guarda el valor almacenado en la direccion de MEM DIR en el Reg A          |
|                 | B,(DIR)   | Guarda el valor almacenado en la direccion de MEM DIR en el Reg B          |
|                 | (DIR),A   | Guarda el valor de Reg A en la direcciokn de MEM DIR                       |
|                 | (DIR),B   | Guarda el valor de Reg B en la direcciokn de MEM DIR                       |
|-----------------|-----------|----------------------------------------------------------------------------|
| ADD             | A,B       | Guarda el resultado de A OP B en Reg A                                     |
| SUB             | B,A       | Guarda el resultado de A OP B en Reg B                                     |
| AND             | A,LIT     | Guarda el resultado de A OP LIT en Reg A                                   |
| OR              | B,LIT     | Guarda el resultado de B OP LIT en Reg B                                   |
| XOR             | A,(DIR)   | Guarda el resultado de A OP Mem[DIR] en Reg A                              |
|                 | B,(DIR)   | Guarda el resultado de B OP Mem[DIR] en Reg B                              |
|                 | (DIR)     | Guarda el resultado de A OP B en Mem[Dir]                                  |
|-----------------|-----------|----------------------------------------------------------------------------|
| NOT             | A         | Guarda el resultado de OP A en A                                           |
| SHR             | B,A       | Guarda el resultado de OP A en B                                           |
| SHL             | (DIR),A   | Guarda el resultado de OP A en Mem[Dir]                                    |
|-----------------|-----------|----------------------------------------------------------------------------|
| INC             | A         | Incrementa el valor de Reg A en una unidad                                 |
|                 | B         | Incrementa el valor de Reg B en una unidad                                 |
|                 | DIR       | Incrementa el valor de MEM[DIR] en una unidad                              |
|-----------------|-----------|----------------------------------------------------------------------------|
| DEC             | A         | Decrementa el valor de A en una unidad                                     |
|-----------------|-----------|----------------------------------------------------------------------------|
| CMP             | A,B       | Ejecuta la instrucción SUB A,B sin actualizar el valor de A                |
|                 | A,LIT     | Ejecuta la instrucción SUB A,LIT sin actualizar el valor de A              |
|                 | A,(DIR)   | Ejecuta la instrucción SUB A,DIR sin actualizar el valor de A              |
|-----------------|-----------|----------------------------------------------------------------------------|
| JMP             | INS       | Carga la dirección de la instrucción Ins en PC                             |
| JEQ             | INS       | Carga la dirección de la instrucción Ins en PC si en Status se cumple Z = 1|
| JNQ             | INS       | Carga la dirección de la instrucción Ins en PC si en Status se cumple Z = 0|
|-----------------|-----------|----------------------------------------------------------------------------|
| NOP             |           | No hace ningun cambio                                                      |
|-----------------|-----------|----------------------------------------------------------------------------|

 **NOTA:** Esta misma tabla con las señales y opcodes se puede visualizar en el archivo excel llamado ```Template-senales.xlsx```
## Aporte de cada integrante:

### Felipe Gonzalez :
- Construccion de registros de 1 bit y 16 bits
- Construccion de STATUS
- Implementacion de MUX
- Construccion Program Counter
- Escritura y creacion de Informe y README
### Felipe Riquelme :
- Construccion de ALU
- Construccion de Full Adder de 16 bits
- Operaciones ALU
- Escritura de Componentes en CPU
- Engineer de Entidad MUX
### David Parra :
- Asignacion de Opcodes
- Implementacion de Program Counter
- Construccion de Control Unit
- Escritura de Instrucciones en ROM
- Escritura Informe y README
