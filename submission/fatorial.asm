;Fatorial
K /8100 ; AC = N
K /1012 ; desvio para endereco de parada
K /8102 ; AC = resultado
K /6100 ; AC = resultado * N
K /9102 ; Load no valor de resultado
K /8100 ; AC = N
K /5104 ; N = N - 1
K /9100 ; Load no valor de N
K /0000 ; Desvio incondicional
K /C012 ; Endereco de parada

@ /0100
N K /120 ; Valor de N
RES K /0001 ; Valor do resultado
T K /0001 ; Usado para N-1
