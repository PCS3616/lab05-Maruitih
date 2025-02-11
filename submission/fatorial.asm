;Escrever um programa que executa o cálculo do fatorial de um número N (maior ou igual a 0), com uso de uma sub-rotina. 
;O programa principal armazena o valor de N na posição 0x100 e o resultado do fatorial na posição 0x102. 
;Deve-se criar uma sub-rotina para o cálculo do fatorial.


;"pseudocodigo"
;AC <= n 
;i <= (AC = n)
;vai para a subrotina for do fatorial
;opcode de temrino do programa 


;AC <= ACf
;f <= AC 
;AC <= i
;AC <= i - 1
;se AC == 0 vai para fim (opcode de temrino em cima)
;volta para primeira linha do for 

;declara as variaveis 


LD /200 ;0000 8200
MM /204 ;0002 9204  f = 1
LD /100 ;0004 8100  AC <= n 
MM /202 ;0006 9202  i <= (AC = n)
JZ /012 ;0008 1012  n = 0
SC /A10 ;000a aa10  vai pra sub
LD /204 ;000c 8204  AC <= f
MM /102 ;000e 9102  Resultado <= AC
HM /010 ;0010 c010  termina programa
LD /200 ;0012 8200  AC <= 1
MM /102 ;0014 9102  resultado <= 1
HM /016 ;0016 c016  termina 

@ /A10
JP /000 ;0a10 0000
LD /204 ;0a12 8204
ML /202 ;0a14 6202  AC <= ACi
MM /204 ;0a16 9204  f <= AC
LD /202 ;0a18 8202  AC <= i
SB /200 ;0a1a 5200  AC <= AC - 1
MM /202 ;0a1c 9202  i <= AC
JZ /A22 ;0a1e 1a22  se AC = 0 vai para  fim da sub 
JP /A12 ;0a20 0a12  senao volta para o for 
RS /A10 ;0a22 ba10  termina a fç

@ /100
N K /005 ;0100 0005  n

@ /200
CTE K /0001 ;0200 0001  cte com valor 1
I K /0000 ;0202 0000  i
F K /0000 ;0204 0000  f
