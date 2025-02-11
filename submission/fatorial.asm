@ /000
LD N ; ac = n  
JZ /f00 ; termina o programa se n = 0
SC /300 ; 
HM /a00 ;

@ /100
N K /004
RES K /001
CTE K /001
AUX K /001

@ /300
ML RES; AC = N * res 
MM RES; RES = N * res
LD N; ac = N
SB CTE; ac = N - 1
MM N ; N = ac
JZ /400; quebra o loop para N = 0 
JP /300; volta para o loop, se N !=0

@ /400
RS /006 ; quebra a sub

@ /f00 ; f00
HM /a00
