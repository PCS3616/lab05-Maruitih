; Inicialização
LV RES   ; 0x000 AC = RES = 0
MM ADRS  ; 0x002 ADRS = RES = 0

; RES = 1
LV BASE  ; 0x004 AC = BASE
AD RES   ; 0x006 AC = BASE + RES (1)
MM RES   ; 0x008 RES = 1

; STEPS != 0
LV STEPS ; 0x00A AC = STEPS = 63
JZ /02E  ; 0x00C Sai do algoritmo quando terminar os 63 loops 

; ADRS = ADRS + 2
LV ADRS  ; 0x00E AC = ADRS
AD ADD   ; 0x010 AC = ADRS + ADD
MM ADRS  ; 0x012 ADRS = AC

; ADRS = RES
LV RES   ; 0x014 AC = RES
MM ADRS  ; 0x016 ADRS = RES

; BASE = BASE + 2
LV BASE  ; 0x018 AC = BASE
AD ADD   ; 0x01A AC = BASE + ADD
MM BASE  ; 0x01C BASE = AC

; RES = RES + BASE
LV RES   ; 0x01E AC = RES
AD BASE  ; 0x020 AC = RES + BASE
MM RES   ; 0x022 RES = AC

; STEPS = STEPS - 1
LV STEPS ; 0x024 AC = STEPS
SB K /001; 0x026 AC = STEPS - 1
MM STEPS ; 0x028 STEPS = AC

JP /00E  ; 0x02A Volta para o início do loop
HM /02E  ; 0x02E HALT

; Valores iniciais
@ /060
RES    K /000
BASE   K /001
ADD    K /002
STEPS  K /03F
ADRS   K /100
