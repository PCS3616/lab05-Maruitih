;Fatorial
LD /100 ; AC = N
JZ /012 ; desvio para endereco de parada
LD /102 ; AC = resultado
ML /100 ; AC = resultado * N
MM /102 ; Load no valor de resultado
LD /100 ; AC = N
SB /104 ; N = N - 1
MM /100 ; Load no valor de N
JP /000 ; Desvio incondicional
HM /012 ; Endereco de parada

@ /0100
N K /0120 ; Valor de N
RES K /0001 ; Valor do resultado
T K /0001 ; Usado para N-1
