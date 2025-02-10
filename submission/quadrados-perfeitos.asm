;0x100 = 0
LV RES   ; 0x000 AC = RES = 0
LD ADRS  ; 0x002 ADRS = RES = 0

;RES = 1
AD BASE  ; 0x004 AC = RES + BASE = 1
LD RES   ; 0x006 RES = 1

; STEPS != 0
LV STEPS ; 0x008 AC = STEPS = 63
JZ       ; 0x00A Sai do algoritmo quando terminar os 63 loops 

;ADRS = ADRS + 2
LV ADRS  ; 0x00C AC = ADRS
AD ADD   ; 0x00E AC = ADRS + ADD
LD ADRS  ; 0x010 ADRS = AC

;ADRS = RES
LV RES   ; 0x012 AC = RES
LD ADRS  ; 0x014 ADRS = RES

;Base = Base + 2
LV BASE  ; 0x016 AC = BASE
AD BASE  ; 0x018 AC = BASE + ADD
LD BASE  ; 0x01A BASE = AC

;RES = RES + BASE
LV RES   ; 0x01E AC = RES
AD BASE  ; 0x020 AC = RES + BASE
LD RES   ; 0x022 RES = AC

;STEPS = STEPS - 1
LV STEPS ; 0x024 AC = STEPS
SB K /001; 0x026 AC = STEPS - 1
LB STEPS ; 0x028 STEPS = AC

JP /008  ; 0x02A Volta para o inicio do algoritmo
HM /026  ; 0x02E HALT

;Valores
@ /060
RES     /000
BASE    /001
ADD     /002
STEPS   =063
ADRS    /100