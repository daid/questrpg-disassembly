;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank07", ROMX[$4000], BANK[$07]

jp_07_4000:
    call call_00_0fac                                  ;; 07:4000 $cd $ac $0f
    ld   A, [wD51A]                                    ;; 07:4003 $fa $1a $d5
    rst  execJumpTable                                 ;; 07:4006 $c7
    dw   call_07_4021                                  ;; 07:4007 pP $00
    dw   call_07_40cd                                  ;; 07:4009 pP $01
    dw   call_07_40ef                                  ;; 07:400b pP $02
    dw   call_07_416a                                  ;; 07:400d pP $03
    dw   call_07_4181                                  ;; 07:400f pP $04
    dw   call_07_421a                                  ;; 07:4011 pP $05
    dw   call_07_4264                                  ;; 07:4013 pP $06
    dw   call_07_4292                                  ;; 07:4015 pP $07
    dw   call_07_42c3                                  ;; 07:4017 ?? $08
    dw   call_07_43a0                                  ;; 07:4019 pP $09
    dw   call_07_4448                                  ;; 07:401b pP $0a
    dw   call_07_450d                                  ;; 07:401d pP $0b
    dw   call_07_4578                                  ;; 07:401f pP $0c

call_07_4021:
    call startHardwareTimer                            ;; 07:4021 $cd $39 $0f
    call disableLCD                                    ;; 07:4024 $cd $23 $04
    call clearVRAM                                     ;; 07:4027 $cd $5f $04
    call call_07_46ef                                  ;; 07:402a $cd $ef $46
    call call_00_3bf7                                  ;; 07:402d $cd $f7 $3b
    ld   C, $00                                        ;; 07:4030 $0e $00
    ld   B, $03                                        ;; 07:4032 $06 $03
    ld   HL, wC456                                     ;; 07:4034 $21 $56 $c4
.jr_07_4037:
    ld   A, [HL+]                                      ;; 07:4037 $2a
    and  A, A                                          ;; 07:4038 $a7
    jr   Z, .jr_07_403d                                ;; 07:4039 $28 $02
    ld   C, $01                                        ;; 07:403b $0e $01
.jr_07_403d:
    dec  B                                             ;; 07:403d $05
    jr   NZ, .jr_07_4037                               ;; 07:403e $20 $f7
    ld   A, C                                          ;; 07:4040 $79
    ld   [wD51C], A                                    ;; 07:4041 $ea $1c $d5
    ldh  A, [hIsGBC]                                   ;; 07:4044 $f0 $fe
    and  A, A                                          ;; 07:4046 $a7
    jr   Z, .jr_07_4073                                ;; 07:4047 $28 $2a
    ld   BC, $40                                       ;; 07:4049 $01 $40 $00
    ld   DE, wCE25                                     ;; 07:404c $11 $25 $ce
    ld   HL, data_07_4fbd                              ;; 07:404f $21 $bd $4f
    call memcopy                                       ;; 07:4052 $cd $4e $04
    call call_07_472c                                  ;; 07:4055 $cd $2c $47
    ld   HL, wCDA5                                     ;; 07:4058 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 07:405b $cd $9f $04
    ld   A, $01                                        ;; 07:405e $3e $01
    ldh  [rVBK], A                                     ;; 07:4060 $e0 $4f
    ld   BC, $1214                                     ;; 07:4062 $01 $14 $12
    ld   DE, data_07_5435                              ;; 07:4065 $11 $35 $54
    ld   HL, $9800                                     ;; 07:4068 $21 $00 $98
    call call_07_46fa                                  ;; 07:406b $cd $fa $46
    xor  A, A                                          ;; 07:406e $af
    ldh  [rVBK], A                                     ;; 07:406f $e0 $4f
    jr   .jr_07_407a                                   ;; 07:4071 $18 $07
.jr_07_4073:
    xor  A, A                                          ;; 07:4073 $af
    ldh  [rBGP], A                                     ;; 07:4074 $e0 $47
    ldh  [rOBP0], A                                    ;; 07:4076 $e0 $48
    ldh  [rOBP1], A                                    ;; 07:4078 $e0 $49
.jr_07_407a:
    ld   BC, $6c0                                      ;; 07:407a $01 $c0 $06
    ld   DE, $8800                                     ;; 07:407d $11 $00 $88
    ld   HL, data_07_48fd                              ;; 07:4080 $21 $fd $48
    call memcopy                                       ;; 07:4083 $cd $4e $04
    ld   BC, $1214                                     ;; 07:4086 $01 $14 $12
    ld   DE, data_07_52cd                              ;; 07:4089 $11 $cd $52
    ld   HL, $9800                                     ;; 07:408c $21 $00 $98
    call call_07_46fa                                  ;; 07:408f $cd $fa $46
    ld   A, $5a                                        ;; 07:4092 $3e $5a
    ld   [wD501], A                                    ;; 07:4094 $ea $01 $d5
    xor  A, A                                          ;; 07:4097 $af
    ld   [wSCY], A                                     ;; 07:4098 $ea $87 $d5
    ld   [wSCX], A                                     ;; 07:409b $ea $88 $d5
    ld   A, $c3                                        ;; 07:409e $3e $c3
    ldh  [rLCDC], A                                    ;; 07:40a0 $e0 $40
    xor  A, A                                          ;; 07:40a2 $af
    ldh  [rIF], A                                      ;; 07:40a3 $e0 $0f
    ld   A, $01                                        ;; 07:40a5 $3e $01
    ldh  [rIE], A                                      ;; 07:40a7 $e0 $ff
    ei                                                 ;; 07:40a9 $fb
    ld   A, $01                                        ;; 07:40aa $3e $01
    ld   [wD1EB], A                                    ;; 07:40ac $ea $eb $d1
    ld   BC, $c0                                       ;; 07:40af $01 $c0 $00
    ld   HL, wD1EC                                     ;; 07:40b2 $21 $ec $d1
    call memzero                                       ;; 07:40b5 $cd $46 $04
    xor  A, A                                          ;; 07:40b8 $af
    ld   [wD2B8], A                                    ;; 07:40b9 $ea $b8 $d2
    ld   [wD2B9], A                                    ;; 07:40bc $ea $b9 $d2
    ld   [wD1EB], A                                    ;; 07:40bf $ea $eb $d1
    ld   A, $01                                        ;; 07:40c2 $3e $01
    ld   [wD51B], A                                    ;; 07:40c4 $ea $1b $d5
    ld   A, $07                                        ;; 07:40c7 $3e $07
    ld   [wD51A], A                                    ;; 07:40c9 $ea $1a $d5
    ret                                                ;; 07:40cc $c9

call_07_40cd:
    ld   A, [wJoypadPressed]                           ;; 07:40cd $fa $7f $d5
    and  A, $0f                                        ;; 07:40d0 $e6 $0f
    jr   Z, .jr_07_40df                                ;; 07:40d2 $28 $0b
    ld   A, $04                                        ;; 07:40d4 $3e $04
    ld   [wD51B], A                                    ;; 07:40d6 $ea $1b $d5
    ld   A, $06                                        ;; 07:40d9 $3e $06
    ld   [wD51A], A                                    ;; 07:40db $ea $1a $d5
    ret                                                ;; 07:40de $c9
.jr_07_40df:
    ld   HL, wD501                                     ;; 07:40df $21 $01 $d5
    dec  [HL]                                          ;; 07:40e2 $35
    ret  NZ                                            ;; 07:40e3 $c0
    ld   A, $02                                        ;; 07:40e4 $3e $02
    ld   [wD51B], A                                    ;; 07:40e6 $ea $1b $d5
    ld   A, $06                                        ;; 07:40e9 $3e $06
    ld   [wD51A], A                                    ;; 07:40eb $ea $1a $d5
    ret                                                ;; 07:40ee $c9

call_07_40ef:
    di                                                 ;; 07:40ef $f3
    call disableLCD                                    ;; 07:40f0 $cd $23 $04
    call clearVRAM                                     ;; 07:40f3 $cd $5f $04
    call call_07_46ef                                  ;; 07:40f6 $cd $ef $46
    ldh  A, [hIsGBC]                                   ;; 07:40f9 $f0 $fe
    and  A, A                                          ;; 07:40fb $a7
    jr   Z, .jr_07_4128                                ;; 07:40fc $28 $2a
    ld   BC, $40                                       ;; 07:40fe $01 $40 $00
    ld   DE, wCE25                                     ;; 07:4101 $11 $25 $ce
    ld   HL, data_07_4fbd                              ;; 07:4104 $21 $bd $4f
    call memcopy                                       ;; 07:4107 $cd $4e $04
    call call_07_472c                                  ;; 07:410a $cd $2c $47
    ld   HL, wCDA5                                     ;; 07:410d $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 07:4110 $cd $9f $04
    ld   A, $01                                        ;; 07:4113 $3e $01
    ldh  [rVBK], A                                     ;; 07:4115 $e0 $4f
    ld   BC, $1214                                     ;; 07:4117 $01 $14 $12
    ld   DE, data_07_5165                              ;; 07:411a $11 $65 $51
    ld   HL, $9800                                     ;; 07:411d $21 $00 $98
    call call_07_46fa                                  ;; 07:4120 $cd $fa $46
    xor  A, A                                          ;; 07:4123 $af
    ldh  [rVBK], A                                     ;; 07:4124 $e0 $4f
    jr   .jr_07_412f                                   ;; 07:4126 $18 $07
.jr_07_4128:
    xor  A, A                                          ;; 07:4128 $af
    ldh  [rBGP], A                                     ;; 07:4129 $e0 $47
    ldh  [rOBP0], A                                    ;; 07:412b $e0 $48
    ldh  [rOBP1], A                                    ;; 07:412d $e0 $49
.jr_07_412f:
    ld   BC, $6c0                                      ;; 07:412f $01 $c0 $06
    ld   DE, $8800                                     ;; 07:4132 $11 $00 $88
    ld   HL, data_07_48fd                              ;; 07:4135 $21 $fd $48
    call memcopy                                       ;; 07:4138 $cd $4e $04
    ld   BC, $1214                                     ;; 07:413b $01 $14 $12
    ld   DE, data_07_4ffd                              ;; 07:413e $11 $fd $4f
    ld   HL, $9800                                     ;; 07:4141 $21 $00 $98
    call call_07_46fa                                  ;; 07:4144 $cd $fa $46
    ld   A, $5a                                        ;; 07:4147 $3e $5a
    ld   [wD501], A                                    ;; 07:4149 $ea $01 $d5
    xor  A, A                                          ;; 07:414c $af
    ld   [wSCY], A                                     ;; 07:414d $ea $87 $d5
    ld   [wSCX], A                                     ;; 07:4150 $ea $88 $d5
    ld   A, $c3                                        ;; 07:4153 $3e $c3
    ldh  [rLCDC], A                                    ;; 07:4155 $e0 $40
    xor  A, A                                          ;; 07:4157 $af
    ldh  [rIF], A                                      ;; 07:4158 $e0 $0f
    ld   A, $01                                        ;; 07:415a $3e $01
    ldh  [rIE], A                                      ;; 07:415c $e0 $ff
    ei                                                 ;; 07:415e $fb
    ld   A, $03                                        ;; 07:415f $3e $03
    ld   [wD51B], A                                    ;; 07:4161 $ea $1b $d5
    ld   A, $07                                        ;; 07:4164 $3e $07
    ld   [wD51A], A                                    ;; 07:4166 $ea $1a $d5
    ret                                                ;; 07:4169 $c9

call_07_416a:
    ld   A, [wJoypadPressed]                           ;; 07:416a $fa $7f $d5
    and  A, $0f                                        ;; 07:416d $e6 $0f
    jr   NZ, .jr_07_4176                               ;; 07:416f $20 $05
    ld   HL, wD501                                     ;; 07:4171 $21 $01 $d5
    dec  [HL]                                          ;; 07:4174 $35
    ret  NZ                                            ;; 07:4175 $c0
.jr_07_4176:
    ld   A, $04                                        ;; 07:4176 $3e $04
    ld   [wD51B], A                                    ;; 07:4178 $ea $1b $d5
    ld   A, $06                                        ;; 07:417b $3e $06
    ld   [wD51A], A                                    ;; 07:417d $ea $1a $d5
    ret                                                ;; 07:4180 $c9

call_07_4181:
    di                                                 ;; 07:4181 $f3
    call disableLCD                                    ;; 07:4182 $cd $23 $04
    call clearVRAM                                     ;; 07:4185 $cd $5f $04
    call call_07_46ef                                  ;; 07:4188 $cd $ef $46
    ld   BC, $21                                       ;; 07:418b $01 $21 $00
    ld   HL, wD529                                     ;; 07:418e $21 $29 $d5
    call memzero                                       ;; 07:4191 $cd $46 $04
    ldh  A, [hIsGBC]                                   ;; 07:4194 $f0 $fe
    and  A, A                                          ;; 07:4196 $a7
    jr   Z, .jr_07_41c6                                ;; 07:4197 $28 $2d
    ld   BC, $80                                       ;; 07:4199 $01 $80 $00
    ld   DE, wCDA5                                     ;; 07:419c $11 $a5 $cd
    ld   HL, data_07_699d                              ;; 07:419f $21 $9d $69
    call memcopy                                       ;; 07:41a2 $cd $4e $04
    ld   HL, wCDA5                                     ;; 07:41a5 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 07:41a8 $cd $9f $04
    ld   HL, wCDE5                                     ;; 07:41ab $21 $e5 $cd
    call setSpritePaletteData                          ;; 07:41ae $cd $ad $04
    ld   A, $01                                        ;; 07:41b1 $3e $01
    ldh  [rVBK], A                                     ;; 07:41b3 $e0 $4f
    ld   BC, $1214                                     ;; 07:41b5 $01 $14 $12
    ld   DE, data_07_6b85                              ;; 07:41b8 $11 $85 $6b
    ld   HL, $9800                                     ;; 07:41bb $21 $00 $98
    call call_07_46fa                                  ;; 07:41be $cd $fa $46
    xor  A, A                                          ;; 07:41c1 $af
    ldh  [rVBK], A                                     ;; 07:41c2 $e0 $4f
    jr   .jr_07_41d0                                   ;; 07:41c4 $18 $0a
.jr_07_41c6:
    xor  A, $e4                                        ;; 07:41c6 $ee $e4
    ldh  [rBGP], A                                     ;; 07:41c8 $e0 $47
    ldh  [rOBP0], A                                    ;; 07:41ca $e0 $48
    ld   A, $d0                                        ;; 07:41cc $3e $d0
    ldh  [rOBP1], A                                    ;; 07:41ce $e0 $49
.jr_07_41d0:
    ld   BC, $400                                      ;; 07:41d0 $01 $00 $04
    ld   DE, $8000                                     ;; 07:41d3 $11 $00 $80
    ld   HL, data_07_559d                              ;; 07:41d6 $21 $9d $55
    call memcopy                                       ;; 07:41d9 $cd $4e $04
    ld   BC, $1000                                     ;; 07:41dc $01 $00 $10
    ld   DE, $8800                                     ;; 07:41df $11 $00 $88
    ld   HL, data_07_599d                              ;; 07:41e2 $21 $9d $59
    call memcopy                                       ;; 07:41e5 $cd $4e $04
    ld   BC, $1214                                     ;; 07:41e8 $01 $14 $12
    ld   DE, data_07_6a1d                              ;; 07:41eb $11 $1d $6a
    ld   HL, $9800                                     ;; 07:41ee $21 $00 $98
    call call_07_46fa                                  ;; 07:41f1 $cd $fa $46
    ld   A, $70                                        ;; 07:41f4 $3e $70
    ld   [wSCY], A                                     ;; 07:41f6 $ea $87 $d5
    ld   A, $02                                        ;; 07:41f9 $3e $02
    ld   [wD56F], A                                    ;; 07:41fb $ea $6f $d5
    ld   A, $c0                                        ;; 07:41fe $3e $c0
    ld   [wD572], A                                    ;; 07:4200 $ea $72 $d5
    ld   A, $c7                                        ;; 07:4203 $3e $c7
    ldh  [rLCDC], A                                    ;; 07:4205 $e0 $40
    xor  A, A                                          ;; 07:4207 $af
    ldh  [rIF], A                                      ;; 07:4208 $e0 $0f
    ld   A, $01                                        ;; 07:420a $3e $01
    ldh  [rIE], A                                      ;; 07:420c $e0 $ff
    ei                                                 ;; 07:420e $fb
    ld   A, $86                                        ;; 07:420f $3e $86
    call call_00_11a8                                  ;; 07:4211 $cd $a8 $11
    ld   A, $05                                        ;; 07:4214 $3e $05
    ld   [wD51A], A                                    ;; 07:4216 $ea $1a $d5
    ret                                                ;; 07:4219 $c9

call_07_421a:
    ld   A, [wJoypadPressed]                           ;; 07:421a $fa $7f $d5
    and  A, $0f                                        ;; 07:421d $e6 $0f
    jr   NZ, .jr_07_4259                               ;; 07:421f $20 $38
    ld   HL, wD56F                                     ;; 07:4221 $21 $6f $d5
    dec  [HL]                                          ;; 07:4224 $35
    ret  NZ                                            ;; 07:4225 $c0
    ld   [HL], $02                                     ;; 07:4226 $36 $02
    ld   HL, wD572                                     ;; 07:4228 $21 $72 $d5
    dec  [HL]                                          ;; 07:422b $35
    ld   A, [HL]                                       ;; 07:422c $7e
    ld   B, A                                          ;; 07:422d $47
    ld   C, $30                                        ;; 07:422e $0e $30
    ld   A, $14                                        ;; 07:4230 $3e $14
    ld   DE, data_07_7005                              ;; 07:4232 $11 $05 $70
    ld   HL, wShadowOAM.1C                             ;; 07:4235 $21 $1c $c0
    call call_07_470e                                  ;; 07:4238 $cd $0e $47
    ld   HL, wSCY                                      ;; 07:423b $21 $87 $d5
    inc  [HL]                                          ;; 07:423e $34
    ret  NZ                                            ;; 07:423f $c0
    ld   DE, data_07_705d                              ;; 07:4240 $11 $5d $70
    ld   HL, wD577                                     ;; 07:4243 $21 $77 $d5
    ld   A, E                                          ;; 07:4246 $7b
    ld   [HL+], A                                      ;; 07:4247 $22
    ld   [HL], D                                       ;; 07:4248 $72
    ld   A, $5b                                        ;; 07:4249 $3e $5b
    ld   [wD572], A                                    ;; 07:424b $ea $72 $d5
    ld   A, $08                                        ;; 07:424e $3e $08
    ld   [wD51A], A                                    ;; 07:4250 $ea $1a $d5
    ld   A, $0a                                        ;; 07:4253 $3e $0a
    ld   [wD51B], A                                    ;; 07:4255 $ea $1b $d5
    ret                                                ;; 07:4258 $c9
.jr_07_4259:
    ld   A, $06                                        ;; 07:4259 $3e $06
    ld   [wD51A], A                                    ;; 07:425b $ea $1a $d5
    ld   A, $09                                        ;; 07:425e $3e $09
    ld   [wD51B], A                                    ;; 07:4260 $ea $1b $d5
    ret                                                ;; 07:4263 $c9

call_07_4264:
    ldh  A, [hIsGBC]                                   ;; 07:4264 $f0 $fe
    and  A, A                                          ;; 07:4266 $a7
    jr   Z, .jr_07_427a                                ;; 07:4267 $28 $11
    ld   A, $01                                        ;; 07:4269 $3e $01
    ld   [wD4FA], A                                    ;; 07:426b $ea $fa $d4
    ld   A, $00                                        ;; 07:426e $3e $00
    ld   B, $10                                        ;; 07:4270 $06 $10
    ld   HL, wCDA5                                     ;; 07:4272 $21 $a5 $cd
    call call_07_476e                                  ;; 07:4275 $cd $6e $47
    jr   .jr_07_427d                                   ;; 07:4278 $18 $03
.jr_07_427a:
    call call_07_473b                                  ;; 07:427a $cd $3b $47
.jr_07_427d:
    ld   HL, wD500                                     ;; 07:427d $21 $00 $d5
    inc  [HL]                                          ;; 07:4280 $34
    ld   A, [HL]                                       ;; 07:4281 $7e
    cp   A, $20                                        ;; 07:4282 $fe $20
    ret  C                                             ;; 07:4284 $d8
    ld   [HL], $00                                     ;; 07:4285 $36 $00
    xor  A, A                                          ;; 07:4287 $af
    ld   [wD4FA], A                                    ;; 07:4288 $ea $fa $d4
    ld   A, [wD51B]                                    ;; 07:428b $fa $1b $d5
    ld   [wD51A], A                                    ;; 07:428e $ea $1a $d5
    ret                                                ;; 07:4291 $c9

call_07_4292:
    ldh  A, [hIsGBC]                                   ;; 07:4292 $f0 $fe
    and  A, A                                          ;; 07:4294 $a7
    jr   Z, .jr_07_42ab                                ;; 07:4295 $28 $14
    ld   A, $01                                        ;; 07:4297 $3e $01
    ld   [wD4FA], A                                    ;; 07:4299 $ea $fa $d4
    ld   A, $00                                        ;; 07:429c $3e $00
    ld   B, $10                                        ;; 07:429e $06 $10
    ld   DE, wCE25                                     ;; 07:42a0 $11 $25 $ce
    ld   HL, wCDA5                                     ;; 07:42a3 $21 $a5 $cd
    call call_07_47e0                                  ;; 07:42a6 $cd $e0 $47
    jr   .jr_07_42ae                                   ;; 07:42a9 $18 $03
.jr_07_42ab:
    call call_07_47ad                                  ;; 07:42ab $cd $ad $47
.jr_07_42ae:
    ld   HL, wD500                                     ;; 07:42ae $21 $00 $d5
    inc  [HL]                                          ;; 07:42b1 $34
    ld   A, [HL]                                       ;; 07:42b2 $7e
    cp   A, $20                                        ;; 07:42b3 $fe $20
    ret  C                                             ;; 07:42b5 $d8
    ld   [HL], $00                                     ;; 07:42b6 $36 $00
    xor  A, A                                          ;; 07:42b8 $af
    ld   [wD4FA], A                                    ;; 07:42b9 $ea $fa $d4
    ld   A, [wD51B]                                    ;; 07:42bc $fa $1b $d5
    ld   [wD51A], A                                    ;; 07:42bf $ea $1a $d5
    ret                                                ;; 07:42c2 $c9

call_07_42c3:
    ld   A, [wJoypadPressed]                           ;; 07:42c3 $fa $7f $d5
    and  A, $09                                        ;; 07:42c6 $e6 $09
    jr   Z, .jr_07_42d5                                ;; 07:42c8 $28 $0b
    ld   A, $06                                        ;; 07:42ca $3e $06
    ld   [wD51A], A                                    ;; 07:42cc $ea $1a $d5
    ld   A, $09                                        ;; 07:42cf $3e $09
    ld   [wD51B], A                                    ;; 07:42d1 $ea $1b $d5
    ret                                                ;; 07:42d4 $c9
.jr_07_42d5:
    ld   HL, wD572                                     ;; 07:42d5 $21 $72 $d5
    dec  [HL]                                          ;; 07:42d8 $35
    jp   NZ, .jp_07_430c                               ;; 07:42d9 $c2 $0c $43
    ld   BC, $50                                       ;; 07:42dc $01 $50 $00
    ld   HL, wShadowOAM.1C                             ;; 07:42df $21 $1c $c0
    call memzero                                       ;; 07:42e2 $cd $46 $04
    ld   A, [wD51C]                                    ;; 07:42e5 $fa $1c $d5
    and  A, A                                          ;; 07:42e8 $a7
    ld   A, $28                                        ;; 07:42e9 $3e $28
    jr   Z, .jr_07_42ef                                ;; 07:42eb $28 $02
    ld   A, $68                                        ;; 07:42ed $3e $68
.jr_07_42ef:
    ld   [wD572], A                                    ;; 07:42ef $ea $72 $d5
    xor  A, A                                          ;; 07:42f2 $af
    ld   [wD570], A                                    ;; 07:42f3 $ea $70 $d5
    ld   A, $1e                                        ;; 07:42f6 $3e $1e
    ld   [wD574], A                                    ;; 07:42f8 $ea $74 $d5
    ld   A, $78                                        ;; 07:42fb $3e $78
    ld   [wD575], A                                    ;; 07:42fd $ea $75 $d5
    ld   A, [wD51B]                                    ;; 07:4300 $fa $1b $d5
    ld   [wD51A], A                                    ;; 07:4303 $ea $1a $d5
    ld   A, $05                                        ;; 07:4306 $3e $05
    ld   [wD4FA], A                                    ;; 07:4308 $ea $fa $d4
    ret                                                ;; 07:430b $c9
.jp_07_430c:
    ld   A, [HL]                                       ;; 07:430c $7e
    cp   A, $4e                                        ;; 07:430d $fe $4e
    ld   BC, $0c                                       ;; 07:430f $01 $0c $00
    jr   Z, .jr_07_431b                                ;; 07:4312 $28 $07
    cp   A, $46                                        ;; 07:4314 $fe $46
    ld   BC, $14                                       ;; 07:4316 $01 $14 $00
    jr   NZ, .jr_07_4324                               ;; 07:4319 $20 $09
.jr_07_431b:
    ld   DE, wShadowOAM.08                             ;; 07:431b $11 $08 $c0
    ld   HL, data_07_6ff1                              ;; 07:431e $21 $f1 $6f
    call memcopy                                       ;; 07:4321 $cd $4e $04
.jr_07_4324:
    ld   HL, wD577                                     ;; 07:4324 $21 $77 $d5
    ld   A, [HL+]                                      ;; 07:4327 $2a
    ld   H, [HL]                                       ;; 07:4328 $66
    ld   L, A                                          ;; 07:4329 $6f
    push HL                                            ;; 07:432a $e5
    ld   DE, wD529                                     ;; 07:432b $11 $29 $d5
    ld   B, $04                                        ;; 07:432e $06 $04
.jr_07_4330:
    push BC                                            ;; 07:4330 $c5
    ld   A, [HL+]                                      ;; 07:4331 $2a
    ld   C, A                                          ;; 07:4332 $4f
    ld   A, [HL+]                                      ;; 07:4333 $2a
    ld   B, A                                          ;; 07:4334 $47
    and  A, $03                                        ;; 07:4335 $e6 $03
    swap A                                             ;; 07:4337 $cb $37
    ld   B, A                                          ;; 07:4339 $47
    ld   A, C                                          ;; 07:433a $79
    and  A, $e0                                        ;; 07:433b $e6 $e0
    swap A                                             ;; 07:433d $cb $37
    or   A, B                                          ;; 07:433f $b0
    push HL                                            ;; 07:4340 $e5
    ld   HL, data_07_48d9                              ;; 07:4341 $21 $d9 $48
    add  A, L                                          ;; 07:4344 $85
    ld   L, A                                          ;; 07:4345 $6f
    jr   NC, .jr_07_4349                               ;; 07:4346 $30 $01
    inc  H                                             ;; 07:4348 $24
.jr_07_4349:
    ld   A, C                                          ;; 07:4349 $79
    and  A, $1f                                        ;; 07:434a $e6 $1f
    ld   B, $00                                        ;; 07:434c $06 $00
    ld   C, A                                          ;; 07:434e $4f
    ld   A, [HL+]                                      ;; 07:434f $2a
    ld   H, [HL]                                       ;; 07:4350 $66
    ld   L, A                                          ;; 07:4351 $6f
    add  HL, BC                                        ;; 07:4352 $09
    ld   B, H                                          ;; 07:4353 $44
    ld   C, L                                          ;; 07:4354 $4d
    ld   HL, data_07_6ced                              ;; 07:4355 $21 $ed $6c
    add  HL, BC                                        ;; 07:4358 $09
    ld   A, [HL]                                       ;; 07:4359 $7e
    ld   [DE], A                                       ;; 07:435a $12
    inc  DE                                            ;; 07:435b $13
    pop  HL                                            ;; 07:435c $e1
    pop  BC                                            ;; 07:435d $c1
    dec  B                                             ;; 07:435e $05
    jr   NZ, .jr_07_4330                               ;; 07:435f $20 $cf
    pop  HL                                            ;; 07:4361 $e1
    ldh  A, [hIsGBC]                                   ;; 07:4362 $f0 $fe
    and  A, A                                          ;; 07:4364 $a7
    jr   Z, .jr_07_439a                                ;; 07:4365 $28 $33
    ld   B, $04                                        ;; 07:4367 $06 $04
.jr_07_4369:
    push BC                                            ;; 07:4369 $c5
    ld   A, [HL+]                                      ;; 07:436a $2a
    ld   C, A                                          ;; 07:436b $4f
    ld   A, [HL+]                                      ;; 07:436c $2a
    ld   B, A                                          ;; 07:436d $47
    and  A, $03                                        ;; 07:436e $e6 $03
    swap A                                             ;; 07:4370 $cb $37
    ld   B, A                                          ;; 07:4372 $47
    ld   A, C                                          ;; 07:4373 $79
    and  A, $e0                                        ;; 07:4374 $e6 $e0
    swap A                                             ;; 07:4376 $cb $37
    or   A, B                                          ;; 07:4378 $b0
    push HL                                            ;; 07:4379 $e5
    ld   HL, data_07_48d9                              ;; 07:437a $21 $d9 $48
    add  A, L                                          ;; 07:437d $85
    ld   L, A                                          ;; 07:437e $6f
    jr   NC, .jr_07_4382                               ;; 07:437f $30 $01
    inc  H                                             ;; 07:4381 $24
.jr_07_4382:
    ld   A, C                                          ;; 07:4382 $79
    and  A, $1f                                        ;; 07:4383 $e6 $1f
    ld   B, $00                                        ;; 07:4385 $06 $00
    ld   C, A                                          ;; 07:4387 $4f
    ld   A, [HL+]                                      ;; 07:4388 $2a
    ld   H, [HL]                                       ;; 07:4389 $66
    ld   L, A                                          ;; 07:438a $6f
    add  HL, BC                                        ;; 07:438b $09
    ld   B, H                                          ;; 07:438c $44
    ld   C, L                                          ;; 07:438d $4d
    ld   HL, data_07_6e55                              ;; 07:438e $21 $55 $6e
    add  HL, BC                                        ;; 07:4391 $09
    ld   A, [HL]                                       ;; 07:4392 $7e
    ld   [DE], A                                       ;; 07:4393 $12
    inc  DE                                            ;; 07:4394 $13
    pop  HL                                            ;; 07:4395 $e1
    pop  BC                                            ;; 07:4396 $c1
    dec  B                                             ;; 07:4397 $05
    jr   NZ, .jr_07_4369                               ;; 07:4398 $20 $cf
.jr_07_439a:
    ld   A, $02                                        ;; 07:439a $3e $02
    ld   [wD4FA], A                                    ;; 07:439c $ea $fa $d4
    ret                                                ;; 07:439f $c9

call_07_43a0:
    call startHardwareTimer                            ;; 07:43a0 $cd $39 $0f
    call disableLCD                                    ;; 07:43a3 $cd $23 $04
    call clearVRAM                                     ;; 07:43a6 $cd $5f $04
    call call_07_46ef                                  ;; 07:43a9 $cd $ef $46
    ld   BC, $21                                       ;; 07:43ac $01 $21 $00
    ld   HL, wD529                                     ;; 07:43af $21 $29 $d5
    call memzero                                       ;; 07:43b2 $cd $46 $04
    ldh  A, [hIsGBC]                                   ;; 07:43b5 $f0 $fe
    and  A, A                                          ;; 07:43b7 $a7
    jr   Z, .jr_07_43ea                                ;; 07:43b8 $28 $30
    ld   BC, $80                                       ;; 07:43ba $01 $80 $00
    ld   DE, wCDA5                                     ;; 07:43bd $11 $a5 $cd
    ld   HL, data_07_699d                              ;; 07:43c0 $21 $9d $69
    call memcopy                                       ;; 07:43c3 $cd $4e $04
    ld   HL, wCDA5                                     ;; 07:43c6 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 07:43c9 $cd $9f $04
    ld   HL, wCDE5                                     ;; 07:43cc $21 $e5 $cd
    call setSpritePaletteData                          ;; 07:43cf $cd $ad $04
    ld   A, $01                                        ;; 07:43d2 $3e $01
    ldh  [rVBK], A                                     ;; 07:43d4 $e0 $4f
    ld   BC, $1214                                     ;; 07:43d6 $01 $14 $12
    ld   DE, data_07_6e55                              ;; 07:43d9 $11 $55 $6e
    ld   HL, $9800                                     ;; 07:43dc $21 $00 $98
    call call_07_46fa                                  ;; 07:43df $cd $fa $46
    call call_07_46ca                                  ;; 07:43e2 $cd $ca $46
    xor  A, A                                          ;; 07:43e5 $af
    ldh  [rVBK], A                                     ;; 07:43e6 $e0 $4f
    jr   .jr_07_43f4                                   ;; 07:43e8 $18 $0a
.jr_07_43ea:
    xor  A, $e4                                        ;; 07:43ea $ee $e4
    ldh  [rBGP], A                                     ;; 07:43ec $e0 $47
    ldh  [rOBP0], A                                    ;; 07:43ee $e0 $48
    ld   A, $d0                                        ;; 07:43f0 $3e $d0
    ldh  [rOBP1], A                                    ;; 07:43f2 $e0 $49
.jr_07_43f4:
    ld   BC, $400                                      ;; 07:43f4 $01 $00 $04
    ld   DE, $8000                                     ;; 07:43f7 $11 $00 $80
    ld   HL, data_07_559d                              ;; 07:43fa $21 $9d $55
    call memcopy                                       ;; 07:43fd $cd $4e $04
    ld   BC, $1000                                     ;; 07:4400 $01 $00 $10
    ld   DE, $8800                                     ;; 07:4403 $11 $00 $88
    ld   HL, data_07_599d                              ;; 07:4406 $21 $9d $59
    call memcopy                                       ;; 07:4409 $cd $4e $04
    ld   BC, $1214                                     ;; 07:440c $01 $14 $12
    ld   DE, data_07_6ced                              ;; 07:440f $11 $ed $6c
    ld   HL, $9800                                     ;; 07:4412 $21 $00 $98
    call call_07_46fa                                  ;; 07:4415 $cd $fa $46
    xor  A, A                                          ;; 07:4418 $af
    ld   [wSCY], A                                     ;; 07:4419 $ea $87 $d5
    ld   [wD570], A                                    ;; 07:441c $ea $70 $d5
    ld   A, [wD51C]                                    ;; 07:441f $fa $1c $d5
    and  A, A                                          ;; 07:4422 $a7
    ld   A, $28                                        ;; 07:4423 $3e $28
    jr   Z, .jr_07_4429                                ;; 07:4425 $28 $02
    ld   A, $68                                        ;; 07:4427 $3e $68
.jr_07_4429:
    ld   [wD572], A                                    ;; 07:4429 $ea $72 $d5
    ld   A, $1e                                        ;; 07:442c $3e $1e
    ld   [wD574], A                                    ;; 07:442e $ea $74 $d5
    ld   A, $78                                        ;; 07:4431 $3e $78
    ld   [wD575], A                                    ;; 07:4433 $ea $75 $d5
    ld   A, $c7                                        ;; 07:4436 $3e $c7
    ldh  [rLCDC], A                                    ;; 07:4438 $e0 $40
    xor  A, A                                          ;; 07:443a $af
    ldh  [rIF], A                                      ;; 07:443b $e0 $0f
    ld   A, $01                                        ;; 07:443d $3e $01
    ldh  [rIE], A                                      ;; 07:443f $e0 $ff
    ei                                                 ;; 07:4441 $fb
    ld   A, $0a                                        ;; 07:4442 $3e $0a
    ld   [wD51A], A                                    ;; 07:4444 $ea $1a $d5
    ret                                                ;; 07:4447 $c9

call_07_4448:
    ld   HL, wD575                                     ;; 07:4448 $21 $75 $d5
    dec  [HL]                                          ;; 07:444b $35
    jp   NZ, .jp_07_4500                               ;; 07:444c $c2 $00 $45
    ld   [HL], $01                                     ;; 07:444f $36 $01
    call call_07_4832                                  ;; 07:4451 $cd $32 $48
    ld   A, [wD570]                                    ;; 07:4454 $fa $70 $d5
    and  A, A                                          ;; 07:4457 $a7
    jr   Z, .jr_07_4483                                ;; 07:4458 $28 $29
    ld   A, [wD51C]                                    ;; 07:445a $fa $1c $d5
    and  A, A                                          ;; 07:445d $a7
    jr   Z, .jr_07_446a                                ;; 07:445e $28 $0a
    ld   A, [wD572]                                    ;; 07:4460 $fa $72 $d5
    add  A, $04                                        ;; 07:4463 $c6 $04
    ld   [wD572], A                                    ;; 07:4465 $ea $72 $d5
    jr   .jr_07_4472                                   ;; 07:4468 $18 $08
.jr_07_446a:
    ld   A, [wD572]                                    ;; 07:446a $fa $72 $d5
    sub  A, $04                                        ;; 07:446d $d6 $04
    ld   [wD572], A                                    ;; 07:446f $ea $72 $d5
.jr_07_4472:
    ld   HL, wD573                                     ;; 07:4472 $21 $73 $d5
    dec  [HL]                                          ;; 07:4475 $35
    jr   NZ, .jr_07_44a3                               ;; 07:4476 $20 $2b
    xor  A, A                                          ;; 07:4478 $af
    ld   [wD570], A                                    ;; 07:4479 $ea $70 $d5
    ld   A, $05                                        ;; 07:447c $3e $05
    ld   [wD4FA], A                                    ;; 07:447e $ea $fa $d4
    jr   .jr_07_44a3                                   ;; 07:4481 $18 $20
.jr_07_4483:
    ld   A, [wJoypadPressed]                           ;; 07:4483 $fa $7f $d5
    and  A, $30                                        ;; 07:4486 $e6 $30
    jr   Z, .jr_07_44a3                                ;; 07:4488 $28 $19
    ld   A, $02                                        ;; 07:448a $3e $02
    call call_00_11a8                                  ;; 07:448c $cd $a8 $11
    ld   A, [wD51C]                                    ;; 07:448f $fa $1c $d5
    xor  A, $01                                        ;; 07:4492 $ee $01
    ld   [wD51C], A                                    ;; 07:4494 $ea $1c $d5
    ld   A, $01                                        ;; 07:4497 $3e $01
    ld   [wD570], A                                    ;; 07:4499 $ea $70 $d5
    ld   A, $10                                        ;; 07:449c $3e $10
    ld   [wD573], A                                    ;; 07:449e $ea $73 $d5
    jr   .jr_07_44d0                                   ;; 07:44a1 $18 $2d
.jr_07_44a3:
    ld   A, [wJoypadPressed]                           ;; 07:44a3 $fa $7f $d5
    and  A, $09                                        ;; 07:44a6 $e6 $09
    jr   Z, .jr_07_44d0                                ;; 07:44a8 $28 $26
    ld   A, [wD51C]                                    ;; 07:44aa $fa $1c $d5
    and  A, A                                          ;; 07:44ad $a7
    jr   NZ, .jr_07_44c8                               ;; 07:44ae $20 $18
    ld   A, [wD51D]                                    ;; 07:44b0 $fa $1d $d5
    and  A, A                                          ;; 07:44b3 $a7
    ld   A, $07                                        ;; 07:44b4 $3e $07
    jr   NZ, .jr_07_44ba                               ;; 07:44b6 $20 $02
    ld   A, $01                                        ;; 07:44b8 $3e $01
.jr_07_44ba:
    call call_00_11a8                                  ;; 07:44ba $cd $a8 $11
    ld   A, $0b                                        ;; 07:44bd $3e $0b
    ld   [wD51B], A                                    ;; 07:44bf $ea $1b $d5
    ld   A, $06                                        ;; 07:44c2 $3e $06
    ld   [wD51A], A                                    ;; 07:44c4 $ea $1a $d5
    ret                                                ;; 07:44c7 $c9
.jr_07_44c8:
    ld   A, $01                                        ;; 07:44c8 $3e $01
    call call_00_11a8                                  ;; 07:44ca $cd $a8 $11
    jp   jp_00_12e1                                    ;; 07:44cd $c3 $e1 $12
.jr_07_44d0:
    ld   A, [wD570]                                    ;; 07:44d0 $fa $70 $d5
    and  A, A                                          ;; 07:44d3 $a7
    jr   NZ, .jr_07_44ef                               ;; 07:44d4 $20 $19
    ld   HL, wD574                                     ;; 07:44d6 $21 $74 $d5
    dec  [HL]                                          ;; 07:44d9 $35
    jr   NZ, .jr_07_44e0                               ;; 07:44da $20 $04
    ld   [HL], $1e                                     ;; 07:44dc $36 $1e
    jr   .jr_07_44e5                                   ;; 07:44de $18 $05
.jr_07_44e0:
    ld   A, [HL]                                       ;; 07:44e0 $7e
    cp   A, $05                                        ;; 07:44e1 $fe $05
    jr   NC, .jr_07_44ef                               ;; 07:44e3 $30 $0a
.jr_07_44e5:
    ld   BC, $08                                       ;; 07:44e5 $01 $08 $00
    ld   HL, wShadowOAM                                ;; 07:44e8 $21 $00 $c0
    call memzero                                       ;; 07:44eb $cd $46 $04
    ret                                                ;; 07:44ee $c9
.jr_07_44ef:
    ld   A, [wD572]                                    ;; 07:44ef $fa $72 $d5
    ld   C, A                                          ;; 07:44f2 $4f
    ld   B, $64                                        ;; 07:44f3 $06 $64
    ld   A, $02                                        ;; 07:44f5 $3e $02
    ld   DE, data_07_7055                              ;; 07:44f7 $11 $55 $70
    ld   HL, wShadowOAM                                ;; 07:44fa $21 $00 $c0
    call call_07_470e                                  ;; 07:44fd $cd $0e $47
.jp_07_4500:
    ld   BC, $14                                       ;; 07:4500 $01 $14 $00
    ld   DE, wShadowOAM.08                             ;; 07:4503 $11 $08 $c0
    ld   HL, data_07_6ff1                              ;; 07:4506 $21 $f1 $6f
    call memcopy                                       ;; 07:4509 $cd $4e $04
    ret                                                ;; 07:450c $c9

call_07_450d:
    call disableLCD                                    ;; 07:450d $cd $23 $04
    call startHardwareTimer                            ;; 07:4510 $cd $39 $0f
    ld   A, $07                                        ;; 07:4513 $3e $07
    ld   B, $11                                        ;; 07:4515 $06 $11
    ld   HL, data_11_6147 ;@=ptr bank=0x11             ;; 07:4517 $21 $47 $61
    call jump_hl_in_bank_B                             ;; 07:451a $cd $ca $3c
    xor  A, A                                          ;; 07:451d $af
    ld   [wSCY], A                                     ;; 07:451e $ea $87 $d5
    ld   [wSCX], A                                     ;; 07:4521 $ea $88 $d5
    ld   [wC527], A                                    ;; 07:4524 $ea $27 $c5
    ld   [wC526], A                                    ;; 07:4527 $ea $26 $c5
    ld   A, $0f                                        ;; 07:452a $3e $0f
    ld   [wD572], A                                    ;; 07:452c $ea $72 $d5
    ld   A, $08                                        ;; 07:452f $3e $08
    ld   [wD573], A                                    ;; 07:4531 $ea $73 $d5
    ld   A, $08                                        ;; 07:4534 $3e $08
    ld   [wD574], A                                    ;; 07:4536 $ea $74 $d5
    xor  A, A                                          ;; 07:4539 $af
    ld   [wD56F], A                                    ;; 07:453a $ea $6f $d5
    ld   DE, $3cdf                                     ;; 07:453d $11 $df $3c
    ld   HL, wC52B                                     ;; 07:4540 $21 $2b $c5
    ld   A, D                                          ;; 07:4543 $7a
    ld   [HL+], A                                      ;; 07:4544 $22
    ld   [HL], E                                       ;; 07:4545 $73
    ld   DE, data_07_732d                              ;; 07:4546 $11 $2d $73
    ld   HL, wD579                                     ;; 07:4549 $21 $79 $d5
    ld   A, E                                          ;; 07:454c $7b
    ld   [HL+], A                                      ;; 07:454d $22
    ld   [HL], D                                       ;; 07:454e $72
    ld   A, $01                                        ;; 07:454f $3e $01
    ld   [wD4FB], A                                    ;; 07:4551 $ea $fb $d4
    ld   A, $17                                        ;; 07:4554 $3e $17
    ldh  [rLYC], A                                     ;; 07:4556 $e0 $45
    ld   A, $01                                        ;; 07:4558 $3e $01
    ld   [wC523], A                                    ;; 07:455a $ea $23 $c5
    ld   A, $ff                                        ;; 07:455d $3e $ff
    ld   [wC524], A                                    ;; 07:455f $ea $24 $c5
    ld   A, $c1                                        ;; 07:4562 $3e $c1
    ldh  [rLCDC], A                                    ;; 07:4564 $e0 $40
    ld   A, $40                                        ;; 07:4566 $3e $40
    ldh  [rSTAT], A                                    ;; 07:4568 $e0 $41
    xor  A, A                                          ;; 07:456a $af
    ldh  [rIF], A                                      ;; 07:456b $e0 $0f
    ld   A, $03                                        ;; 07:456d $3e $03
    ldh  [rIE], A                                      ;; 07:456f $e0 $ff
    ei                                                 ;; 07:4571 $fb
    ld   A, $0c                                        ;; 07:4572 $3e $0c
    ld   [wD51A], A                                    ;; 07:4574 $ea $1a $d5
    ret                                                ;; 07:4577 $c9

call_07_4578:
    ld   A, [wD56F]                                    ;; 07:4578 $fa $6f $d5
    cp   A, $01                                        ;; 07:457b $fe $01
    jr   C, .jr_07_4583                                ;; 07:457d $38 $04
    jr   Z, .jr_07_45e2                                ;; 07:457f $28 $61
    jr   .jr_07_45ed                                   ;; 07:4581 $18 $6a
.jr_07_4583:
    ld   A, [wJoypadDown]                              ;; 07:4583 $fa $7e $d5
    and  A, $01                                        ;; 07:4586 $e6 $01
    jr   NZ, .jr_07_4591                               ;; 07:4588 $20 $07
    ld   HL, wD574                                     ;; 07:458a $21 $74 $d5
    dec  [HL]                                          ;; 07:458d $35
    ret  NZ                                            ;; 07:458e $c0
    ld   [HL], $08                                     ;; 07:458f $36 $08
.jr_07_4591:
    ld   HL, wSCY                                      ;; 07:4591 $21 $87 $d5
    inc  [HL]                                          ;; 07:4594 $34
    ld   HL, wC527                                     ;; 07:4595 $21 $27 $c5
    inc  [HL]                                          ;; 07:4598 $34
    ld   A, [wD573]                                    ;; 07:4599 $fa $73 $d5
    dec  A                                             ;; 07:459c $3d
    ld   [wD573], A                                    ;; 07:459d $ea $73 $d5
    cp   A, $01                                        ;; 07:45a0 $fe $01
    jr   C, .jr_07_45b4                                ;; 07:45a2 $38 $10
    ret  NZ                                            ;; 07:45a4 $c0
    xor  A, A                                          ;; 07:45a5 $af
    ld   A, $04                                        ;; 07:45a6 $3e $04
    ld   [wD4FA], A                                    ;; 07:45a8 $ea $fa $d4
    ld   A, [wD572]                                    ;; 07:45ab $fa $72 $d5
    sub  A, $0c                                        ;; 07:45ae $d6 $0c
    and  A, $1f                                        ;; 07:45b0 $e6 $1f
    jr   .jr_07_45c7                                   ;; 07:45b2 $18 $13
.jr_07_45b4:
    ld   A, $03                                        ;; 07:45b4 $3e $03
    ld   [wD4FA], A                                    ;; 07:45b6 $ea $fa $d4
    ld   A, $08                                        ;; 07:45b9 $3e $08
    ld   [wD573], A                                    ;; 07:45bb $ea $73 $d5
    ld   A, [wD572]                                    ;; 07:45be $fa $72 $d5
    inc  A                                             ;; 07:45c1 $3c
    and  A, $1f                                        ;; 07:45c2 $e6 $1f
    ld   [wD572], A                                    ;; 07:45c4 $ea $72 $d5
.jr_07_45c7:
    swap A                                             ;; 07:45c7 $cb $37
    ld   C, A                                          ;; 07:45c9 $4f
    and  A, $0f                                        ;; 07:45ca $e6 $0f
    ld   B, A                                          ;; 07:45cc $47
    ld   A, C                                          ;; 07:45cd $79
    and  A, $f0                                        ;; 07:45ce $e6 $f0
    ld   C, A                                          ;; 07:45d0 $4f
    sla  C                                             ;; 07:45d1 $cb $21
    rl   B                                             ;; 07:45d3 $cb $10
    ld   HL, $9800                                     ;; 07:45d5 $21 $00 $98
    add  HL, BC                                        ;; 07:45d8 $09
    ld   A, L                                          ;; 07:45d9 $7d
    ld   [wD577], A                                    ;; 07:45da $ea $77 $d5
    ld   A, H                                          ;; 07:45dd $7c
    ld   [wD578], A                                    ;; 07:45de $ea $78 $d5
    ret                                                ;; 07:45e1 $c9
.jr_07_45e2:
    xor  A, A                                          ;; 07:45e2 $af
    ld   [wC523], A                                    ;; 07:45e3 $ea $23 $c5
    xor  A, A                                          ;; 07:45e6 $af
    ldh  [rIF], A                                      ;; 07:45e7 $e0 $0f
    ld   A, $01                                        ;; 07:45e9 $3e $01
    ldh  [rIE], A                                      ;; 07:45eb $e0 $ff
.jr_07_45ed:
    ld   A, [wD2B9]                                    ;; 07:45ed $fa $b9 $d2
    and  A, A                                          ;; 07:45f0 $a7
    jr   Z, .jr_07_45f9                                ;; 07:45f1 $28 $06
    ld   A, $02                                        ;; 07:45f3 $3e $02
    ld   [wD56F], A                                    ;; 07:45f5 $ea $6f $d5
    ret                                                ;; 07:45f8 $c9
.jr_07_45f9:
    xor  A, A                                          ;; 07:45f9 $af
    call call_00_1301                                  ;; 07:45fa $cd $01 $13
    ret                                                ;; 07:45fd $c9

jp_07_45fe:
    ld   A, [wD4FA]                                    ;; 07:45fe $fa $fa $d4
    cp   A, $01                                        ;; 07:4601 $fe $01
    ret  C                                             ;; 07:4603 $d8
    jp   Z, .jp_07_4617                                ;; 07:4604 $ca $17 $46
    cp   A, $03                                        ;; 07:4607 $fe $03
    jp   C, .jp_07_462d                                ;; 07:4609 $da $2d $46
    jp   Z, .jp_07_467c                                ;; 07:460c $ca $7c $46
    cp   A, $05                                        ;; 07:460f $fe $05
    jp   C, .jp_07_46b7                                ;; 07:4611 $da $b7 $46
    jp   call_07_46ca                                  ;; 07:4614 $c3 $ca $46
.jp_07_4617:
    ldh  A, [hIsGBC]                                   ;; 07:4617 $f0 $fe
    and  A, A                                          ;; 07:4619 $a7
    jr   Z, .jr_07_4628                                ;; 07:461a $28 $0c
    ld   HL, wCDA5                                     ;; 07:461c $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 07:461f $cd $9f $04
    ld   HL, wCDE5                                     ;; 07:4622 $21 $e5 $cd
    call setSpritePaletteData                          ;; 07:4625 $cd $ad $04
.jr_07_4628:
    xor  A, A                                          ;; 07:4628 $af
    ld   [wD4FA], A                                    ;; 07:4629 $ea $fa $d4
    ret                                                ;; 07:462c $c9
.jp_07_462d:
    ld   DE, wD529                                     ;; 07:462d $11 $29 $d5
    ld   HL, wD577                                     ;; 07:4630 $21 $77 $d5
    ld   A, [HL+]                                      ;; 07:4633 $2a
    ld   H, [HL]                                       ;; 07:4634 $66
    ld   L, A                                          ;; 07:4635 $6f
    push HL                                            ;; 07:4636 $e5
    ld   B, $04                                        ;; 07:4637 $06 $04
.jr_07_4639:
    ld   A, [HL+]                                      ;; 07:4639 $2a
    ld   C, A                                          ;; 07:463a $4f
    ld   A, [HL+]                                      ;; 07:463b $2a
    push HL                                            ;; 07:463c $e5
    ld   H, A                                          ;; 07:463d $67
    ld   L, C                                          ;; 07:463e $69
    ld   A, [DE]                                       ;; 07:463f $1a
    ld   [HL], A                                       ;; 07:4640 $77
    pop  HL                                            ;; 07:4641 $e1
    inc  DE                                            ;; 07:4642 $13
    dec  B                                             ;; 07:4643 $05
    jr   NZ, .jr_07_4639                               ;; 07:4644 $20 $f3
    pop  HL                                            ;; 07:4646 $e1
    ldh  A, [hIsGBC]                                   ;; 07:4647 $f0 $fe
    and  A, A                                          ;; 07:4649 $a7
    jr   Z, .jr_07_4662                                ;; 07:464a $28 $16
    ld   A, $01                                        ;; 07:464c $3e $01
    ldh  [rVBK], A                                     ;; 07:464e $e0 $4f
    ld   B, $04                                        ;; 07:4650 $06 $04
.jr_07_4652:
    ld   A, [HL+]                                      ;; 07:4652 $2a
    ld   C, A                                          ;; 07:4653 $4f
    ld   A, [HL+]                                      ;; 07:4654 $2a
    push HL                                            ;; 07:4655 $e5
    ld   H, A                                          ;; 07:4656 $67
    ld   L, C                                          ;; 07:4657 $69
    ld   A, [DE]                                       ;; 07:4658 $1a
    ld   [HL], A                                       ;; 07:4659 $77
    inc  DE                                            ;; 07:465a $13
    pop  HL                                            ;; 07:465b $e1
    dec  B                                             ;; 07:465c $05
    jr   NZ, .jr_07_4652                               ;; 07:465d $20 $f3
    xor  A, A                                          ;; 07:465f $af
    ldh  [rVBK], A                                     ;; 07:4660 $e0 $4f
.jr_07_4662:
    ld   HL, wD577                                     ;; 07:4662 $21 $77 $d5
    ld   A, [HL+]                                      ;; 07:4665 $2a
    ld   H, [HL]                                       ;; 07:4666 $66
    ld   L, A                                          ;; 07:4667 $6f
    ld   A, $04                                        ;; 07:4668 $3e $04
    add  A, A                                          ;; 07:466a $87
    add  A, L                                          ;; 07:466b $85
    ld   L, A                                          ;; 07:466c $6f
    jr   NC, .jr_07_4670                               ;; 07:466d $30 $01
    inc  H                                             ;; 07:466f $24
.jr_07_4670:
    ld   [wD577], A                                    ;; 07:4670 $ea $77 $d5
    ld   A, H                                          ;; 07:4673 $7c
    ld   [wD578], A                                    ;; 07:4674 $ea $78 $d5
    xor  A, A                                          ;; 07:4677 $af
    ld   [wD4FA], A                                    ;; 07:4678 $ea $fa $d4
    ret                                                ;; 07:467b $c9
.jp_07_467c:
    ld   HL, wD577                                     ;; 07:467c $21 $77 $d5
    ld   A, [HL+]                                      ;; 07:467f $2a
    ld   H, [HL]                                       ;; 07:4680 $66
    ld   L, A                                          ;; 07:4681 $6f
    push HL                                            ;; 07:4682 $e5
    ld   B, $0a                                        ;; 07:4683 $06 $0a
    xor  A, A                                          ;; 07:4685 $af
.jr_07_4686:
    ld   [HL+], A                                      ;; 07:4686 $22
    ld   [HL+], A                                      ;; 07:4687 $22
    dec  B                                             ;; 07:4688 $05
    jr   NZ, .jr_07_4686                               ;; 07:4689 $20 $fb
    pop  DE                                            ;; 07:468b $d1
    inc  DE                                            ;; 07:468c $13
    ld   HL, wD579                                     ;; 07:468d $21 $79 $d5
    ld   A, [HL+]                                      ;; 07:4690 $2a
    ld   H, [HL]                                       ;; 07:4691 $66
    ld   L, A                                          ;; 07:4692 $6f
.jr_07_4693:
    ld   A, [HL+]                                      ;; 07:4693 $2a
    cp   A, $fe                                        ;; 07:4694 $fe $fe
    jr   NC, .jr_07_469c                               ;; 07:4696 $30 $04
    ld   [DE], A                                       ;; 07:4698 $12
    inc  DE                                            ;; 07:4699 $13
    jr   .jr_07_4693                                   ;; 07:469a $18 $f7
.jr_07_469c:
    cp   A, $ff                                        ;; 07:469c $fe $ff
    ld   A, L                                          ;; 07:469e $7d
    ld   [wD579], A                                    ;; 07:469f $ea $79 $d5
    ld   A, H                                          ;; 07:46a2 $7c
    ld   [wD57A], A                                    ;; 07:46a3 $ea $7a $d5
    jr   NZ, .jr_07_46b2                               ;; 07:46a6 $20 $0a
    ld   A, $01                                        ;; 07:46a8 $3e $01
    ld   [wD2BD], A                                    ;; 07:46aa $ea $bd $d2
    ld   A, $01                                        ;; 07:46ad $3e $01
    ld   [wD56F], A                                    ;; 07:46af $ea $6f $d5
.jr_07_46b2:
    xor  A, A                                          ;; 07:46b2 $af
    ld   [wD4FA], A                                    ;; 07:46b3 $ea $fa $d4
    ret                                                ;; 07:46b6 $c9
.jp_07_46b7:
    ld   HL, wD577                                     ;; 07:46b7 $21 $77 $d5
    ld   A, [HL+]                                      ;; 07:46ba $2a
    ld   H, [HL]                                       ;; 07:46bb $66
    ld   L, A                                          ;; 07:46bc $6f
    xor  A, A                                          ;; 07:46bd $af
    ld   B, $0a                                        ;; 07:46be $06 $0a
.jr_07_46c0:
    ld   [HL+], A                                      ;; 07:46c0 $22
    ld   [HL+], A                                      ;; 07:46c1 $22
    dec  B                                             ;; 07:46c2 $05
    jr   NZ, .jr_07_46c0                               ;; 07:46c3 $20 $fb
    xor  A, A                                          ;; 07:46c5 $af
    ld   [wD4FA], A                                    ;; 07:46c6 $ea $fa $d4
    ret                                                ;; 07:46c9 $c9

call_07_46ca:
    ldh  A, [hIsGBC]                                   ;; 07:46ca $f0 $fe
    and  A, A                                          ;; 07:46cc $a7
    jr   Z, .jr_07_46eb                                ;; 07:46cd $28 $1c
    ld   A, $01                                        ;; 07:46cf $3e $01
    ldh  [rVBK], A                                     ;; 07:46d1 $e0 $4f
    ld   A, [wD51C]                                    ;; 07:46d3 $fa $1c $d5
    and  A, A                                          ;; 07:46d6 $a7
    ld   DE, data_07_6fbd                              ;; 07:46d7 $11 $bd $6f
    jr   Z, .jr_07_46df                                ;; 07:46da $28 $03
    ld   DE, data_07_6fd7                              ;; 07:46dc $11 $d7 $6f
.jr_07_46df:
    ld   HL, $99a3                                     ;; 07:46df $21 $a3 $99
    ld   BC, $20d                                      ;; 07:46e2 $01 $0d $02
    call call_07_46fa                                  ;; 07:46e5 $cd $fa $46
    xor  A, A                                          ;; 07:46e8 $af
    ldh  [rVBK], A                                     ;; 07:46e9 $e0 $4f
.jr_07_46eb:
    ld   [wD4FA], A                                    ;; 07:46eb $ea $fa $d4
    ret                                                ;; 07:46ee $c9

call_07_46ef:
    ld   B, $a0                                        ;; 07:46ef $06 $a0
    xor  A, A                                          ;; 07:46f1 $af
    ld   HL, wShadowOAM                                ;; 07:46f2 $21 $00 $c0
.jr_07_46f5:
    ld   [HL+], A                                      ;; 07:46f5 $22
    dec  B                                             ;; 07:46f6 $05
    jr   NZ, .jr_07_46f5                               ;; 07:46f7 $20 $fc
    ret                                                ;; 07:46f9 $c9

call_07_46fa:
    push BC                                            ;; 07:46fa $c5
.jr_07_46fb:
    ld   A, [DE]                                       ;; 07:46fb $1a
    ld   [HL+], A                                      ;; 07:46fc $22
    inc  DE                                            ;; 07:46fd $13
    dec  C                                             ;; 07:46fe $0d
    jr   NZ, .jr_07_46fb                               ;; 07:46ff $20 $fa
    pop  BC                                            ;; 07:4701 $c1
    ld   A, $20                                        ;; 07:4702 $3e $20
    sub  A, C                                          ;; 07:4704 $91
    add  A, L                                          ;; 07:4705 $85
    ld   L, A                                          ;; 07:4706 $6f
    jr   NC, .jr_07_470a                               ;; 07:4707 $30 $01
    inc  H                                             ;; 07:4709 $24
.jr_07_470a:
    dec  B                                             ;; 07:470a $05
    jr   NZ, call_07_46fa                              ;; 07:470b $20 $ed
    ret                                                ;; 07:470d $c9

call_07_470e:
    push AF                                            ;; 07:470e $f5
    ld   A, $10                                        ;; 07:470f $3e $10
    add  A, B                                          ;; 07:4711 $80
    ld   B, A                                          ;; 07:4712 $47
    ld   A, $08                                        ;; 07:4713 $3e $08
    add  A, C                                          ;; 07:4715 $81
    ld   C, A                                          ;; 07:4716 $4f
    pop  AF                                            ;; 07:4717 $f1
.jr_07_4718:
    push AF                                            ;; 07:4718 $f5
    ld   A, [DE]                                       ;; 07:4719 $1a
    add  A, B                                          ;; 07:471a $80
    ld   [HL+], A                                      ;; 07:471b $22
    inc  DE                                            ;; 07:471c $13
    ld   A, [DE]                                       ;; 07:471d $1a
    add  A, C                                          ;; 07:471e $81
    ld   [HL+], A                                      ;; 07:471f $22
    inc  DE                                            ;; 07:4720 $13
    ld   A, [DE]                                       ;; 07:4721 $1a
    ld   [HL+], A                                      ;; 07:4722 $22
    inc  DE                                            ;; 07:4723 $13
    ld   A, [DE]                                       ;; 07:4724 $1a
    ld   [HL+], A                                      ;; 07:4725 $22
    inc  DE                                            ;; 07:4726 $13
    pop  AF                                            ;; 07:4727 $f1
    dec  A                                             ;; 07:4728 $3d
    jr   NZ, .jr_07_4718                               ;; 07:4729 $20 $ed
    ret                                                ;; 07:472b $c9

call_07_472c:
    ld   HL, wCDA5                                     ;; 07:472c $21 $a5 $cd
    ld   B, $40                                        ;; 07:472f $06 $40
.jr_07_4731:
    ld   A, $ff                                        ;; 07:4731 $3e $ff
    ld   [HL+], A                                      ;; 07:4733 $22
    ld   A, $7f                                        ;; 07:4734 $3e $7f
    ld   [HL+], A                                      ;; 07:4736 $22
    dec  B                                             ;; 07:4737 $05
    jr   NZ, .jr_07_4731                               ;; 07:4738 $20 $f7
    ret                                                ;; 07:473a $c9

call_07_473b:
    ld   DE, .data_07_474e                             ;; 07:473b $11 $4e $47
    ld   HL, rBGP                                      ;; 07:473e $21 $47 $ff
    ld   A, [wD500]                                    ;; 07:4741 $fa $00 $d5
    add  A, E                                          ;; 07:4744 $83
    ld   E, A                                          ;; 07:4745 $5f
    jr   NC, .jr_07_4749                               ;; 07:4746 $30 $01
    inc  D                                             ;; 07:4748 $14
.jr_07_4749:
    ld   A, [DE]                                       ;; 07:4749 $1a
    ld   [HL+], A                                      ;; 07:474a $22
    ld   [HL+], A                                      ;; 07:474b $22
    ld   [HL], A                                       ;; 07:474c $77
    ret                                                ;; 07:474d $c9
.data_07_474e:
    db   $e4, $e4, $a4, $a4, $a4, $a4, $a4, $94        ;; 07:474e ????????
    db   $94, $94, $94, $94, $90, $90, $90, $90        ;; 07:4756 ????????
    db   $90, $50, $50, $50, $50, $50, $80, $80        ;; 07:475e ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 07:4766 ????????

call_07_476e:
    swap A                                             ;; 07:476e $cb $37
    rrca                                               ;; 07:4770 $0f
    add  A, L                                          ;; 07:4771 $85
    ld   L, A                                          ;; 07:4772 $6f
    jr   NC, .jr_07_4776                               ;; 07:4773 $30 $01
    inc  H                                             ;; 07:4775 $24
.jr_07_4776:
    sla  B                                             ;; 07:4776 $cb $20
    sla  B                                             ;; 07:4778 $cb $20
.jr_07_477a:
    ld   A, [HL]                                       ;; 07:477a $7e
    and  A, $1f                                        ;; 07:477b $e6 $1f
    cp   A, $1f                                        ;; 07:477d $fe $1f
    jr   Z, .jr_07_4785                                ;; 07:477f $28 $04
    ld   A, [HL]                                       ;; 07:4781 $7e
    add  A, $01                                        ;; 07:4782 $c6 $01
    ld   [HL], A                                       ;; 07:4784 $77
.jr_07_4785:
    ld   A, [HL+]                                      ;; 07:4785 $2a
    ld   C, A                                          ;; 07:4786 $4f
    ld   A, [HL]                                       ;; 07:4787 $7e
    rra                                                ;; 07:4788 $1f
    rr   C                                             ;; 07:4789 $cb $19
    rra                                                ;; 07:478b $1f
    rr   C                                             ;; 07:478c $cb $19
    ld   A, C                                          ;; 07:478e $79
    and  A, $f8                                        ;; 07:478f $e6 $f8
    cp   A, $f8                                        ;; 07:4791 $fe $f8
    jr   Z, .jr_07_479d                                ;; 07:4793 $28 $08
    dec  HL                                            ;; 07:4795 $2b
    ld   A, [HL]                                       ;; 07:4796 $7e
    add  A, $20                                        ;; 07:4797 $c6 $20
    ld   [HL+], A                                      ;; 07:4799 $22
    jr   NC, .jr_07_479d                               ;; 07:479a $30 $01
    inc  [HL]                                          ;; 07:479c $34
.jr_07_479d:
    ld   A, [HL]                                       ;; 07:479d $7e
    and  A, $7c                                        ;; 07:479e $e6 $7c
    cp   A, $7c                                        ;; 07:47a0 $fe $7c
    jr   Z, .jr_07_47a8                                ;; 07:47a2 $28 $04
    ld   A, [HL]                                       ;; 07:47a4 $7e
    add  A, $04                                        ;; 07:47a5 $c6 $04
    ld   [HL], A                                       ;; 07:47a7 $77
.jr_07_47a8:
    inc  HL                                            ;; 07:47a8 $23
    dec  B                                             ;; 07:47a9 $05
    jr   NZ, .jr_07_477a                               ;; 07:47aa $20 $ce
    ret                                                ;; 07:47ac $c9

call_07_47ad:
    ld   DE, .data_07_47c0                             ;; 07:47ad $11 $c0 $47
    ld   HL, rBGP                                      ;; 07:47b0 $21 $47 $ff
    ld   A, [wD500]                                    ;; 07:47b3 $fa $00 $d5
    add  A, E                                          ;; 07:47b6 $83
    ld   E, A                                          ;; 07:47b7 $5f
    jr   NC, .jr_07_47bb                               ;; 07:47b8 $30 $01
    inc  D                                             ;; 07:47ba $14
.jr_07_47bb:
    ld   A, [DE]                                       ;; 07:47bb $1a
    ld   [HL+], A                                      ;; 07:47bc $22
    ld   [HL+], A                                      ;; 07:47bd $22
    ld   [HL], A                                       ;; 07:47be $77
    ret                                                ;; 07:47bf $c9
.data_07_47c0:
    db   $00, $00, $80, $80, $80, $80, $80, $50        ;; 07:47c0 ????????
    db   $50, $50, $50, $50, $90, $90, $90, $90        ;; 07:47c8 ????????
    db   $90, $94, $94, $94, $94, $94, $a4, $a4        ;; 07:47d0 ????????
    db   $a4, $a4, $a4, $e4, $e4, $e4, $e4, $e4        ;; 07:47d8 ????????

call_07_47e0:
    swap A                                             ;; 07:47e0 $cb $37
    rrca                                               ;; 07:47e2 $0f
    ld   C, A                                          ;; 07:47e3 $4f
    add  A, E                                          ;; 07:47e4 $83
    ld   E, A                                          ;; 07:47e5 $5f
    jr   NC, .jr_07_47e9                               ;; 07:47e6 $30 $01
    inc  D                                             ;; 07:47e8 $14
.jr_07_47e9:
    ld   A, C                                          ;; 07:47e9 $79
    add  A, L                                          ;; 07:47ea $85
    ld   L, A                                          ;; 07:47eb $6f
    jr   NC, .jr_07_47ef                               ;; 07:47ec $30 $01
    inc  H                                             ;; 07:47ee $24
.jr_07_47ef:
    sla  B                                             ;; 07:47ef $cb $20
    sla  B                                             ;; 07:47f1 $cb $20
.jr_07_47f3:
    ld   A, [HL]                                       ;; 07:47f3 $7e
    and  A, $1f                                        ;; 07:47f4 $e6 $1f
    ld   C, A                                          ;; 07:47f6 $4f
    ld   A, [DE]                                       ;; 07:47f7 $1a
    and  A, $1f                                        ;; 07:47f8 $e6 $1f
    cp   A, C                                          ;; 07:47fa $b9
    jr   Z, .jr_07_4801                                ;; 07:47fb $28 $04
    ld   A, [HL]                                       ;; 07:47fd $7e
    sub  A, $01                                        ;; 07:47fe $d6 $01
    ld   [HL], A                                       ;; 07:4800 $77
.jr_07_4801:
    ld   A, [HL+]                                      ;; 07:4801 $2a
    and  A, $e0                                        ;; 07:4802 $e6 $e0
    ld   C, A                                          ;; 07:4804 $4f
    ld   A, [DE]                                       ;; 07:4805 $1a
    inc  DE                                            ;; 07:4806 $13
    and  A, $e0                                        ;; 07:4807 $e6 $e0
    cp   A, C                                          ;; 07:4809 $b9
    jr   NZ, .jr_07_4816                               ;; 07:480a $20 $0a
    ld   A, [HL]                                       ;; 07:480c $7e
    and  A, $03                                        ;; 07:480d $e6 $03
    ld   C, A                                          ;; 07:480f $4f
    ld   A, [DE]                                       ;; 07:4810 $1a
    and  A, $03                                        ;; 07:4811 $e6 $03
    cp   A, C                                          ;; 07:4813 $b9
    jr   Z, .jr_07_481e                                ;; 07:4814 $28 $08
.jr_07_4816:
    dec  HL                                            ;; 07:4816 $2b
    ld   A, [HL]                                       ;; 07:4817 $7e
    sub  A, $20                                        ;; 07:4818 $d6 $20
    ld   [HL+], A                                      ;; 07:481a $22
    jr   NC, .jr_07_481e                               ;; 07:481b $30 $01
    dec  [HL]                                          ;; 07:481d $35
.jr_07_481e:
    ld   A, [HL]                                       ;; 07:481e $7e
    and  A, $7c                                        ;; 07:481f $e6 $7c
    ld   C, A                                          ;; 07:4821 $4f
    ld   A, [DE]                                       ;; 07:4822 $1a
    and  A, $7c                                        ;; 07:4823 $e6 $7c
    cp   A, C                                          ;; 07:4825 $b9
    jr   Z, .jr_07_482c                                ;; 07:4826 $28 $04
    ld   A, [HL]                                       ;; 07:4828 $7e
    sub  A, $04                                        ;; 07:4829 $d6 $04
    ld   [HL], A                                       ;; 07:482b $77
.jr_07_482c:
    inc  DE                                            ;; 07:482c $13
    inc  HL                                            ;; 07:482d $23
    dec  B                                             ;; 07:482e $05
    jr   NZ, .jr_07_47f3                               ;; 07:482f $20 $c2
    ret                                                ;; 07:4831 $c9

call_07_4832:
    ld   A, [wD51C]                                    ;; 07:4832 $fa $1c $d5
    and  A, A                                          ;; 07:4835 $a7
    ret  NZ                                            ;; 07:4836 $c0
    ld   A, [wD51D]                                    ;; 07:4837 $fa $1d $d5
    and  A, A                                          ;; 07:483a $a7
    ret  NZ                                            ;; 07:483b $c0
    ld   A, [wJoypadPressed]                           ;; 07:483c $fa $7f $d5
    and  A, A                                          ;; 07:483f $a7
    ret  Z                                             ;; 07:4840 $c8
    ld   DE, wD549                                     ;; 07:4841 $11 $49 $d5
    ld   HL, wD548                                     ;; 07:4844 $21 $48 $d5
    ld   B, $20                                        ;; 07:4847 $06 $20
.jr_07_4849:
    ld   A, [HL-]                                      ;; 07:4849 $3a
    ld   [DE], A                                       ;; 07:484a $12
    dec  DE                                            ;; 07:484b $1b
    dec  B                                             ;; 07:484c $05
    jr   NZ, .jr_07_4849                               ;; 07:484d $20 $fa
    inc  HL                                            ;; 07:484f $23
    ld   A, [wJoypadPressed]                           ;; 07:4850 $fa $7f $d5
    ld   [HL], A                                       ;; 07:4853 $77
    ld   DE, .data_07_4892                             ;; 07:4854 $11 $92 $48
    ld   B, $21                                        ;; 07:4857 $06 $21
.jr_07_4859:
    ld   A, [DE]                                       ;; 07:4859 $1a
    cp   A, [HL]                                       ;; 07:485a $be
    ret  NZ                                            ;; 07:485b $c0
    inc  HL                                            ;; 07:485c $23
    inc  DE                                            ;; 07:485d $13
    dec  B                                             ;; 07:485e $05
    jr   NZ, .jr_07_4859                               ;; 07:485f $20 $f8
    ld   HL, .data_07_48b3                             ;; 07:4861 $21 $b3 $48
    ld   DE, wC100                                     ;; 07:4864 $11 $00 $c1
    ld   B, $12                                        ;; 07:4867 $06 $12
    call memcopySmall                                  ;; 07:4869 $cd $91 $05
    ld   HL, wC133                                     ;; 07:486c $21 $33 $c1
    ld   BC, $04                                       ;; 07:486f $01 $04 $00
    ld   E, $01                                        ;; 07:4872 $1e $01
    call memset                                        ;; 07:4874 $cd $57 $04
    ld   HL, .data_07_48c5                             ;; 07:4877 $21 $c5 $48
    ld   DE, wC113                                     ;; 07:487a $11 $13 $c1
    ld   B, $14                                        ;; 07:487d $06 $14
    call memcopySmall                                  ;; 07:487f $cd $91 $05
    ld   A, $14                                        ;; 07:4882 $3e $14
    ld   [wC112], A                                    ;; 07:4884 $ea $12 $c1
    ld   A, $ff                                        ;; 07:4887 $3e $ff
    ld   [wC138], A                                    ;; 07:4889 $ea $38 $c1
    ld   A, $01                                        ;; 07:488c $3e $01
    ld   [wD51D], A                                    ;; 07:488e $ea $1d $d5
    ret                                                ;; 07:4891 $c9
.data_07_4892:
    db   $08, $80, $80, $80, $80, $80, $80, $80        ;; 07:4892 .???????
    db   $80, $40, $40, $40, $40, $40, $40, $40        ;; 07:489a ????????
    db   $40, $04, $04, $04, $04, $04, $04, $04        ;; 07:48a2 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 07:48aa ????????
    db   $04                                           ;; 07:48b2 ?
.data_07_48b3:
    db   $01, $f4, $01, $f4, $01, $f4, $01, $f4        ;; 07:48b3 ????????
    db   $01, $00, $01, $00, $00, $c8, $32, $32        ;; 07:48bb ????????
    db   $32, $32                                      ;; 07:48c3 ??
.data_07_48c5:
    db   $01, $02, $03, $04, $05, $06, $07, $08        ;; 07:48c5 ????????
    db   $09, $0a, $0b, $0c, $0d, $0e, $0f, $01        ;; 07:48cd ????????
    db   $02, $03, $04, $05                            ;; 07:48d5 ????

data_07_48d9:
    db   $00, $00, $14, $00, $28, $00, $3c, $00        ;; 07:48d9 ????????
    db   $50, $00, $64, $00, $78, $00, $8c, $00        ;; 07:48e1 ????????
    db   $a0, $00, $b4, $00, $c8, $00, $dc, $00        ;; 07:48e9 ????????
    db   $f0, $00, $04, $01, $18, $01, $2c, $01        ;; 07:48f1 ????????
    db   $40, $01, $54, $01                            ;; 07:48f9 ????

data_07_48fd:
    dw   `00000000                                     ;; 07:48fd $00 $00
    dw   `00000000                                     ;; 07:48ff $00 $00
    dw   `00000000                                     ;; 07:4901 $00 $00
    dw   `00000000                                     ;; 07:4903 $00 $00
    dw   `00013333                                     ;; 07:4905 $1f $0f
    dw   `01330000                                     ;; 07:4907 $70 $30
    dw   `13000122                                     ;; 07:4909 $c4 $43
    dw   `30012222                                     ;; 07:490b $90 $8f

    dw   `00000000                                     ;; 07:490d $00 $00
    dw   `00000000                                     ;; 07:490f $00 $00
    dw   `00000000                                     ;; 07:4911 $00 $00
    dw   `00000000                                     ;; 07:4913 $00 $00
    dw   `33333333                                     ;; 07:4915 $ff $ff
    dw   `00000000                                     ;; 07:4917 $00 $00
    dw   `22222220                                     ;; 07:4919 $00 $fe
    dw   `22222220                                     ;; 07:491b $00 $fe

    dw   `00000000                                     ;; 07:491d $00 $00
    dw   `00000000                                     ;; 07:491f $00 $00
    dw   `00000000                                     ;; 07:4921 $00 $00
    dw   `00000000                                     ;; 07:4923 $00 $00
    dw   `33333333                                     ;; 07:4925 $ff $ff
    dw   `00000000                                     ;; 07:4927 $00 $00
    dw   `22222200                                     ;; 07:4929 $00 $fc
    dw   `22222200                                     ;; 07:492b $00 $fc

    dw   `00000000                                     ;; 07:492d $00 $00
    dw   `00000000                                     ;; 07:492f $00 $00
    dw   `00000000                                     ;; 07:4931 $00 $00
    dw   `00000000                                     ;; 07:4933 $00 $00
    dw   `33333333                                     ;; 07:4935 $ff $ff
    dw   `00000000                                     ;; 07:4937 $00 $00
    dw   `02222221                                     ;; 07:4939 $01 $7e
    dw   `02222222                                     ;; 07:493b $00 $7f

    dw   `00000000                                     ;; 07:493d $00 $00
    dw   `00000000                                     ;; 07:493f $00 $00
    dw   `00000000                                     ;; 07:4941 $00 $00
    dw   `00000000                                     ;; 07:4943 $00 $00
    dw   `10333333                                     ;; 07:4945 $bf $3f
    dw   `33300000                                     ;; 07:4947 $e0 $e0
    dw   `01302222                                     ;; 07:4949 $60 $2f
    dw   `20102222                                     ;; 07:494b $20 $8f

    dw   `00000000                                     ;; 07:494d $00 $00
    dw   `00000000                                     ;; 07:494f $00 $00
    dw   `00000000                                     ;; 07:4951 $00 $00
    dw   `00000000                                     ;; 07:4953 $00 $00
    dw   `33333000                                     ;; 07:4955 $f8 $f8
    dw   `00003000                                     ;; 07:4957 $08 $08
    dw   `22003000                                     ;; 07:4959 $08 $c8
    dw   `22003000                                     ;; 07:495b $08 $c8

    dw   `00000000                                     ;; 07:495d $00 $00
    dw   `00000000                                     ;; 07:495f $00 $00
    dw   `00000000                                     ;; 07:4961 $00 $00
    dw   `00000000                                     ;; 07:4963 $00 $00
    dw   `00013333                                     ;; 07:4965 $1f $0f
    dw   `00330000                                     ;; 07:4967 $30 $30
    dw   `03000122                                     ;; 07:4969 $44 $43
    dw   `30012222                                     ;; 07:496b $90 $8f

    dw   `00000000                                     ;; 07:496d $00 $00
    dw   `00000000                                     ;; 07:496f $00 $00
    dw   `00000000                                     ;; 07:4971 $00 $00
    dw   `00000000                                     ;; 07:4973 $00 $00
    dw   `33333333                                     ;; 07:4975 $ff $ff
    dw   `10000000                                     ;; 07:4977 $80 $00
    dw   `00122222                                     ;; 07:4979 $20 $1f
    dw   `02222222                                     ;; 07:497b $00 $7f

    dw   `00000000                                     ;; 07:497d $00 $00
    dw   `00000000                                     ;; 07:497f $00 $00
    dw   `00000000                                     ;; 07:4981 $00 $00
    dw   `00000000                                     ;; 07:4983 $00 $00
    dw   `33333100                                     ;; 07:4985 $fc $f8
    dw   `00000331                                     ;; 07:4987 $07 $06
    dw   `22220013                                     ;; 07:4989 $03 $f1
    dw   `22222100                                     ;; 07:498b $04 $f8

    dw   `00000000                                     ;; 07:498d $00 $00
    dw   `00000000                                     ;; 07:498f $00 $00
    dw   `00000000                                     ;; 07:4991 $00 $00
    dw   `00000000                                     ;; 07:4993 $00 $00
    dw   `01333333                                     ;; 07:4995 $7f $3f
    dw   `33100000                                     ;; 07:4997 $e0 $c0
    dw   `10022222                                     ;; 07:4999 $80 $1f
    dw   `02222222                                     ;; 07:499b $00 $7f

    dw   `00000000                                     ;; 07:499d $00 $00
    dw   `00000000                                     ;; 07:499f $00 $00
    dw   `00000000                                     ;; 07:49a1 $00 $00
    dw   `00000000                                     ;; 07:49a3 $00 $00
    dw   `33333333                                     ;; 07:49a5 $ff $ff
    dw   `00000000                                     ;; 07:49a7 $00 $00
    dw   `22202222                                     ;; 07:49a9 $00 $ef
    dw   `22202222                                     ;; 07:49ab $00 $ef

    dw   `00000000                                     ;; 07:49ad $00 $00
    dw   `00000000                                     ;; 07:49af $00 $00
    dw   `00000000                                     ;; 07:49b1 $00 $00
    dw   `00000000                                     ;; 07:49b3 $00 $00
    dw   `33333333                                     ;; 07:49b5 $ff $ff
    dw   `00000000                                     ;; 07:49b7 $00 $00
    dw   `22222222                                     ;; 07:49b9 $00 $ff
    dw   `22222222                                     ;; 07:49bb $00 $ff

    dw   `00000000                                     ;; 07:49bd $00 $00
    dw   `00000000                                     ;; 07:49bf $00 $00
    dw   `00000000                                     ;; 07:49c1 $00 $00
    dw   `00000000                                     ;; 07:49c3 $00 $00
    dw   `33330033                                     ;; 07:49c5 $f3 $f3
    dw   `00030300                                     ;; 07:49c7 $14 $14
    dw   `20033033                                     ;; 07:49c9 $1b $9b
    dw   `20033030                                     ;; 07:49cb $1a $9a

    dw   `00000001                                     ;; 07:49cd $01 $00
    dw   `00000003                                     ;; 07:49cf $01 $01
    dw   `00000003                                     ;; 07:49d1 $01 $01
    dw   `00000003                                     ;; 07:49d3 $01 $01
    dw   `00000003                                     ;; 07:49d5 $01 $01
    dw   `00000001                                     ;; 07:49d7 $01 $00
    dw   `00000000                                     ;; 07:49d9 $00 $00
    dw   `00000000                                     ;; 07:49db $00 $00

    dw   `30122222                                     ;; 07:49dd $a0 $9f
    dw   `00222222                                     ;; 07:49df $00 $3f
    dw   `00222222                                     ;; 07:49e1 $00 $3f
    dw   `00222222                                     ;; 07:49e3 $00 $3f
    dw   `10222222                                     ;; 07:49e5 $80 $3f
    dw   `30122222                                     ;; 07:49e7 $a0 $9f
    dw   `30022222                                     ;; 07:49e9 $80 $9f
    dw   `31022222                                     ;; 07:49eb $c0 $9f

    dw   `22222220                                     ;; 07:49ed $00 $fe
    dw   `22222220                                     ;; 07:49ef $00 $fe
    dw   `22222220                                     ;; 07:49f1 $00 $fe
    dw   `22222220                                     ;; 07:49f3 $00 $fe
    dw   `10000000                                     ;; 07:49f5 $80 $00
    dw   `10000000                                     ;; 07:49f7 $80 $00
    dw   `20133330                                     ;; 07:49f9 $3e $9e
    dw   `20030030                                     ;; 07:49fb $12 $92

    dw   `22222200                                     ;; 07:49fd $00 $fc
    dw   `22222200                                     ;; 07:49ff $00 $fc
    dw   `22222200                                     ;; 07:4a01 $00 $fc
    dw   `22222200                                     ;; 07:4a03 $00 $fc
    dw   `22222200                                     ;; 07:4a05 $00 $fc
    dw   `22222200                                     ;; 07:4a07 $00 $fc
    dw   `22222200                                     ;; 07:4a09 $00 $fc
    dw   `22222200                                     ;; 07:4a0b $00 $fc

    dw   `02222222                                     ;; 07:4a0d $00 $7f
    dw   `02222222                                     ;; 07:4a0f $00 $7f
    dw   `02222222                                     ;; 07:4a11 $00 $7f
    dw   `02222222                                     ;; 07:4a13 $00 $7f
    dw   `02222222                                     ;; 07:4a15 $00 $7f
    dw   `02222222                                     ;; 07:4a17 $00 $7f
    dw   `02222222                                     ;; 07:4a19 $00 $7f
    dw   `02222222                                     ;; 07:4a1b $00 $7f

    dw   `22002222                                     ;; 07:4a1d $00 $cf
    dw   `22102222                                     ;; 07:4a1f $20 $cf
    dw   `22202222                                     ;; 07:4a21 $00 $ef
    dw   `22202222                                     ;; 07:4a23 $00 $ef
    dw   `22212222                                     ;; 07:4a25 $10 $ef
    dw   `22222222                                     ;; 07:4a27 $00 $ff
    dw   `22222222                                     ;; 07:4a29 $00 $ff
    dw   `22222222                                     ;; 07:4a2b $00 $ff

    dw   `22003001                                     ;; 07:4a2d $09 $c8
    dw   `22003003                                     ;; 07:4a2f $09 $c9
    dw   `22003003                                     ;; 07:4a31 $09 $c9
    dw   `22003003                                     ;; 07:4a33 $09 $c9
    dw   `22003003                                     ;; 07:4a35 $09 $c9
    dw   `22003001                                     ;; 07:4a37 $09 $c8
    dw   `22003000                                     ;; 07:4a39 $08 $c8
    dw   `22003000                                     ;; 07:4a3b $08 $c8

    dw   `30122222                                     ;; 07:4a3d $a0 $9f
    dw   `00222222                                     ;; 07:4a3f $00 $3f
    dw   `00222222                                     ;; 07:4a41 $00 $3f
    dw   `00222222                                     ;; 07:4a43 $00 $3f
    dw   `00222222                                     ;; 07:4a45 $00 $3f
    dw   `30122222                                     ;; 07:4a47 $a0 $9f
    dw   `30022222                                     ;; 07:4a49 $80 $9f
    dw   `31022222                                     ;; 07:4a4b $c0 $9f

    dw   `22222220                                     ;; 07:4a4d $00 $fe
    dw   `22222220                                     ;; 07:4a4f $00 $fe
    dw   `22222221                                     ;; 07:4a51 $01 $fe
    dw   `22222221                                     ;; 07:4a53 $01 $fe
    dw   `10000002                                     ;; 07:4a55 $80 $01
    dw   `10033302                                     ;; 07:4a57 $9c $1d
    dw   `20031302                                     ;; 07:4a59 $1c $95
    dw   `21030302                                     ;; 07:4a5b $54 $95

    dw   `22222222                                     ;; 07:4a5d $00 $ff
    dw   `22222222                                     ;; 07:4a5f $00 $ff
    dw   `22222222                                     ;; 07:4a61 $00 $ff
    dw   `22222222                                     ;; 07:4a63 $00 $ff
    dw   `22222200                                     ;; 07:4a65 $00 $fc
    dw   `22222000                                     ;; 07:4a67 $00 $f8
    dw   `22222000                                     ;; 07:4a69 $00 $f8
    dw   `22222000                                     ;; 07:4a6b $00 $f8

    dw   `22222210                                     ;; 07:4a6d $02 $fc
    dw   `22222220                                     ;; 07:4a6f $00 $fe
    dw   `22222220                                     ;; 07:4a71 $00 $fe
    dw   `22222220                                     ;; 07:4a73 $00 $fe
    dw   `22222220                                     ;; 07:4a75 $00 $fe
    dw   `02222220                                     ;; 07:4a77 $00 $7e
    dw   `02222220                                     ;; 07:4a79 $00 $7e
    dw   `02222220                                     ;; 07:4a7b $00 $7e

    dw   `12222222                                     ;; 07:4a7d $80 $7f
    dw   `22222222                                     ;; 07:4a7f $00 $ff
    dw   `22222222                                     ;; 07:4a81 $00 $ff
    dw   `22222222                                     ;; 07:4a83 $00 $ff
    dw   `22222200                                     ;; 07:4a85 $00 $fc
    dw   `22222200                                     ;; 07:4a87 $00 $fc
    dw   `22222200                                     ;; 07:4a89 $00 $fc
    dw   `22222222                                     ;; 07:4a8b $00 $ff

    dw   `22202222                                     ;; 07:4a8d $00 $ef
    dw   `22202222                                     ;; 07:4a8f $00 $ef
    dw   `22202222                                     ;; 07:4a91 $00 $ef
    dw   `22202222                                     ;; 07:4a93 $00 $ef
    dw   `00000002                                     ;; 07:4a95 $00 $01
    dw   `00000002                                     ;; 07:4a97 $00 $01
    dw   `00000002                                     ;; 07:4a99 $00 $01
    dw   `22200002                                     ;; 07:4a9b $00 $e1

    dw   `22222222                                     ;; 07:4a9d $00 $ff
    dw   `22222222                                     ;; 07:4a9f $00 $ff
    dw   `22222222                                     ;; 07:4aa1 $00 $ff
    dw   `22222222                                     ;; 07:4aa3 $00 $ff
    dw   `22222000                                     ;; 07:4aa5 $00 $f8
    dw   `22222003                                     ;; 07:4aa7 $01 $f9
    dw   `22222003                                     ;; 07:4aa9 $01 $f9
    dw   `22222003                                     ;; 07:4aab $01 $f9

    dw   `20033033                                     ;; 07:4aad $1b $9b
    dw   `20033030                                     ;; 07:4aaf $1a $9a
    dw   `20030300                                     ;; 07:4ab1 $14 $94
    dw   `20030033                                     ;; 07:4ab3 $13 $93
    dw   `00030000                                     ;; 07:4ab5 $10 $10
    dw   `33330000                                     ;; 07:4ab7 $f0 $f0
    dw   `00000000                                     ;; 07:4ab9 $00 $00
    dw   `00000000                                     ;; 07:4abb $00 $00

    dw   `00000000                                     ;; 07:4abd $00 $00
    dw   `00000000                                     ;; 07:4abf $00 $00
    dw   `00000000                                     ;; 07:4ac1 $00 $00
    dw   `03333333                                     ;; 07:4ac3 $7f $7f
    dw   `03000000                                     ;; 07:4ac5 $40 $40
    dw   `03022222                                     ;; 07:4ac7 $40 $5f
    dw   `03022222                                     ;; 07:4ac9 $40 $5f
    dw   `03022222                                     ;; 07:4acb $40 $5f

    dw   `13022222                                     ;; 07:4acd $c0 $5f
    dw   `03012222                                     ;; 07:4acf $50 $4f
    dw   `03002222                                     ;; 07:4ad1 $40 $4f
    dw   `33002222                                     ;; 07:4ad3 $c0 $cf
    dw   `00012222                                     ;; 07:4ad5 $10 $0f
    dw   `22222222                                     ;; 07:4ad7 $00 $ff
    dw   `22222222                                     ;; 07:4ad9 $00 $ff
    dw   `22222222                                     ;; 07:4adb $00 $ff

    dw   `21030030                                     ;; 07:4add $52 $92
    dw   `22013030                                     ;; 07:4adf $1a $ca
    dw   `22103030                                     ;; 07:4ae1 $2a $ca
    dw   `22203030                                     ;; 07:4ae3 $0a $ea
    dw   `22203130                                     ;; 07:4ae5 $0e $ea
    dw   `22200330                                     ;; 07:4ae7 $06 $e6
    dw   `22200330                                     ;; 07:4ae9 $06 $e6
    dw   `22200330                                     ;; 07:4aeb $06 $e6

    dw   `22222200                                     ;; 07:4aed $00 $fc
    dw   `22222200                                     ;; 07:4aef $00 $fc
    dw   `22222200                                     ;; 07:4af1 $00 $fc
    dw   `22222200                                     ;; 07:4af3 $00 $fc
    dw   `22222220                                     ;; 07:4af5 $00 $fe
    dw   `22222222                                     ;; 07:4af7 $00 $ff
    dw   `22222222                                     ;; 07:4af9 $00 $ff
    dw   `12222222                                     ;; 07:4afb $80 $7f

    dw   `22222222                                     ;; 07:4afd $00 $ff
    dw   `22222222                                     ;; 07:4aff $00 $ff
    dw   `22222222                                     ;; 07:4b01 $00 $ff
    dw   `22222222                                     ;; 07:4b03 $00 $ff
    dw   `12222222                                     ;; 07:4b05 $80 $7f
    dw   `02222222                                     ;; 07:4b07 $00 $7f
    dw   `01222222                                     ;; 07:4b09 $40 $3f
    dw   `00222222                                     ;; 07:4b0b $00 $3f

    dw   `22003000                                     ;; 07:4b0d $08 $c8
    dw   `22003000                                     ;; 07:4b0f $08 $c8
    dw   `22003000                                     ;; 07:4b11 $08 $c8
    dw   `22003333                                     ;; 07:4b13 $0f $cf
    dw   `22000000                                     ;; 07:4b15 $00 $c0
    dw   `22022222                                     ;; 07:4b17 $00 $df
    dw   `22022222                                     ;; 07:4b19 $00 $df
    dw   `22022222                                     ;; 07:4b1b $00 $df

    dw   `22030302                                     ;; 07:4b1d $14 $d5
    dw   `22013302                                     ;; 07:4b1f $1c $cd
    dw   `22003302                                     ;; 07:4b21 $0c $cd
    dw   `22203302                                     ;; 07:4b23 $0c $ed
    dw   `22203302                                     ;; 07:4b25 $0c $ed
    dw   `22201302                                     ;; 07:4b27 $0c $e5
    dw   `22200301                                     ;; 07:4b29 $05 $e4
    dw   `22201300                                     ;; 07:4b2b $0c $e4

    dw   `22222000                                     ;; 07:4b2d $00 $f8
    dw   `22222000                                     ;; 07:4b2f $00 $f8
    dw   `22222000                                     ;; 07:4b31 $00 $f8
    dw   `22222000                                     ;; 07:4b33 $00 $f8
    dw   `22222200                                     ;; 07:4b35 $00 $fc
    dw   `22222222                                     ;; 07:4b37 $00 $ff
    dw   `22222222                                     ;; 07:4b39 $00 $ff
    dw   `22222222                                     ;; 07:4b3b $00 $ff

    dw   `02222220                                     ;; 07:4b3d $00 $7e
    dw   `02222220                                     ;; 07:4b3f $00 $7e
    dw   `02222220                                     ;; 07:4b41 $00 $7e
    dw   `02222220                                     ;; 07:4b43 $00 $7e
    dw   `22222220                                     ;; 07:4b45 $00 $fe
    dw   `22222220                                     ;; 07:4b47 $00 $fe
    dw   `22222220                                     ;; 07:4b49 $00 $fe
    dw   `22222210                                     ;; 07:4b4b $02 $fc

    dw   `22222222                                     ;; 07:4b4d $00 $ff
    dw   `22222222                                     ;; 07:4b4f $00 $ff
    dw   `22222222                                     ;; 07:4b51 $00 $ff
    dw   `22222222                                     ;; 07:4b53 $00 $ff
    dw   `22222222                                     ;; 07:4b55 $00 $ff
    dw   `22222200                                     ;; 07:4b57 $00 $fc
    dw   `22222203                                     ;; 07:4b59 $01 $fd
    dw   `22222203                                     ;; 07:4b5b $01 $fd

    dw   `22200002                                     ;; 07:4b5d $00 $e1
    dw   `22200002                                     ;; 07:4b5f $00 $e1
    dw   `22200002                                     ;; 07:4b61 $00 $e1
    dw   `22200002                                     ;; 07:4b63 $00 $e1
    dw   `22200002                                     ;; 07:4b65 $00 $e1
    dw   `00000002                                     ;; 07:4b67 $00 $01
    dw   `33333302                                     ;; 07:4b69 $fc $fd
    dw   `00000302                                     ;; 07:4b6b $04 $05

    dw   `22222003                                     ;; 07:4b6d $01 $f9
    dw   `22222003                                     ;; 07:4b6f $01 $f9
    dw   `22222003                                     ;; 07:4b71 $01 $f9
    dw   `22222003                                     ;; 07:4b73 $01 $f9
    dw   `22222003                                     ;; 07:4b75 $01 $f9
    dw   `22222003                                     ;; 07:4b77 $01 $f9
    dw   `22222003                                     ;; 07:4b79 $01 $f9
    dw   `22222003                                     ;; 07:4b7b $01 $f9

    dw   `22222222                                     ;; 07:4b7d $00 $ff
    dw   `22222222                                     ;; 07:4b7f $00 $ff
    dw   `22222222                                     ;; 07:4b81 $00 $ff
    dw   `00000000                                     ;; 07:4b83 $00 $00
    dw   `33333333                                     ;; 07:4b85 $ff $ff
    dw   `00000000                                     ;; 07:4b87 $00 $00
    dw   `00000000                                     ;; 07:4b89 $00 $00
    dw   `00000000                                     ;; 07:4b8b $00 $00

    dw   `22201330                                     ;; 07:4b8d $0e $e6
    dw   `22003003                                     ;; 07:4b8f $09 $c9
    dw   `10013000                                     ;; 07:4b91 $98 $08
    dw   `00130000                                     ;; 07:4b93 $30 $10
    dw   `33300000                                     ;; 07:4b95 $e0 $e0
    dw   `00000000                                     ;; 07:4b97 $00 $00
    dw   `00000000                                     ;; 07:4b99 $00 $00
    dw   `00000000                                     ;; 07:4b9b $00 $00

    dw   `02222222                                     ;; 07:4b9d $00 $7f
    dw   `01222222                                     ;; 07:4b9f $40 $3f
    dw   `30011222                                     ;; 07:4ba1 $98 $87
    dw   `03300000                                     ;; 07:4ba3 $60 $60
    dw   `00033333                                     ;; 07:4ba5 $1f $1f
    dw   `00000000                                     ;; 07:4ba7 $00 $00
    dw   `00000000                                     ;; 07:4ba9 $00 $00
    dw   `00000000                                     ;; 07:4bab $00 $00

    dw   `22222220                                     ;; 07:4bad $00 $fe
    dw   `22222210                                     ;; 07:4baf $02 $fc
    dw   `22211003                                     ;; 07:4bb1 $19 $e1
    dw   `00000033                                     ;; 07:4bb3 $03 $03
    dw   `33333300                                     ;; 07:4bb5 $fc $fc
    dw   `00000000                                     ;; 07:4bb7 $00 $00
    dw   `00000000                                     ;; 07:4bb9 $00 $00
    dw   `00000000                                     ;; 07:4bbb $00 $00

    dw   `02222222                                     ;; 07:4bbd $00 $7f
    dw   `02222222                                     ;; 07:4bbf $00 $7f
    dw   `01222221                                     ;; 07:4bc1 $41 $3e
    dw   `00000000                                     ;; 07:4bc3 $00 $00
    dw   `33333333                                     ;; 07:4bc5 $ff $ff
    dw   `00000000                                     ;; 07:4bc7 $00 $00
    dw   `00000000                                     ;; 07:4bc9 $00 $00
    dw   `00000000                                     ;; 07:4bcb $00 $00

    dw   `00022222                                     ;; 07:4bcd $00 $1f
    dw   `03001222                                     ;; 07:4bcf $48 $47
    dw   `03300012                                     ;; 07:4bd1 $62 $61
    dw   `03033000                                     ;; 07:4bd3 $58 $58
    dw   `33001333                                     ;; 07:4bd5 $cf $c7
    dw   `00000000                                     ;; 07:4bd7 $00 $00
    dw   `00000000                                     ;; 07:4bd9 $00 $00
    dw   `00000000                                     ;; 07:4bdb $00 $00

    dw   `22022222                                     ;; 07:4bdd $00 $df
    dw   `22022222                                     ;; 07:4bdf $00 $df
    dw   `22022222                                     ;; 07:4be1 $00 $df
    dw   `00000000                                     ;; 07:4be3 $00 $00
    dw   `33333333                                     ;; 07:4be5 $ff $ff
    dw   `00000000                                     ;; 07:4be7 $00 $00
    dw   `00000000                                     ;; 07:4be9 $00 $00
    dw   `00000000                                     ;; 07:4beb $00 $00

    dw   `22222222                                     ;; 07:4bed $00 $ff
    dw   `22222222                                     ;; 07:4bef $00 $ff
    dw   `22222220                                     ;; 07:4bf1 $00 $fe
    dw   `00000000                                     ;; 07:4bf3 $00 $00
    dw   `33333333                                     ;; 07:4bf5 $ff $ff
    dw   `00000000                                     ;; 07:4bf7 $00 $00
    dw   `00000000                                     ;; 07:4bf9 $00 $00
    dw   `00000000                                     ;; 07:4bfb $00 $00

    dw   `22003130                                     ;; 07:4bfd $0e $ca
    dw   `20013030                                     ;; 07:4bff $1a $8a
    dw   `00130003                                     ;; 07:4c01 $31 $11
    dw   `13300001                                     ;; 07:4c03 $e1 $60
    dw   `31000000                                     ;; 07:4c05 $c0 $80
    dw   `00000000                                     ;; 07:4c07 $00 $00
    dw   `00000000                                     ;; 07:4c09 $00 $00
    dw   `00000000                                     ;; 07:4c0b $00 $00

    dw   `22222222                                     ;; 07:4c0d $00 $ff
    dw   `02222222                                     ;; 07:4c0f $00 $7f
    dw   `00122222                                     ;; 07:4c11 $20 $1f
    dw   `33000000                                     ;; 07:4c13 $c0 $c0
    dw   `01333333                                     ;; 07:4c15 $7f $3f
    dw   `00000000                                     ;; 07:4c17 $00 $00
    dw   `00000000                                     ;; 07:4c19 $00 $00
    dw   `00000000                                     ;; 07:4c1b $00 $00

    dw   `22222200                                     ;; 07:4c1d $00 $fc
    dw   `22222000                                     ;; 07:4c1f $00 $f8
    dw   `22210030                                     ;; 07:4c21 $12 $e2
    dw   `00000330                                     ;; 07:4c23 $06 $06
    dw   `33333033                                     ;; 07:4c25 $fb $fb
    dw   `00000000                                     ;; 07:4c27 $00 $00
    dw   `00000000                                     ;; 07:4c29 $00 $00
    dw   `00000000                                     ;; 07:4c2b $00 $00

    dw   `22222203                                     ;; 07:4c2d $01 $fd
    dw   `22222203                                     ;; 07:4c2f $01 $fd
    dw   `22222203                                     ;; 07:4c31 $01 $fd
    dw   `00000003                                     ;; 07:4c33 $01 $01
    dw   `33333333                                     ;; 07:4c35 $ff $ff
    dw   `00000000                                     ;; 07:4c37 $00 $00
    dw   `00000000                                     ;; 07:4c39 $00 $00
    dw   `00000000                                     ;; 07:4c3b $00 $00

    dw   `00000302                                     ;; 07:4c3d $04 $05
    dw   `00000302                                     ;; 07:4c3f $04 $05
    dw   `00000302                                     ;; 07:4c41 $04 $05
    dw   `00000300                                     ;; 07:4c43 $04 $04
    dw   `00000333                                     ;; 07:4c45 $07 $07
    dw   `00000000                                     ;; 07:4c47 $00 $00
    dw   `00000000                                     ;; 07:4c49 $00 $00
    dw   `00000000                                     ;; 07:4c4b $00 $00

    dw   `22222003                                     ;; 07:4c4d $01 $f9
    dw   `22222003                                     ;; 07:4c4f $01 $f9
    dw   `22222003                                     ;; 07:4c51 $01 $f9
    dw   `00000003                                     ;; 07:4c53 $01 $01
    dw   `33333333                                     ;; 07:4c55 $ff $ff
    dw   `00000000                                     ;; 07:4c57 $00 $00
    dw   `00000000                                     ;; 07:4c59 $00 $00
    dw   `00000000                                     ;; 07:4c5b $00 $00

    dw   `00000000                                     ;; 07:4c5d $00 $00
    dw   `00000000                                     ;; 07:4c5f $00 $00
    dw   `00000000                                     ;; 07:4c61 $00 $00
    dw   `00000000                                     ;; 07:4c63 $00 $00
    dw   `33000000                                     ;; 07:4c65 $c0 $c0
    dw   `00300000                                     ;; 07:4c67 $20 $20
    dw   `30030000                                     ;; 07:4c69 $90 $90
    dw   `03030000                                     ;; 07:4c6b $50 $50

    dw   `30030000                                     ;; 07:4c6d $90 $90
    dw   `03030000                                     ;; 07:4c6f $50 $50
    dw   `00300000                                     ;; 07:4c71 $20 $20
    dw   `33000000                                     ;; 07:4c73 $c0 $c0
    dw   `00000000                                     ;; 07:4c75 $00 $00
    dw   `00000000                                     ;; 07:4c77 $00 $00
    dw   `00000000                                     ;; 07:4c79 $00 $00
    dw   `00000000                                     ;; 07:4c7b $00 $00

    dw   `03022222                                     ;; 07:4c7d $40 $5f
    dw   `03022222                                     ;; 07:4c7f $40 $5f
    dw   `03022222                                     ;; 07:4c81 $40 $5f
    dw   `03000000                                     ;; 07:4c83 $40 $40
    dw   `03333333                                     ;; 07:4c85 $7f $7f
    dw   `00000000                                     ;; 07:4c87 $00 $00
    dw   `00000000                                     ;; 07:4c89 $00 $00
    dw   `00000000                                     ;; 07:4c8b $00 $00

    dw   `00000000                                     ;; 07:4c8d $00 $00
    dw   `00000000                                     ;; 07:4c8f $00 $00
    dw   `00000000                                     ;; 07:4c91 $00 $00
    dw   `00000000                                     ;; 07:4c93 $00 $00
    dw   `00000000                                     ;; 07:4c95 $00 $00
    dw   `00000002                                     ;; 07:4c97 $00 $01
    dw   `00000122                                     ;; 07:4c99 $04 $03
    dw   `00001222                                     ;; 07:4c9b $08 $07

    dw   `00000000                                     ;; 07:4c9d $00 $00
    dw   `00000012                                     ;; 07:4c9f $02 $01
    dw   `00012222                                     ;; 07:4ca1 $10 $0f
    dw   `01222222                                     ;; 07:4ca3 $40 $3f
    dw   `22222222                                     ;; 07:4ca5 $00 $ff
    dw   `22222222                                     ;; 07:4ca7 $00 $ff
    dw   `22222222                                     ;; 07:4ca9 $00 $ff
    dw   `22222222                                     ;; 07:4cab $00 $ff

    dw   `00112222                                     ;; 07:4cad $30 $0f
    dw   `22222222                                     ;; 07:4caf $00 $ff
    dw   `22222222                                     ;; 07:4cb1 $00 $ff
    dw   `22222222                                     ;; 07:4cb3 $00 $ff
    dw   `22222222                                     ;; 07:4cb5 $00 $ff
    dw   `22222222                                     ;; 07:4cb7 $00 $ff
    dw   `22222100                                     ;; 07:4cb9 $04 $f8
    dw   `22210000                                     ;; 07:4cbb $10 $e0

    dw   `22222222                                     ;; 07:4cbd $00 $ff
    dw   `22222222                                     ;; 07:4cbf $00 $ff
    dw   `22222222                                     ;; 07:4cc1 $00 $ff
    dw   `22222222                                     ;; 07:4cc3 $00 $ff
    dw   `22221000                                     ;; 07:4cc5 $08 $f0
    dw   `10000000                                     ;; 07:4cc7 $80 $00
    dw   `00000000                                     ;; 07:4cc9 $00 $00
    dw   `00000000                                     ;; 07:4ccb $00 $00

    dw   `11100000                                     ;; 07:4ccd $e0 $00
    dw   `22221100                                     ;; 07:4ccf $0c $f0
    dw   `22222211                                     ;; 07:4cd1 $03 $fc
    dw   `11110000                                     ;; 07:4cd3 $f0 $00
    dw   `00000000                                     ;; 07:4cd5 $00 $00
    dw   `00000000                                     ;; 07:4cd7 $00 $00
    dw   `00000000                                     ;; 07:4cd9 $00 $00
    dw   `00000000                                     ;; 07:4cdb $00 $00

    dw   `00000000                                     ;; 07:4cdd $00 $00
    dw   `00000000                                     ;; 07:4cdf $00 $00
    dw   `00000000                                     ;; 07:4ce1 $00 $00
    dw   `00012222                                     ;; 07:4ce3 $10 $0f
    dw   `01222222                                     ;; 07:4ce5 $40 $3f
    dw   `12222222                                     ;; 07:4ce7 $80 $7f
    dw   `22222222                                     ;; 07:4ce9 $00 $ff
    dw   `22222222                                     ;; 07:4ceb $00 $ff

    dw   `00000000                                     ;; 07:4ced $00 $00
    dw   `00000000                                     ;; 07:4cef $00 $00
    dw   `00000000                                     ;; 07:4cf1 $00 $00
    dw   `10000000                                     ;; 07:4cf3 $80 $00
    dw   `22100000                                     ;; 07:4cf5 $20 $c0
    dw   `22210000                                     ;; 07:4cf7 $10 $e0
    dw   `22220000                                     ;; 07:4cf9 $00 $f0
    dw   `22220000                                     ;; 07:4cfb $00 $f0

    dw   `00012222                                     ;; 07:4cfd $10 $0f
    dw   `00122222                                     ;; 07:4cff $20 $1f
    dw   `00222222                                     ;; 07:4d01 $00 $3f
    dw   `01222222                                     ;; 07:4d03 $40 $3f
    dw   `02222222                                     ;; 07:4d05 $00 $7f
    dw   `12222222                                     ;; 07:4d07 $80 $7f
    dw   `12222222                                     ;; 07:4d09 $80 $7f
    dw   `22222222                                     ;; 07:4d0b $00 $ff

    dw   `22222222                                     ;; 07:4d0d $00 $ff
    dw   `22222222                                     ;; 07:4d0f $00 $ff
    dw   `22222220                                     ;; 07:4d11 $00 $fe
    dw   `22222200                                     ;; 07:4d13 $00 $fc
    dw   `22222000                                     ;; 07:4d15 $00 $f8
    dw   `22220000                                     ;; 07:4d17 $00 $f0
    dw   `22210001                                     ;; 07:4d19 $11 $e0
    dw   `22200012                                     ;; 07:4d1b $02 $e1

    dw   `21000000                                     ;; 07:4d1d $40 $80
    dw   `00000000                                     ;; 07:4d1f $00 $00
    dw   `00000000                                     ;; 07:4d21 $00 $00
    dw   `00000122                                     ;; 07:4d23 $04 $03
    dw   `00012222                                     ;; 07:4d25 $10 $0f
    dw   `01222222                                     ;; 07:4d27 $40 $3f
    dw   `22222222                                     ;; 07:4d29 $00 $ff
    dw   `22222222                                     ;; 07:4d2b $00 $ff

    dw   `00000000                                     ;; 07:4d2d $00 $00
    dw   `00000011                                     ;; 07:4d2f $03 $00
    dw   `11222222                                     ;; 07:4d31 $c0 $3f
    dw   `22222222                                     ;; 07:4d33 $00 $ff
    dw   `22222222                                     ;; 07:4d35 $00 $ff
    dw   `22222222                                     ;; 07:4d37 $00 $ff
    dw   `22222222                                     ;; 07:4d39 $00 $ff
    dw   `22222222                                     ;; 07:4d3b $00 $ff

    dw   `00000000                                     ;; 07:4d3d $00 $00
    dw   `22222222                                     ;; 07:4d3f $00 $ff
    dw   `22222222                                     ;; 07:4d41 $00 $ff
    dw   `22222222                                     ;; 07:4d43 $00 $ff
    dw   `22222222                                     ;; 07:4d45 $00 $ff
    dw   `22222222                                     ;; 07:4d47 $00 $ff
    dw   `22222222                                     ;; 07:4d49 $00 $ff
    dw   `22222222                                     ;; 07:4d4b $00 $ff

    dw   `00000000                                     ;; 07:4d4d $00 $00
    dw   `22222211                                     ;; 07:4d4f $03 $fc
    dw   `22222222                                     ;; 07:4d51 $00 $ff
    dw   `22222222                                     ;; 07:4d53 $00 $ff
    dw   `22222222                                     ;; 07:4d55 $00 $ff
    dw   `22222222                                     ;; 07:4d57 $00 $ff
    dw   `22222222                                     ;; 07:4d59 $00 $ff
    dw   `22222222                                     ;; 07:4d5b $00 $ff

    dw   `12222222                                     ;; 07:4d5d $80 $7f
    dw   `01222222                                     ;; 07:4d5f $40 $3f
    dw   `10012222                                     ;; 07:4d61 $90 $0f
    dw   `21000000                                     ;; 07:4d63 $40 $80
    dw   `22000000                                     ;; 07:4d65 $00 $c0
    dw   `22100000                                     ;; 07:4d67 $20 $c0
    dw   `22100000                                     ;; 07:4d69 $20 $c0
    dw   `22200000                                     ;; 07:4d6b $00 $e0

    dw   `22100122                                     ;; 07:4d6d $24 $c3
    dw   `22100222                                     ;; 07:4d6f $20 $c7
    dw   `22101222                                     ;; 07:4d71 $28 $c7
    dw   `22102222                                     ;; 07:4d73 $20 $cf
    dw   `22202222                                     ;; 07:4d75 $00 $ef
    dw   `22221222                                     ;; 07:4d77 $08 $f7
    dw   `22222222                                     ;; 07:4d79 $00 $ff
    dw   `22222222                                     ;; 07:4d7b $00 $ff

    dw   `22222222                                     ;; 07:4d7d $00 $ff
    dw   `22222222                                     ;; 07:4d7f $00 $ff
    dw   `22222222                                     ;; 07:4d81 $00 $ff
    dw   `22222222                                     ;; 07:4d83 $00 $ff
    dw   `22222222                                     ;; 07:4d85 $00 $ff
    dw   `22222222                                     ;; 07:4d87 $00 $ff
    dw   `22222222                                     ;; 07:4d89 $00 $ff
    dw   `22222222                                     ;; 07:4d8b $00 $ff

    dw   `22200000                                     ;; 07:4d8d $00 $e0
    dw   `22200000                                     ;; 07:4d8f $00 $e0
    dw   `22200000                                     ;; 07:4d91 $00 $e0
    dw   `22100000                                     ;; 07:4d93 $20 $c0
    dw   `22000000                                     ;; 07:4d95 $00 $c0
    dw   `21000000                                     ;; 07:4d97 $40 $80
    dw   `20000000                                     ;; 07:4d99 $00 $80
    dw   `00000000                                     ;; 07:4d9b $00 $00

    dw   `00012222                                     ;; 07:4d9d $10 $0f
    dw   `00001222                                     ;; 07:4d9f $08 $07
    dw   `00000122                                     ;; 07:4da1 $04 $03
    dw   `00000002                                     ;; 07:4da3 $00 $01
    dw   `00000000                                     ;; 07:4da5 $00 $00
    dw   `00000000                                     ;; 07:4da7 $00 $00
    dw   `00000000                                     ;; 07:4da9 $00 $00
    dw   `00000000                                     ;; 07:4dab $00 $00

    dw   `22222222                                     ;; 07:4dad $00 $ff
    dw   `22222222                                     ;; 07:4daf $00 $ff
    dw   `22222222                                     ;; 07:4db1 $00 $ff
    dw   `22222222                                     ;; 07:4db3 $00 $ff
    dw   `12222222                                     ;; 07:4db5 $80 $7f
    dw   `00122222                                     ;; 07:4db7 $20 $1f
    dw   `00001222                                     ;; 07:4db9 $08 $07
    dw   `00000001                                     ;; 07:4dbb $01 $00

    dw   `22222222                                     ;; 07:4dbd $00 $ff
    dw   `22222222                                     ;; 07:4dbf $00 $ff
    dw   `22222222                                     ;; 07:4dc1 $00 $ff
    dw   `22222222                                     ;; 07:4dc3 $00 $ff
    dw   `22222222                                     ;; 07:4dc5 $00 $ff
    dw   `22222222                                     ;; 07:4dc7 $00 $ff
    dw   `22222222                                     ;; 07:4dc9 $00 $ff
    dw   `11222222                                     ;; 07:4dcb $c0 $3f

    dw   `22222222                                     ;; 07:4dcd $00 $ff
    dw   `22222222                                     ;; 07:4dcf $00 $ff
    dw   `22222222                                     ;; 07:4dd1 $00 $ff
    dw   `22222222                                     ;; 07:4dd3 $00 $ff
    dw   `22222222                                     ;; 07:4dd5 $00 $ff
    dw   `22222222                                     ;; 07:4dd7 $00 $ff
    dw   `22222110                                     ;; 07:4dd9 $06 $f8
    dw   `21110000                                     ;; 07:4ddb $70 $80

    dw   `22222221                                     ;; 07:4ddd $01 $fe
    dw   `22222210                                     ;; 07:4ddf $02 $fc
    dw   `22222000                                     ;; 07:4de1 $00 $f8
    dw   `22220000                                     ;; 07:4de3 $00 $f0
    dw   `22100000                                     ;; 07:4de5 $20 $c0
    dw   `10000000                                     ;; 07:4de7 $80 $00
    dw   `00000000                                     ;; 07:4de9 $00 $00
    dw   `00000000                                     ;; 07:4deb $00 $00

    dw   `00000000                                     ;; 07:4ded $00 $00
    dw   `00000000                                     ;; 07:4def $00 $00
    dw   `00000000                                     ;; 07:4df1 $00 $00
    dw   `00000000                                     ;; 07:4df3 $00 $00
    dw   `00000000                                     ;; 07:4df5 $00 $00
    dw   `23200000                                     ;; 07:4df7 $40 $e0
    dw   `03100000                                     ;; 07:4df9 $60 $40
    dw   `03100000                                     ;; 07:4dfb $60 $40

    dw   `00000000                                     ;; 07:4dfd $00 $00
    dw   `00000000                                     ;; 07:4dff $00 $00
    dw   `00000000                                     ;; 07:4e01 $00 $00
    dw   `00000000                                     ;; 07:4e03 $00 $00
    dw   `00000000                                     ;; 07:4e05 $00 $00
    dw   `02303302                                     ;; 07:4e07 $2c $6d
    dw   `00321321                                     ;; 07:4e09 $2d $36
    dw   `00320320                                     ;; 07:4e0b $24 $36

    dw   `00000000                                     ;; 07:4e0d $00 $00
    dw   `00000000                                     ;; 07:4e0f $00 $00
    dw   `00000000                                     ;; 07:4e11 $00 $00
    dw   `00000000                                     ;; 07:4e13 $00 $00
    dw   `00000000                                     ;; 07:4e15 $00 $00
    dw   `30000000                                     ;; 07:4e17 $80 $80
    dw   `32000000                                     ;; 07:4e19 $80 $c0
    dw   `32000000                                     ;; 07:4e1b $80 $c0

    dw   `00000000                                     ;; 07:4e1d $00 $00
    dw   `00000000                                     ;; 07:4e1f $00 $00
    dw   `00000000                                     ;; 07:4e21 $00 $00
    dw   `00000000                                     ;; 07:4e23 $00 $00
    dw   `00000000                                     ;; 07:4e25 $00 $00
    dw   `01331000                                     ;; 07:4e27 $78 $30
    dw   `03103100                                     ;; 07:4e29 $6c $48
    dw   `03103100                                     ;; 07:4e2b $6c $48

    dw   `00000000                                     ;; 07:4e2d $00 $00
    dw   `00000000                                     ;; 07:4e2f $00 $00
    dw   `00000000                                     ;; 07:4e31 $00 $00
    dw   `00000000                                     ;; 07:4e33 $00 $00
    dw   `00000000                                     ;; 07:4e35 $00 $00
    dw   `00000023                                     ;; 07:4e37 $01 $03
    dw   `00000222                                     ;; 07:4e39 $00 $07
    dw   `00000302                                     ;; 07:4e3b $04 $05

    dw   `00000000                                     ;; 07:4e3d $00 $00
    dw   `00000000                                     ;; 07:4e3f $00 $00
    dw   `00000000                                     ;; 07:4e41 $00 $00
    dw   `00000000                                     ;; 07:4e43 $00 $00
    dw   `13000000                                     ;; 07:4e45 $c0 $40
    dw   `21000000                                     ;; 07:4e47 $40 $80
    dw   `30000000                                     ;; 07:4e49 $80 $80
    dw   `30000000                                     ;; 07:4e4b $80 $80

    dw   `00000000                                     ;; 07:4e4d $00 $00
    dw   `00000000                                     ;; 07:4e4f $00 $00
    dw   `00000000                                     ;; 07:4e51 $00 $00
    dw   `00000000                                     ;; 07:4e53 $00 $00
    dw   `00000000                                     ;; 07:4e55 $00 $00
    dw   `30000000                                     ;; 07:4e57 $80 $80
    dw   `12000000                                     ;; 07:4e59 $80 $40
    dw   `13000000                                     ;; 07:4e5b $c0 $40

    dw   `00000000                                     ;; 07:4e5d $00 $00
    dw   `00000000                                     ;; 07:4e5f $00 $00
    dw   `00000000                                     ;; 07:4e61 $00 $00
    dw   `00000000                                     ;; 07:4e63 $00 $00
    dw   `00000000                                     ;; 07:4e65 $00 $00
    dw   `01230000                                     ;; 07:4e67 $50 $30
    dw   `02312000                                     ;; 07:4e69 $30 $68
    dw   `03113000                                     ;; 07:4e6b $78 $48

    dw   `00000000                                     ;; 07:4e6d $00 $00
    dw   `00000000                                     ;; 07:4e6f $00 $00
    dw   `00000000                                     ;; 07:4e71 $00 $00
    dw   `00000000                                     ;; 07:4e73 $00 $00
    dw   `00000000                                     ;; 07:4e75 $00 $00
    dw   `00023031                                     ;; 07:4e77 $0b $1a
    dw   `00003303                                     ;; 07:4e79 $0d $0d
    dw   `00003203                                     ;; 07:4e7b $09 $0d

    dw   `03100000                                     ;; 07:4e7d $60 $40
    dw   `03100000                                     ;; 07:4e7f $60 $40
    dw   `03100000                                     ;; 07:4e81 $60 $40
    dw   `03100000                                     ;; 07:4e83 $60 $40
    dw   `03100000                                     ;; 07:4e85 $60 $40
    dw   `03100000                                     ;; 07:4e87 $60 $40
    dw   `03100000                                     ;; 07:4e89 $60 $40
    dw   `23200000                                     ;; 07:4e8b $40 $e0

    dw   `00320320                                     ;; 07:4e8d $24 $36
    dw   `00320320                                     ;; 07:4e8f $24 $36
    dw   `00320320                                     ;; 07:4e91 $24 $36
    dw   `00320320                                     ;; 07:4e93 $24 $36
    dw   `00320320                                     ;; 07:4e95 $24 $36
    dw   `00320320                                     ;; 07:4e97 $24 $36
    dw   `00320320                                     ;; 07:4e99 $24 $36
    dw   `02321321                                     ;; 07:4e9b $2d $76

    dw   `32000000                                     ;; 07:4e9d $80 $c0
    dw   `32000000                                     ;; 07:4e9f $80 $c0
    dw   `32000000                                     ;; 07:4ea1 $80 $c0
    dw   `32000000                                     ;; 07:4ea3 $80 $c0
    dw   `32000000                                     ;; 07:4ea5 $80 $c0
    dw   `32000000                                     ;; 07:4ea7 $80 $c0
    dw   `32000000                                     ;; 07:4ea9 $80 $c0
    dw   `32100000                                     ;; 07:4eab $a0 $c0

    dw   `02003100                                     ;; 07:4ead $0c $48
    dw   `00233100                                     ;; 07:4eaf $1c $38
    dw   `02303100                                     ;; 07:4eb1 $2c $68
    dw   `03103100                                     ;; 07:4eb3 $6c $48
    dw   `03103100                                     ;; 07:4eb5 $6c $48
    dw   `03103100                                     ;; 07:4eb7 $6c $48
    dw   `03103120                                     ;; 07:4eb9 $6c $4a
    dw   `01330310                                     ;; 07:4ebb $76 $34

    dw   `00000302                                     ;; 07:4ebd $04 $05
    dw   `00000302                                     ;; 07:4ebf $04 $05
    dw   `00000312                                     ;; 07:4ec1 $06 $05
    dw   `00000133                                     ;; 07:4ec3 $07 $03
    dw   `00000311                                     ;; 07:4ec5 $07 $04
    dw   `00000333                                     ;; 07:4ec7 $07 $07
    dw   `00000221                                     ;; 07:4ec9 $01 $06
    dw   `00001300                                     ;; 07:4ecb $0c $04

    dw   `30000000                                     ;; 07:4ecd $80 $80
    dw   `30000000                                     ;; 07:4ecf $80 $80
    dw   `30000000                                     ;; 07:4ed1 $80 $80
    dw   `10000000                                     ;; 07:4ed3 $80 $00
    dw   `00000000                                     ;; 07:4ed5 $00 $00
    dw   `20000000                                     ;; 07:4ed7 $00 $80
    dw   `32000000                                     ;; 07:4ed9 $80 $c0
    dw   `23000000                                     ;; 07:4edb $40 $c0

    dw   `00230230                                     ;; 07:4edd $12 $36
    dw   `00230230                                     ;; 07:4edf $12 $36
    dw   `00230230                                     ;; 07:4ee1 $12 $36
    dw   `00230230                                     ;; 07:4ee3 $12 $36
    dw   `00230230                                     ;; 07:4ee5 $12 $36
    dw   `00230230                                     ;; 07:4ee7 $12 $36
    dw   `00230230                                     ;; 07:4ee9 $12 $36
    dw   `02231232                                     ;; 07:4eeb $1a $77

    dw   `00000031                                     ;; 07:4eed $03 $02
    dw   `00000033                                     ;; 07:4eef $03 $03
    dw   `00000032                                     ;; 07:4ef1 $02 $03
    dw   `00000032                                     ;; 07:4ef3 $02 $03
    dw   `00000032                                     ;; 07:4ef5 $02 $03
    dw   `00000032                                     ;; 07:4ef7 $02 $03
    dw   `00000032                                     ;; 07:4ef9 $02 $03
    dw   `00000013                                     ;; 07:4efb $03 $01

    dw   `13000000                                     ;; 07:4efd $c0 $40
    dw   `33000000                                     ;; 07:4eff $c0 $c0
    dw   `00000000                                     ;; 07:4f01 $00 $00
    dw   `02000000                                     ;; 07:4f03 $00 $40
    dw   `03000000                                     ;; 07:4f05 $40 $40
    dw   `03000000                                     ;; 07:4f07 $40 $40
    dw   `12000000                                     ;; 07:4f09 $80 $40
    dw   `21000000                                     ;; 07:4f0b $40 $80

    dw   `03113000                                     ;; 07:4f0d $78 $48
    dw   `03333000                                     ;; 07:4f0f $78 $78
    dw   `03200000                                     ;; 07:4f11 $40 $60
    dw   `03202000                                     ;; 07:4f13 $40 $68
    dw   `03203000                                     ;; 07:4f15 $48 $68
    dw   `03203000                                     ;; 07:4f17 $48 $68
    dw   `03212000                                     ;; 07:4f19 $50 $68
    dw   `01321000                                     ;; 07:4f1b $68 $30

    dw   `00003203                                     ;; 07:4f1d $09 $0d
    dw   `00003202                                     ;; 07:4f1f $08 $0d
    dw   `00003200                                     ;; 07:4f21 $08 $0c
    dw   `00003200                                     ;; 07:4f23 $08 $0c
    dw   `00003200                                     ;; 07:4f25 $08 $0c
    dw   `00003200                                     ;; 07:4f27 $08 $0c
    dw   `00003200                                     ;; 07:4f29 $08 $0c
    dw   `00023300                                     ;; 07:4f2b $0c $1c

    dw   `22210000                                     ;; 07:4f2d $10 $e0
    dw   `22100000                                     ;; 07:4f2f $20 $c0
    dw   `10000000                                     ;; 07:4f31 $80 $00
    dw   `00000000                                     ;; 07:4f33 $00 $00
    dw   `00000000                                     ;; 07:4f35 $00 $00
    dw   `00000000                                     ;; 07:4f37 $00 $00
    dw   `00000000                                     ;; 07:4f39 $00 $00
    dw   `00000000                                     ;; 07:4f3b $00 $00

    dw   `22222222                                     ;; 07:4f3d $00 $ff
    dw   `22222222                                     ;; 07:4f3f $00 $ff
    dw   `22222222                                     ;; 07:4f41 $00 $ff
    dw   `22222222                                     ;; 07:4f43 $00 $ff
    dw   `12222222                                     ;; 07:4f45 $80 $7f
    dw   `02222222                                     ;; 07:4f47 $00 $7f
    dw   `01222222                                     ;; 07:4f49 $40 $3f
    dw   `00122222                                     ;; 07:4f4b $20 $1f

    dw   `00000000                                     ;; 07:4f4d $00 $00
    dw   `00000000                                     ;; 07:4f4f $00 $00
    dw   `00000000                                     ;; 07:4f51 $00 $00
    dw   `00000000                                     ;; 07:4f53 $00 $00
    dw   `00000000                                     ;; 07:4f55 $00 $00
    dw   `00303310                                     ;; 07:4f57 $2e $2c
    dw   `00230230                                     ;; 07:4f59 $12 $36
    dw   `00230230                                     ;; 07:4f5b $12 $36

    dw   `00000000                                     ;; 07:4f5d $00 $00
    dw   `00000000                                     ;; 07:4f5f $00 $00
    dw   `00000000                                     ;; 07:4f61 $00 $00
    dw   `00000000                                     ;; 07:4f63 $00 $00
    dw   `00000000                                     ;; 07:4f65 $00 $00
    dw   `00000012                                     ;; 07:4f67 $02 $01
    dw   `00000023                                     ;; 07:4f69 $01 $03
    dw   `00000031                                     ;; 07:4f6b $03 $02

    dw   `00002300                                     ;; 07:4f6d $04 $0c
    dw   `00002300                                     ;; 07:4f6f $04 $0c
    dw   `00001223                                     ;; 07:4f71 $09 $07
    dw   `00000000                                     ;; 07:4f73 $00 $00
    dw   `00000000                                     ;; 07:4f75 $00 $00
    dw   `00000000                                     ;; 07:4f77 $00 $00
    dw   `00000000                                     ;; 07:4f79 $00 $00
    dw   `00000000                                     ;; 07:4f7b $00 $00

    dw   `13000000                                     ;; 07:4f7d $c0 $40
    dw   `23000000                                     ;; 07:4f7f $40 $c0
    dw   `30000000                                     ;; 07:4f81 $80 $80
    dw   `00000000                                     ;; 07:4f83 $00 $00
    dw   `00000000                                     ;; 07:4f85 $00 $00
    dw   `00000000                                     ;; 07:4f87 $00 $00
    dw   `00000000                                     ;; 07:4f89 $00 $00
    dw   `00000000                                     ;; 07:4f8b $00 $00

    dw   `00000000                                     ;; 07:4f8d $00 $00
    dw   `00000000                                     ;; 07:4f8f $00 $00
    dw   `00000000                                     ;; 07:4f91 $00 $00
    dw   `00000000                                     ;; 07:4f93 $00 $00
    dw   `33333333                                     ;; 07:4f95 $ff $ff
    dw   `00000000                                     ;; 07:4f97 $00 $00
    dw   `00222222                                     ;; 07:4f99 $00 $3f
    dw   `00222222                                     ;; 07:4f9b $00 $3f

    dw   `00222222                                     ;; 07:4f9d $00 $3f
    dw   `00222222                                     ;; 07:4f9f $00 $3f
    dw   `00222222                                     ;; 07:4fa1 $00 $3f
    dw   `00222222                                     ;; 07:4fa3 $00 $3f
    dw   `00222222                                     ;; 07:4fa5 $00 $3f
    dw   `00222222                                     ;; 07:4fa7 $00 $3f
    dw   `00222222                                     ;; 07:4fa9 $00 $3f
    dw   `00222222                                     ;; 07:4fab $00 $3f

    dw   `00222222                                     ;; 07:4fad $00 $3f
    dw   `00222222                                     ;; 07:4faf $00 $3f
    dw   `00222222                                     ;; 07:4fb1 $00 $3f
    dw   `00222222                                     ;; 07:4fb3 $00 $3f
    dw   `02222222                                     ;; 07:4fb5 $00 $7f
    dw   `22222222                                     ;; 07:4fb7 $00 $ff
    dw   `22222222                                     ;; 07:4fb9 $00 $ff
    dw   `22222221                                     ;; 07:4fbb $01 $fe


data_07_4fbd:
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:4fbd ........
    db   $ff, $7f, $60, $79, $20, $59, $00, $00        ;; 07:4fc5 ........
    db   $ff, $7f, $73, $4e, $00, $7c, $00, $00        ;; 07:4fcd ........
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:4fd5 ........
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:4fdd ........
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:4fe5 ........
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:4fed ........
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:4ff5 ........

data_07_4ffd:
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:4ffd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5005 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:500d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5015 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:501d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5025 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:502d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5035 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:503d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5045 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:504d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5055 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:505d ........
    db   $7f, $7f, $7f, $b9, $ba, $bb, $bc, $bd        ;; 07:5065 ........
    db   $7f, $be, $bf, $7f, $7f, $7f, $7f, $7f        ;; 07:506d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $c0        ;; 07:5075 ........
    db   $c1, $c2, $c3, $c4, $c5, $c6, $e3, $7f        ;; 07:507d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5085 ........
    db   $7f, $7f, $7f, $e4, $c7, $c8, $c8, $c8        ;; 07:508d ........
    db   $c8, $c9, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5095 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $ca        ;; 07:509d ........
    db   $cb, $cc, $c8, $cd, $ce, $7f, $7f, $7f        ;; 07:50a5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50ad ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50b5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50bd ........
    db   $7f, $7f, $7f, $7f, $cf, $d0, $d1, $d2        ;; 07:50c5 ........
    db   $d3, $d4, $cf, $e5, $e6, $d5, $d6, $d7        ;; 07:50cd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50d5 ........
    db   $d8, $d9, $da, $db, $dc, $dd, $d8, $de        ;; 07:50dd ........
    db   $df, $e0, $e1, $e2, $7f, $7f, $7f, $7f        ;; 07:50e5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50ed ........
    db   $e7, $e8, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50f5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:50fd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5105 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:510d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5115 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:511d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5125 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:512d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5135 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:513d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5145 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:514d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5155 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:515d ........

data_07_5165:
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5165 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:516d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5175 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:517d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5185 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:518d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5195 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:519d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:51a5 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:51ad ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:51b5 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:51bd ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:51c5 ........
    db   $07, $07, $01, $01, $01, $01, $01, $01        ;; 07:51cd ........
    db   $01, $01, $01, $07, $07, $07, $07, $07        ;; 07:51d5 ........
    db   $07, $07, $07, $07, $07, $07, $01, $01        ;; 07:51dd ........
    db   $01, $01, $01, $01, $01, $01, $01, $07        ;; 07:51e5 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:51ed ........
    db   $07, $07, $01, $01, $01, $01, $01, $01        ;; 07:51f5 ........
    db   $01, $01, $01, $07, $07, $07, $07, $07        ;; 07:51fd ........
    db   $07, $07, $07, $07, $07, $07, $01, $01        ;; 07:5205 ........
    db   $01, $01, $01, $01, $01, $01, $01, $07        ;; 07:520d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5215 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:521d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5225 ........
    db   $07, $07, $07, $07, $06, $06, $06, $06        ;; 07:522d ........
    db   $06, $06, $06, $06, $06, $06, $06, $06        ;; 07:5235 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:523d ........
    db   $06, $06, $06, $06, $06, $06, $06, $06        ;; 07:5245 ........
    db   $06, $06, $06, $06, $07, $07, $07, $07        ;; 07:524d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5255 ........
    db   $06, $06, $07, $07, $07, $07, $07, $07        ;; 07:525d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5265 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:526d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5275 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:527d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5285 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:528d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5295 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:529d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:52a5 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:52ad ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:52b5 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:52bd ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:52c5 ........

data_07_52cd:
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52cd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52d5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52dd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52e5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52ed ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52f5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:52fd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5305 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:530d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5315 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:531d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5325 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:532d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5335 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:533d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5345 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:534d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $80        ;; 07:5355 ........
    db   $81, $82, $e9, $83, $84, $85, $86, $81        ;; 07:535d ........
    db   $87, $88, $89, $8a, $8b, $8c, $b6, $7f        ;; 07:5365 ........
    db   $7f, $7f, $8d, $8e, $8f, $90, $ea, $91        ;; 07:536d ........
    db   $92, $93, $94, $95, $96, $97, $98, $99        ;; 07:5375 ........
    db   $9a, $9b, $b7, $7f, $7f, $7f, $9c, $9d        ;; 07:537d ........
    db   $9e, $9f, $eb, $91, $a0, $a1, $9d, $a2        ;; 07:5385 ........
    db   $a3, $a4, $a5, $a6, $a7, $7f, $7f, $7f        ;; 07:538d ........
    db   $7f, $7f, $b8, $a8, $a9, $aa, $ab, $ac        ;; 07:5395 ........
    db   $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4        ;; 07:539d ........
    db   $b5, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53a5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53ad ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53b5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00        ;; 07:53bd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53c5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53cd ........
    db   $7f, $7f, $7f, $00, $7f, $7f, $7f, $7f        ;; 07:53d5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53dd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00        ;; 07:53e5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53ed ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53f5 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:53fd ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5405 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:540d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5415 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:541d ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:5425 ........
    db   $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f        ;; 07:542d ........

data_07_5435:
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5435 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:543d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5445 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:544d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5455 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:545d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5465 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:546d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5475 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:547d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5485 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:548d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5495 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:549d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:54a5 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:54ad ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:54b5 ........
    db   $07, $07, $07, $07, $07, $07, $02, $02        ;; 07:54bd ........
    db   $02, $02, $02, $02, $02, $02, $02, $02        ;; 07:54c5 ........
    db   $02, $02, $02, $02, $02, $02, $02, $07        ;; 07:54cd ........
    db   $07, $07, $02, $02, $02, $02, $02, $02        ;; 07:54d5 ........
    db   $02, $02, $02, $02, $02, $02, $02, $02        ;; 07:54dd ........
    db   $02, $02, $02, $07, $07, $07, $02, $02        ;; 07:54e5 ........
    db   $02, $02, $02, $02, $02, $02, $02, $02        ;; 07:54ed ........
    db   $02, $02, $02, $02, $02, $02, $02, $07        ;; 07:54f5 ........
    db   $07, $07, $02, $02, $02, $02, $02, $02        ;; 07:54fd ........
    db   $02, $02, $02, $02, $02, $02, $02, $02        ;; 07:5505 ........
    db   $02, $02, $02, $07, $07, $07, $07, $07        ;; 07:550d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5515 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:551d ........
    db   $07, $07, $07, $07, $07, $07, $07, $10        ;; 07:5525 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:552d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5535 ........
    db   $07, $07, $07, $10, $07, $07, $07, $07        ;; 07:553d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5545 ........
    db   $07, $07, $07, $07, $07, $07, $07, $10        ;; 07:554d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5555 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:555d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5565 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:556d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5575 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:557d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5585 ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:558d ........
    db   $07, $07, $07, $07, $07, $07, $07, $07        ;; 07:5595 ........

data_07_559d:
    dw   `00000000                                     ;; 07:559d $00 $00
    dw   `00000000                                     ;; 07:559f $00 $00
    dw   `00333000                                     ;; 07:55a1 $38 $38
    dw   `23113330                                     ;; 07:55a3 $7e $ce
    dw   `31111333                                     ;; 07:55a5 $ff $87
    dw   `11111133                                     ;; 07:55a7 $ff $03
    dw   `11111330                                     ;; 07:55a9 $fe $06
    dw   `33111330                                     ;; 07:55ab $fe $c6

    dw   `03111330                                     ;; 07:55ad $7e $46
    dw   `03111330                                     ;; 07:55af $7e $46
    dw   `03111330                                     ;; 07:55b1 $7e $46
    dw   `03111330                                     ;; 07:55b3 $7e $46
    dw   `03111330                                     ;; 07:55b5 $7e $46
    dw   `03111330                                     ;; 07:55b7 $7e $46
    dw   `03111330                                     ;; 07:55b9 $7e $46
    dw   `03111330                                     ;; 07:55bb $7e $46

    dw   `00000000                                     ;; 07:55bd $00 $00
    dw   `00000000                                     ;; 07:55bf $00 $00
    dw   `00000033                                     ;; 07:55c1 $03 $03
    dw   `00000331                                     ;; 07:55c3 $07 $06
    dw   `00003111                                     ;; 07:55c5 $0f $08
    dw   `00331111                                     ;; 07:55c7 $3f $30
    dw   `03111331                                     ;; 07:55c9 $7f $46
    dw   `31111333                                     ;; 07:55cb $ff $87

    dw   `31111330                                     ;; 07:55cd $fe $86
    dw   `31111330                                     ;; 07:55cf $fe $86
    dw   `31111333                                     ;; 07:55d1 $ff $87
    dw   `31111331                                     ;; 07:55d3 $ff $86
    dw   `31111311                                     ;; 07:55d5 $ff $84
    dw   `31111113                                     ;; 07:55d7 $ff $81
    dw   `31111133                                     ;; 07:55d9 $ff $83
    dw   `31111330                                     ;; 07:55db $fe $86

    dw   `00000000                                     ;; 07:55dd $00 $00
    dw   `00000000                                     ;; 07:55df $00 $00
    dw   `33300000                                     ;; 07:55e1 $e0 $e0
    dw   `13330000                                     ;; 07:55e3 $f0 $70
    dw   `11333330                                     ;; 07:55e5 $fe $3e
    dw   `11131330                                     ;; 07:55e7 $fe $16
    dw   `11113303                                     ;; 07:55e9 $fd $0d
    dw   `11133031                                     ;; 07:55eb $fb $1a

    dw   `31133031                                     ;; 07:55ed $fb $9a
    dw   `31330031                                     ;; 07:55ef $f3 $b2
    dw   `13300031                                     ;; 07:55f1 $e3 $62
    dw   `13000031                                     ;; 07:55f3 $c3 $42
    dw   `33000031                                     ;; 07:55f5 $c3 $c2
    dw   `30000031                                     ;; 07:55f7 $83 $82
    dw   `00000031                                     ;; 07:55f9 $03 $02
    dw   `00000033                                     ;; 07:55fb $03 $03

    dw   `00000311                                     ;; 07:55fd $07 $04
    dw   `00000033                                     ;; 07:55ff $03 $03
    dw   `00033330                                     ;; 07:5601 $1e $1e
    dw   `00311113                                     ;; 07:5603 $3f $21
    dw   `03111111                                     ;; 07:5605 $7f $40
    dw   `31111111                                     ;; 07:5607 $ff $80
    dw   `11131111                                     ;; 07:5609 $ff $10
    dw   `11133111                                     ;; 07:560b $ff $18

    dw   `11133311                                     ;; 07:560d $ff $1c
    dw   `11133331                                     ;; 07:560f $ff $1e
    dw   `11133003                                     ;; 07:5611 $f9 $19
    dw   `11133033                                     ;; 07:5613 $fb $1b
    dw   `11133311                                     ;; 07:5615 $ff $1c
    dw   `11133111                                     ;; 07:5617 $ff $18
    dw   `11111111                                     ;; 07:5619 $ff $00
    dw   `11113331                                     ;; 07:561b $ff $0e

    dw   `11111333                                     ;; 07:561d $ff $07
    dw   `33111330                                     ;; 07:561f $fe $c6
    dw   `02311330                                     ;; 07:5621 $3e $66
    dw   `00311330                                     ;; 07:5623 $3e $26
    dw   `30313300                                     ;; 07:5625 $bc $ac
    dw   `13313303                                     ;; 07:5627 $fd $6d
    dw   `11133031                                     ;; 07:5629 $fb $1a
    dw   `11133011                                     ;; 07:562b $fb $18

    dw   `11330033                                     ;; 07:562d $f3 $33
    dw   `13300000                                     ;; 07:562f $e0 $60
    dw   `30000000                                     ;; 07:5631 $80 $80
    dw   `33300000                                     ;; 07:5633 $e0 $e0
    dw   `11333000                                     ;; 07:5635 $f8 $38
    dw   `11113300                                     ;; 07:5637 $fc $0c
    dw   `11111300                                     ;; 07:5639 $fc $04
    dw   `11113300                                     ;; 07:563b $fc $0c

    dw   `00003300                                     ;; 07:563d $0c $0c
    dw   `00033300                                     ;; 07:563f $1c $1c
    dw   `00313300                                     ;; 07:5641 $3c $2c
    dw   `03113300                                     ;; 07:5643 $7c $4c
    dw   `23113300                                     ;; 07:5645 $7c $cc
    dw   `31113333                                     ;; 07:5647 $ff $8f
    dw   `11111111                                     ;; 07:5649 $ff $00
    dw   `11111111                                     ;; 07:564b $ff $00

    dw   `31113333                                     ;; 07:564d $ff $8f
    dw   `31113330                                     ;; 07:564f $fe $8e
    dw   `31113300                                     ;; 07:5651 $fc $8c
    dw   `31113300                                     ;; 07:5653 $fc $8c
    dw   `31113300                                     ;; 07:5655 $fc $8c
    dw   `31113300                                     ;; 07:5657 $fc $8c
    dw   `31113300                                     ;; 07:5659 $fc $8c
    dw   `31113300                                     ;; 07:565b $fc $8c

    dw   `00000000                                     ;; 07:565d $00 $00
    dw   `00000000                                     ;; 07:565f $00 $00
    dw   `00000000                                     ;; 07:5661 $00 $00
    dw   `00000000                                     ;; 07:5663 $00 $00
    dw   `00000000                                     ;; 07:5665 $00 $00
    dw   `33330000                                     ;; 07:5667 $f0 $f0
    dw   `11133000                                     ;; 07:5669 $f8 $18
    dw   `11330000                                     ;; 07:566b $f0 $30

    dw   `33300000                                     ;; 07:566d $e0 $e0
    dw   `00000000                                     ;; 07:566f $00 $00
    dw   `00000000                                     ;; 07:5671 $00 $00
    dw   `00000000                                     ;; 07:5673 $00 $00
    dw   `00000000                                     ;; 07:5675 $00 $00
    dw   `00000000                                     ;; 07:5677 $00 $00
    dw   `00000000                                     ;; 07:5679 $00 $00
    dw   `00000000                                     ;; 07:567b $00 $00

    dw   `00333333                                     ;; 07:567d $3f $3f
    dw   `03111111                                     ;; 07:567f $7f $40
    dw   `31111111                                     ;; 07:5681 $ff $80
    dw   `33111331                                     ;; 07:5683 $ff $c6
    dw   `03111333                                     ;; 07:5685 $7f $47
    dw   `03111330                                     ;; 07:5687 $7e $46
    dw   `03111330                                     ;; 07:5689 $7e $46
    dw   `03111330                                     ;; 07:568b $7e $46

    dw   `03111330                                     ;; 07:568d $7e $46
    dw   `03111330                                     ;; 07:568f $7e $46
    dw   `03111330                                     ;; 07:5691 $7e $46
    dw   `03111333                                     ;; 07:5693 $7f $47
    dw   `03111331                                     ;; 07:5695 $7f $46
    dw   `03111111                                     ;; 07:5697 $7f $40
    dw   `03111111                                     ;; 07:5699 $7f $40
    dw   `03111131                                     ;; 07:569b $7f $42

    dw   `33000000                                     ;; 07:569d $c0 $c0
    dw   `13330000                                     ;; 07:569f $f0 $70
    dw   `11133000                                     ;; 07:56a1 $f8 $18
    dw   `11111333                                     ;; 07:56a3 $ff $07
    dw   `11111111                                     ;; 07:56a5 $ff $00
    dw   `31111113                                     ;; 07:56a7 $ff $81
    dw   `03111133                                     ;; 07:56a9 $7f $43
    dw   `03111333                                     ;; 07:56ab $7f $47

    dw   `03113330                                     ;; 07:56ad $7e $4e
    dw   `31133300                                     ;; 07:56af $fc $9c
    dw   `31333000                                     ;; 07:56b1 $f8 $b8
    dw   `13330000                                     ;; 07:56b3 $f0 $70
    dw   `33300000                                     ;; 07:56b5 $e0 $e0
    dw   `11330000                                     ;; 07:56b7 $f0 $30
    dw   `11133300                                     ;; 07:56b9 $fc $1c
    dw   `11111300                                     ;; 07:56bb $fc $04

    dw   `00000000                                     ;; 07:56bd $00 $00
    dw   `00000003                                     ;; 07:56bf $01 $01
    dw   `00000003                                     ;; 07:56c1 $01 $01
    dw   `30000003                                     ;; 07:56c3 $81 $81
    dw   `30000031                                     ;; 07:56c5 $83 $82
    dw   `30003311                                     ;; 07:56c7 $8f $8c
    dw   `30003111                                     ;; 07:56c9 $8f $88
    dw   `00231111                                     ;; 07:56cb $1f $30

    dw   `00233311                                     ;; 07:56cd $1f $3c
    dw   `00003311                                     ;; 07:56cf $0f $0c
    dw   `00003311                                     ;; 07:56d1 $0f $0c
    dw   `00000311                                     ;; 07:56d3 $07 $04
    dw   `00000311                                     ;; 07:56d5 $07 $04
    dw   `00000311                                     ;; 07:56d7 $07 $04

    db   $07, $04                                      ;; 07:56d9 ..
    dw   `00000311                                     ;; 07:56db $07 $04
    dw   `03111330                                     ;; 07:56dd $7e $46
    dw   `03111330                                     ;; 07:56df $7e $46
    dw   `03111330                                     ;; 07:56e1 $7e $46
    dw   `03111330                                     ;; 07:56e3 $7e $46
    dw   `03111330                                     ;; 07:56e5 $7e $46
    dw   `33111130                                     ;; 07:56e7 $fe $c2
    dw   `11111330                                     ;; 07:56e9 $fe $06

    dw   `33113300                                     ;; 07:56eb $fc $cc
    dw   `03333000                                     ;; 07:56ed $78 $78
    dw   `03320000                                     ;; 07:56ef $60 $70
    dw   `00000000                                     ;; 07:56f1 $00 $00
    dw   `00000000                                     ;; 07:56f3 $00 $00
    dw   `00000000                                     ;; 07:56f5 $00 $00
    dw   `00000000                                     ;; 07:56f7 $00 $00
    dw   `00000000                                     ;; 07:56f9 $00 $00

    dw   `00000000                                     ;; 07:56fb $00 $00
    dw   `31111330                                     ;; 07:56fd $fe $86
    dw   `31111330                                     ;; 07:56ff $fe $86
    dw   `31111330                                     ;; 07:5701 $fe $86
    dw   `31111133                                     ;; 07:5703 $ff $83
    dw   `31111113                                     ;; 07:5705 $ff $81
    dw   `31111111                                     ;; 07:5707 $ff $80
    dw   `23311111                                     ;; 07:5709 $7f $e0

    dw   `00233111                                     ;; 07:570b $1f $38
    dw   `00002333                                     ;; 07:570d $07 $0f
    dw   `00000000                                     ;; 07:570f $00 $00
    dw   `00000000                                     ;; 07:5711 $00 $00
    dw   `00000000                                     ;; 07:5713 $00 $00
    dw   `00000000                                     ;; 07:5715 $00 $00
    dw   `00000000                                     ;; 07:5717 $00 $00
    dw   `00000000                                     ;; 07:5719 $00 $00

    dw   `00000000                                     ;; 07:571b $00 $00
    dw   `00000000                                     ;; 07:571d $00 $00
    dw   `00330000                                     ;; 07:571f $30 $30
    dw   `33313000                                     ;; 07:5721 $f8 $e8
    dw   `33133003                                     ;; 07:5723 $f9 $d9
    dw   `31130031                                     ;; 07:5725 $f3 $92
    dw   `11330311                                     ;; 07:5727 $f7 $34
    dw   `13303111                                     ;; 07:5729 $ef $68

    dw   `33031333                                     ;; 07:572b $df $d7
    dw   `30033300                                     ;; 07:572d $9c $9c
    dw   `00000000                                     ;; 07:572f $00 $00
    dw   `00000000                                     ;; 07:5731 $00 $00
    dw   `00000000                                     ;; 07:5733 $00 $00
    dw   `00000000                                     ;; 07:5735 $00 $00
    dw   `00000000                                     ;; 07:5737 $00 $00
    dw   `00000000                                     ;; 07:5739 $00 $00

    dw   `00000000                                     ;; 07:573b $00 $00
    dw   `31133333                                     ;; 07:573d $ff $9f
    dw   `03333003                                     ;; 07:573f $79 $79
    dw   `00000003                                     ;; 07:5741 $01 $01
    dw   `33000003                                     ;; 07:5743 $c1 $c1
    dw   `11330003                                     ;; 07:5745 $f1 $31
    dw   `11113333                                     ;; 07:5747 $ff $0f
    dw   `11111111                                     ;; 07:5749 $ff $00

    dw   `31111111                                     ;; 07:574b $ff $80
    dw   `03311113                                     ;; 07:574d $7f $61
    dw   `00333333                                     ;; 07:574f $3f $3f
    dw   `00000000                                     ;; 07:5751 $00 $00
    dw   `00000000                                     ;; 07:5753 $00 $00
    dw   `00000000                                     ;; 07:5755 $00 $00
    dw   `00000000                                     ;; 07:5757 $00 $00
    dw   `00000000                                     ;; 07:5759 $00 $00

    dw   `00000000                                     ;; 07:575b $00 $00
    dw   `11113300                                     ;; 07:575d $fc $0c
    dw   `11113300                                     ;; 07:575f $fc $0c
    dw   `11113300                                     ;; 07:5761 $fc $0c
    dw   `11113300                                     ;; 07:5763 $fc $0c
    dw   `11113303                                     ;; 07:5765 $fd $0d
    dw   `11113303                                     ;; 07:5767 $fd $0d
    dw   `11133003                                     ;; 07:5769 $f9 $19

    dw   `13330000                                     ;; 07:576b $f0 $70
    dw   `33000000                                     ;; 07:576d $c0 $c0
    dw   `00000000                                     ;; 07:576f $00 $00
    dw   `00000000                                     ;; 07:5771 $00 $00
    dw   `00000000                                     ;; 07:5773 $00 $00
    dw   `00000000                                     ;; 07:5775 $00 $00
    dw   `00000000                                     ;; 07:5777 $00 $00
    dw   `00000000                                     ;; 07:5779 $00 $00

    dw   `00000000                                     ;; 07:577b $00 $00
    dw   `31113300                                     ;; 07:577d $fc $8c
    dw   `31113300                                     ;; 07:577f $fc $8c
    dw   `31113300                                     ;; 07:5781 $fc $8c
    dw   `31113300                                     ;; 07:5783 $fc $8c
    dw   `11111330                                     ;; 07:5785 $fe $06
    dw   `11111333                                     ;; 07:5787 $ff $07
    dw   `31111111                                     ;; 07:5789 $ff $80

    dw   `33111111                                     ;; 07:578b $ff $c0
    dw   `03311113                                     ;; 07:578d $7f $61
    dw   `00033333                                     ;; 07:578f $1f $1f
    dw   `00000000                                     ;; 07:5791 $00 $00
    dw   `00000000                                     ;; 07:5793 $00 $00
    dw   `00000000                                     ;; 07:5795 $00 $00
    dw   `00000000                                     ;; 07:5797 $00 $00
    dw   `00000000                                     ;; 07:5799 $00 $00

    dw   `00000000                                     ;; 07:579b $00 $00
    dw   `00000000                                     ;; 07:579d $00 $00
    dw   `00000000                                     ;; 07:579f $00 $00
    dw   `00000000                                     ;; 07:57a1 $00 $00
    dw   `00002000                                     ;; 07:57a3 $00 $08
    dw   `00333000                                     ;; 07:57a5 $38 $38
    dw   `33113000                                     ;; 07:57a7 $f8 $c8
    dw   `11133000                                     ;; 07:57a9 $f8 $18

    dw   `13330000                                     ;; 07:57ab $f0 $70
    dw   `33000000                                     ;; 07:57ad $c0 $c0
    dw   `00000000                                     ;; 07:57af $00 $00
    dw   `00000000                                     ;; 07:57b1 $00 $00
    dw   `00000000                                     ;; 07:57b3 $00 $00
    dw   `00000000                                     ;; 07:57b5 $00 $00
    dw   `00000000                                     ;; 07:57b7 $00 $00
    dw   `00000000                                     ;; 07:57b9 $00 $00

    dw   `00000000                                     ;; 07:57bb $00 $00
    dw   `03111333                                     ;; 07:57bd $7f $47
    dw   `03111333                                     ;; 07:57bf $7f $47
    dw   `03111333                                     ;; 07:57c1 $7f $47
    dw   `03111330                                     ;; 07:57c3 $7e $46
    dw   `03111330                                     ;; 07:57c5 $7e $46
    dw   `03111330                                     ;; 07:57c7 $7e $46
    dw   `03111330                                     ;; 07:57c9 $7e $46

    dw   `03111330                                     ;; 07:57cb $7e $46
    dw   `03111330                                     ;; 07:57cd $7e $46
    dw   `31111330                                     ;; 07:57cf $fe $86
    dw   `03311330                                     ;; 07:57d1 $7e $66
    dw   `00033330                                     ;; 07:57d3 $1e $1e
    dw   `00000000                                     ;; 07:57d5 $00 $00
    dw   `00000000                                     ;; 07:57d7 $00 $00
    dw   `00000000                                     ;; 07:57d9 $00 $00

    dw   `00000000                                     ;; 07:57db $00 $00
    dw   `11133000                                     ;; 07:57dd $f8 $18
    dw   `11133000                                     ;; 07:57df $f8 $18
    dw   `11133000                                     ;; 07:57e1 $f8 $18
    dw   `31133000                                     ;; 07:57e3 $f8 $98
    dw   `31113300                                     ;; 07:57e5 $fc $8c
    dw   `31113300                                     ;; 07:57e7 $fc $8c
    dw   `03111330                                     ;; 07:57e9 $7e $46

    dw   `03111133                                     ;; 07:57eb $7f $43
    dw   `00311111                                     ;; 07:57ed $3f $20
    dw   `00033111                                     ;; 07:57ef $1f $18
    dw   `00000333                                     ;; 07:57f1 $07 $07
    dw   `00000000                                     ;; 07:57f3 $00 $00
    dw   `00000000                                     ;; 07:57f5 $00 $00
    dw   `00000000                                     ;; 07:57f7 $00 $00
    dw   `00000000                                     ;; 07:57f9 $00 $00

    dw   `00000000                                     ;; 07:57fb $00 $00
    dw   `00000311                                     ;; 07:57fd $07 $04
    dw   `00000311                                     ;; 07:57ff $07 $04
    dw   `00000311                                     ;; 07:5801 $07 $04
    dw   `00000311                                     ;; 07:5803 $07 $04
    dw   `00000311                                     ;; 07:5805 $07 $04
    dw   `00330311                                     ;; 07:5807 $37 $34
    dw   `03130311                                     ;; 07:5809 $77 $54

    dw   `31130311                                     ;; 07:580b $f7 $94
    dw   `11333311                                     ;; 07:580d $ff $3c
    dw   `13303111                                     ;; 07:580f $ef $68
    dw   `30000331                                     ;; 07:5811 $87 $86
    dw   `00000003                                     ;; 07:5813 $01 $01
    dw   `00000000                                     ;; 07:5815 $00 $00
    dw   `00000000                                     ;; 07:5817 $00 $00
    dw   `00000000                                     ;; 07:5819 $00 $00

    dw   `00000000                                     ;; 07:581b $00 $00
    dw   `00000000                                     ;; 07:581d $00 $00
    dw   `00000000                                     ;; 07:581f $00 $00
    dw   `00000000                                     ;; 07:5821 $00 $00
    dw   `00000000                                     ;; 07:5823 $00 $00
    dw   `00000003                                     ;; 07:5825 $01 $01
    dw   `00000031                                     ;; 07:5827 $03 $02
    dw   `00000311                                     ;; 07:5829 $07 $04

    dw   `00003111                                     ;; 07:582b $0f $08
    dw   `00032111                                     ;; 07:582d $17 $18
    dw   `00031111                                     ;; 07:582f $1f $10
    dw   `00321122                                     ;; 07:5831 $2c $33
    dw   `03211111                                     ;; 07:5833 $5f $60
    dw   `03233333                                     ;; 07:5835 $5f $7f
    dw   `32300000                                     ;; 07:5837 $a0 $e0
    dw   `33000000                                     ;; 07:5839 $c0 $c0

    dw   `30000000                                     ;; 07:583b $80 $80
    dw   `00000033                                     ;; 07:583d $03 $03
    dw   `00003323                                     ;; 07:583f $0d $0f
    dw   `00331113                                     ;; 07:5841 $3f $31
    dw   `33211230                                     ;; 07:5843 $da $e6
    dw   `21122113                                     ;; 07:5845 $67 $99
    dw   `11111130                                     ;; 07:5847 $fe $02
    dw   `11123300                                     ;; 07:5849 $ec $1c

    dw   `22333000                                     ;; 07:584b $38 $f8
    dw   `11112300                                     ;; 07:584d $f4 $0c
    dw   `12233000                                     ;; 07:584f $98 $78
    dw   `33300000                                     ;; 07:5851 $e0 $e0
    dw   `12300000                                     ;; 07:5853 $a0 $60
    dw   `33000000                                     ;; 07:5855 $c0 $c0
    dw   `00000000                                     ;; 07:5857 $00 $00
    dw   `00000000                                     ;; 07:5859 $00 $00

    dw   `00000000                                     ;; 07:585b $00 $00
    dw   `00000000                                     ;; 07:585d $00 $00
    dw   `00000000                                     ;; 07:585f $00 $00
    dw   `00000000                                     ;; 07:5861 $00 $00
    dw   `00000001                                     ;; 07:5863 $01 $00
    dw   `00000001                                     ;; 07:5865 $01 $00
    dw   `00000001                                     ;; 07:5867 $01 $00
    dw   `00000001                                     ;; 07:5869 $01 $00

    dw   `00000001                                     ;; 07:586b $01 $00
    dw   `00000001                                     ;; 07:586d $01 $00
    dw   `00000001                                     ;; 07:586f $01 $00
    dw   `00000000                                     ;; 07:5871 $00 $00
    dw   `00000000                                     ;; 07:5873 $00 $00
    dw   `00000000                                     ;; 07:5875 $00 $00
    dw   `00000000                                     ;; 07:5877 $00 $00
    dw   `00000000                                     ;; 07:5879 $00 $00

    dw   `00000000                                     ;; 07:587b $00 $00
    dw   `00000000                                     ;; 07:587d $00 $00
    dw   `00000000                                     ;; 07:587f $00 $00
    dw   `00000000                                     ;; 07:5881 $00 $00
    dw   `00000000                                     ;; 07:5883 $00 $00
    dw   `00000000                                     ;; 07:5885 $00 $00
    dw   `00000000                                     ;; 07:5887 $00 $00
    dw   `00001111                                     ;; 07:5889 $0f $00

    dw   `00111211                                     ;; 07:588b $3b $04
    dw   `01200033                                     ;; 07:588d $43 $23
    dw   `11000003                                     ;; 07:588f $c1 $01
    dw   `11000000                                     ;; 07:5891 $c0 $00
    dw   `11200030                                     ;; 07:5893 $c2 $22
    dw   `11233300                                     ;; 07:5895 $dc $3c
    dw   `12330000                                     ;; 07:5897 $b0 $70
    dw   `12330000                                     ;; 07:5899 $b0 $70

    dw   `12330000                                     ;; 07:589b $b0 $70
    dw   `00000000                                     ;; 07:589d $00 $00
    dw   `00000000                                     ;; 07:589f $00 $00
    dw   `00000000                                     ;; 07:58a1 $00 $00
    dw   `00000000                                     ;; 07:58a3 $00 $00
    dw   `00000000                                     ;; 07:58a5 $00 $00
    dw   `00000000                                     ;; 07:58a7 $00 $00
    dw   `11100000                                     ;; 07:58a9 $e0 $00

    dw   `11111000                                     ;; 07:58ab $f8 $00
    dw   `32211100                                     ;; 07:58ad $9c $e0
    dw   `33332110                                     ;; 07:58af $f6 $f8
    dw   `00033210                                     ;; 07:58b1 $1a $1c
    dw   `00003311                                     ;; 07:58b3 $0f $0c
    dw   `00000321                                     ;; 07:58b5 $05 $06
    dw   `00000331                                     ;; 07:58b7 $07 $06
    dw   `00000331                                     ;; 07:58b9 $07 $06

    dw   `00000331                                     ;; 07:58bb $07 $06
    dw   `12330000                                     ;; 07:58bd $b0 $70
    dw   `11233000                                     ;; 07:58bf $d8 $38
    dw   `11223300                                     ;; 07:58c1 $cc $3c
    dw   `11122333                                     ;; 07:58c3 $e7 $1f
    dw   `01111223                                     ;; 07:58c5 $79 $07
    dw   `00111112                                     ;; 07:58c7 $3e $01
    dw   `00001111                                     ;; 07:58c9 $0f $00

    dw   `00000000                                     ;; 07:58cb $00 $00
    dw   `00000000                                     ;; 07:58cd $00 $00
    dw   `00000000                                     ;; 07:58cf $00 $00
    dw   `00000000                                     ;; 07:58d1 $00 $00
    dw   `00000000                                     ;; 07:58d3 $00 $00
    dw   `00000000                                     ;; 07:58d5 $00 $00
    dw   `00000000                                     ;; 07:58d7 $00 $00
    dw   `00000000                                     ;; 07:58d9 $00 $00

    dw   `00000000                                     ;; 07:58db $00 $00
    dw   `00000331                                     ;; 07:58dd $07 $06
    dw   `00003321                                     ;; 07:58df $0d $0e
    dw   `00000310                                     ;; 07:58e1 $06 $04
    dw   `33300110                                     ;; 07:58e3 $e6 $e0
    dw   `33331100                                     ;; 07:58e5 $fc $f0
    dw   `22111000                                     ;; 07:58e7 $38 $c0
    dw   `11100000                                     ;; 07:58e9 $e0 $00

    dw   `00000000                                     ;; 07:58eb $00 $00
    dw   `00000000                                     ;; 07:58ed $00 $00
    dw   `00000000                                     ;; 07:58ef $00 $00
    dw   `00000000                                     ;; 07:58f1 $00 $00
    dw   `00000000                                     ;; 07:58f3 $00 $00
    dw   `00000000                                     ;; 07:58f5 $00 $00
    dw   `00000000                                     ;; 07:58f7 $00 $00
    dw   `00000000                                     ;; 07:58f9 $00 $00

    dw   `00000000                                     ;; 07:58fb $00 $00
    dw   `00000000                                     ;; 07:58fd $00 $00
    dw   `00000000                                     ;; 07:58ff $00 $00
    dw   `00000000                                     ;; 07:5901 $00 $00
    dw   `00000001                                     ;; 07:5903 $01 $00
    dw   `00000001                                     ;; 07:5905 $01 $00
    dw   `00000001                                     ;; 07:5907 $01 $00
    dw   `00000001                                     ;; 07:5909 $01 $00

    dw   `00000001                                     ;; 07:590b $01 $00
    dw   `00000001                                     ;; 07:590d $01 $00
    dw   `00000001                                     ;; 07:590f $01 $00
    dw   `00000000                                     ;; 07:5911 $00 $00
    dw   `00000000                                     ;; 07:5913 $00 $00
    dw   `00000000                                     ;; 07:5915 $00 $00
    dw   `00000000                                     ;; 07:5917 $00 $00
    dw   `00000000                                     ;; 07:5919 $00 $00

    dw   `00000000                                     ;; 07:591b $00 $00
    dw   `00000000                                     ;; 07:591d $00 $00
    dw   `00000000                                     ;; 07:591f $00 $00
    dw   `00000000                                     ;; 07:5921 $00 $00
    dw   `00000000                                     ;; 07:5923 $00 $00
    dw   `00000000                                     ;; 07:5925 $00 $00
    dw   `00000000                                     ;; 07:5927 $00 $00
    dw   `00002221                                     ;; 07:5929 $01 $0e

    dw   `00111112                                     ;; 07:592b $3e $01
    dw   `01100011                                     ;; 07:592d $63 $00
    dw   `11000001                                     ;; 07:592f $c1 $00
    dw   `11000001                                     ;; 07:5931 $c1 $00
    dw   `12100013                                     ;; 07:5933 $a3 $41
    dw   `22211130                                     ;; 07:5935 $1e $e2
    dw   `23322300                                     ;; 07:5937 $64 $fc
    dw   `23330000                                     ;; 07:5939 $70 $f0

    dw   `23330000                                     ;; 07:593b $70 $f0
    dw   `00000000                                     ;; 07:593d $00 $00
    dw   `00000000                                     ;; 07:593f $00 $00
    dw   `00000000                                     ;; 07:5941 $00 $00
    dw   `00000000                                     ;; 07:5943 $00 $00
    dw   `00000000                                     ;; 07:5945 $00 $00
    dw   `00000000                                     ;; 07:5947 $00 $00
    dw   `11100000                                     ;; 07:5949 $e0 $00

    dw   `22211000                                     ;; 07:594b $18 $e0
    dw   `32222100                                     ;; 07:594d $84 $f8
    dw   `33332210                                     ;; 07:594f $f2 $fc
    dw   `33333220                                     ;; 07:5951 $f8 $fe
    dw   `00333321                                     ;; 07:5953 $3d $3e
    dw   `00033322                                     ;; 07:5955 $1c $1f
    dw   `00003332                                     ;; 07:5957 $0e $0f
    dw   `00003332                                     ;; 07:5959 $0e $0f

    dw   `00003332                                     ;; 07:595b $0e $0f
    dw   `22330000                                     ;; 07:595d $30 $f0
    dw   `22333000                                     ;; 07:595f $38 $f8
    dw   `12233300                                     ;; 07:5961 $9c $7c
    dw   `11223333                                     ;; 07:5963 $cf $3f
    dw   `01122233                                     ;; 07:5965 $63 $1f
    dw   `00111222                                     ;; 07:5967 $38 $07
    dw   `00001111                                     ;; 07:5969 $0f $00

    dw   `00000000                                     ;; 07:596b $00 $00
    dw   `00000000                                     ;; 07:596d $00 $00
    dw   `00000000                                     ;; 07:596f $00 $00
    dw   `00000000                                     ;; 07:5971 $00 $00
    dw   `00000000                                     ;; 07:5973 $00 $00
    dw   `00000000                                     ;; 07:5975 $00 $00
    dw   `00000000                                     ;; 07:5977 $00 $00
    dw   `00000000                                     ;; 07:5979 $00 $00

    dw   `00000000                                     ;; 07:597b $00 $00
    dw   `00022332                                     ;; 07:597d $06 $1f
    dw   `00211231                                     ;; 07:597f $1b $26
    dw   `02100110                                     ;; 07:5981 $26 $40
    dw   `32100110                                     ;; 07:5983 $a6 $c0
    dw   `33211100                                     ;; 07:5985 $dc $e0
    dw   `22111000                                     ;; 07:5987 $38 $c0
    dw   `11100000                                     ;; 07:5989 $e0 $00

    dw   `00000000                                     ;; 07:598b $00 $00
    dw   `00000000                                     ;; 07:598d $00 $00
    dw   `00000000                                     ;; 07:598f $00 $00
    dw   `00000000                                     ;; 07:5991 $00 $00
    dw   `00000000                                     ;; 07:5993 $00 $00
    dw   `00000000                                     ;; 07:5995 $00 $00
    dw   `00000000                                     ;; 07:5997 $00 $00
    dw   `00000000                                     ;; 07:5999 $00 $00

    dw   `00000000                                     ;; 07:599b $00 $00

data_07_599d:
    dw   `11113333                                     ;; 07:599d $ff $0f
    dw   `11111133                                     ;; 07:599f $ff $03
    dw   `11111111                                     ;; 07:59a1 $ff $00
    dw   `31111111                                     ;; 07:59a3 $ff $80
    dw   `03331111                                     ;; 07:59a5 $7f $70
    dw   `00003333                                     ;; 07:59a7 $0f $0f
    dw   `00000230                                     ;; 07:59a9 $02 $06

    dw   `00000030                                     ;; 07:59ab $02 $02
    dw   `00030000                                     ;; 07:59ad $10 $10
    dw   `00030000                                     ;; 07:59af $10 $10
    dw   `00030000                                     ;; 07:59b1 $10 $10
    dw   `00030000                                     ;; 07:59b3 $10 $10
    dw   `00030000                                     ;; 07:59b5 $10 $10
    dw   `00030000                                     ;; 07:59b7 $10 $10
    dw   `00033333                                     ;; 07:59b9 $1f $1f

    dw   `00000000                                     ;; 07:59bb $00 $00
    dw   `00000000                                     ;; 07:59bd $00 $00
    dw   `00000000                                     ;; 07:59bf $00 $00
    dw   `00000000                                     ;; 07:59c1 $00 $00
    dw   `00000000                                     ;; 07:59c3 $00 $00
    dw   `00000000                                     ;; 07:59c5 $00 $00
    dw   `00000000                                     ;; 07:59c7 $00 $00
    dw   `00000000                                     ;; 07:59c9 $00 $00

    dw   `00000023                                     ;; 07:59cb $01 $03
    dw   `00000000                                     ;; 07:59cd $00 $00
    dw   `00000000                                     ;; 07:59cf $00 $00
    dw   `00000001                                     ;; 07:59d1 $01 $00
    dw   `00000133                                     ;; 07:59d3 $07 $03
    dw   `00023310                                     ;; 07:59d5 $0e $1c
    dw   `01331000                                     ;; 07:59d7 $78 $30
    dw   `33000003                                     ;; 07:59d9 $c1 $c1

    dw   `00002333                                     ;; 07:59db $07 $0f
    dw   `00000012                                     ;; 07:59dd $02 $01
    dw   `00112333                                     ;; 07:59df $37 $0f
    dw   `23333100                                     ;; 07:59e1 $7c $f8
    dw   `31000000                                     ;; 07:59e3 $c0 $80
    dw   `00002301                                     ;; 07:59e5 $05 $0c
    dw   `23130031                                     ;; 07:59e7 $73 $d2
    dw   `00330021                                     ;; 07:59e9 $31 $32

    dw   `00222222                                     ;; 07:59eb $00 $3f
    dw   `23333333                                     ;; 07:59ed $7f $ff
    dw   `32211000                                     ;; 07:59ef $98 $e0
    dw   `00000000                                     ;; 07:59f1 $00 $00
    dw   `02301330                                     ;; 07:59f3 $2e $66
    dw   `30033003                                     ;; 07:59f5 $99 $99
    dw   `20022002                                     ;; 07:59f7 $00 $99
    dw   `22222222                                     ;; 07:59f9 $00 $ff

    dw   `22211120                                     ;; 07:59fb $1c $e2
    dw   `33333332                                     ;; 07:59fd $fe $ff
    dw   `00011223                                     ;; 07:59ff $19 $07
    dw   `00000000                                     ;; 07:5a01 $00 $00
    dw   `03310320                                     ;; 07:5a03 $74 $66
    dw   `30033003                                     ;; 07:5a05 $99 $99
    dw   `20022002                                     ;; 07:5a07 $00 $99
    dw   `22222222                                     ;; 07:5a09 $00 $ff

    dw   `02111222                                     ;; 07:5a0b $38 $47
    dw   `21100000                                     ;; 07:5a0d $60 $80
    dw   `33332110                                     ;; 07:5a0f $f6 $f8
    dw   `00123333                                     ;; 07:5a11 $2f $1f
    dw   `00000012                                     ;; 07:5a13 $02 $01
    dw   `10320000                                     ;; 07:5a15 $a0 $30
    dw   `13003132                                     ;; 07:5a17 $ce $4b
    dw   `12003300                                     ;; 07:5a19 $8c $4c

    dw   `22222200                                     ;; 07:5a1b $00 $fc
    dw   `00000000                                     ;; 07:5a1d $00 $00
    dw   `00000000                                     ;; 07:5a1f $00 $00
    dw   `10000000                                     ;; 07:5a21 $80 $00
    dw   `33100000                                     ;; 07:5a23 $e0 $c0
    dw   `00333000                                     ;; 07:5a25 $38 $38
    dw   `00012320                                     ;; 07:5a27 $14 $0e
    dw   `30000033                                     ;; 07:5a29 $83 $83

    dw   `33320001                                     ;; 07:5a2b $e1 $f0
    dw   `00000000                                     ;; 07:5a2d $00 $00
    dw   `00000000                                     ;; 07:5a2f $00 $00
    dw   `00000000                                     ;; 07:5a31 $00 $00
    dw   `00000000                                     ;; 07:5a33 $00 $00
    dw   `00000000                                     ;; 07:5a35 $00 $00
    dw   `00000000                                     ;; 07:5a37 $00 $00
    dw   `10000000                                     ;; 07:5a39 $80 $00

    dw   `33000000                                     ;; 07:5a3b $c0 $c0
    dw   `00000000                                     ;; 07:5a3d $00 $00
    dw   `00000000                                     ;; 07:5a3f $00 $00
    dw   `00000000                                     ;; 07:5a41 $00 $00
    dw   `00000000                                     ;; 07:5a43 $00 $00
    dw   `00000000                                     ;; 07:5a45 $00 $00
    dw   `00000000                                     ;; 07:5a47 $00 $00
    dw   `00000000                                     ;; 07:5a49 $00 $00

    dw   `00000000                                     ;; 07:5a4b $00 $00
    dw   `00333330                                     ;; 07:5a4d $3e $3e
    dw   `03000003                                     ;; 07:5a4f $41 $41
    dw   `30033300                                     ;; 07:5a51 $9c $9c
    dw   `30300000                                     ;; 07:5a53 $a0 $a0
    dw   `30300000                                     ;; 07:5a55 $a0 $a0
    dw   `30033300                                     ;; 07:5a57 $9c $9c
    dw   `03000003                                     ;; 07:5a59 $41 $41

    dw   `00333330                                     ;; 07:5a5b $3e $3e
    dw   `00000033                                     ;; 07:5a5d $03 $03
    dw   `00000333                                     ;; 07:5a5f $07 $07
    dw   `30000033                                     ;; 07:5a61 $83 $83
    dw   `30000033                                     ;; 07:5a63 $83 $83
    dw   `30000033                                     ;; 07:5a65 $83 $83
    dw   `30000033                                     ;; 07:5a67 $83 $83
    dw   `00000333                                     ;; 07:5a69 $07 $07

    dw   `00000000                                     ;; 07:5a6b $00 $00
    dw   `00333330                                     ;; 07:5a6d $3e $3e
    dw   `03300033                                     ;; 07:5a6f $63 $63
    dw   `03300033                                     ;; 07:5a71 $63 $63
    dw   `00333333                                     ;; 07:5a73 $3f $3f
    dw   `00000033                                     ;; 07:5a75 $03 $03
    dw   `00000330                                     ;; 07:5a77 $06 $06
    dw   `30333300                                     ;; 07:5a79 $bc $bc

    dw   `00000000                                     ;; 07:5a7b $00 $00
    dw   `00333330                                     ;; 07:5a7d $3e $3e
    dw   `03300033                                     ;; 07:5a7f $63 $63
    dw   `03300033                                     ;; 07:5a81 $63 $63
    dw   `00333333                                     ;; 07:5a83 $3f $3f
    dw   `00000033                                     ;; 07:5a85 $03 $03
    dw   `00000330                                     ;; 07:5a87 $06 $06
    dw   `00333300                                     ;; 07:5a89 $3c $3c

    dw   `00000000                                     ;; 07:5a8b $00 $00
    dw   `00333330                                     ;; 07:5a8d $3e $3e
    dw   `03300033                                     ;; 07:5a8f $63 $63
    dw   `03300033                                     ;; 07:5a91 $63 $63
    dw   `00333333                                     ;; 07:5a93 $3f $3f
    dw   `00000033                                     ;; 07:5a95 $03 $03
    dw   `00000330                                     ;; 07:5a97 $06 $06
    dw   `00333300                                     ;; 07:5a99 $3c $3c

    dw   `00000000                                     ;; 07:5a9b $00 $00
    dw   `03330033                                     ;; 07:5a9d $73 $73
    dw   `00300300                                     ;; 07:5a9f $24 $24
    dw   `00300300                                     ;; 07:5aa1 $24 $24
    dw   `00300300                                     ;; 07:5aa3 $24 $24
    dw   `00300300                                     ;; 07:5aa5 $24 $24
    dw   `00300300                                     ;; 07:5aa7 $24 $24
    dw   `03330033                                     ;; 07:5aa9 $73 $73

    dw   `00000000                                     ;; 07:5aab $00 $00
    dw   `00000000                                     ;; 07:5aad $00 $00
    dw   `00000000                                     ;; 07:5aaf $00 $00
    dw   `00000000                                     ;; 07:5ab1 $00 $00
    dw   `00000000                                     ;; 07:5ab3 $00 $00
    dw   `00000002                                     ;; 07:5ab5 $00 $01
    dw   `00000033                                     ;; 07:5ab7 $03 $03
    dw   `00000333                                     ;; 07:5ab9 $07 $07

    dw   `00002303                                     ;; 07:5abb $05 $0d
    dw   `00001331                                     ;; 07:5abd $0f $06
    dw   `00023200                                     ;; 07:5abf $08 $1c
    dw   `01230000                                     ;; 07:5ac1 $50 $30
    dw   `13300023                                     ;; 07:5ac3 $e1 $63
    dw   `32000300                                     ;; 07:5ac5 $84 $c4
    dw   `30023300                                     ;; 07:5ac7 $8c $9c
    dw   `02200222                                     ;; 07:5ac9 $00 $67

    dw   `02200222                                     ;; 07:5acb $00 $67
    dw   `00130021                                     ;; 07:5acd $31 $12
    dw   `02330022                                     ;; 07:5acf $30 $73
    dw   `30022222                                     ;; 07:5ad1 $80 $9f
    dw   `30022112                                     ;; 07:5ad3 $86 $99
    dw   `22221002                                     ;; 07:5ad5 $08 $f1
    dw   `22112001                                     ;; 07:5ad7 $31 $c8
    dw   `21002100                                     ;; 07:5ad9 $44 $88

    dw   `10001200                                     ;; 07:5adb $88 $04
    dw   `22222211                                     ;; 07:5add $03 $fc
    dw   `22100210                                     ;; 07:5adf $22 $c4
    dw   `11200120                                     ;; 07:5ae1 $c4 $22
    dw   `00200021                                     ;; 07:5ae3 $01 $22
    dw   `10210021                                     ;; 07:5ae5 $91 $22
    dw   `20020012                                     ;; 07:5ae7 $02 $91
    dw   `20021012                                     ;; 07:5ae9 $0a $91

    dw   `12002002                                     ;; 07:5aeb $80 $49
    dw   `11200020                                     ;; 07:5aed $c0 $22
    dw   `00200020                                     ;; 07:5aef $00 $22
    dw   `00200020                                     ;; 07:5af1 $00 $22
    dw   `00200020                                     ;; 07:5af3 $00 $22
    dw   `00200020                                     ;; 07:5af5 $00 $22
    dw   `00210020                                     ;; 07:5af7 $10 $22
    dw   `00210020                                     ;; 07:5af9 $10 $22

    dw   `10020020                                     ;; 07:5afb $80 $12
    dw   `02000211                                     ;; 07:5afd $03 $44
    dw   `02000200                                     ;; 07:5aff $00 $44
    dw   `02000200                                     ;; 07:5b01 $00 $44
    dw   `02000200                                     ;; 07:5b03 $00 $44
    dw   `02000200                                     ;; 07:5b05 $00 $44
    dw   `02001200                                     ;; 07:5b07 $08 $44
    dw   `02001200                                     ;; 07:5b09 $08 $44

    dw   `02002001                                     ;; 07:5b0b $01 $48
    dw   `11222222                                     ;; 07:5b0d $c0 $3f
    dw   `01200122                                     ;; 07:5b0f $44 $23
    dw   `02100211                                     ;; 07:5b11 $23 $44
    dw   `12000200                                     ;; 07:5b13 $80 $44
    dw   `12001201                                     ;; 07:5b15 $89 $44
    dw   `21002002                                     ;; 07:5b17 $40 $89
    dw   `21012002                                     ;; 07:5b19 $50 $89

    dw   `20020021                                     ;; 07:5b1b $01 $92
    dw   `12003100                                     ;; 07:5b1d $8c $48
    dw   `22003320                                     ;; 07:5b1f $0c $ce
    dw   `22222003                                     ;; 07:5b21 $01 $f9
    dw   `21122003                                     ;; 07:5b23 $61 $99
    dw   `20012222                                     ;; 07:5b25 $10 $8f
    dw   `10021122                                     ;; 07:5b27 $8c $13
    dw   `00120012                                     ;; 07:5b29 $22 $11

    dw   `00210001                                     ;; 07:5b2b $11 $20
    dw   `02310000                                     ;; 07:5b2d $30 $60
    dw   `00032000                                     ;; 07:5b2f $10 $18
    dw   `00003310                                     ;; 07:5b31 $0e $0c
    dw   `32000232                                     ;; 07:5b33 $82 $c7
    dw   `00300003                                     ;; 07:5b35 $21 $21
    dw   `00332003                                     ;; 07:5b37 $31 $39
    dw   `22200220                                     ;; 07:5b39 $00 $e6

    dw   `22200220                                     ;; 07:5b3b $00 $e6
    dw   `00000000                                     ;; 07:5b3d $00 $00
    dw   `00000000                                     ;; 07:5b3f $00 $00
    dw   `00000000                                     ;; 07:5b41 $00 $00
    dw   `00000000                                     ;; 07:5b43 $00 $00
    dw   `20000000                                     ;; 07:5b45 $00 $80
    dw   `33000000                                     ;; 07:5b47 $c0 $c0
    dw   `33300000                                     ;; 07:5b49 $e0 $e0

    dw   `30330000                                     ;; 07:5b4b $b0 $b0
    dw   `00003330                                     ;; 07:5b4d $0e $0e
    dw   `00000300                                     ;; 07:5b4f $04 $04
    dw   `00000300                                     ;; 07:5b51 $04 $04
    dw   `00000300                                     ;; 07:5b53 $04 $04
    dw   `00000300                                     ;; 07:5b55 $04 $04
    dw   `00000300                                     ;; 07:5b57 $04 $04
    dw   `00003330                                     ;; 07:5b59 $0e $0e

    dw   `00000000                                     ;; 07:5b5b $00 $00
    dw   `30000030                                     ;; 07:5b5d $82 $82
    dw   `33000330                                     ;; 07:5b5f $c6 $c6
    dw   `30303030                                     ;; 07:5b61 $aa $aa
    dw   `30030030                                     ;; 07:5b63 $92 $92
    dw   `30000030                                     ;; 07:5b65 $82 $82
    dw   `30000030                                     ;; 07:5b67 $82 $82
    dw   `30000030                                     ;; 07:5b69 $82 $82

    dw   `00000000                                     ;; 07:5b6b $00 $00
    dw   `00030000                                     ;; 07:5b6d $10 $10
    dw   `00303000                                     ;; 07:5b6f $28 $28
    dw   `00303000                                     ;; 07:5b71 $28 $28
    dw   `03000300                                     ;; 07:5b73 $44 $44
    dw   `03333300                                     ;; 07:5b75 $7c $7c
    dw   `30000030                                     ;; 07:5b77 $82 $82
    dw   `30000030                                     ;; 07:5b79 $82 $82

    dw   `00000000                                     ;; 07:5b7b $00 $00
    dw   `00333330                                     ;; 07:5b7d $3e $3e
    dw   `03000000                                     ;; 07:5b7f $40 $40
    dw   `30000000                                     ;; 07:5b81 $80 $80
    dw   `30003330                                     ;; 07:5b83 $8e $8e
    dw   `30000030                                     ;; 07:5b85 $82 $82
    dw   `03000030                                     ;; 07:5b87 $42 $42
    dw   `00333330                                     ;; 07:5b89 $3e $3e

    dw   `00000000                                     ;; 07:5b8b $00 $00
    dw   `33303000                                     ;; 07:5b8d $e8 $e8
    dw   `03003300                                     ;; 07:5b8f $4c $4c
    dw   `03003030                                     ;; 07:5b91 $4a $4a
    dw   `03003003                                     ;; 07:5b93 $49 $49
    dw   `03003000                                     ;; 07:5b95 $48 $48
    dw   `03003000                                     ;; 07:5b97 $48 $48
    dw   `33303000                                     ;; 07:5b99 $e8 $e8

    dw   `00000000                                     ;; 07:5b9b $00 $00
    dw   `00000000                                     ;; 07:5b9d $00 $00
    dw   `00000000                                     ;; 07:5b9f $00 $00
    dw   `00000000                                     ;; 07:5ba1 $00 $00
    dw   `00000000                                     ;; 07:5ba3 $00 $00
    dw   `00000000                                     ;; 07:5ba5 $00 $00
    dw   `00000000                                     ;; 07:5ba7 $00 $00
    dw   `00000003                                     ;; 07:5ba9 $01 $01

    dw   `00000013                                     ;; 07:5bab $03 $01
    dw   `00013300                                     ;; 07:5bad $1c $0c
    dw   `00030032                                     ;; 07:5baf $12 $13
    dw   `00330003                                     ;; 07:5bb1 $31 $31
    dw   `03300233                                     ;; 07:5bb3 $63 $67
    dw   `13002002                                     ;; 07:5bb5 $c0 $49
    dw   `30002002                                     ;; 07:5bb7 $80 $89
    dw   `30023222                                     ;; 07:5bb9 $88 $9f

    dw   `00233121                                     ;; 07:5bbb $1d $3a
    dw   `02022211                                     ;; 07:5bbd $03 $5c
    dw   `02002100                                     ;; 07:5bbf $04 $48
    dw   `33002000                                     ;; 07:5bc1 $c0 $c8
    dw   `23020200                                     ;; 07:5bc3 $40 $d4
    dw   `23330020                                     ;; 07:5bc5 $70 $f2
    dw   `21030202                                     ;; 07:5bc7 $50 $95
    dw   `10030202                                     ;; 07:5bc9 $90 $15

    dw   `20003320                                     ;; 07:5bcb $0c $8e
    dw   `20000210                                     ;; 07:5bcd $02 $84
    dw   `20000120                                     ;; 07:5bcf $04 $82
    dw   `02000021                                     ;; 07:5bd1 $01 $42
    dw   `00200012                                     ;; 07:5bd3 $02 $21
    dw   `00120002                                     ;; 07:5bd5 $20 $11
    dw   `00021001                                     ;; 07:5bd7 $09 $10
    dw   `20002000                                     ;; 07:5bd9 $00 $88

    dw   `22000200                                     ;; 07:5bdb $00 $c4
    dw   `02002002                                     ;; 07:5bdd $00 $49
    dw   `02102101                                     ;; 07:5bdf $25 $48
    dw   `01200200                                     ;; 07:5be1 $40 $24
    dw   `00210200                                     ;; 07:5be3 $10 $24
    dw   `10120020                                     ;; 07:5be5 $a0 $12
    dw   `20021020                                     ;; 07:5be7 $08 $92
    dw   `21012002                                     ;; 07:5be9 $50 $89

    dw   `12002002                                     ;; 07:5beb $80 $49
    dw   `10020020                                     ;; 07:5bed $80 $12
    dw   `20020020                                     ;; 07:5bef $00 $92
    dw   `20020120                                     ;; 07:5bf1 $04 $92
    dw   `21020120                                     ;; 07:5bf3 $44 $92
    dw   `12020120                                     ;; 07:5bf5 $84 $52
    dw   `02120200                                     ;; 07:5bf7 $20 $54
    dw   `00333000                                     ;; 07:5bf9 $38 $38

    dw   `23001300                                     ;; 07:5bfb $4c $c4
    dw   `02002001                                     ;; 07:5bfd $01 $48
    dw   `02002002                                     ;; 07:5bff $00 $49
    dw   `02102002                                     ;; 07:5c01 $20 $49
    dw   `02102012                                     ;; 07:5c03 $22 $49
    dw   `02102021                                     ;; 07:5c05 $21 $4a
    dw   `00202120                                     ;; 07:5c07 $04 $2a
    dw   `00033300                                     ;; 07:5c09 $1c $1c

    dw   `00300132                                     ;; 07:5c0b $26 $23
    dw   `20020020                                     ;; 07:5c0d $00 $92
    dw   `10120120                                     ;; 07:5c0f $a4 $12
    dw   `00200210                                     ;; 07:5c11 $02 $24
    dw   `00201200                                     ;; 07:5c13 $08 $24
    dw   `02002101                                     ;; 07:5c15 $05 $48
    dw   `02012002                                     ;; 07:5c17 $10 $49
    dw   `20021012                                     ;; 07:5c19 $0a $91

    dw   `20020021                                     ;; 07:5c1b $01 $92
    dw   `01200002                                     ;; 07:5c1d $40 $21
    dw   `02100002                                     ;; 07:5c1f $20 $41
    dw   `12000020                                     ;; 07:5c21 $80 $42
    dw   `21000200                                     ;; 07:5c23 $40 $84
    dw   `20002100                                     ;; 07:5c25 $04 $88
    dw   `10012000                                     ;; 07:5c27 $90 $08
    dw   `00020002                                     ;; 07:5c29 $00 $11

    dw   `00200022                                     ;; 07:5c2b $00 $23
    dw   `11222020                                     ;; 07:5c2d $c0 $3a
    dw   `00120020                                     ;; 07:5c2f $20 $12
    dw   `00020033                                     ;; 07:5c31 $03 $13
    dw   `00202032                                     ;; 07:5c33 $02 $2b
    dw   `02003332                                     ;; 07:5c35 $0e $4f
    dw   `20233333                                     ;; 07:5c37 $1f $bf
    dw   `20332222                                     ;; 07:5c39 $30 $bf

    dw   `03211122                                     ;; 07:5c3b $5c $63
    dw   `00331000                                     ;; 07:5c3d $38 $30
    dw   `23003100                                     ;; 07:5c3f $4c $c8
    dw   `30002300                                     ;; 07:5c41 $84 $8c
    dw   `33200320                                     ;; 07:5c43 $c4 $e6
    dw   `20020032                                     ;; 07:5c45 $02 $93
    dw   `33320003                                     ;; 07:5c47 $e1 $f1
    dw   `22233002                                     ;; 07:5c49 $18 $f9

    dw   `22222320                                     ;; 07:5c4b $04 $fe
    dw   `00000000                                     ;; 07:5c4d $00 $00
    dw   `00000000                                     ;; 07:5c4f $00 $00
    dw   `00000000                                     ;; 07:5c51 $00 $00
    dw   `00000000                                     ;; 07:5c53 $00 $00
    dw   `00000000                                     ;; 07:5c55 $00 $00
    dw   `10000000                                     ;; 07:5c57 $80 $00
    dw   `30000000                                     ;; 07:5c59 $80 $80

    dw   `32000000                                     ;; 07:5c5b $80 $c0
    dw   `03033333                                     ;; 07:5c5d $5f $5f
    dw   `03030000                                     ;; 07:5c5f $50 $50
    dw   `03030000                                     ;; 07:5c61 $50 $50
    dw   `03033333                                     ;; 07:5c63 $5f $5f
    dw   `33030000                                     ;; 07:5c65 $d0 $d0
    dw   `03030000                                     ;; 07:5c67 $50 $50
    dw   `03033333                                     ;; 07:5c69 $5f $5f

    dw   `00000000                                     ;; 07:5c6b $00 $00
    dw   `30333333                                     ;; 07:5c6d $bf $bf
    dw   `00300000                                     ;; 07:5c6f $20 $20
    dw   `00300000                                     ;; 07:5c71 $20 $20
    dw   `00333330                                     ;; 07:5c73 $3e $3e
    dw   `00300000                                     ;; 07:5c75 $20 $20
    dw   `00300000                                     ;; 07:5c77 $20 $20
    dw   `30333333                                     ;; 07:5c79 $bf $bf

    dw   `00000000                                     ;; 07:5c7b $00 $00
    dw   `03333000                                     ;; 07:5c7d $78 $78
    dw   `03000300                                     ;; 07:5c7f $44 $44
    dw   `03000300                                     ;; 07:5c81 $44 $44
    dw   `03000300                                     ;; 07:5c83 $44 $44
    dw   `03333000                                     ;; 07:5c85 $78 $78
    dw   `03000300                                     ;; 07:5c87 $44 $44
    dw   `03000030                                     ;; 07:5c89 $42 $42

    dw   `00000000                                     ;; 07:5c8b $00 $00
    dw   `00003333                                     ;; 07:5c8d $0f $0f
    dw   `00030000                                     ;; 07:5c8f $10 $10
    dw   `00030000                                     ;; 07:5c91 $10 $10
    dw   `00030000                                     ;; 07:5c93 $10 $10
    dw   `00030000                                     ;; 07:5c95 $10 $10
    dw   `00030000                                     ;; 07:5c97 $10 $10
    dw   `00003333                                     ;; 07:5c99 $0f $0f

    dw   `00000000                                     ;; 07:5c9b $00 $00
    dw   `00000030                                     ;; 07:5c9d $02 $02
    dw   `00000130                                     ;; 07:5c9f $06 $02
    dw   `00000300                                     ;; 07:5ca1 $04 $04
    dw   `00002300                                     ;; 07:5ca3 $04 $0c
    dw   `00003002                                     ;; 07:5ca5 $08 $09
    dw   `00013002                                     ;; 07:5ca7 $18 $09
    dw   `00030003                                     ;; 07:5ca9 $11 $11

    dw   `00130003                                     ;; 07:5cab $31 $11
    dw   `02002221                                     ;; 07:5cad $01 $4e
    dw   `02002210                                     ;; 07:5caf $02 $4c
    dw   `13222100                                     ;; 07:5cb1 $c4 $78
    dw   `33002220                                     ;; 07:5cb3 $c0 $ce
    dw   `00221012                                     ;; 07:5cb5 $0a $31
    dw   `00220000                                     ;; 07:5cb7 $00 $30
    dw   `22210000                                     ;; 07:5cb9 $10 $e0

    dw   `12221000                                     ;; 07:5cbb $88 $70
    dw   `02000022                                     ;; 07:5cbd $00 $43
    dw   `00200002                                     ;; 07:5cbf $00 $21
    dw   `00021000                                     ;; 07:5cc1 $08 $10
    dw   `00002200                                     ;; 07:5cc3 $00 $0c
    dw   `10000120                                     ;; 07:5cc5 $84 $02
    dw   `22000002                                     ;; 07:5cc7 $00 $c1
    dw   `01210000                                     ;; 07:5cc9 $50 $20

    dw   `00022100                                     ;; 07:5ccb $04 $18
    dw   `02200120                                     ;; 07:5ccd $04 $62
    dw   `20220021                                     ;; 07:5ccf $01 $b2
    dw   `22022002                                     ;; 07:5cd1 $00 $d9
    dw   `02220201                                     ;; 07:5cd3 $01 $74
    dw   `00220222                                     ;; 07:5cd5 $00 $37
    dw   `00020202                                     ;; 07:5cd7 $00 $15
    dw   `20002203                                     ;; 07:5cd9 $01 $8d

    dw   `02002303                                     ;; 07:5cdb $05 $4d
    dw   `02102000                                     ;; 07:5cdd $20 $48
    dw   `01202001                                     ;; 07:5cdf $41 $28
    dw   `00333022                                     ;; 07:5ce1 $38 $3b
    dw   `23001310                                     ;; 07:5ce3 $4e $c4
    dw   `23001200                                     ;; 07:5ce5 $48 $c4
    dw   `23111301                                     ;; 07:5ce7 $7d $c4
    dw   `21333013                                     ;; 07:5ce9 $7b $b9

    dw   `02211231                                     ;; 07:5ceb $1b $66
    dw   `03001322                                     ;; 07:5ced $4c $47
    dw   `23111200                                     ;; 07:5cef $78 $c4
    dw   `00332000                                     ;; 07:5cf1 $30 $38
    dw   `00011111                                     ;; 07:5cf3 $1f $00
    dw   `01123333                                     ;; 07:5cf5 $6f $1f
    dw   `13232211                                     ;; 07:5cf7 $d3 $7c
    dw   `31310000                                     ;; 07:5cf9 $f0 $a0

    dw   `03200000                                     ;; 07:5cfb $40 $60
    dw   `22300130                                     ;; 07:5cfd $26 $e2
    dw   `00211132                                     ;; 07:5cff $1e $23
    dw   `00023300                                     ;; 07:5d01 $0c $1c
    dw   `11111000                                     ;; 07:5d03 $f8 $00
    dw   `33332110                                     ;; 07:5d05 $f6 $f8
    dw   `11223231                                     ;; 07:5d07 $cb $3e
    dw   `00001313                                     ;; 07:5d09 $0f $05

    dw   `00000230                                     ;; 07:5d0b $02 $06
    dw   `00020120                                     ;; 07:5d0d $04 $12
    dw   `10020210                                     ;; 07:5d0f $82 $14
    dw   `22033300                                     ;; 07:5d11 $1c $dc
    dw   `01300132                                     ;; 07:5d13 $66 $23
    dw   `00200132                                     ;; 07:5d15 $06 $23
    dw   `10311133                                     ;; 07:5d17 $bf $23
    dw   `31033332                                     ;; 07:5d19 $de $9f

    dw   `13211230                                     ;; 07:5d1b $da $66
    dw   `02100220                                     ;; 07:5d1d $20 $46
    dw   `12002203                                     ;; 07:5d1f $81 $4d
    dw   `20023033                                     ;; 07:5d21 $0b $9b
    dw   `10203332                                     ;; 07:5d23 $8e $2f
    dw   `22231232                                     ;; 07:5d25 $1a $f7
    dw   `22310232                                     ;; 07:5d27 $32 $e7
    dw   `32300232                                     ;; 07:5d29 $a2 $e7

    dw   `33200232                                     ;; 07:5d2b $c2 $e7
    dw   `32100012                                     ;; 07:5d2d $a2 $c1
    dw   `22000002                                     ;; 07:5d2f $00 $c1
    dw   `22000003                                     ;; 07:5d31 $01 $c1
    dw   `22100013                                     ;; 07:5d33 $23 $c1
    dw   `22211133                                     ;; 07:5d35 $1f $e3
    dw   `22223333                                     ;; 07:5d37 $0f $ff
    dw   `22223333                                     ;; 07:5d39 $0f $ff

    dw   `22223333                                     ;; 07:5d3b $0f $ff
    dw   `22222232                                     ;; 07:5d3d $02 $ff
    dw   `22222223                                     ;; 07:5d3f $01 $ff
    dw   `33322223                                     ;; 07:5d41 $e1 $ff
    dw   `33332222                                     ;; 07:5d43 $f0 $ff
    dw   `33333222                                     ;; 07:5d45 $f8 $ff
    dw   `33333222                                     ;; 07:5d47 $f8 $ff
    dw   `33333222                                     ;; 07:5d49 $f8 $ff

    dw   `33333222                                     ;; 07:5d4b $f8 $ff
    dw   `03100000                                     ;; 07:5d4d $60 $40
    dw   `03200000                                     ;; 07:5d4f $40 $60
    dw   `00320000                                     ;; 07:5d51 $20 $30
    dw   `30230000                                     ;; 07:5d53 $90 $b0
    dw   `30031000                                     ;; 07:5d55 $98 $90
    dw   `33332000                                     ;; 07:5d57 $f0 $f8
    dw   `32303000                                     ;; 07:5d59 $a8 $e8

    dw   `31303200                                     ;; 07:5d5b $e8 $ac
    dw   `00033330                                     ;; 07:5d5d $1e $1e
    dw   `30300003                                     ;; 07:5d5f $a1 $a1
    dw   `00300003                                     ;; 07:5d61 $21 $21
    dw   `00300003                                     ;; 07:5d63 $21 $21
    dw   `00300003                                     ;; 07:5d65 $21 $21
    dw   `30300003                                     ;; 07:5d67 $a1 $a1
    dw   `00033330                                     ;; 07:5d69 $1e $1e

    dw   `00000000                                     ;; 07:5d6b $00 $00
    dw   `00000000                                     ;; 07:5d6d $00 $00
    dw   `00000000                                     ;; 07:5d6f $00 $00
    dw   `00000000                                     ;; 07:5d71 $00 $00
    dw   `00000000                                     ;; 07:5d73 $00 $00
    dw   `00000000                                     ;; 07:5d75 $00 $00
    dw   `03300330                                     ;; 07:5d77 $66 $66
    dw   `03300030                                     ;; 07:5d79 $62 $62

    dw   `00000300                                     ;; 07:5d7b $04 $04
    dw   `30000033                                     ;; 07:5d7d $83 $83
    dw   `30000000                                     ;; 07:5d7f $80 $80
    dw   `30000000                                     ;; 07:5d81 $80 $80
    dw   `30000000                                     ;; 07:5d83 $80 $80
    dw   `30000000                                     ;; 07:5d85 $80 $80
    dw   `30000000                                     ;; 07:5d87 $80 $80
    dw   `33333000                                     ;; 07:5d89 $f8 $f8

    dw   `00000000                                     ;; 07:5d8b $00 $00
    dw   `33303333                                     ;; 07:5d8d $ef $ef
    dw   `30003000                                     ;; 07:5d8f $88 $88
    dw   `30003000                                     ;; 07:5d91 $88 $88
    dw   `30003000                                     ;; 07:5d93 $88 $88
    dw   `30003000                                     ;; 07:5d95 $88 $88
    dw   `30003000                                     ;; 07:5d97 $88 $88
    dw   `30003333                                     ;; 07:5d99 $8f $8f

    dw   `00000000                                     ;; 07:5d9b $00 $00
    dw   `00230032                                     ;; 07:5d9d $12 $33
    dw   `00300200                                     ;; 07:5d9f $20 $24
    dw   `00300300                                     ;; 07:5da1 $24 $24
    dw   `00300033                                     ;; 07:5da3 $23 $23
    dw   `02300332                                     ;; 07:5da5 $26 $67
    dw   `33000222                                     ;; 07:5da7 $c0 $c7
    dw   `13303002                                     ;; 07:5da9 $e8 $69

    dw   `11333002                                     ;; 07:5dab $f8 $39
    dw   `22212221                                     ;; 07:5dad $11 $ee
    dw   `22000012                                     ;; 07:5daf $02 $c1
    dw   `22000000                                     ;; 07:5db1 $00 $c0
    dw   `21222000                                     ;; 07:5db3 $40 $b8
    dw   `21001222                                     ;; 07:5db5 $48 $87
    dw   `10000001                                     ;; 07:5db7 $81 $00
    dw   `10000000                                     ;; 07:5db9 $80 $00

    dw   `22221100                                     ;; 07:5dbb $0c $f0
    dw   `00000221                                     ;; 07:5dbd $01 $06
    dw   `21100002                                     ;; 07:5dbf $60 $81
    dw   `12221000                                     ;; 07:5dc1 $88 $70
    dw   `00012221                                     ;; 07:5dc3 $11 $0e
    dw   `00000112                                     ;; 07:5dc5 $06 $01
    dw   `22200000                                     ;; 07:5dc7 $00 $e0
    dw   `00122210                                     ;; 07:5dc9 $22 $1c

    dw   `00000022                                     ;; 07:5dcb $00 $03
    dw   `00202133                                     ;; 07:5dcd $07 $2b
    dw   `20033312                                     ;; 07:5dcf $1e $9d
    dw   `02300133                                     ;; 07:5dd1 $27 $63
    dw   `00300121                                     ;; 07:5dd3 $25 $22
    dw   `22311121                                     ;; 07:5dd5 $3d $e2
    dw   `00033312                                     ;; 07:5dd7 $1e $1d
    dw   `00200123                                     ;; 07:5dd9 $05 $23

    dw   `01200131                                     ;; 07:5ddb $47 $22
    dw   `30022330                                     ;; 07:5ddd $86 $9e
    dw   `03210320                                     ;; 07:5ddf $54 $66
    dw   `02330300                                     ;; 07:5de1 $34 $74
    dw   `31330300                                     ;; 07:5de3 $f4 $b4
    dw   `20000320                                     ;; 07:5de5 $04 $86
    dw   `33333330                                     ;; 07:5de7 $fe $fe
    dw   `32002332                                     ;; 07:5de9 $86 $cf

    dw   `00000023                                     ;; 07:5deb $01 $03
    dw   `32100000                                     ;; 07:5ded $a0 $c0
    dw   `32000000                                     ;; 07:5def $80 $c0
    dw   `31000000                                     ;; 07:5df1 $c0 $80
    dw   `31000000                                     ;; 07:5df3 $c0 $80
    dw   `22000000                                     ;; 07:5df5 $00 $c0
    dw   `02100000                                     ;; 07:5df7 $20 $40
    dw   `00200000                                     ;; 07:5df9 $00 $20

    dw   `00021033                                     ;; 07:5dfb $0b $13
    dw   `00000023                                     ;; 07:5dfd $01 $03
    dw   `00000023                                     ;; 07:5dff $01 $03
    dw   `00000023                                     ;; 07:5e01 $01 $03
    dw   `00000023                                     ;; 07:5e03 $01 $03
    dw   `00000022                                     ;; 07:5e05 $00 $03
    dw   `02320220                                     ;; 07:5e07 $20 $76
    dw   `33133203                                     ;; 07:5e09 $f9 $dd

    dw   `11113303                                     ;; 07:5e0b $fd $0d
    dw   `03322310                                     ;; 07:5e0d $66 $7c
    dw   `02331310                                     ;; 07:5e0f $3e $74
    dw   `00333310                                     ;; 07:5e11 $3e $3c
    dw   `00313300                                     ;; 07:5e13 $3c $2c
    dw   `03103200                                     ;; 07:5e15 $68 $4c
    dw   `32003200                                     ;; 07:5e17 $88 $cc
    dw   `32003201                                     ;; 07:5e19 $89 $cc

    dw   `21012201                                     ;; 07:5e1b $51 $8c
    dw   `33200232                                     ;; 07:5e1d $c2 $e7
    dw   `33100232                                     ;; 07:5e1f $e2 $c7
    dw   `33000233                                     ;; 07:5e21 $c3 $c7
    dw   `32000233                                     ;; 07:5e23 $83 $c7
    dw   `32001233                                     ;; 07:5e25 $8b $c7
    dw   `21001233                                     ;; 07:5e27 $4b $87
    dw   `21001233                                     ;; 07:5e29 $4b $87

    dw   `21001233                                     ;; 07:5e2b $4b $87
    dw   `22223333                                     ;; 07:5e2d $0f $ff
    dw   `22222333                                     ;; 07:5e2f $07 $ff
    dw   `22222233                                     ;; 07:5e31 $03 $ff
    dw   `22222222                                     ;; 07:5e33 $00 $ff
    dw   `32222222                                     ;; 07:5e35 $80 $ff
    dw   `33222222                                     ;; 07:5e37 $c0 $ff
    dw   `33332222                                     ;; 07:5e39 $f0 $ff

    dw   `33333333                                     ;; 07:5e3b $ff $ff
    dw   `33333222                                     ;; 07:5e3d $f8 $ff
    dw   `33332222                                     ;; 07:5e3f $f0 $ff
    dw   `33300223                                     ;; 07:5e41 $e1 $e7
    dw   `22200223                                     ;; 07:5e43 $01 $e7
    dw   `22222233                                     ;; 07:5e45 $03 $ff
    dw   `22222333                                     ;; 07:5e47 $07 $ff
    dw   `22233333                                     ;; 07:5e49 $1f $ff

    dw   `33333332                                     ;; 07:5e4b $fe $ff
    dw   `31232300                                     ;; 07:5e4d $d4 $bc
    dw   `31230310                                     ;; 07:5e4f $d6 $b4
    dw   `30130310                                     ;; 07:5e51 $b6 $94
    dw   `30130320                                     ;; 07:5e53 $b4 $96
    dw   `20130230                                     ;; 07:5e55 $32 $96
    dw   `20130131                                     ;; 07:5e57 $37 $92
    dw   `10230031                                     ;; 07:5e59 $93 $32

    dw   `01230032                                     ;; 07:5e5b $52 $33
    dw   `00000000                                     ;; 07:5e5d $00 $00
    dw   `30000000                                     ;; 07:5e5f $80 $80
    dw   `03000000                                     ;; 07:5e61 $40 $40
    dw   `03000000                                     ;; 07:5e63 $40 $40
    dw   `03000000                                     ;; 07:5e65 $40 $40
    dw   `30033000                                     ;; 07:5e67 $98 $98
    dw   `00033000                                     ;; 07:5e69 $18 $18

    dw   `00000000                                     ;; 07:5e6b $00 $00
    dw   `00000000                                     ;; 07:5e6d $00 $00
    dw   `00000000                                     ;; 07:5e6f $00 $00
    dw   `00000000                                     ;; 07:5e71 $00 $00
    dw   `00000000                                     ;; 07:5e73 $00 $00
    dw   `00000000                                     ;; 07:5e75 $00 $00
    dw   `00000000                                     ;; 07:5e77 $00 $00
    dw   `00000003                                     ;; 07:5e79 $01 $01

    dw   `00000031                                     ;; 07:5e7b $03 $02
    dw   `03333000                                     ;; 07:5e7d $78 $78
    dw   `03000300                                     ;; 07:5e7f $44 $44
    dw   `03000030                                     ;; 07:5e81 $42 $42
    dw   `03000030                                     ;; 07:5e83 $42 $42
    dw   `03000030                                     ;; 07:5e85 $42 $42
    dw   `03000300                                     ;; 07:5e87 $44 $44
    dw   `03333000                                     ;; 07:5e89 $78 $78

    dw   `00000000                                     ;; 07:5e8b $00 $00
    dw   `03333000                                     ;; 07:5e8d $78 $78
    dw   `30000300                                     ;; 07:5e8f $84 $84
    dw   `30000300                                     ;; 07:5e91 $84 $84
    dw   `30000300                                     ;; 07:5e93 $84 $84
    dw   `30000300                                     ;; 07:5e95 $84 $84
    dw   `30000300                                     ;; 07:5e97 $84 $84
    dw   `03333000                                     ;; 07:5e99 $78 $78

    dw   `00000000                                     ;; 07:5e9b $00 $00
    dw   `11332322                                     ;; 07:5e9d $f4 $3f
    dw   `11133220                                     ;; 07:5e9f $f8 $1e
    dw   `11133020                                     ;; 07:5ea1 $f8 $1a
    dw   `11113322                                     ;; 07:5ea3 $fc $0f
    dw   `11113323                                     ;; 07:5ea5 $fd $0f
    dw   `11113331                                     ;; 07:5ea7 $ff $0e
    dw   `11113331                                     ;; 07:5ea9 $ff $0e

    dw   `11113323                                     ;; 07:5eab $fd $0f
    dw   `00002222                                     ;; 07:5ead $00 $0f
    dw   `00000000                                     ;; 07:5eaf $00 $00
    dw   `03330000                                     ;; 07:5eb1 $70 $70
    dw   `31333322                                     ;; 07:5eb3 $fc $bf
    dw   `11113330                                     ;; 07:5eb5 $fe $0e
    dw   `11111333                                     ;; 07:5eb7 $ff $07
    dw   `11113323                                     ;; 07:5eb9 $fd $0f

    dw   `31113300                                     ;; 07:5ebb $fc $8c
    dw   `22200002                                     ;; 07:5ebd $00 $e1
    dw   `00022223                                     ;; 07:5ebf $01 $1f
    dw   `00333030                                     ;; 07:5ec1 $3a $3a
    dw   `23113330                                     ;; 07:5ec3 $7e $ce
    dw   `31111333                                     ;; 07:5ec5 $ff $87
    dw   `11111133                                     ;; 07:5ec7 $ff $03
    dw   `11111330                                     ;; 07:5ec9 $fe $06

    dw   `33111330                                     ;; 07:5ecb $fe $c6
    dw   `02000320                                     ;; 07:5ecd $04 $46
    dw   `32000303                                     ;; 07:5ecf $85 $c5
    dw   `00200233                                     ;; 07:5ed1 $03 $27
    dw   `00202331                                     ;; 07:5ed3 $07 $2e
    dw   `00303111                                     ;; 07:5ed5 $2f $28
    dw   `33331111                                     ;; 07:5ed7 $ff $f0
    dw   `23111331                                     ;; 07:5ed9 $7f $c6

    dw   `31111333                                     ;; 07:5edb $ff $87
    dw   `33332000                                     ;; 07:5edd $f0 $f8
    dw   `20003200                                     ;; 07:5edf $08 $8c
    dw   `33300020                                     ;; 07:5ee1 $e0 $e2
    dw   `13330002                                     ;; 07:5ee3 $f0 $71
    dw   `11333330                                     ;; 07:5ee5 $fe $3e
    dw   `11131330                                     ;; 07:5ee7 $fe $16
    dw   `11113303                                     ;; 07:5ee9 $fd $0d

    dw   `11133031                                     ;; 07:5eeb $fb $1a
    dw   `32002311                                     ;; 07:5eed $87 $cc
    dw   `23320033                                     ;; 07:5eef $63 $f3
    dw   `03333330                                     ;; 07:5ef1 $7e $7e
    dw   `02311113                                     ;; 07:5ef3 $3f $61
    dw   `23111111                                     ;; 07:5ef5 $7f $c0
    dw   `31111111                                     ;; 07:5ef7 $ff $80
    dw   `11131111                                     ;; 07:5ef9 $ff $10

    dw   `11133111                                     ;; 07:5efb $ff $18
    dw   `11111333                                     ;; 07:5efd $ff $07
    dw   `33111332                                     ;; 07:5eff $fe $c7
    dw   `02311332                                     ;; 07:5f01 $3e $67
    dw   `03311330                                     ;; 07:5f03 $7e $66
    dw   `30313320                                     ;; 07:5f05 $bc $ae
    dw   `13313303                                     ;; 07:5f07 $fd $6d
    dw   `11133031                                     ;; 07:5f09 $fb $1a

    dw   `11133311                                     ;; 07:5f0b $ff $1c
    dw   `20023302                                     ;; 07:5f0d $0c $9d
    dw   `00033302                                     ;; 07:5f0f $1c $1d
    dw   `00313300                                     ;; 07:5f11 $3c $2c
    dw   `03113300                                     ;; 07:5f13 $7c $4c
    dw   `23113302                                     ;; 07:5f15 $7c $cd
    dw   `31113333                                     ;; 07:5f17 $ff $8f
    dw   `11111111                                     ;; 07:5f19 $ff $00

    dw   `11111111                                     ;; 07:5f1b $ff $00
    dw   `20000222                                     ;; 07:5f1d $00 $87
    dw   `00002000                                     ;; 07:5f1f $00 $08
    dw   `00222222                                     ;; 07:5f21 $00 $3f
    dw   `22222222                                     ;; 07:5f23 $00 $ff
    dw   `22222222                                     ;; 07:5f25 $00 $ff
    dw   `33332322                                     ;; 07:5f27 $f4 $ff
    dw   `11133233                                     ;; 07:5f29 $fb $1f

    dw   `11330023                                     ;; 07:5f2b $f1 $33
    dw   `22333333                                     ;; 07:5f2d $3f $ff
    dw   `03111111                                     ;; 07:5f2f $7f $40
    dw   `31111111                                     ;; 07:5f31 $ff $80
    dw   `33111331                                     ;; 07:5f33 $ff $c6
    dw   `23111333                                     ;; 07:5f35 $7f $c7
    dw   `23111332                                     ;; 07:5f37 $7e $c7
    dw   `33111332                                     ;; 07:5f39 $fe $c7

    dw   `33111333                                     ;; 07:5f3b $ff $c7
    dw   `33333220                                     ;; 07:5f3d $f8 $fe
    dw   `13332202                                     ;; 07:5f3f $f0 $7d
    dw   `11133222                                     ;; 07:5f41 $f8 $1f
    dw   `11111333                                     ;; 07:5f43 $ff $07
    dw   `11111111                                     ;; 07:5f45 $ff $00
    dw   `31111113                                     ;; 07:5f47 $ff $81
    dw   `23111133                                     ;; 07:5f49 $7f $c3

    dw   `33111333                                     ;; 07:5f4b $ff $c7
    dw   `22320032                                     ;; 07:5f4d $22 $f3
    dw   `22332023                                     ;; 07:5f4f $31 $fb
    dw   `23303023                                     ;; 07:5f51 $69 $eb
    dw   `33003003                                     ;; 07:5f53 $c9 $c9
    dw   `32232031                                     ;; 07:5f55 $93 $fa
    dw   `32003311                                     ;; 07:5f57 $8f $cc
    dw   `32003111                                     ;; 07:5f59 $8f $c8

    dw   `02231111                                     ;; 07:5f5b $1f $70
    dw   `00333300                                     ;; 07:5f5d $3c $3c
    dw   `03111130                                     ;; 07:5f5f $7e $42
    dw   `31111113                                     ;; 07:5f61 $ff $81
    dw   `13311111                                     ;; 07:5f63 $ff $60
    dw   `13333111                                     ;; 07:5f65 $ff $78
    dw   `13300311                                     ;; 07:5f67 $e7 $64
    dw   `13300031                                     ;; 07:5f69 $e3 $62

    dw   `13300031                                     ;; 07:5f6b $e3 $62
    dw   `00000000                                     ;; 07:5f6d $00 $00
    dw   `00000000                                     ;; 07:5f6f $00 $00
    dw   `00000003                                     ;; 07:5f71 $01 $01
    dw   `30333031                                     ;; 07:5f73 $bb $ba
    dw   `13113031                                     ;; 07:5f75 $fb $4a
    dw   `11133031                                     ;; 07:5f77 $fb $1a
    dw   `11333031                                     ;; 07:5f79 $fb $3a

    dw   `11330031                                     ;; 07:5f7b $f3 $32
    dw   `00033330                                     ;; 07:5f7d $1e $1e
    dw   `03311113                                     ;; 07:5f7f $7f $61
    dw   `31111111                                     ;; 07:5f81 $ff $80
    dw   `11311111                                     ;; 07:5f83 $ff $20
    dw   `11333111                                     ;; 07:5f85 $ff $38
    dw   `11330331                                     ;; 07:5f87 $f7 $36
    dw   `11330003                                     ;; 07:5f89 $f1 $31

    dw   `11330000                                     ;; 07:5f8b $f0 $30
    dw   `00000000                                     ;; 07:5f8d $00 $00
    dw   `30033300                                     ;; 07:5f8f $9c $9c
    dw   `13311300                                     ;; 07:5f91 $fc $64
    dw   `11113000                                     ;; 07:5f93 $f8 $08
    dw   `11133000                                     ;; 07:5f95 $f8 $18
    dw   `11330000                                     ;; 07:5f97 $f0 $30
    dw   `33300000                                     ;; 07:5f99 $e0 $e0

    dw   `00000000                                     ;; 07:5f9b $00 $00
    dw   `11113320                                     ;; 07:5f9d $fc $0e
    dw   `11113322                                     ;; 07:5f9f $fc $0f
    dw   `11113320                                     ;; 07:5fa1 $fc $0e
    dw   `11113320                                     ;; 07:5fa3 $fc $0e
    dw   `11113322                                     ;; 07:5fa5 $fc $0f
    dw   `11113320                                     ;; 07:5fa7 $fc $0e
    dw   `11113320                                     ;; 07:5fa9 $fc $0e

    dw   `11113322                                     ;; 07:5fab $fc $0f
    dw   `31113300                                     ;; 07:5fad $fc $8c
    dw   `31113322                                     ;; 07:5faf $fc $8f
    dw   `31113300                                     ;; 07:5fb1 $fc $8c
    dw   `31113300                                     ;; 07:5fb3 $fc $8c
    dw   `31113322                                     ;; 07:5fb5 $fc $8f
    dw   `31113300                                     ;; 07:5fb7 $fc $8c
    dw   `31113300                                     ;; 07:5fb9 $fc $8c

    dw   `31113322                                     ;; 07:5fbb $fc $8f
    dw   `03111330                                     ;; 07:5fbd $7e $46
    dw   `23111330                                     ;; 07:5fbf $7e $c6
    dw   `03111333                                     ;; 07:5fc1 $7f $47
    dw   `03111330                                     ;; 07:5fc3 $7e $46
    dw   `23111330                                     ;; 07:5fc5 $7e $c6
    dw   `03111330                                     ;; 07:5fc7 $7e $46
    dw   `03111333                                     ;; 07:5fc9 $7f $47

    dw   `23111332                                     ;; 07:5fcb $7e $c7
    dw   `31111330                                     ;; 07:5fcd $fe $86
    dw   `31111330                                     ;; 07:5fcf $fe $86
    dw   `31111333                                     ;; 07:5fd1 $ff $87
    dw   `31111331                                     ;; 07:5fd3 $ff $86
    dw   `31111311                                     ;; 07:5fd5 $ff $84
    dw   `31111113                                     ;; 07:5fd7 $ff $81
    dw   `31111133                                     ;; 07:5fd9 $ff $83

    dw   `31111330                                     ;; 07:5fdb $fe $86
    dw   `31133031                                     ;; 07:5fdd $fb $9a
    dw   `31330031                                     ;; 07:5fdf $f3 $b2
    dw   `13300031                                     ;; 07:5fe1 $e3 $62
    dw   `13000031                                     ;; 07:5fe3 $c3 $42
    dw   `33000031                                     ;; 07:5fe5 $c3 $c2
    dw   `30000031                                     ;; 07:5fe7 $83 $82
    dw   `20003331                                     ;; 07:5fe9 $0f $8e

    dw   `33333333                                     ;; 07:5feb $ff $ff
    dw   `11133311                                     ;; 07:5fed $ff $1c
    dw   `11133331                                     ;; 07:5fef $ff $1e
    dw   `11133223                                     ;; 07:5ff1 $f9 $1f
    dw   `11133233                                     ;; 07:5ff3 $fb $1f
    dw   `11133311                                     ;; 07:5ff5 $ff $1c
    dw   `11133111                                     ;; 07:5ff7 $ff $18
    dw   `11111111                                     ;; 07:5ff9 $ff $00

    dw   `11113331                                     ;; 07:5ffb $ff $0e
    dw   `11330033                                     ;; 07:5ffd $f3 $33
    dw   `13300000                                     ;; 07:5fff $e0 $60
    dw   `30000023                                     ;; 07:6001 $81 $83
    dw   `33302333                                     ;; 07:6003 $e7 $ef
    dw   `11333322                                     ;; 07:6005 $fc $3f
    dw   `11113332                                     ;; 07:6007 $fe $0f
    dw   `11111332                                     ;; 07:6009 $fe $07

    dw   `11113323                                     ;; 07:600b $fd $0f
    dw   `31113333                                     ;; 07:600d $ff $8f
    dw   `31113332                                     ;; 07:600f $fe $8f
    dw   `31113323                                     ;; 07:6011 $fd $8f
    dw   `31113322                                     ;; 07:6013 $fc $8f
    dw   `31113300                                     ;; 07:6015 $fc $8c
    dw   `31113300                                     ;; 07:6017 $fc $8c
    dw   `31113302                                     ;; 07:6019 $fc $8d

    dw   `31113333                                     ;; 07:601b $ff $8f
    dw   `33312012                                     ;; 07:601d $f2 $e9
    dw   `22111202                                     ;; 07:601f $38 $c5
    dw   `33333222                                     ;; 07:6021 $f8 $ff
    dw   `22231333                                     ;; 07:6023 $1f $f7
    dw   `01321200                                     ;; 07:6025 $68 $34
    dw   `13210211                                     ;; 07:6027 $d3 $64
    dw   `31310023                                     ;; 07:6029 $f1 $a3

    dw   `02310032                                     ;; 07:602b $32 $63
    dw   `33111333                                     ;; 07:602d $ff $c7
    dw   `33111333                                     ;; 07:602f $ff $c7
    dw   `33111330                                     ;; 07:6031 $fe $c6
    dw   `33111333                                     ;; 07:6033 $ff $c7
    dw   `23111331                                     ;; 07:6035 $7f $c6
    dw   `23111111                                     ;; 07:6037 $7f $c0
    dw   `33111111                                     ;; 07:6039 $ff $c0

    dw   `23111131                                     ;; 07:603b $7f $c2

    db   $7e                                           ;; 07:603d .
    db   %11001110                                     ;; 07:603e $ce

    dw   `31133322                                     ;; 07:603f $fc $9f
    dw   `31333000                                     ;; 07:6041 $f8 $b8
    dw   `13330000                                     ;; 07:6043 $f0 $70
    dw   `33322222                                     ;; 07:6045 $e0 $ff
    dw   `11330000                                     ;; 07:6047 $f0 $30
    dw   `11133300                                     ;; 07:6049 $fc $1c
    dw   `11111300                                     ;; 07:604b $fc $04
    dw   `02233311                                     ;; 07:604d $1f $7c

    dw   `22003311                                     ;; 07:604f $0f $cc
    dw   `02003311                                     ;; 07:6051 $0f $4c
    dw   `02232311                                     ;; 07:6053 $17 $7c
    dw   `22003311                                     ;; 07:6055 $0f $cc
    dw   `02003311                                     ;; 07:6057 $0f $4c
    dw   `02232311                                     ;; 07:6059 $17 $7c
    dw   `22320311                                     ;; 07:605b $27 $f4
    dw   `13300031                                     ;; 07:605d $e3 $62

    dw   `13300031                                     ;; 07:605f $e3 $62
    dw   `13303311                                     ;; 07:6061 $ef $6c
    dw   `13331113                                     ;; 07:6063 $ff $71
    dw   `11111133                                     ;; 07:6065 $ff $03
    dw   `11111333                                     ;; 07:6067 $ff $07
    dw   `13333300                                     ;; 07:6069 $fc $7c
    dw   `13300000                                     ;; 07:606b $e0 $60
    dw   `13300031                                     ;; 07:606d $e3 $62

    dw   `33300031                                     ;; 07:606f $e3 $e2
    dw   `33000031                                     ;; 07:6071 $c3 $c2
    dw   `30000031                                     ;; 07:6073 $83 $82
    dw   `30000031                                     ;; 07:6075 $83 $82
    dw   `00000031                                     ;; 07:6077 $03 $02
    dw   `00000031                                     ;; 07:6079 $03 $02
    dw   `00000031                                     ;; 07:607b $03 $02
    dw   `11330000                                     ;; 07:607d $f0 $30

    dw   `11330000                                     ;; 07:607f $f0 $30
    dw   `11330333                                     ;; 07:6081 $f7 $37
    dw   `11333111                                     ;; 07:6083 $ff $38
    dw   `11331111                                     ;; 07:6085 $ff $30
    dw   `11331111                                     ;; 07:6087 $ff $30
    dw   `11333331                                     ;; 07:6089 $ff $3e
    dw   `11330031                                     ;; 07:608b $f3 $32
    dw   `00000000                                     ;; 07:608d $00 $00

    dw   `00000000                                     ;; 07:608f $00 $00
    dw   `33000000                                     ;; 07:6091 $c0 $c0
    dw   `33300000                                     ;; 07:6093 $e0 $e0
    dw   `11333000                                     ;; 07:6095 $f8 $38
    dw   `11113300                                     ;; 07:6097 $fc $0c
    dw   `11333300                                     ;; 07:6099 $fc $3c
    dw   `11330000                                     ;; 07:609b $f0 $30
    dw   `11133202                                     ;; 07:609d $f8 $1d

    dw   `11133202                                     ;; 07:609f $f8 $1d
    dw   `11333222                                     ;; 07:60a1 $f8 $3f
    dw   `11330332                                     ;; 07:60a3 $f6 $37
    dw   `13320033                                     ;; 07:60a5 $e3 $73
    dw   `33200303                                     ;; 07:60a7 $c5 $e5
    dw   `13300203                                     ;; 07:60a9 $e1 $65
    dw   `11133033                                     ;; 07:60ab $fb $1b
    dw   `31113300                                     ;; 07:60ad $fc $8c

    dw   `31113300                                     ;; 07:60af $fc $8c
    dw   `31113300                                     ;; 07:60b1 $fc $8c
    dw   `31111322                                     ;; 07:60b3 $fc $87
    dw   `31111330                                     ;; 07:60b5 $fe $86
    dw   `31111113                                     ;; 07:60b7 $ff $81
    dw   `11111111                                     ;; 07:60b9 $ff $00
    dw   `33111113                                     ;; 07:60bb $ff $c1
    dw   `03111332                                     ;; 07:60bd $7e $47

    dw   `03111330                                     ;; 07:60bf $7e $46
    dw   `23111330                                     ;; 07:60c1 $7e $c6
    dw   `03111332                                     ;; 07:60c3 $7e $47
    dw   `03111330                                     ;; 07:60c5 $7e $46
    dw   `33111133                                     ;; 07:60c7 $ff $c3
    dw   `11111332                                     ;; 07:60c9 $fe $07
    dw   `33113320                                     ;; 07:60cb $fc $ce
    dw   `31111330                                     ;; 07:60cd $fe $86

    dw   `31111333                                     ;; 07:60cf $ff $87
    dw   `31111332                                     ;; 07:60d1 $fe $87
    dw   `31111133                                     ;; 07:60d3 $ff $83
    dw   `31111113                                     ;; 07:60d5 $ff $81
    dw   `31111111                                     ;; 07:60d7 $ff $80
    dw   `23311111                                     ;; 07:60d9 $7f $e0
    dw   `00233111                                     ;; 07:60db $1f $38
    dw   `00003222                                     ;; 07:60dd $08 $0f

    dw   `32332220                                     ;; 07:60df $b0 $fe
    dw   `33323000                                     ;; 07:60e1 $e8 $f8
    dw   `33133003                                     ;; 07:60e3 $f9 $d9
    dw   `31130031                                     ;; 07:60e5 $f3 $92
    dw   `11330311                                     ;; 07:60e7 $f7 $34
    dw   `13323111                                     ;; 07:60e9 $ef $78
    dw   `33331333                                     ;; 07:60eb $ff $f7
    dw   `31132333                                     ;; 07:60ed $f7 $9f

    dw   `03333223                                     ;; 07:60ef $79 $7f
    dw   `02322223                                     ;; 07:60f1 $21 $7f
    dw   `33222223                                     ;; 07:60f3 $c1 $ff
    dw   `11332003                                     ;; 07:60f5 $f1 $39
    dw   `11113333                                     ;; 07:60f7 $ff $0f
    dw   `11111111                                     ;; 07:60f9 $ff $00
    dw   `31111111                                     ;; 07:60fb $ff $80
    dw   `11113300                                     ;; 07:60fd $fc $0c

    dw   `11113300                                     ;; 07:60ff $fc $0c
    dw   `11113320                                     ;; 07:6101 $fc $0e
    dw   `11113322                                     ;; 07:6103 $fc $0f
    dw   `11113303                                     ;; 07:6105 $fd $0d
    dw   `11113303                                     ;; 07:6107 $fd $0d
    dw   `11133023                                     ;; 07:6109 $f9 $1b
    dw   `13330023                                     ;; 07:610b $f1 $73
    dw   `31113300                                     ;; 07:610d $fc $8c

    dw   `31113323                                     ;; 07:610f $fd $8f
    dw   `31113333                                     ;; 07:6111 $ff $8f
    dw   `31113303                                     ;; 07:6113 $fd $8d
    dw   `11111332                                     ;; 07:6115 $fe $07
    dw   `11111333                                     ;; 07:6117 $ff $07
    dw   `31111111                                     ;; 07:6119 $ff $80
    dw   `33111111                                     ;; 07:611b $ff $c0
    dw   `23200230                                     ;; 07:611d $42 $e6

    dw   `32000320                                     ;; 07:611f $84 $c6
    dw   `20333300                                     ;; 07:6121 $3c $bc
    dw   `02002322                                     ;; 07:6123 $04 $4f
    dw   `22333300                                     ;; 07:6125 $3c $fc
    dw   `33113320                                     ;; 07:6127 $fc $ce
    dw   `11133002                                     ;; 07:6129 $f8 $19
    dw   `13330200                                     ;; 07:612b $f0 $74
    dw   `23111333                                     ;; 07:612d $7f $c7

    dw   `03111333                                     ;; 07:612f $7f $47
    dw   `03111333                                     ;; 07:6131 $7f $47
    dw   `23111330                                     ;; 07:6133 $7e $c6
    dw   `03111330                                     ;; 07:6135 $7e $46
    dw   `03111330                                     ;; 07:6137 $7e $46
    dw   `23111332                                     ;; 07:6139 $7e $c7
    dw   `03111330                                     ;; 07:613b $7e $46
    dw   `11133222                                     ;; 07:613d $f8 $1f

    dw   `11133000                                     ;; 07:613f $f8 $18
    dw   `11133000                                     ;; 07:6141 $f8 $18
    dw   `31133002                                     ;; 07:6143 $f8 $99
    dw   `31113302                                     ;; 07:6145 $fc $8d
    dw   `31113322                                     ;; 07:6147 $fc $8f
    dw   `23111332                                     ;; 07:6149 $7e $c7
    dw   `03111133                                     ;; 07:614b $7f $43
    dw   `20030311                                     ;; 07:614d $17 $94

    dw   `20030311                                     ;; 07:614f $17 $94
    dw   `22220311                                     ;; 07:6151 $07 $f4
    dw   `23300311                                     ;; 07:6153 $67 $e4
    dw   `33000311                                     ;; 07:6155 $c7 $c4
    dw   `00333311                                     ;; 07:6157 $3f $3c
    dw   `03133311                                     ;; 07:6159 $7f $5c
    dw   `31133311                                     ;; 07:615b $ff $9c
    dw   `13300000                                     ;; 07:615d $e0 $60

    dw   `13300000                                     ;; 07:615f $e0 $60
    dw   `13300000                                     ;; 07:6161 $e0 $60
    dw   `13300000                                     ;; 07:6163 $e0 $60
    dw   `13300000                                     ;; 07:6165 $e0 $60
    dw   `13300000                                     ;; 07:6167 $e0 $60
    dw   `13300000                                     ;; 07:6169 $e0 $60
    dw   `13300000                                     ;; 07:616b $e0 $60
    dw   `00000031                                     ;; 07:616d $03 $02

    dw   `00000031                                     ;; 07:616f $03 $02
    dw   `00000031                                     ;; 07:6171 $03 $02
    dw   `00000031                                     ;; 07:6173 $03 $02
    dw   `00000031                                     ;; 07:6175 $03 $02
    dw   `00000031                                     ;; 07:6177 $03 $02
    dw   `00000031                                     ;; 07:6179 $03 $02
    dw   `00000031                                     ;; 07:617b $03 $02
    dw   `11330031                                     ;; 07:617d $f3 $32

    dw   `11330031                                     ;; 07:617f $f3 $32
    dw   `11330031                                     ;; 07:6181 $f3 $32
    dw   `11330031                                     ;; 07:6183 $f3 $32
    dw   `11330003                                     ;; 07:6185 $f1 $31
    dw   `11333003                                     ;; 07:6187 $f9 $39
    dw   `11113333                                     ;; 07:6189 $ff $0f
    dw   `11111133                                     ;; 07:618b $ff $03
    dw   `11330000                                     ;; 07:618d $f0 $30

    dw   `11130000                                     ;; 07:618f $f0 $10
    dw   `11130000                                     ;; 07:6191 $f0 $10
    dw   `11133000                                     ;; 07:6193 $f8 $18
    dw   `11133000                                     ;; 07:6195 $f8 $18
    dw   `11133000                                     ;; 07:6197 $f8 $18
    dw   `11133000                                     ;; 07:6199 $f8 $18
    dw   `11133000                                     ;; 07:619b $f8 $18
    dw   `00000000                                     ;; 07:619d $00 $00

    dw   `00000000                                     ;; 07:619f $00 $00
    dw   `00000000                                     ;; 07:61a1 $00 $00
    dw   `00000000                                     ;; 07:61a3 $00 $00
    dw   `00000000                                     ;; 07:61a5 $00 $00
    dw   `00000000                                     ;; 07:61a7 $00 $00
    dw   `00000000                                     ;; 07:61a9 $00 $00
    dw   `00000000                                     ;; 07:61ab $00 $00
    dw   `02333333                                     ;; 07:61ad $3f $7f

    dw   `33200000                                     ;; 07:61af $c0 $e0
    dw   `13333333                                     ;; 07:61b1 $ff $7f
    dw   `11111133                                     ;; 07:61b3 $ff $03
    dw   `11111330                                     ;; 07:61b5 $fe $06
    dw   `33333200                                     ;; 07:61b7 $f8 $fc
    dw   `02002220                                     ;; 07:61b9 $00 $4e
    dw   `02002222                                     ;; 07:61bb $00 $4f
    dw   `03333100                                     ;; 07:61bd $7c $78

    dw   `03321000                                     ;; 07:61bf $68 $70
    dw   `22100002                                     ;; 07:61c1 $20 $c1
    dw   `10000120                                     ;; 07:61c3 $84 $02
    dw   `00002203                                     ;; 07:61c5 $01 $0d
    dw   `00021000                                     ;; 07:61c7 $08 $10
    dw   `00200002                                     ;; 07:61c9 $00 $21
    dw   `01000021                                     ;; 07:61cb $41 $02
    dw   `02032333                                     ;; 07:61cd $17 $5f

    dw   `20321133                                     ;; 07:61cf $2f $b3
    dw   `03223312                                     ;; 07:61d1 $4e $7d
    dw   `33331333                                     ;; 07:61d3 $ff $f7
    dw   `32231311                                     ;; 07:61d5 $9f $f4
    dw   `22033002                                     ;; 07:61d7 $18 $d9
    dw   `20320021                                     ;; 07:61d9 $21 $b2
    dw   `02100120                                     ;; 07:61db $24 $42
    dw   `33333331                                     ;; 07:61dd $ff $fe

    dw   `33333133                                     ;; 07:61df $ff $fb
    dw   `33003301                                     ;; 07:61e1 $cd $cc
    dw   `23001300                                     ;; 07:61e3 $4c $c4
    dw   `23111310                                     ;; 07:61e5 $7e $c4
    dw   `00333022                                     ;; 07:61e7 $38 $3b
    dw   `01202001                                     ;; 07:61e9 $41 $28
    dw   `01101000                                     ;; 07:61eb $68 $00
    dw   `03311113                                     ;; 07:61ed $7f $61

    dw   `30333333                                     ;; 07:61ef $bf $bf
    dw   `03232200                                     ;; 07:61f1 $50 $7c
    dw   `00023303                                     ;; 07:61f3 $0d $1d
    dw   `00000000                                     ;; 07:61f5 $00 $00
    dw   `00332000                                     ;; 07:61f7 $30 $38
    dw   `23000200                                     ;; 07:61f9 $40 $c4
    dw   `02000022                                     ;; 07:61fb $00 $43
    dw   `33000230                                     ;; 07:61fd $c2 $c6

    dw   `00001313                                     ;; 07:61ff $0f $05
    dw   `11223231                                     ;; 07:6201 $cb $3e
    dw   `33332110                                     ;; 07:6203 $f6 $f8
    dw   `11111000                                     ;; 07:6205 $f8 $00
    dw   `00023300                                     ;; 07:6207 $0c $1c
    dw   `00200133                                     ;; 07:6209 $07 $23
    dw   `21100110                                     ;; 07:620b $66 $80
    dw   `03311113                                     ;; 07:620d $7f $61

    dw   `30033333                                     ;; 07:620f $9f $9f
    dw   `00300033                                     ;; 07:6211 $23 $23
    dw   `00200032                                     ;; 07:6213 $02 $23
    dw   `00300032                                     ;; 07:6215 $22 $23
    dw   `23033300                                     ;; 07:6217 $5c $dc
    dw   `30020200                                     ;; 07:6219 $80 $94
    dw   `00020020                                     ;; 07:621b $00 $12
    dw   `33320020                                     ;; 07:621d $e0 $f2

    dw   `30230002                                     ;; 07:621f $90 $b1
    dw   `30303000                                     ;; 07:6221 $a8 $a8
    dw   `32302300                                     ;; 07:6223 $a4 $ec
    dw   `23303230                                     ;; 07:6225 $6a $ee
    dw   `20033023                                     ;; 07:6227 $19 $9b
    dw   `12003302                                     ;; 07:6229 $8c $4d
    dw   `02100220                                     ;; 07:622b $20 $46
    dw   `03111330                                     ;; 07:622d $7e $46

    dw   `31111330                                     ;; 07:622f $fe $86
    dw   `23311332                                     ;; 07:6231 $7e $e7
    dw   `02033330                                     ;; 07:6233 $1e $5e
    dw   `00220000                                     ;; 07:6235 $00 $30
    dw   `00002000                                     ;; 07:6237 $00 $08
    dw   `32000200                                     ;; 07:6239 $80 $c4
    dw   `23200020                                     ;; 07:623b $40 $e2
    dw   `00311111                                     ;; 07:623d $3f $20

    dw   `00033111                                     ;; 07:623f $1f $18
    dw   `00002333                                     ;; 07:6241 $07 $0f
    dw   `22002200                                     ;; 07:6243 $00 $cc
    dw   `00220033                                     ;; 07:6245 $03 $33
    dw   `00022232                                     ;; 07:6247 $02 $1f
    dw   `00220020                                     ;; 07:6249 $00 $32
    dw   `02220020                                     ;; 07:624b $00 $72
    dw   `11333311                                     ;; 07:624d $ff $3c

    dw   `13303111                                     ;; 07:624f $ef $68
    dw   `30032331                                     ;; 07:6251 $97 $9e
    dw   `20030003                                     ;; 07:6253 $11 $91
    dw   `00320000                                     ;; 07:6255 $20 $30
    dw   `00300000                                     ;; 07:6257 $20 $20
    dw   `03200000                                     ;; 07:6259 $40 $60
    dw   `03000000                                     ;; 07:625b $40 $40
    dw   `13300000                                     ;; 07:625d $e0 $60

    dw   `13300000                                     ;; 07:625f $e0 $60
    dw   `13300000                                     ;; 07:6261 $e0 $60
    dw   `33300000                                     ;; 07:6263 $e0 $e0
    dw   `00000000                                     ;; 07:6265 $00 $00
    dw   `00000000                                     ;; 07:6267 $00 $00
    dw   `00000000                                     ;; 07:6269 $00 $00
    dw   `00000000                                     ;; 07:626b $00 $00
    dw   `00000023                                     ;; 07:626d $01 $03

    dw   `00000000                                     ;; 07:626f $00 $00
    dw   `00000000                                     ;; 07:6271 $00 $00
    dw   `00000000                                     ;; 07:6273 $00 $00
    dw   `00000000                                     ;; 07:6275 $00 $00
    dw   `00000000                                     ;; 07:6277 $00 $00
    dw   `00000000                                     ;; 07:6279 $00 $00
    dw   `00000000                                     ;; 07:627b $00 $00
    dw   `31111111                                     ;; 07:627d $ff $80

    dw   `23311111                                     ;; 07:627f $7f $e0
    dw   `00233333                                     ;; 07:6281 $1f $3f
    dw   `00000000                                     ;; 07:6283 $00 $00
    dw   `00000000                                     ;; 07:6285 $00 $00
    dw   `00000000                                     ;; 07:6287 $00 $00
    dw   `00000000                                     ;; 07:6289 $00 $00
    dw   `00000000                                     ;; 07:628b $00 $00
    dw   `11332000                                     ;; 07:628d $f0 $38

    dw   `33200000                                     ;; 07:628f $c0 $e0
    dw   `20000000                                     ;; 07:6291 $00 $80
    dw   `00000000                                     ;; 07:6293 $00 $00
    dw   `00000000                                     ;; 07:6295 $00 $00
    dw   `00000000                                     ;; 07:6297 $00 $00
    dw   `00000000                                     ;; 07:6299 $00 $00
    dw   `00000000                                     ;; 07:629b $00 $00
    dw   `00000002                                     ;; 07:629d $00 $01

    dw   `00000002                                     ;; 07:629f $00 $01
    dw   `00000000                                     ;; 07:62a1 $00 $00
    dw   `00000033                                     ;; 07:62a3 $03 $03
    dw   `00000000                                     ;; 07:62a5 $00 $00
    dw   `00000000                                     ;; 07:62a7 $00 $00
    dw   `00000000                                     ;; 07:62a9 $00 $00
    dw   `00000000                                     ;; 07:62ab $00 $00
    dw   `00122033                                     ;; 07:62ad $23 $1b

    dw   `10012131                                     ;; 07:62af $97 $0a
    dw   `10001031                                     ;; 07:62b1 $8b $02
    dw   `33331033                                     ;; 07:62b3 $fb $f3
    dw   `01100131                                     ;; 07:62b5 $67 $02
    dw   `00120031                                     ;; 07:62b7 $23 $12
    dw   `00021033                                     ;; 07:62b9 $0b $13
    dw   `00002100                                     ;; 07:62bb $04 $08
    dw   `33001110                                     ;; 07:62bd $ce $c0

    dw   `00310002                                     ;; 07:62bf $30 $21
    dw   `10313101                                     ;; 07:62c1 $bd $28
    dw   `33113033                                     ;; 07:62c3 $fb $cb
    dw   `00313310                                     ;; 07:62c5 $3e $2c
    dw   `10303100                                     ;; 07:62c7 $ac $28
    dw   `33003000                                     ;; 07:62c9 $c8 $c8
    dw   `01011100                                     ;; 07:62cb $5c $00
    dw   `21000100                                     ;; 07:62cd $44 $80

    dw   `13003300                                     ;; 07:62cf $cc $4c
    dw   `00010030                                     ;; 07:62d1 $12 $02
    dw   `03013331                                     ;; 07:62d3 $5f $4e
    dw   `03130031                                     ;; 07:62d5 $73 $52
    dw   `03030030                                     ;; 07:62d7 $52 $52
    dw   `13003313                                     ;; 07:62d9 $cf $4d
    dw   `10000100                                     ;; 07:62db $84 $00
    dw   `01001001                                     ;; 07:62dd $49 $00

    dw   `10001033                                     ;; 07:62df $8b $03
    dw   `13330030                                     ;; 07:62e1 $f2 $72
    dw   `03013010                                     ;; 07:62e3 $5a $48
    dw   `03103100                                     ;; 07:62e5 $6c $48
    dw   `03103100                                     ;; 07:62e7 $6c $48
    dw   `03003000                                     ;; 07:62e9 $48 $48
    dw   `01001001                                     ;; 07:62eb $49 $00
    dw   `12000200                                     ;; 07:62ed $80 $44

    dw   `00331000                                     ;; 07:62ef $38 $30
    dw   `03013100                                     ;; 07:62f1 $5c $48
    dw   `03310010                                     ;; 07:62f3 $72 $60
    dw   `10033010                                     ;; 07:62f5 $9a $18
    dw   `13013013                                     ;; 07:62f7 $db $49
    dw   `10330010                                     ;; 07:62f9 $b2 $30
    dw   `00010010                                     ;; 07:62fb $12 $00
    dw   `33330021                                     ;; 07:62fd $f1 $f2

    dw   `00311100                                     ;; 07:62ff $3c $20
    dw   `00301330                                     ;; 07:6301 $2e $26
    dw   `01303013                                     ;; 07:6303 $6b $29
    dw   `01303003                                     ;; 07:6305 $69 $29
    dw   `01303003                                     ;; 07:6307 $69 $29
    dw   `33001331                                     ;; 07:6309 $cf $c6
    dw   `01001000                                     ;; 07:630b $48 $00
    dw   `10010010                                     ;; 07:630d $92 $00

    dw   `10010001                                     ;; 07:630f $91 $00
    dw   `03003031                                     ;; 07:6311 $4b $4a
    dw   `03003030                                     ;; 07:6313 $4a $4a
    dw   `03103133                                     ;; 07:6315 $6f $4b
    dw   `03103130                                     ;; 07:6317 $6e $4a
    dw   `00333030                                     ;; 07:6319 $3a $3a
    dw   `10010010                                     ;; 07:631b $92 $00
    dw   `00100002                                     ;; 07:631d $20 $01

    dw   `00010000                                     ;; 07:631f $10 $00
    dw   `00033300                                     ;; 07:6321 $1c $1c
    dw   `33031030                                     ;; 07:6323 $da $d2
    dw   `10030130                                     ;; 07:6325 $96 $12
    dw   `01030030                                     ;; 07:6327 $52 $12
    dw   `01030031                                     ;; 07:6329 $53 $12
    dw   `00100001                                     ;; 07:632b $21 $00
    dw   `01220001                                     ;; 07:632d $41 $30

    dw   `20102030                                     ;; 07:632f $22 $8a
    dw   `13331031                                     ;; 07:6331 $fb $72
    dw   `31103113                                     ;; 07:6333 $ef $89
    dw   `33333021                                     ;; 07:6335 $f9 $fa
    dw   `30010021                                     ;; 07:6337 $91 $82
    dw   `03330013                                     ;; 07:6339 $73 $71
    dw   `00111033                                     ;; 07:633b $3b $03
    dw   `01012100                                     ;; 07:633d $54 $08

    dw   `11311001                                     ;; 07:633f $f9 $20
    dw   `10310002                                     ;; 07:6341 $b0 $21
    dw   `13010010                                     ;; 07:6343 $d2 $40
    dw   `33103333                                     ;; 07:6345 $ef $cf
    dw   `30001100                                     ;; 07:6347 $8c $80
    dw   `31002000                                     ;; 07:6349 $c0 $88
    dw   `00221000                                     ;; 07:634b $08 $30
    dw   `20000000                                     ;; 07:634d $00 $80

    dw   `20000000                                     ;; 07:634f $00 $80
    dw   `00000000                                     ;; 07:6351 $00 $00
    dw   `00000000                                     ;; 07:6353 $00 $00
    dw   `33000000                                     ;; 07:6355 $c0 $c0
    dw   `00000000                                     ;; 07:6357 $00 $00
    dw   `00000000                                     ;; 07:6359 $00 $00
    dw   `00000000                                     ;; 07:635b $00 $00
    dw   `33333303                                     ;; 07:635d $fd $fd

    dw   `30000003                                     ;; 07:635f $81 $81
    dw   `30000003                                     ;; 07:6361 $81 $81
    dw   `33333003                                     ;; 07:6363 $f9 $f9
    dw   `30000003                                     ;; 07:6365 $81 $81
    dw   `30000003                                     ;; 07:6367 $81 $81
    dw   `33333303                                     ;; 07:6369 $fd $fd
    dw   `00000000                                     ;; 07:636b $00 $00
    dw   `33300000                                     ;; 07:636d $e0 $e0

    dw   `00030000                                     ;; 07:636f $10 $10
    dw   `00003000                                     ;; 07:6371 $08 $08
    dw   `00003000                                     ;; 07:6373 $08 $08
    dw   `00003000                                     ;; 07:6375 $08 $08
    dw   `00030000                                     ;; 07:6377 $10 $10
    dw   `33300000                                     ;; 07:6379 $e0 $e0
    dw   `00000000                                     ;; 07:637b $00 $00
    dw   `03333300                                     ;; 07:637d $7c $7c

    dw   `03000030                                     ;; 07:637f $42 $42
    dw   `03000030                                     ;; 07:6381 $42 $42
    dw   `03333300                                     ;; 07:6383 $7c $7c
    dw   `03000030                                     ;; 07:6385 $42 $42
    dw   `03000030                                     ;; 07:6387 $42 $42
    dw   `03333300                                     ;; 07:6389 $7c $7c
    dw   `00000000                                     ;; 07:638b $00 $00
    dw   `30000030                                     ;; 07:638d $82 $82

    dw   `03000300                                     ;; 07:638f $44 $44
    dw   `00303000                                     ;; 07:6391 $28 $28
    dw   `00030000                                     ;; 07:6393 $10 $10
    dw   `00030000                                     ;; 07:6395 $10 $10
    dw   `00030000                                     ;; 07:6397 $10 $10
    dw   `00030000                                     ;; 07:6399 $10 $10
    dw   `00000000                                     ;; 07:639b $00 $00
    dw   `33003333                                     ;; 07:639d $cf $cf

    dw   `00303000                                     ;; 07:639f $28 $28
    dw   `00003000                                     ;; 07:63a1 $08 $08
    dw   `00003333                                     ;; 07:63a3 $0f $0f
    dw   `00003000                                     ;; 07:63a5 $08 $08
    dw   `00303000                                     ;; 07:63a7 $28 $28
    dw   `33003333                                     ;; 07:63a9 $cf $cf
    dw   `00000000                                     ;; 07:63ab $00 $00
    dw   `00002202                                     ;; 07:63ad $00 $0d

    dw   `00000323                                     ;; 07:63af $05 $07
    dw   `00000033                                     ;; 07:63b1 $03 $03
    dw   `00000002                                     ;; 07:63b3 $00 $01
    dw   `00000000                                     ;; 07:63b5 $00 $00
    dw   `00000000                                     ;; 07:63b7 $00 $00
    dw   `00000000                                     ;; 07:63b9 $00 $00
    dw   `00000000                                     ;; 07:63bb $00 $00
    dw   `02100222                                     ;; 07:63bd $20 $47

    dw   `03200222                                     ;; 07:63bf $40 $67
    dw   `30023300                                     ;; 07:63c1 $8c $9c
    dw   `31001300                                     ;; 07:63c3 $cc $84
    dw   `03200023                                     ;; 07:63c5 $41 $63
    dw   `00320000                                     ;; 07:63c7 $20 $30
    dw   `00033100                                     ;; 07:63c9 $1c $18
    dw   `00002330                                     ;; 07:63cb $06 $0e
    dw   `10001200                                     ;; 07:63cd $88 $04

    dw   `21002100                                     ;; 07:63cf $44 $88
    dw   `22112001                                     ;; 07:63d1 $31 $c8
    dw   `22221002                                     ;; 07:63d3 $08 $f1
    dw   `30022112                                     ;; 07:63d5 $86 $99
    dw   `30022222                                     ;; 07:63d7 $80 $9f
    dw   `02330022                                     ;; 07:63d9 $30 $73
    dw   `00130021                                     ;; 07:63db $31 $12
    dw   `12002002                                     ;; 07:63dd $80 $49

    dw   `20021012                                     ;; 07:63df $0a $91
    dw   `20020012                                     ;; 07:63e1 $02 $91
    dw   `10210021                                     ;; 07:63e3 $91 $22
    dw   `00200021                                     ;; 07:63e5 $01 $22
    dw   `11200120                                     ;; 07:63e7 $c4 $22
    dw   `22100210                                     ;; 07:63e9 $22 $c4
    dw   `22222211                                     ;; 07:63eb $03 $fc
    dw   `10020020                                     ;; 07:63ed $80 $12

    dw   `00210020                                     ;; 07:63ef $10 $22
    dw   `00210020                                     ;; 07:63f1 $10 $22
    dw   `00200020                                     ;; 07:63f3 $00 $22
    dw   `00200020                                     ;; 07:63f5 $00 $22
    dw   `00200020                                     ;; 07:63f7 $00 $22
    dw   `00200020                                     ;; 07:63f9 $00 $22
    dw   `11200020                                     ;; 07:63fb $c0 $22
    dw   `02002001                                     ;; 07:63fd $01 $48

    dw   `02001200                                     ;; 07:63ff $08 $44
    dw   `02001200                                     ;; 07:6401 $08 $44
    dw   `02000200                                     ;; 07:6403 $00 $44
    dw   `02000200                                     ;; 07:6405 $00 $44
    dw   `02000200                                     ;; 07:6407 $00 $44
    dw   `02000200                                     ;; 07:6409 $00 $44
    dw   `02000211                                     ;; 07:640b $03 $44
    dw   `20020021                                     ;; 07:640d $01 $92

    dw   `21012002                                     ;; 07:640f $50 $89
    dw   `21002002                                     ;; 07:6411 $40 $89
    dw   `12001201                                     ;; 07:6413 $89 $44
    dw   `12000200                                     ;; 07:6415 $80 $44
    dw   `02100211                                     ;; 07:6417 $23 $44
    dw   `01200122                                     ;; 07:6419 $44 $23
    dw   `11222222                                     ;; 07:641b $c0 $3f
    dw   `00210001                                     ;; 07:641d $11 $20

    dw   `00120012                                     ;; 07:641f $22 $11
    dw   `10021122                                     ;; 07:6421 $8c $13
    dw   `20012222                                     ;; 07:6423 $10 $8f
    dw   `21122003                                     ;; 07:6425 $61 $99
    dw   `22222003                                     ;; 07:6427 $01 $f9
    dw   `22003320                                     ;; 07:6429 $0c $ce
    dw   `12003100                                     ;; 07:642b $8c $48
    dw   `22200110                                     ;; 07:642d $06 $e0

    dw   `22200230                                     ;; 07:642f $02 $e6
    dw   `00332003                                     ;; 07:6431 $31 $39
    dw   `00300003                                     ;; 07:6433 $21 $21
    dw   `32000232                                     ;; 07:6435 $82 $c7
    dw   `00002310                                     ;; 07:6437 $06 $0c
    dw   `00033100                                     ;; 07:6439 $1c $18
    dw   `02321000                                     ;; 07:643b $28 $70
    dw   `20220000                                     ;; 07:643d $00 $b0

    dw   `32300000                                     ;; 07:643f $a0 $e0
    dw   `33000000                                     ;; 07:6441 $c0 $c0
    dw   `20000000                                     ;; 07:6443 $00 $80
    dw   `00000000                                     ;; 07:6445 $00 $00
    dw   `00000000                                     ;; 07:6447 $00 $00
    dw   `00000000                                     ;; 07:6449 $00 $00
    dw   `00000000                                     ;; 07:644b $00 $00
    dw   `00030000                                     ;; 07:644d $10 $10

    dw   `00033000                                     ;; 07:644f $18 $18
    dw   `00030300                                     ;; 07:6451 $14 $14
    dw   `00030030                                     ;; 07:6453 $12 $12
    dw   `00030003                                     ;; 07:6455 $11 $11
    dw   `00030000                                     ;; 07:6457 $10 $10
    dw   `00030000                                     ;; 07:6459 $10 $10
    dw   `00000000                                     ;; 07:645b $00 $00
    dw   `30333030                                     ;; 07:645d $ba $ba

    dw   `30030033                                     ;; 07:645f $93 $93
    dw   `30030030                                     ;; 07:6461 $92 $92
    dw   `30030030                                     ;; 07:6463 $92 $92
    dw   `30030030                                     ;; 07:6465 $92 $92
    dw   `30030030                                     ;; 07:6467 $92 $92
    dw   `30333030                                     ;; 07:6469 $ba $ba
    dw   `00000000                                     ;; 07:646b $00 $00
    dw   `00030333                                     ;; 07:646d $17 $17

    dw   `00030003                                     ;; 07:646f $11 $11
    dw   `30030003                                     ;; 07:6471 $91 $91
    dw   `03030003                                     ;; 07:6473 $51 $51
    dw   `00330003                                     ;; 07:6475 $31 $31
    dw   `00030003                                     ;; 07:6477 $11 $11
    dw   `00030003                                     ;; 07:6479 $11 $11
    dw   `00000000                                     ;; 07:647b $00 $00
    dw   `33033333                                     ;; 07:647d $df $df

    dw   `00030000                                     ;; 07:647f $10 $10
    dw   `00030000                                     ;; 07:6481 $10 $10
    dw   `00033333                                     ;; 07:6483 $1f $1f
    dw   `00030000                                     ;; 07:6485 $10 $10
    dw   `00030000                                     ;; 07:6487 $10 $10
    dw   `00033333                                     ;; 07:6489 $1f $1f
    dw   `00000000                                     ;; 07:648b $00 $00
    dw   `30300003                                     ;; 07:648d $a1 $a1

    dw   `00330003                                     ;; 07:648f $31 $31
    dw   `00303003                                     ;; 07:6491 $29 $29
    dw   `00300303                                     ;; 07:6493 $25 $25
    dw   `00300033                                     ;; 07:6495 $23 $23
    dw   `00300003                                     ;; 07:6497 $21 $21
    dw   `30300003                                     ;; 07:6499 $a1 $a1
    dw   `00000000                                     ;; 07:649b $00 $00
    dw   `33030000                                     ;; 07:649d $d0 $d0

    dw   `00033000                                     ;; 07:649f $18 $18
    dw   `00030300                                     ;; 07:64a1 $14 $14
    dw   `30030030                                     ;; 07:64a3 $92 $92
    dw   `00030003                                     ;; 07:64a5 $11 $11
    dw   `00030000                                     ;; 07:64a7 $10 $10
    dw   `33030000                                     ;; 07:64a9 $d0 $d0
    dw   `00000000                                     ;; 07:64ab $00 $00
    dw   `30033300                                     ;; 07:64ad $9c $9c

    dw   `30300030                                     ;; 07:64af $a2 $a2
    dw   `30300000                                     ;; 07:64b1 $a0 $a0
    dw   `30033000                                     ;; 07:64b3 $98 $98
    dw   `30000330                                     ;; 07:64b5 $86 $86
    dw   `30300030                                     ;; 07:64b7 $a2 $a2
    dw   `30033300                                     ;; 07:64b9 $9c $9c
    dw   `00000000                                     ;; 07:64bb $00 $00
    dw   `00000023                                     ;; 07:64bd $01 $03

    dw   `00000000                                     ;; 07:64bf $00 $00
    dw   `00000000                                     ;; 07:64c1 $00 $00
    dw   `00000000                                     ;; 07:64c3 $00 $00
    dw   `00000000                                     ;; 07:64c5 $00 $00
    dw   `00000000                                     ;; 07:64c7 $00 $00
    dw   `00000000                                     ;; 07:64c9 $00 $00
    dw   `00000000                                     ;; 07:64cb $00 $00
    dw   `10002333                                     ;; 07:64cd $87 $0f

    dw   `33100003                                     ;; 07:64cf $e1 $c1
    dw   `01331000                                     ;; 07:64d1 $78 $30
    dw   `00023300                                     ;; 07:64d3 $0c $1c
    dw   `00000133                                     ;; 07:64d5 $07 $03
    dw   `00000001                                     ;; 07:64d7 $01 $00
    dw   `00000000                                     ;; 07:64d9 $00 $00
    dw   `00000000                                     ;; 07:64db $00 $00
    dw   `00222222                                     ;; 07:64dd $00 $3f

    dw   `00330021                                     ;; 07:64df $31 $32
    dw   `23130031                                     ;; 07:64e1 $73 $d2
    dw   `00002301                                     ;; 07:64e3 $05 $0c
    dw   `31000000                                     ;; 07:64e5 $c0 $80
    dw   `23333210                                     ;; 07:64e7 $7a $fc
    dw   `00122333                                     ;; 07:64e9 $27 $1f
    dw   `00000012                                     ;; 07:64eb $02 $01
    dw   `22211120                                     ;; 07:64ed $1c $e2

    dw   `22222222                                     ;; 07:64ef $00 $ff
    dw   `20022002                                     ;; 07:64f1 $00 $99
    dw   `30033003                                     ;; 07:64f3 $99 $99
    dw   `02301330                                     ;; 07:64f5 $2e $66
    dw   `00000000                                     ;; 07:64f7 $00 $00
    dw   `32210000                                     ;; 07:64f9 $90 $e0
    dw   `23333333                                     ;; 07:64fb $7f $ff
    dw   `02111222                                     ;; 07:64fd $38 $47

    dw   `22222222                                     ;; 07:64ff $00 $ff
    dw   `20022002                                     ;; 07:6501 $00 $99
    dw   `30033003                                     ;; 07:6503 $99 $99
    dw   `03310320                                     ;; 07:6505 $74 $66
    dw   `00000000                                     ;; 07:6507 $00 $00
    dw   `00000123                                     ;; 07:6509 $05 $03
    dw   `33333332                                     ;; 07:650b $fe $ff
    dw   `22222200                                     ;; 07:650d $00 $fc

    dw   `12003300                                     ;; 07:650f $8c $4c
    dw   `13003132                                     ;; 07:6511 $ce $4b
    dw   `10320000                                     ;; 07:6513 $a0 $30
    dw   `00000012                                     ;; 07:6515 $02 $01
    dw   `00123333                                     ;; 07:6517 $2f $1f
    dw   `33332100                                     ;; 07:6519 $f4 $f8
    dw   `21100000                                     ;; 07:651b $60 $80
    dw   `33320000                                     ;; 07:651d $e0 $f0

    dw   `30000033                                     ;; 07:651f $83 $83
    dw   `00013320                                     ;; 07:6521 $1c $0e
    dw   `00332100                                     ;; 07:6523 $34 $38
    dw   `33210000                                     ;; 07:6525 $d0 $e0
    dw   `10000000                                     ;; 07:6527 $80 $00
    dw   `00000000                                     ;; 07:6529 $00 $00
    dw   `00000000                                     ;; 07:652b $00 $00
    dw   `33100000                                     ;; 07:652d $e0 $c0

    dw   `20000000                                     ;; 07:652f $00 $80
    dw   `00000000                                     ;; 07:6531 $00 $00
    dw   `00000000                                     ;; 07:6533 $00 $00
    dw   `00000000                                     ;; 07:6535 $00 $00
    dw   `00000000                                     ;; 07:6537 $00 $00
    dw   `00000000                                     ;; 07:6539 $00 $00
    dw   `00000000                                     ;; 07:653b $00 $00
    dw   `00000000                                     ;; 07:653d $00 $00

    dw   `00000000                                     ;; 07:653f $00 $00
    dw   `00000333                                     ;; 07:6541 $07 $07
    dw   `00033111                                     ;; 07:6543 $1f $18
    dw   `03311333                                     ;; 07:6545 $7f $67
    dw   `31113320                                     ;; 07:6547 $fc $8e
    dw   `11313300                                     ;; 07:6549 $fc $2c
    dw   `13313300                                     ;; 07:654b $fc $6c
    dw   `00000000                                     ;; 07:654d $00 $00

    dw   `33333333                                     ;; 07:654f $ff $ff
    dw   `11111111                                     ;; 07:6551 $ff $00
    dw   `11111111                                     ;; 07:6553 $ff $00
    dw   `33331111                                     ;; 07:6555 $ff $f0
    dw   `00023331                                     ;; 07:6557 $0f $1e
    dw   `00000023                                     ;; 07:6559 $01 $03
    dw   `00000000                                     ;; 07:655b $00 $00
    dw   `00000000                                     ;; 07:655d $00 $00

    dw   `33000000                                     ;; 07:655f $c0 $c0
    dw   `11333000                                     ;; 07:6561 $f8 $38
    dw   `11111330                                     ;; 07:6563 $fe $06
    dw   `11111113                                     ;; 07:6565 $ff $01
    dw   `11111111                                     ;; 07:6567 $ff $00
    dw   `31111111                                     ;; 07:6569 $ff $80
    dw   `23111111                                     ;; 07:656b $7f $c0
    dw   `00000000                                     ;; 07:656d $00 $00

    dw   `00000000                                     ;; 07:656f $00 $00
    dw   `00000000                                     ;; 07:6571 $00 $00
    dw   `00000000                                     ;; 07:6573 $00 $00
    dw   `00000000                                     ;; 07:6575 $00 $00
    dw   `00000000                                     ;; 07:6577 $00 $00
    dw   `00000000                                     ;; 07:6579 $00 $00
    dw   `00000000                                     ;; 07:657b $00 $00
    dw   `00000000                                     ;; 07:657d $00 $00

    dw   `00000000                                     ;; 07:657f $00 $00
    dw   `00000000                                     ;; 07:6581 $00 $00
    dw   `00000000                                     ;; 07:6583 $00 $00
    dw   `00000000                                     ;; 07:6585 $00 $00
    dw   `00000000                                     ;; 07:6587 $00 $00
    dw   `00000000                                     ;; 07:6589 $00 $00
    dw   `00000000                                     ;; 07:658b $00 $00
    dw   `00000000                                     ;; 07:658d $00 $00

    dw   `00000000                                     ;; 07:658f $00 $00
    dw   `00000000                                     ;; 07:6591 $00 $00
    dw   `00000000                                     ;; 07:6593 $00 $00
    dw   `00000000                                     ;; 07:6595 $00 $00
    dw   `00000000                                     ;; 07:6597 $00 $00
    dw   `00000000                                     ;; 07:6599 $00 $00
    dw   `00000000                                     ;; 07:659b $00 $00
    dw   `00000311                                     ;; 07:659d $07 $04

    dw   `00003113                                     ;; 07:659f $0f $09
    dw   `00031113                                     ;; 07:65a1 $1f $11
    dw   `00311113                                     ;; 07:65a3 $3f $21
    dw   `00311133                                     ;; 07:65a5 $3f $23
    dw   `03111133                                     ;; 07:65a7 $7f $43
    dw   `03111133                                     ;; 07:65a9 $7f $43
    dw   `31111133                                     ;; 07:65ab $ff $83
    dw   `33313300                                     ;; 07:65ad $fc $ec

    dw   `30313300                                     ;; 07:65af $bc $ac
    dw   `30313300                                     ;; 07:65b1 $bc $ac
    dw   `30313300                                     ;; 07:65b3 $bc $ac
    dw   `00313300                                     ;; 07:65b5 $3c $2c
    dw   `00313300                                     ;; 07:65b7 $3c $2c
    dw   `00313300                                     ;; 07:65b9 $3c $2c
    dw   `00313300                                     ;; 07:65bb $3c $2c
    dw   `00000000                                     ;; 07:65bd $00 $00

    dw   `00000000                                     ;; 07:65bf $00 $00
    dw   `00000000                                     ;; 07:65c1 $00 $00
    dw   `00000000                                     ;; 07:65c3 $00 $00
    dw   `00000000                                     ;; 07:65c5 $00 $00
    dw   `00000000                                     ;; 07:65c7 $00 $00
    dw   `00003333                                     ;; 07:65c9 $0f $0f
    dw   `00031113                                     ;; 07:65cb $1f $11
    dw   `00311111                                     ;; 07:65cd $3f $20

    dw   `00031111                                     ;; 07:65cf $1f $10
    dw   `00023111                                     ;; 07:65d1 $0f $18
    dw   `00003111                                     ;; 07:65d3 $0f $08
    dw   `00002311                                     ;; 07:65d5 $07 $0c
    dw   `00000311                                     ;; 07:65d7 $07 $04
    dw   `30000311                                     ;; 07:65d9 $87 $84
    dw   `33003111                                     ;; 07:65db $cf $c8
    dw   `00000000                                     ;; 07:65dd $00 $00

    dw   `00000000                                     ;; 07:65df $00 $00
    dw   `00000000                                     ;; 07:65e1 $00 $00
    dw   `00000000                                     ;; 07:65e3 $00 $00
    dw   `00000000                                     ;; 07:65e5 $00 $00
    dw   `00000000                                     ;; 07:65e7 $00 $00
    dw   `00000000                                     ;; 07:65e9 $00 $00
    dw   `00000000                                     ;; 07:65eb $00 $00
    dw   `00000000                                     ;; 07:65ed $00 $00

    dw   `00000000                                     ;; 07:65ef $00 $00
    dw   `00333330                                     ;; 07:65f1 $3e $3e
    dw   `00311130                                     ;; 07:65f3 $3e $22
    dw   `00311230                                     ;; 07:65f5 $3a $26
    dw   `00311300                                     ;; 07:65f7 $3c $24
    dw   `00311300                                     ;; 07:65f9 $3c $24
    dw   `00311300                                     ;; 07:65fb $3c $24
    dw   `00000000                                     ;; 07:65fd $00 $00

    dw   `00033000                                     ;; 07:65ff $18 $18
    dw   `00031333                                     ;; 07:6601 $1f $17
    dw   `00031111                                     ;; 07:6603 $1f $10
    dw   `00003212                                     ;; 07:6605 $0a $0d
    dw   `00003123                                     ;; 07:6607 $0d $0b
    dw   `00031130                                     ;; 07:6609 $1e $12
    dw   `00031130                                     ;; 07:660b $1e $12
    dw   `00000000                                     ;; 07:660d $00 $00

    dw   `00000000                                     ;; 07:660f $00 $00
    dw   `33000003                                     ;; 07:6611 $c1 $c1
    dw   `12300003                                     ;; 07:6613 $a1 $61
    dw   `11230032                                     ;; 07:6615 $d2 $33
    dw   `31130031                                     ;; 07:6617 $f3 $92
    dw   `03123031                                     ;; 07:6619 $6b $5a
    dw   `03113321                                     ;; 07:661b $7d $4e
    dw   `00000000                                     ;; 07:661d $00 $00

    dw   `00000000                                     ;; 07:661f $00 $00
    dw   `33300003                                     ;; 07:6621 $e1 $e1
    dw   `11230031                                     ;; 07:6623 $d3 $32
    dw   `11130311                                     ;; 07:6625 $f7 $14
    dw   `13130313                                     ;; 07:6627 $f7 $55
    dw   `33130333                                     ;; 07:6629 $f7 $d7
    dw   `33123003                                     ;; 07:662b $e9 $d9
    dw   `00000000                                     ;; 07:662d $00 $00

    dw   `00000000                                     ;; 07:662f $00 $00
    dw   `33330000                                     ;; 07:6631 $f0 $f0
    dw   `11123000                                     ;; 07:6633 $e8 $18
    dw   `13311300                                     ;; 07:6635 $fc $64
    dw   `13031230                                     ;; 07:6637 $da $56
    dw   `13031130                                     ;; 07:6639 $de $52
    dw   `13031130                                     ;; 07:663b $de $52
    dw   `00000000                                     ;; 07:663d $00 $00

    dw   `00000000                                     ;; 07:663f $00 $00
    dw   `00003333                                     ;; 07:6641 $0f $0f
    dw   `00032111                                     ;; 07:6643 $17 $18
    dw   `00031133                                     ;; 07:6645 $1f $13
    dw   `00031130                                     ;; 07:6647 $1e $12
    dw   `00031123                                     ;; 07:6649 $1d $13
    dw   `00003211                                     ;; 07:664b $0b $0c
    dw   `00000000                                     ;; 07:664d $00 $00

    dw   `00000000                                     ;; 07:664f $00 $00
    dw   `30333333                                     ;; 07:6651 $bf $bf
    dw   `13132111                                     ;; 07:6653 $f7 $58
    dw   `11131131                                     ;; 07:6655 $ff $12
    dw   `31131331                                     ;; 07:6657 $ff $96
    dw   `33333031                                     ;; 07:6659 $fb $fa
    dw   `12300031                                     ;; 07:665b $a3 $62
    dw   `00000000                                     ;; 07:665d $00 $00

    dw   `00000000                                     ;; 07:665f $00 $00
    dw   `33333033                                     ;; 07:6661 $fb $fb
    dw   `11113031                                     ;; 07:6663 $fb $0a
    dw   `13113321                                     ;; 07:6665 $fd $4e
    dw   `13130311                                     ;; 07:6667 $f7 $54
    dw   `13300313                                     ;; 07:6669 $e7 $65
    dw   `13003213                                     ;; 07:666b $cb $4d
    dw   `00000000                                     ;; 07:666d $00 $00

    dw   `00000000                                     ;; 07:666f $00 $00
    dw   `33000333                                     ;; 07:6671 $c7 $c7
    dw   `12303111                                     ;; 07:6673 $af $68
    dw   `11332111                                     ;; 07:6675 $f7 $38
    dw   `31331311                                     ;; 07:6677 $ff $b4
    dw   `31333311                                     ;; 07:6679 $ff $bc
    dw   `31230311                                     ;; 07:667b $d7 $b4
    dw   `00000000                                     ;; 07:667d $00 $00

    dw   `00000000                                     ;; 07:667f $00 $00
    dw   `33333333                                     ;; 07:6681 $ff $ff
    dw   `11112321                                     ;; 07:6683 $f5 $0e
    dw   `33211311                                     ;; 07:6685 $df $e4
    dw   `30311313                                     ;; 07:6687 $bf $a5
    dw   `30311330                                     ;; 07:6689 $be $a6
    dw   `33112300                                     ;; 07:668b $f4 $cc
    dw   `00000000                                     ;; 07:668d $00 $00

    dw   `00000000                                     ;; 07:668f $00 $00
    dw   `33333330                                     ;; 07:6691 $fe $fe
    dw   `11111130                                     ;; 07:6693 $fe $02
    dw   `31131130                                     ;; 07:6695 $fe $92
    dw   `31131300                                     ;; 07:6697 $fc $94
    dw   `31133000                                     ;; 07:6699 $f8 $98
    dw   `31130000                                     ;; 07:669b $f0 $90
    dw   `31111133                                     ;; 07:669d $ff $83

    dw   `31111133                                     ;; 07:669f $ff $83
    dw   `31111133                                     ;; 07:66a1 $ff $83
    dw   `31111133                                     ;; 07:66a3 $ff $83
    dw   `31111133                                     ;; 07:66a5 $ff $83
    dw   `31111113                                     ;; 07:66a7 $ff $81
    dw   `31111113                                     ;; 07:66a9 $ff $81
    dw   `31111113                                     ;; 07:66ab $ff $81
    dw   `00313300                                     ;; 07:66ad $3c $2c

    dw   `00313300                                     ;; 07:66af $3c $2c
    dw   `00313300                                     ;; 07:66b1 $3c $2c
    dw   `00313333                                     ;; 07:66b3 $3f $2f
    dw   `00313311                                     ;; 07:66b5 $3f $2c
    dw   `00313113                                     ;; 07:66b7 $3f $29
    dw   `30311133                                     ;; 07:66b9 $bf $a3
    dw   `30311330                                     ;; 07:66bb $be $a6
    dw   `00311111                                     ;; 07:66bd $3f $20

    dw   `03111111                                     ;; 07:66bf $7f $40
    dw   `31111111                                     ;; 07:66c1 $ff $80
    dw   `11111111                                     ;; 07:66c3 $ff $00
    dw   `33111111                                     ;; 07:66c5 $ff $c0
    dw   `30311113                                     ;; 07:66c7 $bf $a1
    dw   `00031133                                     ;; 07:66c9 $1f $13
    dw   `00003330                                     ;; 07:66cb $0e $0e
    dw   `33331331                                     ;; 07:66cd $ff $f6

    dw   `13113331                                     ;; 07:66cf $ff $4e
    dw   `11133331                                     ;; 07:66d1 $ff $1e
    dw   `11330031                                     ;; 07:66d3 $f3 $32
    dw   `33000031                                     ;; 07:66d5 $c3 $c2
    dw   `30000031                                     ;; 07:66d7 $83 $82
    dw   `00000031                                     ;; 07:66d9 $03 $02
    dw   `00000031                                     ;; 07:66db $03 $02
    dw   `00000000                                     ;; 07:66dd $00 $00

    dw   `00000000                                     ;; 07:66df $00 $00
    dw   `00000000                                     ;; 07:66e1 $00 $00
    dw   `00000000                                     ;; 07:66e3 $00 $00
    dw   `00000000                                     ;; 07:66e5 $00 $00
    dw   `00000000                                     ;; 07:66e7 $00 $00
    dw   `00000000                                     ;; 07:66e9 $00 $00
    dw   `00000000                                     ;; 07:66eb $00 $00
    dw   `00311300                                     ;; 07:66ed $3c $24

    dw   `00311300                                     ;; 07:66ef $3c $24
    dw   `00311333                                     ;; 07:66f1 $3f $27
    dw   `03211111                                     ;; 07:66f3 $5f $60
    dw   `03113332                                     ;; 07:66f5 $7e $4f
    dw   `03333003                                     ;; 07:66f7 $79 $79
    dw   `00000000                                     ;; 07:66f9 $00 $00
    dw   `00000000                                     ;; 07:66fb $00 $00
    dw   `00031130                                     ;; 07:66fd $1e $12

    dw   `33331130                                     ;; 07:66ff $fe $f2
    dw   `21332113                                     ;; 07:6701 $77 $b9
    dw   `11303111                                     ;; 07:6703 $ef $28
    dw   `12300321                                     ;; 07:6705 $a5 $66
    dw   `33000033                                     ;; 07:6707 $c3 $c3
    dw   `00000000                                     ;; 07:6709 $00 $00
    dw   `00000000                                     ;; 07:670b $00 $00
    dw   `03113311                                     ;; 07:670d $7f $4c

    dw   `03113311                                     ;; 07:670f $7f $4c
    dw   `32123213                                     ;; 07:6711 $ab $dd
    dw   `11133113                                     ;; 07:6713 $ff $19
    dw   `12303113                                     ;; 07:6715 $af $69
    dw   `33003333                                     ;; 07:6717 $cf $cf
    dw   `00000000                                     ;; 07:6719 $00 $00
    dw   `00000000                                     ;; 07:671b $00 $00
    dw   `11113003                                     ;; 07:671d $f9 $09

    dw   `33113003                                     ;; 07:671f $f9 $c9
    dw   `03212303                                     ;; 07:6721 $55 $6d
    dw   `00311331                                     ;; 07:6723 $3f $26
    dw   `00311311                                     ;; 07:6725 $3f $24
    dw   `00333333                                     ;; 07:6727 $3f $3f
    dw   `00000000                                     ;; 07:6729 $00 $00
    dw   `00000000                                     ;; 07:672b $00 $00
    dw   `13031130                                     ;; 07:672d $de $52

    dw   `13031130                                     ;; 07:672f $de $52
    dw   `13031130                                     ;; 07:6731 $de $52
    dw   `13321230                                     ;; 07:6733 $ea $76
    dw   `11112300                                     ;; 07:6735 $f4 $0c
    dw   `33333000                                     ;; 07:6737 $f8 $f8
    dw   `00000000                                     ;; 07:6739 $00 $00
    dw   `00000000                                     ;; 07:673b $00 $00
    dw   `00000333                                     ;; 07:673d $07 $07

    dw   `00333000                                     ;; 07:673f $38 $38
    dw   `00312333                                     ;; 07:6741 $37 $2f
    dw   `00311111                                     ;; 07:6743 $3f $20
    dw   `00332111                                     ;; 07:6745 $37 $38
    dw   `00003333                                     ;; 07:6747 $0f $0f
    dw   `00000000                                     ;; 07:6749 $00 $00
    dw   `00000000                                     ;; 07:674b $00 $00
    dw   `21230031                                     ;; 07:674d $53 $b2

    dw   `31130031                                     ;; 07:674f $f3 $92
    dw   `21130031                                     ;; 07:6751 $73 $92
    dw   `11230031                                     ;; 07:6753 $d3 $32
    dw   `12300031                                     ;; 07:6755 $a3 $62
    dw   `33000033                                     ;; 07:6757 $c3 $c3
    dw   `00000000                                     ;; 07:6759 $00 $00
    dw   `00000000                                     ;; 07:675b $00 $00
    dw   `13003111                                     ;; 07:675d $cf $48

    dw   `13003113                                     ;; 07:675f $cf $49
    dw   `13032130                                     ;; 07:6761 $d6 $5a
    dw   `11331130                                     ;; 07:6763 $fe $32
    dw   `11331130                                     ;; 07:6765 $fe $32
    dw   `33333330                                     ;; 07:6767 $fe $fe
    dw   `00000000                                     ;; 07:6769 $00 $00
    dw   `00000000                                     ;; 07:676b $00 $00
    dw   `11130311                                     ;; 07:676d $f7 $14

    dw   `31130311                                     ;; 07:676f $f7 $94
    dw   `32123311                                     ;; 07:6771 $af $dc
    dw   `03113311                                     ;; 07:6773 $7f $4c
    dw   `03113311                                     ;; 07:6775 $7f $4c
    dw   `03333333                                     ;; 07:6777 $7f $7f
    dw   `00000000                                     ;; 07:6779 $00 $00
    dw   `00000000                                     ;; 07:677b $00 $00
    dw   `11223000                                     ;; 07:677d $c8 $38

    dw   `31130000                                     ;; 07:677f $f0 $90
    dw   `33113000                                     ;; 07:6781 $f8 $c8
    dw   `23113300                                     ;; 07:6783 $7c $cc
    dw   `13111130                                     ;; 07:6785 $fe $42
    dw   `30333330                                     ;; 07:6787 $be $be
    dw   `00000000                                     ;; 07:6789 $00 $00
    dw   `00000000                                     ;; 07:678b $00 $00
    dw   `31130000                                     ;; 07:678d $f0 $90

    dw   `31130000                                     ;; 07:678f $f0 $90
    dw   `31130000                                     ;; 07:6791 $f0 $90
    dw   `31113000                                     ;; 07:6793 $f8 $88
    dw   `31113000                                     ;; 07:6795 $f8 $88
    dw   `33333000                                     ;; 07:6797 $f8 $f8
    dw   `00000000                                     ;; 07:6799 $00 $00
    dw   `00000000                                     ;; 07:679b $00 $00
    dw   `03111113                                     ;; 07:679d $7f $41

    dw   `03111111                                     ;; 07:679f $7f $40
    dw   `03111111                                     ;; 07:67a1 $7f $40
    dw   `00311111                                     ;; 07:67a3 $3f $20
    dw   `00311111                                     ;; 07:67a5 $3f $20
    dw   `00031111                                     ;; 07:67a7 $1f $10
    dw   `00003111                                     ;; 07:67a9 $0f $08
    dw   `00000311                                     ;; 07:67ab $07 $04
    dw   `30313300                                     ;; 07:67ad $bc $ac

    dw   `33313300                                     ;; 07:67af $fc $ec
    dw   `33313300                                     ;; 07:67b1 $fc $ec
    dw   `13313300                                     ;; 07:67b3 $fc $6c
    dw   `13313300                                     ;; 07:67b5 $fc $6c
    dw   `11313300                                     ;; 07:67b7 $fc $2c
    dw   `11113300                                     ;; 07:67b9 $fc $0c
    dw   `11111300                                     ;; 07:67bb $fc $04
    dw   `00000000                                     ;; 07:67bd $00 $00

    dw   `00000000                                     ;; 07:67bf $00 $00
    dw   `00000003                                     ;; 07:67c1 $01 $01
    dw   `00000031                                     ;; 07:67c3 $03 $02
    dw   `00000311                                     ;; 07:67c5 $07 $04
    dw   `00003133                                     ;; 07:67c7 $0f $0b
    dw   `00003330                                     ;; 07:67c9 $0e $0e
    dw   `00000000                                     ;; 07:67cb $00 $00
    dw   `03333031                                     ;; 07:67cd $7b $7a

    dw   `31133331                                     ;; 07:67cf $ff $9e
    dw   `11113311                                     ;; 07:67d1 $ff $0c
    dw   `11111111                                     ;; 07:67d3 $ff $00
    dw   `11111111                                     ;; 07:67d5 $ff $00
    dw   `11111111                                     ;; 07:67d7 $ff $00
    dw   `31111111                                     ;; 07:67d9 $ff $80
    dw   `33111111                                     ;; 07:67db $ff $c0
    dw   `00000033                                     ;; 07:67dd $03 $03

    dw   `00000000                                     ;; 07:67df $00 $00
    dw   `00000000                                     ;; 07:67e1 $00 $00
    dw   `00000000                                     ;; 07:67e3 $00 $00
    dw   `00000000                                     ;; 07:67e5 $00 $00
    dw   `00000000                                     ;; 07:67e7 $00 $00
    dw   `00000000                                     ;; 07:67e9 $00 $00
    dw   `00000000                                     ;; 07:67eb $00 $00
    dw   `11111133                                     ;; 07:67ed $ff $03

    dw   `33111111                                     ;; 07:67ef $ff $c0
    dw   `00333111                                     ;; 07:67f1 $3f $38
    dw   `00000333                                     ;; 07:67f3 $07 $07
    dw   `00000000                                     ;; 07:67f5 $00 $00
    dw   `00000000                                     ;; 07:67f7 $00 $00
    dw   `00000000                                     ;; 07:67f9 $00 $00
    dw   `00000000                                     ;; 07:67fb $00 $00
    dw   `33333333                                     ;; 07:67fd $ff $ff

    dw   `11111111                                     ;; 07:67ff $ff $00
    dw   `11111111                                     ;; 07:6801 $ff $00
    dw   `33333333                                     ;; 07:6803 $ff $ff
    dw   `00000000                                     ;; 07:6805 $00 $00
    dw   `00000000                                     ;; 07:6807 $00 $00
    dw   `00000000                                     ;; 07:6809 $00 $00
    dw   `00000000                                     ;; 07:680b $00 $00
    dw   `11131111                                     ;; 07:680d $ff $10

    dw   `11113111                                     ;; 07:680f $ff $08
    dw   `13333331                                     ;; 07:6811 $ff $7e
    dw   `33330003                                     ;; 07:6813 $f1 $f1
    dw   `00000000                                     ;; 07:6815 $00 $00
    dw   `00000000                                     ;; 07:6817 $00 $00
    dw   `00000000                                     ;; 07:6819 $00 $00
    dw   `00000000                                     ;; 07:681b $00 $00
    dw   `00000000                                     ;; 07:681d $00 $00

    dw   `00000000                                     ;; 07:681f $00 $00
    dw   `00000000                                     ;; 07:6821 $00 $00
    dw   `00000000                                     ;; 07:6823 $00 $00
    dw   `00000000                                     ;; 07:6825 $00 $00
    dw   `00000000                                     ;; 07:6827 $00 $00
    dw   `00000000                                     ;; 07:6829 $00 $00
    dw   `00000000                                     ;; 07:682b $00 $00
    dw   `00000000                                     ;; 07:682d $00 $00

    dw   `00000000                                     ;; 07:682f $00 $00
    dw   `00000000                                     ;; 07:6831 $00 $00
    dw   `00000000                                     ;; 07:6833 $00 $00
    dw   `00000000                                     ;; 07:6835 $00 $00
    dw   `00000000                                     ;; 07:6837 $00 $00
    dw   `00000000                                     ;; 07:6839 $00 $00
    dw   `00000000                                     ;; 07:683b $00 $00
    dw   `00000000                                     ;; 07:683d $00 $00

    dw   `00000000                                     ;; 07:683f $00 $00
    dw   `00000000                                     ;; 07:6841 $00 $00
    dw   `00000000                                     ;; 07:6843 $00 $00
    dw   `00000000                                     ;; 07:6845 $00 $00
    dw   `00000000                                     ;; 07:6847 $00 $00
    dw   `00000000                                     ;; 07:6849 $00 $00
    dw   `00000000                                     ;; 07:684b $00 $00
    dw   `00000000                                     ;; 07:684d $00 $00

    dw   `00000000                                     ;; 07:684f $00 $00
    dw   `00000000                                     ;; 07:6851 $00 $00
    dw   `00000000                                     ;; 07:6853 $00 $00
    dw   `00000000                                     ;; 07:6855 $00 $00
    dw   `33000000                                     ;; 07:6857 $c0 $c0
    dw   `13300000                                     ;; 07:6859 $e0 $60
    dw   `11330000                                     ;; 07:685b $f0 $30
    dw   `11113300                                     ;; 07:685d $fc $0c

    dw   `11113300                                     ;; 07:685f $fc $0c
    dw   `11113300                                     ;; 07:6861 $fc $0c
    dw   `11113300                                     ;; 07:6863 $fc $0c
    dw   `11113300                                     ;; 07:6865 $fc $0c
    dw   `11113300                                     ;; 07:6867 $fc $0c
    dw   `11113300                                     ;; 07:6869 $fc $0c
    dw   `11113300                                     ;; 07:686b $fc $0c
    dw   `11113330                                     ;; 07:686d $fe $0e

    dw   `11111133                                     ;; 07:686f $ff $03
    dw   `11111111                                     ;; 07:6871 $ff $00
    dw   `31111111                                     ;; 07:6873 $ff $80
    dw   `03331111                                     ;; 07:6875 $7f $70
    dw   `00003333                                     ;; 07:6877 $0f $0f
    dw   `00000000                                     ;; 07:6879 $00 $00
    dw   `00000000                                     ;; 07:687b $00 $00
    dw   `00000000                                     ;; 07:687d $00 $00

    dw   `00000000                                     ;; 07:687f $00 $00
    dw   `03330000                                     ;; 07:6881 $70 $70
    dw   `31333300                                     ;; 07:6883 $fc $bc
    dw   `11113330                                     ;; 07:6885 $fe $0e
    dw   `11111330                                     ;; 07:6887 $fe $06
    dw   `11113300                                     ;; 07:6889 $fc $0c
    dw   `31113300                                     ;; 07:688b $fc $8c
    dw   `31113300                                     ;; 07:688d $fc $8c

    dw   `31113300                                     ;; 07:688f $fc $8c
    dw   `31113300                                     ;; 07:6891 $fc $8c
    dw   `31111300                                     ;; 07:6893 $fc $84
    dw   `31111330                                     ;; 07:6895 $fe $86
    dw   `31111113                                     ;; 07:6897 $ff $81
    dw   `11111111                                     ;; 07:6899 $ff $00
    dw   `33111113                                     ;; 07:689b $ff $c1
    dw   `33333333                                     ;; 07:689d $ff $ff

    dw   `33333333                                     ;; 07:689f $ff $ff
    dw   `33333333                                     ;; 07:68a1 $ff $ff
    dw   `33333333                                     ;; 07:68a3 $ff $ff
    dw   `33333333                                     ;; 07:68a5 $ff $ff
    dw   `33333333                                     ;; 07:68a7 $ff $ff
    dw   `33333333                                     ;; 07:68a9 $ff $ff
    dw   `33333333                                     ;; 07:68ab $ff $ff
    dw   `00000000                                     ;; 07:68ad $00 $00

    dw   `00000000                                     ;; 07:68af $00 $00
    dw   `00000000                                     ;; 07:68b1 $00 $00
    dw   `00000000                                     ;; 07:68b3 $00 $00
    dw   `00000000                                     ;; 07:68b5 $00 $00
    dw   `00000000                                     ;; 07:68b7 $00 $00
    dw   `00000000                                     ;; 07:68b9 $00 $00
    dw   `00000000                                     ;; 07:68bb $00 $00
    dw   `00000000                                     ;; 07:68bd $00 $00

    dw   `00000000                                     ;; 07:68bf $00 $00
    dw   `00000000                                     ;; 07:68c1 $00 $00
    dw   `00000000                                     ;; 07:68c3 $00 $00
    dw   `00000000                                     ;; 07:68c5 $00 $00
    dw   `00000000                                     ;; 07:68c7 $00 $00
    dw   `00000000                                     ;; 07:68c9 $00 $00
    dw   `00000000                                     ;; 07:68cb $00 $00
    dw   `00000000                                     ;; 07:68cd $00 $00

    dw   `00000000                                     ;; 07:68cf $00 $00
    dw   `00000000                                     ;; 07:68d1 $00 $00
    dw   `00000000                                     ;; 07:68d3 $00 $00
    dw   `00000000                                     ;; 07:68d5 $00 $00
    dw   `00000000                                     ;; 07:68d7 $00 $00
    dw   `00000000                                     ;; 07:68d9 $00 $00
    dw   `00000000                                     ;; 07:68db $00 $00
    dw   `00000000                                     ;; 07:68dd $00 $00

    dw   `00000000                                     ;; 07:68df $00 $00
    dw   `00000000                                     ;; 07:68e1 $00 $00
    dw   `00000000                                     ;; 07:68e3 $00 $00
    dw   `00000000                                     ;; 07:68e5 $00 $00
    dw   `00000000                                     ;; 07:68e7 $00 $00
    dw   `00000000                                     ;; 07:68e9 $00 $00
    dw   `00000000                                     ;; 07:68eb $00 $00
    dw   `00000000                                     ;; 07:68ed $00 $00

    dw   `00000000                                     ;; 07:68ef $00 $00
    dw   `00000000                                     ;; 07:68f1 $00 $00
    dw   `00000000                                     ;; 07:68f3 $00 $00
    dw   `00000000                                     ;; 07:68f5 $00 $00
    dw   `00000000                                     ;; 07:68f7 $00 $00
    dw   `00000000                                     ;; 07:68f9 $00 $00
    dw   `00000000                                     ;; 07:68fb $00 $00
    dw   `00000000                                     ;; 07:68fd $00 $00

    dw   `00000000                                     ;; 07:68ff $00 $00
    dw   `00000000                                     ;; 07:6901 $00 $00
    dw   `00000000                                     ;; 07:6903 $00 $00
    dw   `00000000                                     ;; 07:6905 $00 $00
    dw   `00000000                                     ;; 07:6907 $00 $00
    dw   `00000000                                     ;; 07:6909 $00 $00
    dw   `00000000                                     ;; 07:690b $00 $00
    dw   `00000000                                     ;; 07:690d $00 $00

    dw   `00000000                                     ;; 07:690f $00 $00
    dw   `00000000                                     ;; 07:6911 $00 $00
    dw   `00000000                                     ;; 07:6913 $00 $00
    dw   `00000000                                     ;; 07:6915 $00 $00
    dw   `00000000                                     ;; 07:6917 $00 $00
    dw   `00000000                                     ;; 07:6919 $00 $00
    dw   `00000000                                     ;; 07:691b $00 $00
    dw   `00000000                                     ;; 07:691d $00 $00

    dw   `00000000                                     ;; 07:691f $00 $00
    dw   `00000000                                     ;; 07:6921 $00 $00
    dw   `00000000                                     ;; 07:6923 $00 $00
    dw   `00000000                                     ;; 07:6925 $00 $00
    dw   `00000000                                     ;; 07:6927 $00 $00
    dw   `00000000                                     ;; 07:6929 $00 $00
    dw   `00000000                                     ;; 07:692b $00 $00
    dw   `00000000                                     ;; 07:692d $00 $00

    dw   `00000000                                     ;; 07:692f $00 $00
    dw   `00000000                                     ;; 07:6931 $00 $00
    dw   `00000000                                     ;; 07:6933 $00 $00
    dw   `00000000                                     ;; 07:6935 $00 $00
    dw   `00000000                                     ;; 07:6937 $00 $00
    dw   `00000000                                     ;; 07:6939 $00 $00
    dw   `00000033                                     ;; 07:693b $03 $03
    dw   `00000000                                     ;; 07:693d $00 $00

    dw   `00000000                                     ;; 07:693f $00 $00
    dw   `00000000                                     ;; 07:6941 $00 $00
    dw   `00000000                                     ;; 07:6943 $00 $00
    dw   `00000000                                     ;; 07:6945 $00 $00
    dw   `02320000                                     ;; 07:6947 $20 $70
    dw   `33133000                                     ;; 07:6949 $f8 $d8
    dw   `11113300                                     ;; 07:694b $fc $0c
    dw   `11330000                                     ;; 07:694d $f0 $30

    dw   `11133000                                     ;; 07:694f $f8 $18
    dw   `11133000                                     ;; 07:6951 $f8 $18
    dw   `11113300                                     ;; 07:6953 $fc $0c
    dw   `11113303                                     ;; 07:6955 $fd $0d
    dw   `11113331                                     ;; 07:6957 $ff $0e
    dw   `11113331                                     ;; 07:6959 $ff $0e
    dw   `11113303                                     ;; 07:695b $fd $0d
    dw   `11133000                                     ;; 07:695d $f8 $18

    dw   `11133000                                     ;; 07:695f $f8 $18
    dw   `11333000                                     ;; 07:6961 $f8 $38
    dw   `11330000                                     ;; 07:6963 $f0 $30
    dw   `13300000                                     ;; 07:6965 $e0 $60
    dw   `33000000                                     ;; 07:6967 $c0 $c0
    dw   `13300003                                     ;; 07:6969 $e1 $61
    dw   `11133033                                     ;; 07:696b $fb $1b
    dw   `00000000                                     ;; 07:696d $00 $00

    dw   `00000000                                     ;; 07:696f $00 $00
    dw   `00000000                                     ;; 07:6971 $00 $00
    dw   `00000000                                     ;; 07:6973 $00 $00
    dw   `00000000                                     ;; 07:6975 $00 $00
    dw   `00000000                                     ;; 07:6977 $00 $00
    dw   `00000000                                     ;; 07:6979 $00 $00
    dw   `00000000                                     ;; 07:697b $00 $00
    dw   `31113300                                     ;; 07:697d $fc $8c

    dw   `31113300                                     ;; 07:697f $fc $8c
    dw   `31113300                                     ;; 07:6981 $fc $8c
    dw   `31113300                                     ;; 07:6983 $fc $8c
    dw   `31113300                                     ;; 07:6985 $fc $8c
    dw   `31113300                                     ;; 07:6987 $fc $8c
    dw   `31113300                                     ;; 07:6989 $fc $8c
    dw   `31113300                                     ;; 07:698b $fc $8c
    dw   `00333333                                     ;; 07:698d $3f $3f

    dw   `30000000                                     ;; 07:698f $80 $80
    dw   `13333333                                     ;; 07:6991 $ff $7f
    dw   `11111133                                     ;; 07:6993 $ff $03
    dw   `11111330                                     ;; 07:6995 $fe $06
    dw   `33333000                                     ;; 07:6997 $f8 $f8
    dw   `00000000                                     ;; 07:6999 $00 $00
    dw   `00000000                                     ;; 07:699b $00 $00


data_07_699d:
    db   $19, $3b, $77, $2e, $b4, $01, $08, $09        ;; 07:699d ........
    db   $19, $3b, $3f, $00, $b4, $01, $00, $00        ;; 07:69a5 ........
    db   $19, $3b, $77, $2e, $b4, $01, $00, $00        ;; 07:69ad ........
    db   $19, $3b, $ff, $7f, $31, $46, $00, $00        ;; 07:69b5 ........
    db   $ff, $7f, $77, $2e, $b4, $01, $08, $09        ;; 07:69bd ........
    db   $ff, $7f, $18, $77, $f5, $7e, $00, $7c        ;; 07:69c5 ........
    db   $19, $3b, $00, $74, $00, $5c, $00, $00        ;; 07:69cd ........
    db   $ff, $7f, $b5, $56, $4a, $29, $00, $00        ;; 07:69d5 ........
    db   $a6, $3a, $77, $2e, $b4, $01, $0d, $09        ;; 07:69dd ........
    db   $a6, $3a, $3f, $00, $b4, $01, $00, $00        ;; 07:69e5 ........
    db   $a6, $3a, $77, $2e, $b4, $01, $00, $00        ;; 07:69ed ........
    db   $a6, $3a, $ff, $7f, $31, $46, $00, $00        ;; 07:69f5 ........
    db   $a6, $3a, $3f, $53, $db, $01, $00, $00        ;; 07:69fd ........
    db   $a6, $3a, $3f, $53, $27, $65, $00, $00        ;; 07:6a05 ........
    db   $a6, $3a, $ff, $7f, $cc, $45, $00, $00        ;; 07:6a0d ........
    db   $ff, $7f, $73, $76, $69, $7d, $a5, $7c        ;; 07:6a15 ........

data_07_6a1d:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a1d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a25 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a2d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a35 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a3d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a45 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a4d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a55 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a5d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a65 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a6d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a75 ........
    db   $00, $00, $00, $00, $cd, $3a, $3b, $3c        ;; 07:6a7d ........
    db   $6b, $00, $00, $00, $00, $79, $7a, $00        ;; 07:6a85 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a8d ........
    db   $40, $41, $42, $43, $7b, $6e, $00, $00        ;; 07:6a95 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6a9d ........
    db   $dc, $dd, $de, $df, $50, $51, $52, $53        ;; 07:6aa5 ........
    db   $6c, $7e, $00, $00, $00, $00, $00, $00        ;; 07:6aad ........
    db   $00, $00, $00, $00, $ec, $ed, $ee, $ef        ;; 07:6ab5 ........
    db   $60, $61, $62, $63, $7c, $6f, $00, $00        ;; 07:6abd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ac5 ........
    db   $fc, $fd, $fe, $ff, $64, $65, $66, $67        ;; 07:6acd ........
    db   $6d, $7f, $00, $00, $00, $00, $00, $00        ;; 07:6ad5 ........
    db   $00, $00, $00, $00, $0c, $0d, $0e, $0f        ;; 07:6add ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ae5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6aed ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6af5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6afd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b05 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b0d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b15 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b1d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b25 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b2d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b35 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b3d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b45 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b4d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b55 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b5d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b65 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b6d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b75 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b7d ........

data_07_6b85:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b85 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b8d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b95 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6b9d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ba5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bad ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bb5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bbd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bc5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bcd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bd5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bdd ........
    db   $00, $00, $00, $00, $01, $01, $01, $01        ;; 07:6be5 ........
    db   $01, $00, $00, $00, $00, $01, $01, $00        ;; 07:6bed ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6bf5 ........
    db   $01, $01, $01, $01, $01, $01, $00, $00        ;; 07:6bfd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c05 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6c0d ........
    db   $01, $01, $00, $00, $00, $00, $00, $00        ;; 07:6c15 ........
    db   $00, $00, $00, $00, $01, $01, $01, $01        ;; 07:6c1d ........
    db   $01, $01, $01, $01, $01, $01, $00, $00        ;; 07:6c25 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c2d ........
    db   $01, $01, $01, $01, $00, $01, $01, $01        ;; 07:6c35 ........
    db   $01, $01, $00, $00, $00, $00, $00, $00        ;; 07:6c3d ........
    db   $00, $00, $00, $00, $01, $01, $01, $01        ;; 07:6c45 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c4d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c55 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c5d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c65 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c6d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c75 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c7d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c85 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c8d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c95 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6c9d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ca5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cad ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cb5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cbd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cc5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ccd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cd5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cdd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ce5 ........

data_07_6ced:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6ced ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cf5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6cfd ........
    db   $00, $00, $82, $83, $84, $85, $86, $87        ;; 07:6d05 ........
    db   $88, $89, $00, $00, $00, $00, $00, $00        ;; 07:6d0d ........
    db   $00, $00, $00, $00, $00, $91, $92, $93        ;; 07:6d15 ........
    db   $94, $95, $96, $97, $98, $99, $9a, $00        ;; 07:6d1d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6d25 ........
    db   $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7        ;; 07:6d2d ........
    db   $a8, $a9, $aa, $ab, $00, $00, $00, $00        ;; 07:6d35 ........
    db   $00, $00, $00, $00, $b0, $b1, $b2, $b3        ;; 07:6d3d ........
    db   $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb        ;; 07:6d45 ........
    db   $00, $00, $00, $00, $cd, $3a, $3b, $3c        ;; 07:6d4d ........
    db   $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7        ;; 07:6d55 ........
    db   $c8, $c9, $ca, $cb, $00, $00, $00, $00        ;; 07:6d5d ........
    db   $40, $41, $42, $43, $d0, $d1, $d2, $d3        ;; 07:6d65 ........
    db   $d4, $d5, $d6, $d7, $d8, $d9, $da, $db        ;; 07:6d6d ........
    db   $dc, $dd, $de, $df, $50, $51, $52, $53        ;; 07:6d75 ........
    db   $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7        ;; 07:6d7d ........
    db   $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef        ;; 07:6d85 ........
    db   $60, $61, $62, $63, $f0, $f1, $f2, $f3        ;; 07:6d8d ........
    db   $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb        ;; 07:6d95 ........
    db   $fc, $fd, $fe, $ff, $64, $65, $66, $67        ;; 07:6d9d ........
    db   $80, $01, $02, $03, $04, $05, $06, $07        ;; 07:6da5 ........
    db   $08, $09, $0a, $0b, $0c, $0d, $0e, $0f        ;; 07:6dad ........
    db   $00, $00, $00, $00, $10, $11, $12, $13        ;; 07:6db5 ........
    db   $14, $15, $16, $17, $18, $19, $1a, $1b        ;; 07:6dbd ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6dc5 ........
    db   $00, $21, $22, $23, $24, $25, $26, $27        ;; 07:6dcd ........
    db   $28, $29, $2a, $00, $00, $00, $00, $00        ;; 07:6dd5 ........
    db   $00, $00, $00, $00, $00, $00, $32, $33        ;; 07:6ddd ........
    db   $34, $35, $36, $37, $38, $39, $00, $00        ;; 07:6de5 ........
    db   $00, $00, $00, $00, $00, $00, $00, $4a        ;; 07:6ded ........
    db   $4b, $4c, $4d, $4e, $4f, $00, $00, $45        ;; 07:6df5 ........
    db   $46, $47, $48, $49, $00, $00, $00, $00        ;; 07:6dfd ........
    db   $00, $00, $00, $5a, $5b, $5c, $5d, $5e        ;; 07:6e05 ........
    db   $5f, $00, $00, $55, $56, $57, $58, $59        ;; 07:6e0d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6e15 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6e1d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6e25 ........
    db   $00, $8b, $8c, $8d, $8e, $8f, $9b, $9c        ;; 07:6e2d ........
    db   $9d, $9e, $9f, $ac, $ad, $ae, $af, $bc        ;; 07:6e35 ........
    db   $bd, $be, $bf, $cc, $00, $00, $81, $90        ;; 07:6e3d ........
    db   $20, $30, $31, $1c, $1d, $1e, $1f, $2b        ;; 07:6e45 ........
    db   $2c, $2d, $2e, $2f, $ce, $cf, $00, $00        ;; 07:6e4d ........

data_07_6e55:
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6e55 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6e5d ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6e65 ........
    db   $10, $10, $00, $00, $00, $00, $00, $00        ;; 07:6e6d ........
    db   $00, $00, $10, $10, $10, $10, $10, $10        ;; 07:6e75 ........
    db   $10, $10, $10, $10, $10, $00, $00, $00        ;; 07:6e7d ........
    db   $00, $00, $00, $00, $00, $00, $00, $10        ;; 07:6e85 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6e8d ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:6e95 ........
    db   $00, $00, $00, $00, $10, $10, $10, $10        ;; 07:6e9d ........
    db   $10, $10, $10, $10, $00, $00, $00, $00        ;; 07:6ea5 ........
    db   $00, $00, $00, $00, $00, $04, $00, $00        ;; 07:6ead ........
    db   $10, $10, $10, $10, $01, $01, $01, $01        ;; 07:6eb5 ........
    db   $01, $00, $00, $00, $00, $00, $01, $00        ;; 07:6ebd ........
    db   $00, $00, $04, $00, $10, $10, $10, $10        ;; 07:6ec5 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6ecd ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6ed5 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6edd ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6ee5 ........
    db   $00, $01, $01, $01, $01, $01, $01, $01        ;; 07:6eed ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6ef5 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:6efd ........
    db   $01, $01, $01, $01, $00, $01, $01, $01        ;; 07:6f05 ........
    db   $01, $01, $00, $00, $00, $01, $00, $01        ;; 07:6f0d ........
    db   $00, $01, $01, $01, $01, $01, $01, $01        ;; 07:6f15 ........
    db   $10, $10, $10, $10, $00, $02, $02, $02        ;; 07:6f1d ........
    db   $02, $02, $02, $02, $02, $02, $02, $00        ;; 07:6f25 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6f2d ........
    db   $10, $00, $00, $00, $00, $00, $00, $00        ;; 07:6f35 ........
    db   $00, $00, $00, $10, $10, $10, $10, $10        ;; 07:6f3d ........
    db   $10, $10, $10, $10, $10, $10, $00, $00        ;; 07:6f45 ........
    db   $00, $00, $00, $00, $00, $00, $10, $10        ;; 07:6f4d ........
    db   $10, $10, $10, $10, $10, $10, $10, $03        ;; 07:6f55 ........
    db   $03, $03, $03, $03, $03, $10, $10, $03        ;; 07:6f5d ........
    db   $03, $03, $03, $03, $10, $10, $10, $10        ;; 07:6f65 ........
    db   $10, $10, $10, $03, $03, $03, $03, $03        ;; 07:6f6d ........
    db   $03, $10, $10, $03, $03, $03, $03, $03        ;; 07:6f75 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6f7d ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6f85 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:6f8d ........
    db   $10, $03, $03, $03, $03, $03, $03, $03        ;; 07:6f95 ........
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 07:6f9d ........
    db   $03, $03, $03, $03, $10, $10, $03, $03        ;; 07:6fa5 ........
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 07:6fad ........
    db   $03, $03, $03, $03, $03, $03, $10, $10        ;; 07:6fb5 ........

data_07_6fbd:
    db   $06, $06, $06, $06, $06, $06, $00, $00        ;; 07:6fbd ........
    db   $03, $03, $03, $03, $03, $06, $06, $06        ;; 07:6fc5 ........
    db   $06, $06, $06, $00, $00, $03, $03, $03        ;; 07:6fcd ........
    db   $03, $03                                      ;; 07:6fd5 ..

data_07_6fd7:
    db   $03, $03, $03, $03, $03, $03, $00, $00        ;; 07:6fd7 ........
    db   $06, $06, $06, $06, $06, $03, $03, $03        ;; 07:6fdf ........
    db   $03, $03, $03, $00, $00, $06, $06, $06        ;; 07:6fe7 ........
    db   $06, $06                                      ;; 07:6fef ..

data_07_6ff1:
    db   $30, $68, $36, $07, $28, $70, $38, $07        ;; 07:6ff1 ........
    db   $38, $70, $3c, $07, $28, $78, $3a, $07        ;; 07:6ff9 ........
    db   $38, $78, $3e, $07                            ;; 07:7001 ....

data_07_7005:
    db   $00, $00, $00, $01, $00, $08, $02, $01        ;; 07:7005 ........
    db   $00, $10, $04, $01, $00, $18, $06, $01        ;; 07:700d ........
    db   $00, $20, $08, $01, $00, $28, $0a, $01        ;; 07:7015 ........
    db   $00, $30, $0c, $01, $00, $38, $0e, $01        ;; 07:701d ........
    db   $00, $40, $10, $01, $00, $48, $12, $01        ;; 07:7025 ........
    db   $10, $00, $14, $01, $10, $08, $16, $01        ;; 07:702d ........
    db   $10, $10, $18, $01, $10, $18, $1a, $01        ;; 07:7035 ........
    db   $10, $20, $1c, $01, $10, $28, $1e, $01        ;; 07:703d ........
    db   $10, $30, $20, $01, $10, $38, $22, $01        ;; 07:7045 ........
    db   $10, $40, $24, $01, $10, $48, $26, $01        ;; 07:704d ........

data_07_7055:
    db   $00, $00, $28, $16, $00, $08, $2a, $16        ;; 07:7055 ........

data_07_705d:
    db   $c9, $98, $ca, $98, $ea, $98, $e9, $98        ;; 07:705d ????????
    db   $e8, $98, $c8, $98, $a8, $98, $a9, $98        ;; 07:7065 ????????
    db   $aa, $98, $ab, $98, $cb, $98, $eb, $98        ;; 07:706d ????????
    db   $0b, $99, $0a, $99, $09, $99, $08, $99        ;; 07:7075 ????????
    db   $07, $99, $e7, $98, $c7, $98, $a7, $98        ;; 07:707d ????????
    db   $87, $98, $88, $98, $89, $98, $8a, $98        ;; 07:7085 ????????
    db   $8b, $98, $8c, $98, $ac, $98, $cc, $98        ;; 07:708d ????????
    db   $ec, $98, $0c, $99, $2c, $99, $2b, $99        ;; 07:7095 ????????
    db   $2a, $99, $29, $99, $28, $99, $27, $99        ;; 07:709d ????????
    db   $26, $99, $06, $99, $e6, $98, $c6, $98        ;; 07:70a5 ????????
    db   $a6, $98, $86, $98, $66, $98, $67, $98        ;; 07:70ad ????????
    db   $68, $98, $69, $98, $6a, $98, $6b, $98        ;; 07:70b5 ????????
    db   $6c, $98, $6d, $98, $8d, $98, $ad, $98        ;; 07:70bd ????????
    db   $cd, $98, $ed, $98, $0d, $99, $2d, $99        ;; 07:70c5 ????????
    db   $4d, $99, $4c, $99, $4b, $99, $4a, $99        ;; 07:70cd ????????
    db   $49, $99, $48, $99, $47, $99, $46, $99        ;; 07:70d5 ????????
    db   $45, $99, $25, $99, $05, $99, $e5, $98        ;; 07:70dd ????????
    db   $c5, $98, $a5, $98, $85, $98, $65, $98        ;; 07:70e5 ????????
    db   $45, $98, $46, $98, $47, $98, $48, $98        ;; 07:70ed ????????
    db   $49, $98, $4a, $98, $4b, $98, $4c, $98        ;; 07:70f5 ????????
    db   $4d, $98, $4e, $98, $6e, $98, $8e, $98        ;; 07:70fd ????????
    db   $ae, $98, $ce, $98, $ee, $98, $0e, $99        ;; 07:7105 ????????
    db   $2e, $99, $4e, $99, $6e, $99, $6d, $99        ;; 07:710d ????????
    db   $6c, $99, $6b, $99, $6a, $99, $69, $99        ;; 07:7115 ????????
    db   $68, $99, $67, $99, $66, $99, $65, $99        ;; 07:711d ????????
    db   $64, $99, $44, $99, $24, $99, $04, $99        ;; 07:7125 ????????
    db   $e4, $98, $c4, $98, $a4, $98, $84, $98        ;; 07:712d ????????
    db   $64, $98, $44, $98, $24, $98, $25, $98        ;; 07:7135 ????????
    db   $26, $98, $27, $98, $28, $98, $29, $98        ;; 07:713d ????????
    db   $2a, $98, $2b, $98, $2c, $98, $2d, $98        ;; 07:7145 ????????
    db   $2e, $98, $2f, $98, $4f, $98, $6f, $98        ;; 07:714d ????????
    db   $8f, $98, $af, $98, $cf, $98, $ef, $98        ;; 07:7155 ????????
    db   $0f, $99, $2f, $99, $4f, $99, $6f, $99        ;; 07:715d ????????
    db   $8f, $99, $8e, $99, $8d, $99, $8c, $99        ;; 07:7165 ????????
    db   $8b, $99, $8a, $99, $89, $99, $88, $99        ;; 07:716d ????????
    db   $87, $99, $86, $99, $85, $99, $84, $99        ;; 07:7175 ????????
    db   $83, $99, $63, $99, $43, $99, $23, $99        ;; 07:717d ????????
    db   $03, $99, $e3, $98, $c3, $98, $a3, $98        ;; 07:7185 ????????
    db   $83, $98, $63, $98, $43, $98, $23, $98        ;; 07:718d ????????
    db   $03, $98, $04, $98, $05, $98, $06, $98        ;; 07:7195 ????????
    db   $07, $98, $08, $98, $09, $98, $0a, $98        ;; 07:719d ????????
    db   $0b, $98, $0c, $98, $0d, $98, $0e, $98        ;; 07:71a5 ????????
    db   $0f, $98, $10, $98, $30, $98, $50, $98        ;; 07:71ad ????????
    db   $70, $98, $90, $98, $b0, $98, $d0, $98        ;; 07:71b5 ????????
    db   $f0, $98, $10, $99, $30, $99, $50, $99        ;; 07:71bd ????????
    db   $70, $99, $90, $99, $b0, $99, $af, $99        ;; 07:71c5 ????????
    db   $ae, $99, $ad, $99, $ac, $99, $ab, $99        ;; 07:71cd ????????
    db   $aa, $99, $a9, $99, $a8, $99, $a7, $99        ;; 07:71d5 ????????
    db   $a6, $99, $a5, $99, $a4, $99, $a3, $99        ;; 07:71dd ????????
    db   $a2, $99, $82, $99, $62, $99, $42, $99        ;; 07:71e5 ????????
    db   $22, $99, $02, $99, $e2, $98, $c2, $98        ;; 07:71ed ????????
    db   $a2, $98, $82, $98, $62, $98, $42, $98        ;; 07:71f5 ????????
    db   $22, $98, $02, $98, $11, $98, $31, $98        ;; 07:71fd ????????
    db   $51, $98, $71, $98, $91, $98, $b1, $98        ;; 07:7205 ????????
    db   $d1, $98, $f1, $98, $11, $99, $31, $99        ;; 07:720d ????????
    db   $51, $99, $71, $99, $91, $99, $b1, $99        ;; 07:7215 ????????
    db   $d1, $99, $d0, $99, $cf, $99, $ce, $99        ;; 07:721d ????????
    db   $cd, $99, $cc, $99, $cb, $99, $ca, $99        ;; 07:7225 ????????
    db   $c9, $99, $c8, $99, $c7, $99, $c6, $99        ;; 07:722d ????????
    db   $c5, $99, $c4, $99, $c3, $99, $c2, $99        ;; 07:7235 ????????
    db   $c1, $99, $a1, $99, $81, $99, $61, $99        ;; 07:723d ????????
    db   $41, $99, $21, $99, $01, $99, $e1, $98        ;; 07:7245 ????????
    db   $c1, $98, $a1, $98, $81, $98, $61, $98        ;; 07:724d ????????
    db   $41, $98, $21, $98, $01, $98, $12, $98        ;; 07:7255 ????????
    db   $32, $98, $52, $98, $72, $98, $92, $98        ;; 07:725d ????????
    db   $b2, $98, $d2, $98, $f2, $98, $12, $99        ;; 07:7265 ????????
    db   $32, $99, $52, $99, $72, $99, $92, $99        ;; 07:726d ????????
    db   $b2, $99, $d2, $99, $f2, $99, $f1, $99        ;; 07:7275 ????????
    db   $f0, $99, $ef, $99, $ee, $99, $ed, $99        ;; 07:727d ????????
    db   $ec, $99, $eb, $99, $ea, $99, $e9, $99        ;; 07:7285 ????????
    db   $e8, $99, $e7, $99, $e6, $99, $e5, $99        ;; 07:728d ????????
    db   $e4, $99, $e3, $99, $e2, $99, $e1, $99        ;; 07:7295 ????????
    db   $e0, $99, $c0, $99, $a0, $99, $80, $99        ;; 07:729d ????????
    db   $60, $99, $40, $99, $20, $99, $00, $99        ;; 07:72a5 ????????
    db   $e0, $98, $c0, $98, $a0, $98, $80, $98        ;; 07:72ad ????????
    db   $60, $98, $40, $98, $20, $98, $00, $98        ;; 07:72b5 ????????
    db   $13, $98, $33, $98, $53, $98, $73, $98        ;; 07:72bd ????????
    db   $93, $98, $b3, $98, $d3, $98, $f3, $98        ;; 07:72c5 ????????
    db   $13, $99, $33, $99, $53, $99, $73, $99        ;; 07:72cd ????????
    db   $93, $99, $b3, $99, $d3, $99, $f3, $99        ;; 07:72d5 ????????
    db   $13, $9a, $12, $9a, $11, $9a, $10, $9a        ;; 07:72dd ????????
    db   $0f, $9a, $0e, $9a, $0d, $9a, $0c, $9a        ;; 07:72e5 ????????
    db   $0b, $9a, $0a, $9a, $09, $9a, $08, $9a        ;; 07:72ed ????????
    db   $07, $9a, $06, $9a, $05, $9a, $04, $9a        ;; 07:72f5 ????????
    db   $03, $9a, $02, $9a, $01, $9a, $00, $9a        ;; 07:72fd ????????
    db   $33, $9a, $32, $9a, $31, $9a, $30, $9a        ;; 07:7305 ????????
    db   $2f, $9a, $2e, $9a, $2d, $9a, $2c, $9a        ;; 07:730d ????????
    db   $2b, $9a, $2a, $9a, $29, $9a, $28, $9a        ;; 07:7315 ????????
    db   $27, $9a, $26, $9a, $25, $9a, $24, $9a        ;; 07:731d ????????
    db   $23, $9a, $22, $9a, $21, $9a, $20, $9a        ;; 07:7325 ????????

data_07_732d:
    db   $98, $98, $98, $98, $9a, $6c, $6e, $75        ;; 07:732d ........
    db   $7d, $75, $6a, $77, $6d, $9a, $fe, $fe        ;; 07:7335 ........
    db   $fe, $6a, $77, $98, $72, $7c, $75, $6a        ;; 07:733d ........
    db   $77, $6d, $98, $80, $71, $6e, $7b, $6e        ;; 07:7345 ........
    db   $fe, $fe, $76, $6a, $70, $72, $6c, $6a        ;; 07:734d ........
    db   $75, $98, $7c, $79, $72, $7b, $72, $7d        ;; 07:7355 ........
    db   $7c, $fe, $fe, $6a, $6b, $78, $7e, $77        ;; 07:735d ........
    db   $6d, $a1, $a1, $a1, $fe, $fe, $fe, $fe        ;; 07:7365 ........
    db   $6a, $98, $75, $6a, $77, $6d, $98, $78        ;; 07:736d ........
    db   $6f, $fe, $fe, $6f, $7b, $72, $6e, $77        ;; 07:7375 ........
    db   $6d, $75, $82, $a2, $fe, $fe, $6c, $78        ;; 07:737d ........
    db   $77, $7d, $6e, $77, $7d, $6e, $6d, $98        ;; 07:7385 ........
    db   $79, $6e, $78, $79, $75, $6e, $fe, $fe        ;; 07:738d ........
    db   $80, $71, $78, $98, $78, $80, $6e, $98        ;; 07:7395 ........
    db   $7d, $71, $6e, $72, $7b, $fe, $fe, $79        ;; 07:739d ........
    db   $75, $6e, $6a, $7c, $6a, $77, $7d, $98        ;; 07:73a5 ........
    db   $75, $72, $7f, $6e, $7c, $fe, $fe, $7d        ;; 07:73ad ........
    db   $78, $98, $7d, $71, $6e, $98, $6f, $78        ;; 07:73b5 ........
    db   $7e, $7b, $fe, $fe, $7c, $79, $72, $7b        ;; 07:73bd ........
    db   $72, $7d, $7c, $92, $92, $92, $98, $80        ;; 07:73c5 ........
    db   $72, $77, $6d, $a2, $fe, $fe, $80, $6a        ;; 07:73cd ........
    db   $7d, $6e, $7b, $a2, $98, $6e, $6a, $7b        ;; 07:73d5 ........
    db   $7d, $71, $a2, $98, $6a, $77, $6d, $fe        ;; 07:73dd ........
    db   $fe, $6f, $72, $7b, $6e, $a1, $fe, $fe        ;; 07:73e5 ........
    db   $fe, $fe, $6a, $98, $6b, $6e, $6a, $7e        ;; 07:73ed ........
    db   $7d, $72, $6f, $7e, $75, $a2, $fe, $fe        ;; 07:73f5 ........
    db   $7b, $72, $6c, $71, $98, $75, $6a, $77        ;; 07:73fd ........
    db   $6d, $98, $78, $6f, $98, $7d, $6a, $75        ;; 07:7405 ........
    db   $75, $fe, $fe, $76, $78, $7e, $77, $7d        ;; 07:740d ........
    db   $6a, $72, $77, $7c, $a2, $98, $6c, $75        ;; 07:7415 ........
    db   $6e, $6a, $7b, $fe, $fe, $80, $6a, $7d        ;; 07:741d ........
    db   $6e, $7b, $7c, $a2, $98, $6a, $77, $6d        ;; 07:7425 ........
    db   $98, $6f, $7b, $6e, $7c, $71, $fe, $fe        ;; 07:742d ........
    db   $6b, $7b, $6e, $6e, $83, $6e, $7c, $92        ;; 07:7435 ........
    db   $92, $92, $98, $74, $77, $78, $80, $77        ;; 07:743d ........
    db   $fe, $fe, $7d, $78, $98, $72, $77, $71        ;; 07:7445 ........
    db   $6a, $6b, $72, $7d, $6a, $77, $7d, $7c        ;; 07:744d ........
    db   $98, $6a, $7c, $fe, $fe, $b3, $6c, $6e        ;; 07:7455 ........
    db   $75, $7d, $75, $6a, $77, $6d, $a2, $fe        ;; 07:745d ........
    db   $fe, $7d, $71, $6e, $98, $72, $7c, $75        ;; 07:7465 ........
    db   $6e, $7c, $98, $78, $6f, $fe, $fe, $6b        ;; 07:746d ........
    db   $6e, $77, $6e, $7f, $78, $75, $6e, $77        ;; 07:7475 ........
    db   $7d, $98, $fe, $fe, $7c, $79, $72, $7b        ;; 07:747d ........
    db   $72, $7d, $7c, $b2, $a1, $fe, $fe, $fe        ;; 07:7485 ........
    db   $fe, $7d, $71, $72, $7c, $98, $72, $7c        ;; 07:748d ........
    db   $98, $7d, $71, $6e, $98, $6a, $6b, $78        ;; 07:7495 ........
    db   $6d, $6e, $fe, $fe, $78, $6f, $98, $76        ;; 07:749d ........
    db   $6a, $70, $72, $6c, $72, $6a, $77, $7c        ;; 07:74a5 ........
    db   $98, $80, $71, $78, $fe, $fe, $71, $6a        ;; 07:74ad ........
    db   $7f, $6e, $98, $6b, $6e, $6c, $78, $76        ;; 07:74b5 ........
    db   $6e, $fe, $fe, $79, $78, $80, $6e, $7b        ;; 07:74bd ........
    db   $6f, $7e, $75, $98, $7d, $71, $7b, $78        ;; 07:74c5 ........
    db   $7e, $70, $71, $fe, $fe, $6a, $98, $79        ;; 07:74cd ........
    db   $6a, $6c, $7d, $98, $80, $72, $7d, $71        ;; 07:74d5 ........
    db   $98, $7d, $71, $6e, $fe, $fe, $7c, $79        ;; 07:74dd ........
    db   $72, $7b, $72, $7d, $7c, $a1, $98, $98        ;; 07:74e5 ........
    db   $7d, $71, $6e, $7b, $6e, $fe, $fe, $6a        ;; 07:74ed ........
    db   $7b, $6e, $98, $6a, $79, $79, $7b, $6e        ;; 07:74f5 ........
    db   $77, $7d, $72, $6c, $6e, $7c, $fe, $fe        ;; 07:74fd ........
    db   $72, $77, $98, $7d, $71, $6e, $98, $76        ;; 07:7505 ........
    db   $6e, $75, $7b, $78, $6d, $6e, $fe, $fe        ;; 07:750d ........
    db   $76, $78, $77, $6a, $7c, $7d, $6e, $7b        ;; 07:7515 ........
    db   $82, $a2, $98, $6a, $76, $78, $77, $70        ;; 07:751d ........
    db   $fe, $fe, $7d, $71, $6e, $76, $98, $7d        ;; 07:7525 ........
    db   $71, $6e, $98, $82, $78, $7e, $77, $70        ;; 07:752d ........
    db   $fe, $fe, $6a, $79, $79, $7b, $6e, $77        ;; 07:7535 ........
    db   $7d, $72, $6c, $6e, $a2, $98, $6b, $7b        ;; 07:753d ........
    db   $72, $6a, $77, $a1, $fe, $fe, $fe, $fe        ;; 07:7545 ........
    db   $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe        ;; 07:754d ........
    db   $fe, $fe, $ff, $00, $00, $00, $00, $00        ;; 07:7555 ...?????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:755d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:7565 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:756d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:7575 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:757d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:7585 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:758d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:7595 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:759d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75a5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75ad ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75b5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75bd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75c5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75cd ????????
    db   $00, $00, $82, $83, $84, $85, $86, $87        ;; 07:75d5 ????????
    db   $88, $89, $00, $00, $00, $00, $00, $00        ;; 07:75dd ????????
    db   $00, $00, $00, $00, $00, $91, $92, $93        ;; 07:75e5 ????????
    db   $94, $95, $96, $97, $98, $99, $9a, $00        ;; 07:75ed ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:75f5 ????????
    db   $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7        ;; 07:75fd ????????
    db   $a8, $a9, $aa, $ab, $00, $00, $00, $00        ;; 07:7605 ????????
    db   $00, $00, $00, $00, $b0, $b1, $b2, $b3        ;; 07:760d ????????
    db   $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb        ;; 07:7615 ????????
    db   $00, $00, $00, $00, $cd, $3a, $3b, $3c        ;; 07:761d ????????
    db   $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7        ;; 07:7625 ????????
    db   $c8, $c9, $ca, $cb, $00, $00, $00, $00        ;; 07:762d ????????
    db   $40, $41, $42, $43, $d0, $d1, $d2, $d3        ;; 07:7635 ????????
    db   $d4, $d5, $d6, $d7, $d8, $d9, $da, $db        ;; 07:763d ????????
    db   $dc, $dd, $de, $df, $50, $51, $52, $53        ;; 07:7645 ????????
    db   $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7        ;; 07:764d ????????
    db   $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef        ;; 07:7655 ????????
    db   $60, $61, $62, $63, $f0, $f1, $f2, $f3        ;; 07:765d ????????
    db   $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb        ;; 07:7665 ????????
    db   $fc, $fd, $fe, $ff, $64, $65, $66, $67        ;; 07:766d ????????
    db   $80, $01, $02, $03, $04, $05, $06, $07        ;; 07:7675 ????????
    db   $08, $09, $0a, $0b, $0c, $0d, $0e, $0f        ;; 07:767d ????????
    db   $00, $00, $00, $00, $10, $11, $12, $13        ;; 07:7685 ????????
    db   $14, $15, $16, $17, $18, $19, $1a, $1b        ;; 07:768d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:7695 ????????
    db   $00, $21, $22, $23, $24, $25, $26, $27        ;; 07:769d ????????
    db   $28, $29, $2a, $00, $00, $00, $00, $00        ;; 07:76a5 ????????
    db   $00, $00, $00, $00, $00, $00, $32, $33        ;; 07:76ad ????????
    db   $34, $35, $36, $37, $38, $39, $00, $00        ;; 07:76b5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $4a        ;; 07:76bd ????????
    db   $4b, $4c, $4d, $4e, $4f, $00, $00, $45        ;; 07:76c5 ????????
    db   $46, $47, $48, $49, $00, $00, $00, $00        ;; 07:76cd ????????
    db   $00, $00, $00, $5a, $5b, $5c, $5d, $5e        ;; 07:76d5 ????????
    db   $5f, $00, $00, $55, $56, $57, $58, $59        ;; 07:76dd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:76e5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:76ed ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:76f5 ????????
    db   $00, $8b, $8c, $8d, $8e, $8f, $9b, $9c        ;; 07:76fd ????????
    db   $9d, $9e, $9f, $ac, $ad, $ae, $af, $bc        ;; 07:7705 ????????
    db   $bd, $be, $bf, $cc, $00, $00, $81, $90        ;; 07:770d ????????
    db   $20, $30, $31, $1c, $1d, $1e, $1f, $2b        ;; 07:7715 ????????
    db   $2c, $2d, $2e, $2f, $ce, $cf, $00, $00        ;; 07:771d ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:7725 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:772d ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:7735 ????????
    db   $10, $10, $00, $00, $00, $00, $00, $00        ;; 07:773d ????????
    db   $00, $00, $10, $10, $10, $10, $10, $10        ;; 07:7745 ????????
    db   $10, $10, $10, $10, $10, $00, $00, $00        ;; 07:774d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $10        ;; 07:7755 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:775d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 07:7765 ????????
    db   $00, $00, $00, $00, $10, $10, $10, $10        ;; 07:776d ????????
    db   $10, $10, $10, $10, $00, $00, $00, $00        ;; 07:7775 ????????
    db   $00, $00, $00, $00, $00, $04, $00, $00        ;; 07:777d ????????
    db   $10, $10, $10, $10, $01, $01, $01, $01        ;; 07:7785 ????????
    db   $01, $00, $00, $00, $00, $00, $01, $00        ;; 07:778d ????????
    db   $00, $00, $04, $00, $10, $10, $10, $10        ;; 07:7795 ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:779d ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:77a5 ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:77ad ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:77b5 ????????
    db   $00, $01, $01, $01, $01, $01, $01, $01        ;; 07:77bd ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:77c5 ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 07:77cd ????????
    db   $01, $01, $01, $01, $00, $01, $01, $01        ;; 07:77d5 ????????
    db   $01, $01, $00, $00, $00, $01, $00, $01        ;; 07:77dd ????????
    db   $00, $01, $01, $01, $01, $01, $01, $01        ;; 07:77e5 ????????
    db   $10, $10, $10, $10, $00, $02, $02, $02        ;; 07:77ed ????????
    db   $02, $02, $02, $02, $02, $02, $02, $00        ;; 07:77f5 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:77fd ????????
    db   $10, $00, $00, $00, $00, $00, $00, $00        ;; 07:7805 ????????
    db   $00, $00, $00, $10, $10, $10, $10, $10        ;; 07:780d ????????
    db   $10, $10, $10, $10, $10, $10, $00, $00        ;; 07:7815 ????????
    db   $00, $00, $00, $00, $00, $00, $10, $10        ;; 07:781d ????????
    db   $10, $10, $10, $10, $10, $10, $10, $03        ;; 07:7825 ????????
    db   $03, $03, $03, $03, $03, $10, $10, $03        ;; 07:782d ????????
    db   $03, $03, $03, $03, $10, $10, $10, $10        ;; 07:7835 ????????
    db   $10, $10, $10, $03, $03, $03, $03, $03        ;; 07:783d ????????
    db   $03, $10, $10, $03, $03, $03, $03, $03        ;; 07:7845 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:784d ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:7855 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 07:785d ????????
    db   $10, $03, $03, $03, $03, $03, $03, $03        ;; 07:7865 ????????
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 07:786d ????????
    db   $03, $03, $03, $03, $10, $10, $03, $03        ;; 07:7875 ????????
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 07:787d ????????
    db   $03, $03, $03, $03, $03, $03, $10, $10        ;; 07:7885 ????????
    db   $06, $06, $06, $06, $06, $06, $00, $00        ;; 07:788d ????????
    db   $03, $03, $03, $03, $03, $06, $06, $06        ;; 07:7895 ????????
    db   $06, $06, $06, $00, $00, $03, $03, $03        ;; 07:789d ????????
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 07:78a5 ????????
    db   $00, $00, $06, $06, $06, $06, $06, $03        ;; 07:78ad ????????
    db   $03, $03, $03, $03, $03, $00, $00, $06        ;; 07:78b5 ????????
    db   $06, $06, $06, $06, $30, $68, $36, $07        ;; 07:78bd ????????
    db   $28, $70, $38, $07, $38, $70, $3c, $07        ;; 07:78c5 ????????
    db   $28, $78, $3a, $07, $38, $78, $3e, $07        ;; 07:78cd ????????
    db   $00, $00, $00, $01, $00, $08, $02, $01        ;; 07:78d5 ????????
    db   $00, $10, $04, $01, $00, $18, $06, $01        ;; 07:78dd ????????
    db   $00, $20, $08, $01, $00, $28, $0a, $01        ;; 07:78e5 ????????
    db   $00, $30, $0c, $01, $00, $38, $0e, $01        ;; 07:78ed ????????
    db   $00, $40, $10, $01, $00, $48, $12, $01        ;; 07:78f5 ????????
    db   $10, $00, $14, $01, $10, $08, $16, $01        ;; 07:78fd ????????
    db   $10, $10, $18, $01, $10, $18, $1a, $01        ;; 07:7905 ????????
    db   $10, $20, $1c, $01, $10, $28, $1e, $01        ;; 07:790d ????????
    db   $10, $30, $20, $01, $10, $38, $22, $01        ;; 07:7915 ????????
    db   $10, $40, $24, $01, $10, $48, $26, $01        ;; 07:791d ????????
    db   $00, $00, $28, $16, $00, $08, $2a, $16        ;; 07:7925 ????????
    db   $c9, $98, $ca, $98, $ea, $98, $e9, $98        ;; 07:792d ????????
    db   $e8, $98, $c8, $98, $a8, $98, $a9, $98        ;; 07:7935 ????????
    db   $aa, $98, $ab, $98, $cb, $98, $eb, $98        ;; 07:793d ????????
    db   $0b, $99, $0a, $99, $09, $99, $08, $99        ;; 07:7945 ????????
    db   $07, $99, $e7, $98, $c7, $98, $a7, $98        ;; 07:794d ????????
    db   $87, $98, $88, $98, $89, $98, $8a, $98        ;; 07:7955 ????????
    db   $8b, $98, $8c, $98, $ac, $98, $cc, $98        ;; 07:795d ????????
    db   $ec, $98, $0c, $99, $2c, $99, $2b, $99        ;; 07:7965 ????????
    db   $2a, $99, $29, $99, $28, $99, $27, $99        ;; 07:796d ????????
    db   $26, $99, $06, $99, $e6, $98, $c6, $98        ;; 07:7975 ????????
    db   $a6, $98, $86, $98, $66, $98, $67, $98        ;; 07:797d ????????
    db   $68, $98, $69, $98, $6a, $98, $6b, $98        ;; 07:7985 ????????
    db   $6c, $98, $6d, $98, $8d, $98, $ad, $98        ;; 07:798d ????????
    db   $cd, $98, $ed, $98, $0d, $99, $2d, $99        ;; 07:7995 ????????
    db   $4d, $99, $4c, $99, $4b, $99, $4a, $99        ;; 07:799d ????????
    db   $49, $99, $48, $99, $47, $99, $46, $99        ;; 07:79a5 ????????
    db   $45, $99, $25, $99, $05, $99, $e5, $98        ;; 07:79ad ????????
    db   $c5, $98, $a5, $98, $85, $98, $65, $98        ;; 07:79b5 ????????
    db   $45, $98, $46, $98, $47, $98, $48, $98        ;; 07:79bd ????????
    db   $49, $98, $4a, $98, $4b, $98, $4c, $98        ;; 07:79c5 ????????
    db   $4d, $98, $4e, $98, $6e, $98, $8e, $98        ;; 07:79cd ????????
    db   $ae, $98, $ce, $98, $ee, $98, $0e, $99        ;; 07:79d5 ????????
    db   $2e, $99, $4e, $99, $6e, $99, $6d, $99        ;; 07:79dd ????????
    db   $6c, $99, $6b, $99, $6a, $99, $69, $99        ;; 07:79e5 ????????
    db   $68, $99, $67, $99, $66, $99, $65, $99        ;; 07:79ed ????????
    db   $64, $99, $44, $99, $24, $99, $04, $99        ;; 07:79f5 ????????
    db   $e4, $98, $c4, $98, $a4, $98, $84, $98        ;; 07:79fd ????????
    db   $64, $98, $44, $98, $24, $98, $25, $98        ;; 07:7a05 ????????
    db   $26, $98, $27, $98, $28, $98, $29, $98        ;; 07:7a0d ????????
    db   $2a, $98, $2b, $98, $2c, $98, $2d, $98        ;; 07:7a15 ????????
    db   $2e, $98, $2f, $98, $4f, $98, $6f, $98        ;; 07:7a1d ????????
    db   $8f, $98, $af, $98, $cf, $98, $ef, $98        ;; 07:7a25 ????????
    db   $0f, $99, $2f, $99, $4f, $99, $6f, $99        ;; 07:7a2d ????????
    db   $8f, $99, $8e, $99, $8d, $99, $8c, $99        ;; 07:7a35 ????????
    db   $8b, $99, $8a, $99, $89, $99, $88, $99        ;; 07:7a3d ????????
    db   $87, $99, $86, $99, $85, $99, $84, $99        ;; 07:7a45 ????????
    db   $83, $99, $63, $99, $43, $99, $23, $99        ;; 07:7a4d ????????
    db   $03, $99, $e3, $98, $c3, $98, $a3, $98        ;; 07:7a55 ????????
    db   $83, $98, $63, $98, $43, $98, $23, $98        ;; 07:7a5d ????????
    db   $03, $98, $04, $98, $05, $98, $06, $98        ;; 07:7a65 ????????
    db   $07, $98, $08, $98, $09, $98, $0a, $98        ;; 07:7a6d ????????
    db   $0b, $98, $0c, $98, $0d, $98, $0e, $98        ;; 07:7a75 ????????
    db   $0f, $98, $10, $98, $30, $98, $50, $98        ;; 07:7a7d ????????
    db   $70, $98, $90, $98, $b0, $98, $d0, $98        ;; 07:7a85 ????????
    db   $f0, $98, $10, $99, $30, $99, $50, $99        ;; 07:7a8d ????????
    db   $70, $99, $90, $99, $b0, $99, $af, $99        ;; 07:7a95 ????????
    db   $ae, $99, $ad, $99, $ac, $99, $ab, $99        ;; 07:7a9d ????????
    db   $aa, $99, $a9, $99, $a8, $99, $a7, $99        ;; 07:7aa5 ????????
    db   $a6, $99, $a5, $99, $a4, $99, $a3, $99        ;; 07:7aad ????????
    db   $a2, $99, $82, $99, $62, $99, $42, $99        ;; 07:7ab5 ????????
    db   $22, $99, $02, $99, $e2, $98, $c2, $98        ;; 07:7abd ????????
    db   $a2, $98, $82, $98, $62, $98, $42, $98        ;; 07:7ac5 ????????
    db   $22, $98, $02, $98, $11, $98, $31, $98        ;; 07:7acd ????????
    db   $51, $98, $71, $98, $91, $98, $b1, $98        ;; 07:7ad5 ????????
    db   $d1, $98, $f1, $98, $11, $99, $31, $99        ;; 07:7add ????????
    db   $51, $99, $71, $99, $91, $99, $b1, $99        ;; 07:7ae5 ????????
    db   $d1, $99, $d0, $99, $cf, $99, $ce, $99        ;; 07:7aed ????????
    db   $cd, $99, $cc, $99, $cb, $99, $ca, $99        ;; 07:7af5 ????????
    db   $c9, $99, $c8, $99, $c7, $99, $c6, $99        ;; 07:7afd ????????
    db   $c5, $99, $c4, $99, $c3, $99, $c2, $99        ;; 07:7b05 ????????
    db   $c1, $99, $a1, $99, $81, $99, $61, $99        ;; 07:7b0d ????????
    db   $41, $99, $21, $99, $01, $99, $e1, $98        ;; 07:7b15 ????????
    db   $c1, $98, $a1, $98, $81, $98, $61, $98        ;; 07:7b1d ????????
    db   $41, $98, $21, $98, $01, $98, $12, $98        ;; 07:7b25 ????????
    db   $32, $98, $52, $98, $72, $98, $92, $98        ;; 07:7b2d ????????
    db   $b2, $98, $d2, $98, $f2, $98, $12, $99        ;; 07:7b35 ????????
    db   $32, $99, $52, $99, $72, $99, $92, $99        ;; 07:7b3d ????????
    db   $b2, $99, $d2, $99, $f2, $99, $f1, $99        ;; 07:7b45 ????????
    db   $f0, $99, $ef, $99, $ee, $99, $ed, $99        ;; 07:7b4d ????????
    db   $ec, $99, $eb, $99, $ea, $99, $e9, $99        ;; 07:7b55 ????????
    db   $e8, $99, $e7, $99, $e6, $99, $e5, $99        ;; 07:7b5d ????????
    db   $e4, $99, $e3, $99, $e2, $99, $e1, $99        ;; 07:7b65 ????????
    db   $e0, $99, $c0, $99, $a0, $99, $80, $99        ;; 07:7b6d ????????
    db   $60, $99, $40, $99, $20, $99, $00, $99        ;; 07:7b75 ????????
    db   $e0, $98, $c0, $98, $a0, $98, $80, $98        ;; 07:7b7d ????????
    db   $60, $98, $40, $98, $20, $98, $00, $98        ;; 07:7b85 ????????
    db   $13, $98, $33, $98, $53, $98, $73, $98        ;; 07:7b8d ????????
    db   $93, $98, $b3, $98, $d3, $98, $f3, $98        ;; 07:7b95 ????????
    db   $13, $99, $33, $99, $53, $99, $73, $99        ;; 07:7b9d ????????
    db   $93, $99, $b3, $99, $d3, $99, $f3, $99        ;; 07:7ba5 ????????
    db   $13, $9a, $12, $9a, $11, $9a, $10, $9a        ;; 07:7bad ????????
    db   $0f, $9a, $0e, $9a, $0d, $9a, $0c, $9a        ;; 07:7bb5 ????????
    db   $0b, $9a, $0a, $9a, $09, $9a, $08, $9a        ;; 07:7bbd ????????
    db   $07, $9a, $06, $9a, $05, $9a, $04, $9a        ;; 07:7bc5 ????????
    db   $03, $9a, $02, $9a, $01, $9a, $00, $9a        ;; 07:7bcd ????????
    db   $33, $9a, $32, $9a, $31, $9a, $30, $9a        ;; 07:7bd5 ????????
    db   $2f, $9a, $2e, $9a, $2d, $9a, $2c, $9a        ;; 07:7bdd ????????
    db   $2b, $9a, $2a, $9a, $29, $9a, $28, $9a        ;; 07:7be5 ????????
    db   $27, $9a, $26, $9a, $25, $9a, $24, $9a        ;; 07:7bed ????????
    db   $23, $9a, $22, $9a, $21, $9a, $20, $9a        ;; 07:7bf5 ????????
    db   $98, $98, $98, $98, $98, $98, $98, $98        ;; 07:7bfd ????????
    db   $98, $98, $98, $b0, $fe, $98, $98, $98        ;; 07:7c05 ????????
    db   $98, $98, $9a, $40, $5b, $46, $59, $60        ;; 07:7c0d ????????
    db   $46, $9a, $fe, $fe, $98, $98, $98, $98        ;; 07:7c15 ????????
    db   $98, $98, $98, $98, $98, $98, $98, $98        ;; 07:7c1d ????????
    db   $b0, $fe, $98, $98, $98, $98, $0e, $02        ;; 07:7c25 ????????
    db   $2a, $02, $19, $11, $06, $27, $06, $94        ;; 07:7c2d ????????
    db   $fe, $98, $98, $98, $98, $98, $98, $b0        ;; 07:7c35 ????????
    db   $98, $98, $98, $98, $98, $b0, $fe, $98        ;; 07:7c3d ????????
    db   $98, $01, $27, $25, $29, $1a, $0c, $32        ;; 07:7c45 ????????
    db   $16, $02, $07, $12, $08, $0c, $1f, $95        ;; 07:7c4d ????????
    db   $fe, $98, $98, $b0, $98, $98, $98, $98        ;; 07:7c55 ????????
    db   $98, $b0, $98, $98, $98, $98, $98, $98        ;; 07:7c5d ????????
    db   $98, $b0, $fe, $98, $06, $0e, $19, $0e        ;; 07:7c65 ????????
    db   $02, $2a, $02, $06, $0e, $02, $22, $02        ;; 07:7c6d ????????
    db   $2d, $1a, $0a, $1b, $fe, $98, $98, $b0        ;; 07:7c75 ????????
    db   $98, $98, $98, $98, $98, $b0, $98, $b0        ;; 07:7c7d ????????
    db   $98, $98, $98, $b0, $fe, $98, $20, $0d        ;; 07:7c85 ????????
    db   $19, $0e, $02, $2a, $02, $06, $20, $14        ;; 07:7c8d ????????
    db   $28, $2d, $22, $1c, $06, $0e, $fe, $98        ;; 07:7c95 ????????
    db   $98, $98, $98, $98, $98, $98, $98, $b0        ;; 07:7c9d ????????
    db   $fe, $98, $12, $11, $19, $0e, $02, $2a        ;; 07:7ca5 ????????
    db   $02, $06, $20, $19, $28, $2d, $23, $10        ;; 07:7cad ????????
    db   $27, $0c, $fe, $98, $98, $98, $98, $98        ;; 07:7cb5 ????????
    db   $98, $98, $98, $98, $98, $98, $98, $98        ;; 07:7cbd ????????
    db   $b0, $fe, $98, $98, $98, $0f, $0c, $13        ;; 07:7cc5 ????????
    db   $94, $1b, $19, $0e, $02, $2a, $02, $06        ;; 07:7ccd ????????
    db   $fe, $98, $98, $98, $b0, $98, $98, $98        ;; 07:7cd5 ????????
    db   $98, $98, $98, $98, $b0, $fe, $98, $1b        ;; 07:7cdd ????????
    db   $14, $1b, $14, $16, $01, $10, $10, $06        ;; 07:7ce5 ????????
    db   $15, $10, $2e, $27, $2e, $2d, $fe, $fe        ;; 07:7ced ????????
    db   $98, $98, $98, $98, $24, $08, $0f, $08        ;; 07:7cf5 ????????
    db   $0d, $29, $14, $11, $95, $fe, $fe, $fe        ;; 07:7cfd ????????
    db   $98, $98, $98, $b0, $98, $98, $98, $98        ;; 07:7d05 ????????
    db   $b0, $fe, $98, $98, $01, $0b, $24, $06        ;; 07:7d0d ????????
    db   $15, $20, $14, $28, $19, $23, $28, $14        ;; 07:7d15 ????????
    db   $94, $fe, $98, $98, $98, $98, $98, $98        ;; 07:7d1d ????????
    db   $98, $98, $b0, $98, $b0, $fe, $98, $98        ;; 07:7d25 ????????
    db   $98, $1c, $06, $08, $0d, $2e, $10, $20        ;; 07:7d2d ????????
    db   $0d, $03, $20, $94, $fe, $98, $b0, $fe        ;; 07:7d35 ????????
    db   $0f, $1b, $04, $29, $01, $05, $02, $24        ;; 07:7d3d ????????
    db   $1f, $24, $1f, $16, $06, $0a, $1f, $2a        ;; 07:7d45 ????????
    db   $10, $94, $fe, $98, $98, $98, $98, $98        ;; 07:7d4d ????????
    db   $98, $b0, $fe, $03, $12, $08, $0c, $02        ;; 07:7d55 ????????
    db   $0c, $0e, $2e, $16, $14, $21, $0a, $19        ;; 07:7d5d ????????
    db   $14, $11, $2d, $94, $fe, $98, $98, $98        ;; 07:7d65 ????????
    db   $98, $98, $98, $98, $98, $b0, $fe, $98        ;; 07:7d6d ????????
    db   $98, $98, $98, $98, $98, $1b, $14, $1b        ;; 07:7d75 ????????
    db   $14, $1a, $fe, $fe, $8e, $0e, $02, $2a        ;; 07:7d7d ????????
    db   $02, $19, $0c, $31, $08, $1c, $08, $2d        ;; 07:7d85 ????????
    db   $03, $09, $10, $0c, $1f, $8f, $fe, $98        ;; 07:7d8d ????????
    db   $98, $98, $98, $98, $98, $98, $98, $b0        ;; 07:7d95 ????????
    db   $fe, $98, $98, $98, $98, $98, $14, $26        ;; 07:7d9d ????????
    db   $2e, $13, $02, $10, $95, $fe, $fe, $fe        ;; 07:7da5 ????????
    db   $fe, $98, $0a, $0a, $16, $1a, $94, $0e        ;; 07:7dad ????????
    db   $02, $2a, $02, $14, $09, $02, $24, $08        ;; 07:7db5 ????????
    db   $0c, $94, $fe, $fe, $98, $98, $98, $0e        ;; 07:7dbd ????????
    db   $02, $2a, $02, $19, $11, $06, $27, $2d        ;; 07:7dc5 ????????
    db   $06, $28, $13, $fe, $fe, $98, $98, $98        ;; 07:7dcd ????????
    db   $98, $98, $1f, $1e, $03, $2d, $12, $06        ;; 07:7dd5 ????????
    db   $03, $fe, $98, $98, $98, $98, $98, $98        ;; 07:7ddd ????????
    db   $98, $98, $98, $98, $b0, $98, $98, $b0        ;; 07:7de5 ????????
    db   $fe, $98, $0e, $02, $2a, $02, $12, $06        ;; 07:7ded ????????
    db   $02, $10, $11, $06, $0d, $2e, $13, $02        ;; 07:7df5 ????????
    db   $29, $95, $fe, $fe, $fe, $98, $98, $98        ;; 07:7dfd ????????
    db   $98, $98, $98, $b0, $fe, $98, $98, $54        ;; 07:7e05 ????????
    db   $5b, $5d, $92, $46, $0e, $02, $2a, $02        ;; 07:7e0d ????????
    db   $02, $2e, $19, $fe, $98, $98, $98, $98        ;; 07:7e15 ????????
    db   $98, $98, $98, $98, $b0, $98, $98, $b0        ;; 07:7e1d ????????
    db   $fe, $98, $20, $15, $27, $02, $0f, $03        ;; 07:7e25 ????????
    db   $94, $3e, $67, $60, $3e, $67, $66, $3a        ;; 07:7e2d ????????
    db   $23, $fe, $98, $98, $98, $98, $98, $98        ;; 07:7e35 ????????
    db   $98, $98, $98, $b0, $fe, $98, $98, $98        ;; 07:7e3d ????????
    db   $98, $0f, $19, $1b, $14, $28, $13, $01        ;; 07:7e45 ????????
    db   $29, $95, $fe, $fe, $fe, $fe, $fe, $fe        ;; 07:7e4d ????????
    db   $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe        ;; 07:7e55 ????????
    db   $fe, $fe, $fe, $fe, $ff                       ;; 07:7e5d ?????
