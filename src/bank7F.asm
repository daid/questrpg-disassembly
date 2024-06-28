;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank7f", ROMX[$4000], BANK[$7f]

call_7f_4000:
    ld   HL, data_7f_4d77                              ;; 7f:4000 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:4003 $fa $6b $d3
    sla  A                                             ;; 7f:4006 $cb $27
    ld   C, A                                          ;; 7f:4008 $4f
    ld   B, $00                                        ;; 7f:4009 $06 $00
    add  HL, BC                                        ;; 7f:400b $09
    ld   D, H                                          ;; 7f:400c $54
    ld   E, L                                          ;; 7f:400d $5d
    ld   HL, data_7f_7407                              ;; 7f:400e $21 $07 $74
    ld   A, [DE]                                       ;; 7f:4011 $1a
    sla  A                                             ;; 7f:4012 $cb $27
    ld   [wD323], A                                    ;; 7f:4014 $ea $23 $d3
    ld   C, A                                          ;; 7f:4017 $4f
    ld   B, $00                                        ;; 7f:4018 $06 $00
    add  HL, BC                                        ;; 7f:401a $09
    inc  DE                                            ;; 7f:401b $13
    ld   A, [DE]                                       ;; 7f:401c $1a
    ld   C, A                                          ;; 7f:401d $4f
    ld   A, [HL+]                                      ;; 7f:401e $2a
    and  A, C                                          ;; 7f:401f $a1
    ld   [wD33B], A                                    ;; 7f:4020 $ea $3b $d3
    ld   A, [HL]                                       ;; 7f:4023 $7e
    and  A, C                                          ;; 7f:4024 $a1
    ld   [wD33C], A                                    ;; 7f:4025 $ea $3c $d3
    ld   HL, data_7f_4c77                              ;; 7f:4028 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:402b $fa $6b $d3
    sla  A                                             ;; 7f:402e $cb $27
    ld   C, A                                          ;; 7f:4030 $4f
    ld   B, $00                                        ;; 7f:4031 $06 $00
    add  HL, BC                                        ;; 7f:4033 $09
    ld   D, H                                          ;; 7f:4034 $54
    ld   E, L                                          ;; 7f:4035 $5d
    ld   HL, data_7f_7417                              ;; 7f:4036 $21 $17 $74
    ld   A, [DE]                                       ;; 7f:4039 $1a
    sla  A                                             ;; 7f:403a $cb $27
    ld   [wD324], A                                    ;; 7f:403c $ea $24 $d3
    ld   C, A                                          ;; 7f:403f $4f
    ld   B, $00                                        ;; 7f:4040 $06 $00
    add  HL, BC                                        ;; 7f:4042 $09
    inc  DE                                            ;; 7f:4043 $13
    ld   A, [DE]                                       ;; 7f:4044 $1a
    ld   C, A                                          ;; 7f:4045 $4f
    ld   A, [HL+]                                      ;; 7f:4046 $2a
    and  A, C                                          ;; 7f:4047 $a1
    ld   [wD33D], A                                    ;; 7f:4048 $ea $3d $d3
    ld   A, [HL]                                       ;; 7f:404b $7e
    and  A, C                                          ;; 7f:404c $a1
    ld   [wD33E], A                                    ;; 7f:404d $ea $3e $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4050 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4053 $fa $6b $d3
    sla  A                                             ;; 7f:4056 $cb $27
    ld   C, A                                          ;; 7f:4058 $4f
    ld   B, $00                                        ;; 7f:4059 $06 $00
    add  HL, BC                                        ;; 7f:405b $09
    ld   D, H                                          ;; 7f:405c $54
    ld   E, L                                          ;; 7f:405d $5d
    ld   HL, data_7f_7427                              ;; 7f:405e $21 $27 $74
    ld   A, [DE]                                       ;; 7f:4061 $1a
    sla  A                                             ;; 7f:4062 $cb $27
    ld   [wD325], A                                    ;; 7f:4064 $ea $25 $d3
    ld   C, A                                          ;; 7f:4067 $4f
    ld   B, $00                                        ;; 7f:4068 $06 $00
    add  HL, BC                                        ;; 7f:406a $09
    inc  DE                                            ;; 7f:406b $13
    ld   A, [DE]                                       ;; 7f:406c $1a
    ld   C, A                                          ;; 7f:406d $4f
    ld   A, [HL+]                                      ;; 7f:406e $2a
    and  A, C                                          ;; 7f:406f $a1
    ld   [wD33F], A                                    ;; 7f:4070 $ea $3f $d3
    ld   A, [HL]                                       ;; 7f:4073 $7e
    and  A, C                                          ;; 7f:4074 $a1
    ld   [wD340], A                                    ;; 7f:4075 $ea $40 $d3
    ld   HL, data_7f_4c77                              ;; 7f:4078 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:407b $fa $6b $d3
    sla  A                                             ;; 7f:407e $cb $27
    ld   C, A                                          ;; 7f:4080 $4f
    ld   B, $00                                        ;; 7f:4081 $06 $00
    add  HL, BC                                        ;; 7f:4083 $09
    ld   D, H                                          ;; 7f:4084 $54
    ld   E, L                                          ;; 7f:4085 $5d
    ld   HL, data_7f_7437                              ;; 7f:4086 $21 $37 $74
    ld   A, [DE]                                       ;; 7f:4089 $1a
    sla  A                                             ;; 7f:408a $cb $27
    ld   [wD326], A                                    ;; 7f:408c $ea $26 $d3
    ld   C, A                                          ;; 7f:408f $4f
    ld   B, $00                                        ;; 7f:4090 $06 $00
    add  HL, BC                                        ;; 7f:4092 $09
    inc  DE                                            ;; 7f:4093 $13
    ld   A, [DE]                                       ;; 7f:4094 $1a
    ld   C, A                                          ;; 7f:4095 $4f
    ld   A, [HL+]                                      ;; 7f:4096 $2a
    and  A, C                                          ;; 7f:4097 $a1
    ld   [wD341], A                                    ;; 7f:4098 $ea $41 $d3
    ld   A, [HL]                                       ;; 7f:409b $7e
    and  A, C                                          ;; 7f:409c $a1
    ld   [wD342], A                                    ;; 7f:409d $ea $42 $d3
    ld   HL, data_7f_4cf7                              ;; 7f:40a0 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:40a3 $fa $6b $d3
    sla  A                                             ;; 7f:40a6 $cb $27
    ld   C, A                                          ;; 7f:40a8 $4f
    ld   B, $00                                        ;; 7f:40a9 $06 $00
    add  HL, BC                                        ;; 7f:40ab $09
    ld   D, H                                          ;; 7f:40ac $54
    ld   E, L                                          ;; 7f:40ad $5d
    ld   HL, data_7f_7447                              ;; 7f:40ae $21 $47 $74
    ld   A, [DE]                                       ;; 7f:40b1 $1a
    sla  A                                             ;; 7f:40b2 $cb $27
    ld   [wD327], A                                    ;; 7f:40b4 $ea $27 $d3
    ld   C, A                                          ;; 7f:40b7 $4f
    ld   B, $00                                        ;; 7f:40b8 $06 $00
    add  HL, BC                                        ;; 7f:40ba $09
    inc  DE                                            ;; 7f:40bb $13
    ld   A, [DE]                                       ;; 7f:40bc $1a
    ld   C, A                                          ;; 7f:40bd $4f
    ld   A, [HL+]                                      ;; 7f:40be $2a
    and  A, C                                          ;; 7f:40bf $a1
    ld   [wD343], A                                    ;; 7f:40c0 $ea $43 $d3
    ld   A, [HL]                                       ;; 7f:40c3 $7e
    and  A, C                                          ;; 7f:40c4 $a1
    ld   [wD344], A                                    ;; 7f:40c5 $ea $44 $d3
    ld   HL, data_7f_4d77                              ;; 7f:40c8 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:40cb $fa $6b $d3
    sla  A                                             ;; 7f:40ce $cb $27
    ld   C, A                                          ;; 7f:40d0 $4f
    ld   B, $00                                        ;; 7f:40d1 $06 $00
    add  HL, BC                                        ;; 7f:40d3 $09
    ld   D, H                                          ;; 7f:40d4 $54
    ld   E, L                                          ;; 7f:40d5 $5d
    ld   HL, data_7f_7457                              ;; 7f:40d6 $21 $57 $74
    ld   A, [DE]                                       ;; 7f:40d9 $1a
    sla  A                                             ;; 7f:40da $cb $27
    ld   [wD328], A                                    ;; 7f:40dc $ea $28 $d3
    ld   C, A                                          ;; 7f:40df $4f
    ld   B, $00                                        ;; 7f:40e0 $06 $00
    add  HL, BC                                        ;; 7f:40e2 $09
    inc  DE                                            ;; 7f:40e3 $13
    ld   A, [DE]                                       ;; 7f:40e4 $1a
    ld   C, A                                          ;; 7f:40e5 $4f
    ld   A, [HL+]                                      ;; 7f:40e6 $2a
    and  A, C                                          ;; 7f:40e7 $a1
    ld   [wD345], A                                    ;; 7f:40e8 $ea $45 $d3
    ld   A, [HL]                                       ;; 7f:40eb $7e
    and  A, C                                          ;; 7f:40ec $a1
    ld   [wD346], A                                    ;; 7f:40ed $ea $46 $d3
    ld   HL, data_7f_4d77                              ;; 7f:40f0 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:40f3 $fa $6b $d3
    sla  A                                             ;; 7f:40f6 $cb $27
    ld   C, A                                          ;; 7f:40f8 $4f
    ld   B, $00                                        ;; 7f:40f9 $06 $00
    add  HL, BC                                        ;; 7f:40fb $09
    ld   D, H                                          ;; 7f:40fc $54
    ld   E, L                                          ;; 7f:40fd $5d
    ld   HL, data_7f_7467                              ;; 7f:40fe $21 $67 $74
    ld   A, [DE]                                       ;; 7f:4101 $1a
    sla  A                                             ;; 7f:4102 $cb $27
    ld   [wD329], A                                    ;; 7f:4104 $ea $29 $d3
    ld   C, A                                          ;; 7f:4107 $4f
    ld   B, $00                                        ;; 7f:4108 $06 $00
    add  HL, BC                                        ;; 7f:410a $09
    inc  DE                                            ;; 7f:410b $13
    ld   A, [DE]                                       ;; 7f:410c $1a
    ld   C, A                                          ;; 7f:410d $4f
    ld   A, [HL+]                                      ;; 7f:410e $2a
    and  A, C                                          ;; 7f:410f $a1
    ld   [wD347], A                                    ;; 7f:4110 $ea $47 $d3
    ld   A, [HL]                                       ;; 7f:4113 $7e
    and  A, C                                          ;; 7f:4114 $a1
    ld   [wD348], A                                    ;; 7f:4115 $ea $48 $d3
    ld   HL, data_7f_4c77                              ;; 7f:4118 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:411b $fa $6b $d3
    sla  A                                             ;; 7f:411e $cb $27
    ld   C, A                                          ;; 7f:4120 $4f
    ld   B, $00                                        ;; 7f:4121 $06 $00
    add  HL, BC                                        ;; 7f:4123 $09
    ld   D, H                                          ;; 7f:4124 $54
    ld   E, L                                          ;; 7f:4125 $5d
    ld   HL, data_7f_7477                              ;; 7f:4126 $21 $77 $74
    ld   A, [DE]                                       ;; 7f:4129 $1a
    sla  A                                             ;; 7f:412a $cb $27
    ld   [wD32A], A                                    ;; 7f:412c $ea $2a $d3
    ld   C, A                                          ;; 7f:412f $4f
    ld   B, $00                                        ;; 7f:4130 $06 $00
    add  HL, BC                                        ;; 7f:4132 $09
    inc  DE                                            ;; 7f:4133 $13
    ld   A, [DE]                                       ;; 7f:4134 $1a
    ld   C, A                                          ;; 7f:4135 $4f
    ld   A, [HL+]                                      ;; 7f:4136 $2a
    and  A, C                                          ;; 7f:4137 $a1
    ld   [wD349], A                                    ;; 7f:4138 $ea $49 $d3
    ld   A, [HL]                                       ;; 7f:413b $7e
    and  A, C                                          ;; 7f:413c $a1
    ld   [wD34A], A                                    ;; 7f:413d $ea $4a $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4140 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4143 $fa $6b $d3
    sla  A                                             ;; 7f:4146 $cb $27
    ld   C, A                                          ;; 7f:4148 $4f
    ld   B, $00                                        ;; 7f:4149 $06 $00
    add  HL, BC                                        ;; 7f:414b $09
    ld   D, H                                          ;; 7f:414c $54
    ld   E, L                                          ;; 7f:414d $5d
    ld   HL, data_7f_7487                              ;; 7f:414e $21 $87 $74
    ld   A, [DE]                                       ;; 7f:4151 $1a
    sla  A                                             ;; 7f:4152 $cb $27
    ld   [wD32B], A                                    ;; 7f:4154 $ea $2b $d3
    ld   C, A                                          ;; 7f:4157 $4f
    ld   B, $00                                        ;; 7f:4158 $06 $00
    add  HL, BC                                        ;; 7f:415a $09
    inc  DE                                            ;; 7f:415b $13
    ld   A, [DE]                                       ;; 7f:415c $1a
    ld   C, A                                          ;; 7f:415d $4f
    ld   A, [HL+]                                      ;; 7f:415e $2a
    and  A, C                                          ;; 7f:415f $a1
    ld   [wD34B], A                                    ;; 7f:4160 $ea $4b $d3
    ld   A, [HL]                                       ;; 7f:4163 $7e
    and  A, C                                          ;; 7f:4164 $a1
    ld   [wD34C], A                                    ;; 7f:4165 $ea $4c $d3
    ld   HL, data_7f_4d77                              ;; 7f:4168 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:416b $fa $6b $d3
    sla  A                                             ;; 7f:416e $cb $27
    ld   C, A                                          ;; 7f:4170 $4f
    ld   B, $00                                        ;; 7f:4171 $06 $00
    add  HL, BC                                        ;; 7f:4173 $09
    ld   D, H                                          ;; 7f:4174 $54
    ld   E, L                                          ;; 7f:4175 $5d
    ld   HL, data_7f_7497                              ;; 7f:4176 $21 $97 $74
    ld   A, [DE]                                       ;; 7f:4179 $1a
    sla  A                                             ;; 7f:417a $cb $27
    ld   [wD32C], A                                    ;; 7f:417c $ea $2c $d3
    ld   C, A                                          ;; 7f:417f $4f
    ld   B, $00                                        ;; 7f:4180 $06 $00
    add  HL, BC                                        ;; 7f:4182 $09
    inc  DE                                            ;; 7f:4183 $13
    ld   A, [DE]                                       ;; 7f:4184 $1a
    ld   C, A                                          ;; 7f:4185 $4f
    ld   A, [HL+]                                      ;; 7f:4186 $2a
    and  A, C                                          ;; 7f:4187 $a1
    ld   [wD34D], A                                    ;; 7f:4188 $ea $4d $d3
    ld   A, [HL]                                       ;; 7f:418b $7e
    and  A, C                                          ;; 7f:418c $a1
    ld   [wD34E], A                                    ;; 7f:418d $ea $4e $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4190 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4193 $fa $6b $d3
    sla  A                                             ;; 7f:4196 $cb $27
    ld   C, A                                          ;; 7f:4198 $4f
    ld   B, $00                                        ;; 7f:4199 $06 $00
    add  HL, BC                                        ;; 7f:419b $09
    ld   D, H                                          ;; 7f:419c $54
    ld   E, L                                          ;; 7f:419d $5d
    ld   HL, data_7f_74a7                              ;; 7f:419e $21 $a7 $74
    ld   A, [DE]                                       ;; 7f:41a1 $1a
    sla  A                                             ;; 7f:41a2 $cb $27
    ld   [wD32D], A                                    ;; 7f:41a4 $ea $2d $d3
    ld   C, A                                          ;; 7f:41a7 $4f
    ld   B, $00                                        ;; 7f:41a8 $06 $00
    add  HL, BC                                        ;; 7f:41aa $09
    inc  DE                                            ;; 7f:41ab $13
    ld   A, [DE]                                       ;; 7f:41ac $1a
    ld   C, A                                          ;; 7f:41ad $4f
    ld   A, [HL+]                                      ;; 7f:41ae $2a
    and  A, C                                          ;; 7f:41af $a1
    ld   [wD34F], A                                    ;; 7f:41b0 $ea $4f $d3
    ld   A, [HL]                                       ;; 7f:41b3 $7e
    and  A, C                                          ;; 7f:41b4 $a1
    ld   [wD350], A                                    ;; 7f:41b5 $ea $50 $d3
    ld   HL, data_7f_4c77                              ;; 7f:41b8 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:41bb $fa $6b $d3
    sla  A                                             ;; 7f:41be $cb $27
    ld   C, A                                          ;; 7f:41c0 $4f
    ld   B, $00                                        ;; 7f:41c1 $06 $00
    add  HL, BC                                        ;; 7f:41c3 $09
    ld   D, H                                          ;; 7f:41c4 $54
    ld   E, L                                          ;; 7f:41c5 $5d
    ld   HL, data_7f_74b7                              ;; 7f:41c6 $21 $b7 $74
    ld   A, [DE]                                       ;; 7f:41c9 $1a
    sla  A                                             ;; 7f:41ca $cb $27
    ld   [wD32E], A                                    ;; 7f:41cc $ea $2e $d3
    ld   C, A                                          ;; 7f:41cf $4f
    ld   B, $00                                        ;; 7f:41d0 $06 $00
    add  HL, BC                                        ;; 7f:41d2 $09
    inc  DE                                            ;; 7f:41d3 $13
    ld   A, [DE]                                       ;; 7f:41d4 $1a
    ld   C, A                                          ;; 7f:41d5 $4f
    ld   A, [HL+]                                      ;; 7f:41d6 $2a
    and  A, C                                          ;; 7f:41d7 $a1
    ld   [wD351], A                                    ;; 7f:41d8 $ea $51 $d3
    ld   A, [HL]                                       ;; 7f:41db $7e
    and  A, C                                          ;; 7f:41dc $a1
    ld   [wD352], A                                    ;; 7f:41dd $ea $52 $d3
    ld   HL, data_7f_4d77                              ;; 7f:41e0 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:41e3 $fa $6b $d3
    sla  A                                             ;; 7f:41e6 $cb $27
    ld   C, A                                          ;; 7f:41e8 $4f
    ld   B, $00                                        ;; 7f:41e9 $06 $00
    add  HL, BC                                        ;; 7f:41eb $09
    ld   D, H                                          ;; 7f:41ec $54
    ld   E, L                                          ;; 7f:41ed $5d
    ld   HL, data_7f_74c7                              ;; 7f:41ee $21 $c7 $74
    ld   A, [DE]                                       ;; 7f:41f1 $1a
    sla  A                                             ;; 7f:41f2 $cb $27
    ld   [wD32F], A                                    ;; 7f:41f4 $ea $2f $d3
    ld   C, A                                          ;; 7f:41f7 $4f
    ld   B, $00                                        ;; 7f:41f8 $06 $00
    add  HL, BC                                        ;; 7f:41fa $09
    inc  DE                                            ;; 7f:41fb $13
    ld   A, [DE]                                       ;; 7f:41fc $1a
    ld   C, A                                          ;; 7f:41fd $4f
    ld   A, [HL+]                                      ;; 7f:41fe $2a
    and  A, C                                          ;; 7f:41ff $a1
    ld   [wD353], A                                    ;; 7f:4200 $ea $53 $d3
    ld   A, [HL]                                       ;; 7f:4203 $7e
    and  A, C                                          ;; 7f:4204 $a1
    ld   [wD354], A                                    ;; 7f:4205 $ea $54 $d3
    ld   HL, data_7f_4c77                              ;; 7f:4208 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:420b $fa $6b $d3
    sla  A                                             ;; 7f:420e $cb $27
    ld   C, A                                          ;; 7f:4210 $4f
    ld   B, $00                                        ;; 7f:4211 $06 $00
    add  HL, BC                                        ;; 7f:4213 $09
    ld   D, H                                          ;; 7f:4214 $54
    ld   E, L                                          ;; 7f:4215 $5d
    ld   HL, data_7f_74d7                              ;; 7f:4216 $21 $d7 $74
    ld   A, [DE]                                       ;; 7f:4219 $1a
    sla  A                                             ;; 7f:421a $cb $27
    ld   [wD330], A                                    ;; 7f:421c $ea $30 $d3
    ld   C, A                                          ;; 7f:421f $4f
    ld   B, $00                                        ;; 7f:4220 $06 $00
    add  HL, BC                                        ;; 7f:4222 $09
    inc  DE                                            ;; 7f:4223 $13
    ld   A, [DE]                                       ;; 7f:4224 $1a
    ld   C, A                                          ;; 7f:4225 $4f
    ld   A, [HL+]                                      ;; 7f:4226 $2a
    and  A, C                                          ;; 7f:4227 $a1
    ld   [wD355], A                                    ;; 7f:4228 $ea $55 $d3
    ld   A, [HL]                                       ;; 7f:422b $7e
    and  A, C                                          ;; 7f:422c $a1
    ld   [wD356], A                                    ;; 7f:422d $ea $56 $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4230 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4233 $fa $6b $d3
    sla  A                                             ;; 7f:4236 $cb $27
    ld   C, A                                          ;; 7f:4238 $4f
    ld   B, $00                                        ;; 7f:4239 $06 $00
    add  HL, BC                                        ;; 7f:423b $09
    ld   D, H                                          ;; 7f:423c $54
    ld   E, L                                          ;; 7f:423d $5d
    ld   HL, data_7f_74e7                              ;; 7f:423e $21 $e7 $74
    ld   A, [DE]                                       ;; 7f:4241 $1a
    sla  A                                             ;; 7f:4242 $cb $27
    ld   [wD331], A                                    ;; 7f:4244 $ea $31 $d3
    ld   C, A                                          ;; 7f:4247 $4f
    ld   B, $00                                        ;; 7f:4248 $06 $00
    add  HL, BC                                        ;; 7f:424a $09
    inc  DE                                            ;; 7f:424b $13
    ld   A, [DE]                                       ;; 7f:424c $1a
    ld   C, A                                          ;; 7f:424d $4f
    ld   A, [HL+]                                      ;; 7f:424e $2a
    and  A, C                                          ;; 7f:424f $a1
    ld   [wD357], A                                    ;; 7f:4250 $ea $57 $d3
    ld   A, [HL]                                       ;; 7f:4253 $7e
    and  A, C                                          ;; 7f:4254 $a1
    ld   [wD358], A                                    ;; 7f:4255 $ea $58 $d3
    ld   HL, data_7f_4d77                              ;; 7f:4258 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:425b $fa $6b $d3
    sla  A                                             ;; 7f:425e $cb $27
    ld   C, A                                          ;; 7f:4260 $4f
    ld   B, $00                                        ;; 7f:4261 $06 $00
    add  HL, BC                                        ;; 7f:4263 $09
    ld   D, H                                          ;; 7f:4264 $54
    ld   E, L                                          ;; 7f:4265 $5d
    ld   HL, data_7f_74f7                              ;; 7f:4266 $21 $f7 $74
    ld   A, [DE]                                       ;; 7f:4269 $1a
    sla  A                                             ;; 7f:426a $cb $27
    ld   [wD332], A                                    ;; 7f:426c $ea $32 $d3
    ld   C, A                                          ;; 7f:426f $4f
    ld   B, $00                                        ;; 7f:4270 $06 $00
    add  HL, BC                                        ;; 7f:4272 $09
    inc  DE                                            ;; 7f:4273 $13
    ld   A, [DE]                                       ;; 7f:4274 $1a
    ld   C, A                                          ;; 7f:4275 $4f
    ld   A, [HL+]                                      ;; 7f:4276 $2a
    and  A, C                                          ;; 7f:4277 $a1
    ld   [wD359], A                                    ;; 7f:4278 $ea $59 $d3
    ld   A, [HL]                                       ;; 7f:427b $7e
    and  A, C                                          ;; 7f:427c $a1
    ld   [wD35A], A                                    ;; 7f:427d $ea $5a $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4280 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4283 $fa $6b $d3
    sla  A                                             ;; 7f:4286 $cb $27
    ld   C, A                                          ;; 7f:4288 $4f
    ld   B, $00                                        ;; 7f:4289 $06 $00
    add  HL, BC                                        ;; 7f:428b $09
    ld   D, H                                          ;; 7f:428c $54
    ld   E, L                                          ;; 7f:428d $5d
    ld   HL, data_7f_7507                              ;; 7f:428e $21 $07 $75
    ld   A, [DE]                                       ;; 7f:4291 $1a
    sla  A                                             ;; 7f:4292 $cb $27
    ld   [wD333], A                                    ;; 7f:4294 $ea $33 $d3
    ld   C, A                                          ;; 7f:4297 $4f
    ld   B, $00                                        ;; 7f:4298 $06 $00
    add  HL, BC                                        ;; 7f:429a $09
    inc  DE                                            ;; 7f:429b $13
    ld   A, [DE]                                       ;; 7f:429c $1a
    ld   C, A                                          ;; 7f:429d $4f
    ld   A, [HL+]                                      ;; 7f:429e $2a
    and  A, C                                          ;; 7f:429f $a1
    ld   [wD35B], A                                    ;; 7f:42a0 $ea $5b $d3
    ld   A, [HL]                                       ;; 7f:42a3 $7e
    and  A, C                                          ;; 7f:42a4 $a1
    ld   [wD35C], A                                    ;; 7f:42a5 $ea $5c $d3
    ld   HL, data_7f_4d77                              ;; 7f:42a8 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:42ab $fa $6b $d3
    sla  A                                             ;; 7f:42ae $cb $27
    ld   C, A                                          ;; 7f:42b0 $4f
    ld   B, $00                                        ;; 7f:42b1 $06 $00
    add  HL, BC                                        ;; 7f:42b3 $09
    ld   D, H                                          ;; 7f:42b4 $54
    ld   E, L                                          ;; 7f:42b5 $5d
    ld   HL, data_7f_7517                              ;; 7f:42b6 $21 $17 $75
    ld   A, [DE]                                       ;; 7f:42b9 $1a
    sla  A                                             ;; 7f:42ba $cb $27
    ld   [wD334], A                                    ;; 7f:42bc $ea $34 $d3
    ld   C, A                                          ;; 7f:42bf $4f
    ld   B, $00                                        ;; 7f:42c0 $06 $00
    add  HL, BC                                        ;; 7f:42c2 $09
    inc  DE                                            ;; 7f:42c3 $13
    ld   A, [DE]                                       ;; 7f:42c4 $1a
    ld   C, A                                          ;; 7f:42c5 $4f
    ld   A, [HL+]                                      ;; 7f:42c6 $2a
    and  A, C                                          ;; 7f:42c7 $a1
    ld   [wD35D], A                                    ;; 7f:42c8 $ea $5d $d3
    ld   A, [HL]                                       ;; 7f:42cb $7e
    and  A, C                                          ;; 7f:42cc $a1
    ld   [wD35E], A                                    ;; 7f:42cd $ea $5e $d3
    ld   HL, data_7f_4c77                              ;; 7f:42d0 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:42d3 $fa $6b $d3
    sla  A                                             ;; 7f:42d6 $cb $27
    ld   C, A                                          ;; 7f:42d8 $4f
    ld   B, $00                                        ;; 7f:42d9 $06 $00
    add  HL, BC                                        ;; 7f:42db $09
    ld   D, H                                          ;; 7f:42dc $54
    ld   E, L                                          ;; 7f:42dd $5d
    ld   HL, data_7f_7527                              ;; 7f:42de $21 $27 $75
    ld   A, [DE]                                       ;; 7f:42e1 $1a
    sla  A                                             ;; 7f:42e2 $cb $27
    ld   [wD335], A                                    ;; 7f:42e4 $ea $35 $d3
    ld   C, A                                          ;; 7f:42e7 $4f
    ld   B, $00                                        ;; 7f:42e8 $06 $00
    add  HL, BC                                        ;; 7f:42ea $09
    inc  DE                                            ;; 7f:42eb $13
    ld   A, [DE]                                       ;; 7f:42ec $1a
    ld   C, A                                          ;; 7f:42ed $4f
    ld   A, [HL+]                                      ;; 7f:42ee $2a
    and  A, C                                          ;; 7f:42ef $a1
    ld   [wD35F], A                                    ;; 7f:42f0 $ea $5f $d3
    ld   A, [HL]                                       ;; 7f:42f3 $7e
    and  A, C                                          ;; 7f:42f4 $a1
    ld   [wD360], A                                    ;; 7f:42f5 $ea $60 $d3
    ld   HL, data_7f_4c77                              ;; 7f:42f8 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:42fb $fa $6b $d3
    sla  A                                             ;; 7f:42fe $cb $27
    ld   C, A                                          ;; 7f:4300 $4f
    ld   B, $00                                        ;; 7f:4301 $06 $00
    add  HL, BC                                        ;; 7f:4303 $09
    ld   D, H                                          ;; 7f:4304 $54
    ld   E, L                                          ;; 7f:4305 $5d
    ld   HL, data_7f_7537                              ;; 7f:4306 $21 $37 $75
    ld   A, [DE]                                       ;; 7f:4309 $1a
    sla  A                                             ;; 7f:430a $cb $27
    ld   [wD336], A                                    ;; 7f:430c $ea $36 $d3
    ld   C, A                                          ;; 7f:430f $4f
    ld   B, $00                                        ;; 7f:4310 $06 $00
    add  HL, BC                                        ;; 7f:4312 $09
    inc  DE                                            ;; 7f:4313 $13
    ld   A, [DE]                                       ;; 7f:4314 $1a
    ld   C, A                                          ;; 7f:4315 $4f
    ld   A, [HL+]                                      ;; 7f:4316 $2a
    and  A, C                                          ;; 7f:4317 $a1
    ld   [wD361], A                                    ;; 7f:4318 $ea $61 $d3
    ld   A, [HL]                                       ;; 7f:431b $7e
    and  A, C                                          ;; 7f:431c $a1
    ld   [wD362], A                                    ;; 7f:431d $ea $62 $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4320 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4323 $fa $6b $d3
    sla  A                                             ;; 7f:4326 $cb $27
    ld   C, A                                          ;; 7f:4328 $4f
    ld   B, $00                                        ;; 7f:4329 $06 $00
    add  HL, BC                                        ;; 7f:432b $09
    ld   D, H                                          ;; 7f:432c $54
    ld   E, L                                          ;; 7f:432d $5d
    ld   HL, data_7f_7547                              ;; 7f:432e $21 $47 $75
    ld   A, [DE]                                       ;; 7f:4331 $1a
    sla  A                                             ;; 7f:4332 $cb $27
    ld   [wD337], A                                    ;; 7f:4334 $ea $37 $d3
    ld   C, A                                          ;; 7f:4337 $4f
    ld   B, $00                                        ;; 7f:4338 $06 $00
    add  HL, BC                                        ;; 7f:433a $09
    inc  DE                                            ;; 7f:433b $13
    ld   A, [DE]                                       ;; 7f:433c $1a
    ld   C, A                                          ;; 7f:433d $4f
    ld   A, [HL+]                                      ;; 7f:433e $2a
    and  A, C                                          ;; 7f:433f $a1
    ld   [wD363], A                                    ;; 7f:4340 $ea $63 $d3
    ld   A, [HL]                                       ;; 7f:4343 $7e
    and  A, C                                          ;; 7f:4344 $a1
    ld   [wD364], A                                    ;; 7f:4345 $ea $64 $d3
    ld   HL, data_7f_4d77                              ;; 7f:4348 $21 $77 $4d
    ld   A, [wD36B]                                    ;; 7f:434b $fa $6b $d3
    sla  A                                             ;; 7f:434e $cb $27
    ld   C, A                                          ;; 7f:4350 $4f
    ld   B, $00                                        ;; 7f:4351 $06 $00
    add  HL, BC                                        ;; 7f:4353 $09
    ld   D, H                                          ;; 7f:4354 $54
    ld   E, L                                          ;; 7f:4355 $5d
    ld   HL, data_7f_7557                              ;; 7f:4356 $21 $57 $75
    ld   A, [DE]                                       ;; 7f:4359 $1a
    sla  A                                             ;; 7f:435a $cb $27
    ld   [wD338], A                                    ;; 7f:435c $ea $38 $d3
    ld   C, A                                          ;; 7f:435f $4f
    ld   B, $00                                        ;; 7f:4360 $06 $00
    add  HL, BC                                        ;; 7f:4362 $09
    inc  DE                                            ;; 7f:4363 $13
    ld   A, [DE]                                       ;; 7f:4364 $1a
    ld   C, A                                          ;; 7f:4365 $4f
    ld   A, [HL+]                                      ;; 7f:4366 $2a
    and  A, C                                          ;; 7f:4367 $a1
    ld   [wD365], A                                    ;; 7f:4368 $ea $65 $d3
    ld   A, [HL]                                       ;; 7f:436b $7e
    and  A, C                                          ;; 7f:436c $a1
    ld   [wD366], A                                    ;; 7f:436d $ea $66 $d3
    ld   HL, data_7f_4cf7                              ;; 7f:4370 $21 $f7 $4c
    ld   A, [wD36B]                                    ;; 7f:4373 $fa $6b $d3
    sla  A                                             ;; 7f:4376 $cb $27
    ld   C, A                                          ;; 7f:4378 $4f
    ld   B, $00                                        ;; 7f:4379 $06 $00
    add  HL, BC                                        ;; 7f:437b $09
    ld   D, H                                          ;; 7f:437c $54
    ld   E, L                                          ;; 7f:437d $5d
    ld   HL, data_7f_7567                              ;; 7f:437e $21 $67 $75
    ld   A, [DE]                                       ;; 7f:4381 $1a
    sla  A                                             ;; 7f:4382 $cb $27
    ld   [wD339], A                                    ;; 7f:4384 $ea $39 $d3
    ld   C, A                                          ;; 7f:4387 $4f
    ld   B, $00                                        ;; 7f:4388 $06 $00
    add  HL, BC                                        ;; 7f:438a $09
    inc  DE                                            ;; 7f:438b $13
    ld   A, [DE]                                       ;; 7f:438c $1a
    ld   C, A                                          ;; 7f:438d $4f
    ld   A, [HL+]                                      ;; 7f:438e $2a
    and  A, C                                          ;; 7f:438f $a1
    ld   [wD367], A                                    ;; 7f:4390 $ea $67 $d3
    ld   A, [HL]                                       ;; 7f:4393 $7e
    and  A, C                                          ;; 7f:4394 $a1
    ld   [wD368], A                                    ;; 7f:4395 $ea $68 $d3
    ld   HL, data_7f_4c77                              ;; 7f:4398 $21 $77 $4c
    ld   A, [wD36B]                                    ;; 7f:439b $fa $6b $d3
    sla  A                                             ;; 7f:439e $cb $27
    ld   C, A                                          ;; 7f:43a0 $4f
    ld   B, $00                                        ;; 7f:43a1 $06 $00
    add  HL, BC                                        ;; 7f:43a3 $09
    ld   D, H                                          ;; 7f:43a4 $54
    ld   E, L                                          ;; 7f:43a5 $5d
    ld   HL, data_7f_7577                              ;; 7f:43a6 $21 $77 $75
    ld   A, [DE]                                       ;; 7f:43a9 $1a
    sla  A                                             ;; 7f:43aa $cb $27
    ld   [wD33A], A                                    ;; 7f:43ac $ea $3a $d3
    ld   C, A                                          ;; 7f:43af $4f
    ld   B, $00                                        ;; 7f:43b0 $06 $00
    add  HL, BC                                        ;; 7f:43b2 $09
    inc  DE                                            ;; 7f:43b3 $13
    ld   A, [DE]                                       ;; 7f:43b4 $1a
    ld   C, A                                          ;; 7f:43b5 $4f
    ld   A, [HL+]                                      ;; 7f:43b6 $2a
    and  A, C                                          ;; 7f:43b7 $a1
    ld   [wD369], A                                    ;; 7f:43b8 $ea $69 $d3
    ld   A, [HL]                                       ;; 7f:43bb $7e
    and  A, C                                          ;; 7f:43bc $a1
    ld   [wD36A], A                                    ;; 7f:43bd $ea $6a $d3
    ld   A, $03                                        ;; 7f:43c0 $3e $03
    ld   [wD36C], A                                    ;; 7f:43c2 $ea $6c $d3
    ret                                                ;; 7f:43c5 $c9

call_7f_43c6:
    ld   HL, $8280                                     ;; 7f:43c6 $21 $80 $82
    ld   A, [wD323]                                    ;; 7f:43c9 $fa $23 $d3
    ld   C, A                                          ;; 7f:43cc $4f
    ld   B, $00                                        ;; 7f:43cd $06 $00
    add  HL, BC                                        ;; 7f:43cf $09
    ld   A, [wD33B]                                    ;; 7f:43d0 $fa $3b $d3
    ld   C, A                                          ;; 7f:43d3 $4f
    ld   A, [HL]                                       ;; 7f:43d4 $7e
    or   A, C                                          ;; 7f:43d5 $b1
    ld   [HL+], A                                      ;; 7f:43d6 $22
    ld   A, [wD33C]                                    ;; 7f:43d7 $fa $3c $d3
    ld   C, A                                          ;; 7f:43da $4f
    ld   A, [HL]                                       ;; 7f:43db $7e
    or   A, C                                          ;; 7f:43dc $b1
    ld   [HL+], A                                      ;; 7f:43dd $22
    ld   HL, $8290                                     ;; 7f:43de $21 $90 $82
    ld   A, [wD324]                                    ;; 7f:43e1 $fa $24 $d3
    ld   C, A                                          ;; 7f:43e4 $4f
    ld   B, $00                                        ;; 7f:43e5 $06 $00
    add  HL, BC                                        ;; 7f:43e7 $09
    ld   A, [wD33D]                                    ;; 7f:43e8 $fa $3d $d3
    ld   C, A                                          ;; 7f:43eb $4f
    ld   A, [HL]                                       ;; 7f:43ec $7e
    or   A, C                                          ;; 7f:43ed $b1
    ld   [HL+], A                                      ;; 7f:43ee $22
    ld   A, [wD33E]                                    ;; 7f:43ef $fa $3e $d3
    ld   C, A                                          ;; 7f:43f2 $4f
    ld   A, [HL]                                       ;; 7f:43f3 $7e
    or   A, C                                          ;; 7f:43f4 $b1
    ld   [HL+], A                                      ;; 7f:43f5 $22
    ld   HL, $82a0                                     ;; 7f:43f6 $21 $a0 $82
    ld   A, [wD325]                                    ;; 7f:43f9 $fa $25 $d3
    ld   C, A                                          ;; 7f:43fc $4f
    ld   B, $00                                        ;; 7f:43fd $06 $00
    add  HL, BC                                        ;; 7f:43ff $09
    ld   A, [wD33F]                                    ;; 7f:4400 $fa $3f $d3
    ld   C, A                                          ;; 7f:4403 $4f
    ld   A, [HL]                                       ;; 7f:4404 $7e
    or   A, C                                          ;; 7f:4405 $b1
    ld   [HL+], A                                      ;; 7f:4406 $22
    ld   A, [wD340]                                    ;; 7f:4407 $fa $40 $d3
    ld   C, A                                          ;; 7f:440a $4f
    ld   A, [HL]                                       ;; 7f:440b $7e
    or   A, C                                          ;; 7f:440c $b1
    ld   [HL+], A                                      ;; 7f:440d $22
    ld   HL, $82b0                                     ;; 7f:440e $21 $b0 $82
    ld   A, [wD326]                                    ;; 7f:4411 $fa $26 $d3
    ld   C, A                                          ;; 7f:4414 $4f
    ld   B, $00                                        ;; 7f:4415 $06 $00
    add  HL, BC                                        ;; 7f:4417 $09
    ld   A, [wD341]                                    ;; 7f:4418 $fa $41 $d3
    ld   C, A                                          ;; 7f:441b $4f
    ld   A, [HL]                                       ;; 7f:441c $7e
    or   A, C                                          ;; 7f:441d $b1
    ld   [HL+], A                                      ;; 7f:441e $22
    ld   A, [wD342]                                    ;; 7f:441f $fa $42 $d3
    ld   C, A                                          ;; 7f:4422 $4f
    ld   A, [HL]                                       ;; 7f:4423 $7e
    or   A, C                                          ;; 7f:4424 $b1
    ld   [HL+], A                                      ;; 7f:4425 $22
    ld   HL, $82c0                                     ;; 7f:4426 $21 $c0 $82
    ld   A, [wD327]                                    ;; 7f:4429 $fa $27 $d3
    ld   C, A                                          ;; 7f:442c $4f
    ld   B, $00                                        ;; 7f:442d $06 $00
    add  HL, BC                                        ;; 7f:442f $09
    ld   A, [wD343]                                    ;; 7f:4430 $fa $43 $d3
    ld   C, A                                          ;; 7f:4433 $4f
    ld   A, [HL]                                       ;; 7f:4434 $7e
    or   A, C                                          ;; 7f:4435 $b1
    ld   [HL+], A                                      ;; 7f:4436 $22
    ld   A, [wD344]                                    ;; 7f:4437 $fa $44 $d3
    ld   C, A                                          ;; 7f:443a $4f
    ld   A, [HL]                                       ;; 7f:443b $7e
    or   A, C                                          ;; 7f:443c $b1
    ld   [HL+], A                                      ;; 7f:443d $22
    ld   HL, $82d0                                     ;; 7f:443e $21 $d0 $82
    ld   A, [wD328]                                    ;; 7f:4441 $fa $28 $d3
    ld   C, A                                          ;; 7f:4444 $4f
    ld   B, $00                                        ;; 7f:4445 $06 $00
    add  HL, BC                                        ;; 7f:4447 $09
    ld   A, [wD345]                                    ;; 7f:4448 $fa $45 $d3
    ld   C, A                                          ;; 7f:444b $4f
    ld   A, [HL]                                       ;; 7f:444c $7e
    or   A, C                                          ;; 7f:444d $b1
    ld   [HL+], A                                      ;; 7f:444e $22
    ld   A, [wD346]                                    ;; 7f:444f $fa $46 $d3
    ld   C, A                                          ;; 7f:4452 $4f
    ld   A, [HL]                                       ;; 7f:4453 $7e
    or   A, C                                          ;; 7f:4454 $b1
    ld   [HL+], A                                      ;; 7f:4455 $22
    ld   HL, $82e0                                     ;; 7f:4456 $21 $e0 $82
    ld   A, [wD329]                                    ;; 7f:4459 $fa $29 $d3
    ld   C, A                                          ;; 7f:445c $4f
    ld   B, $00                                        ;; 7f:445d $06 $00
    add  HL, BC                                        ;; 7f:445f $09
    ld   A, [wD347]                                    ;; 7f:4460 $fa $47 $d3
    ld   C, A                                          ;; 7f:4463 $4f
    ld   A, [HL]                                       ;; 7f:4464 $7e
    or   A, C                                          ;; 7f:4465 $b1
    ld   [HL+], A                                      ;; 7f:4466 $22
    ld   A, [wD348]                                    ;; 7f:4467 $fa $48 $d3
    ld   C, A                                          ;; 7f:446a $4f
    ld   A, [HL]                                       ;; 7f:446b $7e
    or   A, C                                          ;; 7f:446c $b1
    ld   [HL+], A                                      ;; 7f:446d $22
    ld   HL, $82f0                                     ;; 7f:446e $21 $f0 $82
    ld   A, [wD32A]                                    ;; 7f:4471 $fa $2a $d3
    ld   C, A                                          ;; 7f:4474 $4f
    ld   B, $00                                        ;; 7f:4475 $06 $00
    add  HL, BC                                        ;; 7f:4477 $09
    ld   A, [wD349]                                    ;; 7f:4478 $fa $49 $d3
    ld   C, A                                          ;; 7f:447b $4f
    ld   A, [HL]                                       ;; 7f:447c $7e
    or   A, C                                          ;; 7f:447d $b1
    ld   [HL+], A                                      ;; 7f:447e $22
    ld   A, [wD34A]                                    ;; 7f:447f $fa $4a $d3
    ld   C, A                                          ;; 7f:4482 $4f
    ld   A, [HL]                                       ;; 7f:4483 $7e
    or   A, C                                          ;; 7f:4484 $b1
    ld   [HL+], A                                      ;; 7f:4485 $22
    ld   HL, $8300                                     ;; 7f:4486 $21 $00 $83
    ld   A, [wD32B]                                    ;; 7f:4489 $fa $2b $d3
    ld   C, A                                          ;; 7f:448c $4f
    ld   B, $00                                        ;; 7f:448d $06 $00
    add  HL, BC                                        ;; 7f:448f $09
    ld   A, [wD34B]                                    ;; 7f:4490 $fa $4b $d3
    ld   C, A                                          ;; 7f:4493 $4f
    ld   A, [HL]                                       ;; 7f:4494 $7e
    or   A, C                                          ;; 7f:4495 $b1
    ld   [HL+], A                                      ;; 7f:4496 $22
    ld   A, [wD34C]                                    ;; 7f:4497 $fa $4c $d3
    ld   C, A                                          ;; 7f:449a $4f
    ld   A, [HL]                                       ;; 7f:449b $7e
    or   A, C                                          ;; 7f:449c $b1
    ld   [HL+], A                                      ;; 7f:449d $22
    ld   HL, $8310                                     ;; 7f:449e $21 $10 $83
    ld   A, [wD32C]                                    ;; 7f:44a1 $fa $2c $d3
    ld   C, A                                          ;; 7f:44a4 $4f
    ld   B, $00                                        ;; 7f:44a5 $06 $00
    add  HL, BC                                        ;; 7f:44a7 $09
    ld   A, [wD34D]                                    ;; 7f:44a8 $fa $4d $d3
    ld   C, A                                          ;; 7f:44ab $4f
    ld   A, [HL]                                       ;; 7f:44ac $7e
    or   A, C                                          ;; 7f:44ad $b1
    ld   [HL+], A                                      ;; 7f:44ae $22
    ld   A, [wD34E]                                    ;; 7f:44af $fa $4e $d3
    ld   C, A                                          ;; 7f:44b2 $4f
    ld   A, [HL]                                       ;; 7f:44b3 $7e
    or   A, C                                          ;; 7f:44b4 $b1
    ld   [HL+], A                                      ;; 7f:44b5 $22
    ld   HL, $8320                                     ;; 7f:44b6 $21 $20 $83
    ld   A, [wD32D]                                    ;; 7f:44b9 $fa $2d $d3
    ld   C, A                                          ;; 7f:44bc $4f
    ld   B, $00                                        ;; 7f:44bd $06 $00
    add  HL, BC                                        ;; 7f:44bf $09
    ld   A, [wD34F]                                    ;; 7f:44c0 $fa $4f $d3
    ld   C, A                                          ;; 7f:44c3 $4f
    ld   A, [HL]                                       ;; 7f:44c4 $7e
    or   A, C                                          ;; 7f:44c5 $b1
    ld   [HL+], A                                      ;; 7f:44c6 $22
    ld   A, [wD350]                                    ;; 7f:44c7 $fa $50 $d3
    ld   C, A                                          ;; 7f:44ca $4f
    ld   A, [HL]                                       ;; 7f:44cb $7e
    or   A, C                                          ;; 7f:44cc $b1
    ld   [HL+], A                                      ;; 7f:44cd $22
    ld   HL, $8330                                     ;; 7f:44ce $21 $30 $83
    ld   A, [wD32E]                                    ;; 7f:44d1 $fa $2e $d3
    ld   C, A                                          ;; 7f:44d4 $4f
    ld   B, $00                                        ;; 7f:44d5 $06 $00
    add  HL, BC                                        ;; 7f:44d7 $09
    ld   A, [wD351]                                    ;; 7f:44d8 $fa $51 $d3
    ld   C, A                                          ;; 7f:44db $4f
    ld   A, [HL]                                       ;; 7f:44dc $7e
    or   A, C                                          ;; 7f:44dd $b1
    ld   [HL+], A                                      ;; 7f:44de $22
    ld   A, [wD352]                                    ;; 7f:44df $fa $52 $d3
    ld   C, A                                          ;; 7f:44e2 $4f
    ld   A, [HL]                                       ;; 7f:44e3 $7e
    or   A, C                                          ;; 7f:44e4 $b1
    ld   [HL+], A                                      ;; 7f:44e5 $22
    ld   HL, $8340                                     ;; 7f:44e6 $21 $40 $83
    ld   A, [wD32F]                                    ;; 7f:44e9 $fa $2f $d3
    ld   C, A                                          ;; 7f:44ec $4f
    ld   B, $00                                        ;; 7f:44ed $06 $00
    add  HL, BC                                        ;; 7f:44ef $09
    ld   A, [wD353]                                    ;; 7f:44f0 $fa $53 $d3
    ld   C, A                                          ;; 7f:44f3 $4f
    ld   A, [HL]                                       ;; 7f:44f4 $7e
    or   A, C                                          ;; 7f:44f5 $b1
    ld   [HL+], A                                      ;; 7f:44f6 $22
    ld   A, [wD354]                                    ;; 7f:44f7 $fa $54 $d3
    ld   C, A                                          ;; 7f:44fa $4f
    ld   A, [HL]                                       ;; 7f:44fb $7e
    or   A, C                                          ;; 7f:44fc $b1
    ld   [HL+], A                                      ;; 7f:44fd $22
    ld   HL, $8350                                     ;; 7f:44fe $21 $50 $83
    ld   A, [wD330]                                    ;; 7f:4501 $fa $30 $d3
    ld   C, A                                          ;; 7f:4504 $4f
    ld   B, $00                                        ;; 7f:4505 $06 $00
    add  HL, BC                                        ;; 7f:4507 $09
    ld   A, [wD355]                                    ;; 7f:4508 $fa $55 $d3
    ld   C, A                                          ;; 7f:450b $4f
    ld   A, [HL]                                       ;; 7f:450c $7e
    or   A, C                                          ;; 7f:450d $b1
    ld   [HL+], A                                      ;; 7f:450e $22
    ld   A, [wD356]                                    ;; 7f:450f $fa $56 $d3
    ld   C, A                                          ;; 7f:4512 $4f
    ld   A, [HL]                                       ;; 7f:4513 $7e
    or   A, C                                          ;; 7f:4514 $b1
    ld   [HL+], A                                      ;; 7f:4515 $22
    ld   HL, $8360                                     ;; 7f:4516 $21 $60 $83
    ld   A, [wD331]                                    ;; 7f:4519 $fa $31 $d3
    ld   C, A                                          ;; 7f:451c $4f
    ld   B, $00                                        ;; 7f:451d $06 $00
    add  HL, BC                                        ;; 7f:451f $09
    ld   A, [wD357]                                    ;; 7f:4520 $fa $57 $d3
    ld   C, A                                          ;; 7f:4523 $4f
    ld   A, [HL]                                       ;; 7f:4524 $7e
    or   A, C                                          ;; 7f:4525 $b1
    ld   [HL+], A                                      ;; 7f:4526 $22
    ld   A, [wD358]                                    ;; 7f:4527 $fa $58 $d3
    ld   C, A                                          ;; 7f:452a $4f
    ld   A, [HL]                                       ;; 7f:452b $7e
    or   A, C                                          ;; 7f:452c $b1
    ld   [HL+], A                                      ;; 7f:452d $22
    ld   HL, $8370                                     ;; 7f:452e $21 $70 $83
    ld   A, [wD332]                                    ;; 7f:4531 $fa $32 $d3
    ld   C, A                                          ;; 7f:4534 $4f
    ld   B, $00                                        ;; 7f:4535 $06 $00
    add  HL, BC                                        ;; 7f:4537 $09
    ld   A, [wD359]                                    ;; 7f:4538 $fa $59 $d3
    ld   C, A                                          ;; 7f:453b $4f
    ld   A, [HL]                                       ;; 7f:453c $7e
    or   A, C                                          ;; 7f:453d $b1
    ld   [HL+], A                                      ;; 7f:453e $22
    ld   A, [wD35A]                                    ;; 7f:453f $fa $5a $d3
    ld   C, A                                          ;; 7f:4542 $4f
    ld   A, [HL]                                       ;; 7f:4543 $7e
    or   A, C                                          ;; 7f:4544 $b1
    ld   [HL+], A                                      ;; 7f:4545 $22
    ld   HL, $8380                                     ;; 7f:4546 $21 $80 $83
    ld   A, [wD333]                                    ;; 7f:4549 $fa $33 $d3
    ld   C, A                                          ;; 7f:454c $4f
    ld   B, $00                                        ;; 7f:454d $06 $00
    add  HL, BC                                        ;; 7f:454f $09
    ld   A, [wD35B]                                    ;; 7f:4550 $fa $5b $d3
    ld   C, A                                          ;; 7f:4553 $4f
    ld   A, [HL]                                       ;; 7f:4554 $7e
    or   A, C                                          ;; 7f:4555 $b1
    ld   [HL+], A                                      ;; 7f:4556 $22
    ld   A, [wD35C]                                    ;; 7f:4557 $fa $5c $d3
    ld   C, A                                          ;; 7f:455a $4f
    ld   A, [HL]                                       ;; 7f:455b $7e
    or   A, C                                          ;; 7f:455c $b1
    ld   [HL+], A                                      ;; 7f:455d $22
    ld   HL, $8390                                     ;; 7f:455e $21 $90 $83
    ld   A, [wD334]                                    ;; 7f:4561 $fa $34 $d3
    ld   C, A                                          ;; 7f:4564 $4f
    ld   B, $00                                        ;; 7f:4565 $06 $00
    add  HL, BC                                        ;; 7f:4567 $09
    ld   A, [wD35D]                                    ;; 7f:4568 $fa $5d $d3
    ld   C, A                                          ;; 7f:456b $4f
    ld   A, [HL]                                       ;; 7f:456c $7e
    or   A, C                                          ;; 7f:456d $b1
    ld   [HL+], A                                      ;; 7f:456e $22
    ld   A, [wD35E]                                    ;; 7f:456f $fa $5e $d3
    ld   C, A                                          ;; 7f:4572 $4f
    ld   A, [HL]                                       ;; 7f:4573 $7e
    or   A, C                                          ;; 7f:4574 $b1
    ld   [HL+], A                                      ;; 7f:4575 $22
    ld   HL, $83a0                                     ;; 7f:4576 $21 $a0 $83
    ld   A, [wD335]                                    ;; 7f:4579 $fa $35 $d3
    ld   C, A                                          ;; 7f:457c $4f
    ld   B, $00                                        ;; 7f:457d $06 $00
    add  HL, BC                                        ;; 7f:457f $09
    ld   A, [wD35F]                                    ;; 7f:4580 $fa $5f $d3
    ld   C, A                                          ;; 7f:4583 $4f
    ld   A, [HL]                                       ;; 7f:4584 $7e
    or   A, C                                          ;; 7f:4585 $b1
    ld   [HL+], A                                      ;; 7f:4586 $22
    ld   A, [wD360]                                    ;; 7f:4587 $fa $60 $d3
    ld   C, A                                          ;; 7f:458a $4f
    ld   A, [HL]                                       ;; 7f:458b $7e
    or   A, C                                          ;; 7f:458c $b1
    ld   [HL+], A                                      ;; 7f:458d $22
    ld   HL, $83b0                                     ;; 7f:458e $21 $b0 $83
    ld   A, [wD336]                                    ;; 7f:4591 $fa $36 $d3
    ld   C, A                                          ;; 7f:4594 $4f
    ld   B, $00                                        ;; 7f:4595 $06 $00
    add  HL, BC                                        ;; 7f:4597 $09
    ld   A, [wD361]                                    ;; 7f:4598 $fa $61 $d3
    ld   C, A                                          ;; 7f:459b $4f
    ld   A, [HL]                                       ;; 7f:459c $7e
    or   A, C                                          ;; 7f:459d $b1
    ld   [HL+], A                                      ;; 7f:459e $22
    ld   A, [wD362]                                    ;; 7f:459f $fa $62 $d3
    ld   C, A                                          ;; 7f:45a2 $4f
    ld   A, [HL]                                       ;; 7f:45a3 $7e
    or   A, C                                          ;; 7f:45a4 $b1
    ld   [HL+], A                                      ;; 7f:45a5 $22
    ld   HL, $83c0                                     ;; 7f:45a6 $21 $c0 $83
    ld   A, [wD337]                                    ;; 7f:45a9 $fa $37 $d3
    ld   C, A                                          ;; 7f:45ac $4f
    ld   B, $00                                        ;; 7f:45ad $06 $00
    add  HL, BC                                        ;; 7f:45af $09
    ld   A, [wD363]                                    ;; 7f:45b0 $fa $63 $d3
    ld   C, A                                          ;; 7f:45b3 $4f
    ld   A, [HL]                                       ;; 7f:45b4 $7e
    or   A, C                                          ;; 7f:45b5 $b1
    ld   [HL+], A                                      ;; 7f:45b6 $22
    ld   A, [wD364]                                    ;; 7f:45b7 $fa $64 $d3
    ld   C, A                                          ;; 7f:45ba $4f
    ld   A, [HL]                                       ;; 7f:45bb $7e
    or   A, C                                          ;; 7f:45bc $b1
    ld   [HL+], A                                      ;; 7f:45bd $22
    ld   HL, $83d0                                     ;; 7f:45be $21 $d0 $83
    ld   A, [wD338]                                    ;; 7f:45c1 $fa $38 $d3
    ld   C, A                                          ;; 7f:45c4 $4f
    ld   B, $00                                        ;; 7f:45c5 $06 $00
    add  HL, BC                                        ;; 7f:45c7 $09
    ld   A, [wD365]                                    ;; 7f:45c8 $fa $65 $d3
    ld   C, A                                          ;; 7f:45cb $4f
    ld   A, [HL]                                       ;; 7f:45cc $7e
    or   A, C                                          ;; 7f:45cd $b1
    ld   [HL+], A                                      ;; 7f:45ce $22
    ld   A, [wD366]                                    ;; 7f:45cf $fa $66 $d3
    ld   C, A                                          ;; 7f:45d2 $4f
    ld   A, [HL]                                       ;; 7f:45d3 $7e
    or   A, C                                          ;; 7f:45d4 $b1
    ld   [HL+], A                                      ;; 7f:45d5 $22
    ld   HL, $83e0                                     ;; 7f:45d6 $21 $e0 $83
    ld   A, [wD339]                                    ;; 7f:45d9 $fa $39 $d3
    ld   C, A                                          ;; 7f:45dc $4f
    ld   B, $00                                        ;; 7f:45dd $06 $00
    add  HL, BC                                        ;; 7f:45df $09
    ld   A, [wD367]                                    ;; 7f:45e0 $fa $67 $d3
    ld   C, A                                          ;; 7f:45e3 $4f
    ld   A, [HL]                                       ;; 7f:45e4 $7e
    or   A, C                                          ;; 7f:45e5 $b1
    ld   [HL+], A                                      ;; 7f:45e6 $22
    ld   A, [wD368]                                    ;; 7f:45e7 $fa $68 $d3
    ld   C, A                                          ;; 7f:45ea $4f
    ld   A, [HL]                                       ;; 7f:45eb $7e
    or   A, C                                          ;; 7f:45ec $b1
    ld   [HL+], A                                      ;; 7f:45ed $22
    ld   HL, $83f0                                     ;; 7f:45ee $21 $f0 $83
    ld   A, [wD33A]                                    ;; 7f:45f1 $fa $3a $d3
    ld   C, A                                          ;; 7f:45f4 $4f
    ld   B, $00                                        ;; 7f:45f5 $06 $00
    add  HL, BC                                        ;; 7f:45f7 $09
    ld   A, [wD369]                                    ;; 7f:45f8 $fa $69 $d3
    ld   C, A                                          ;; 7f:45fb $4f
    ld   A, [HL]                                       ;; 7f:45fc $7e
    or   A, C                                          ;; 7f:45fd $b1
    ld   [HL+], A                                      ;; 7f:45fe $22
    ld   A, [wD36A]                                    ;; 7f:45ff $fa $6a $d3
    ld   C, A                                          ;; 7f:4602 $4f
    ld   A, [HL]                                       ;; 7f:4603 $7e
    or   A, C                                          ;; 7f:4604 $b1
    ld   [HL+], A                                      ;; 7f:4605 $22
    ld   A, $02                                        ;; 7f:4606 $3e $02
    ld   [wD36C], A                                    ;; 7f:4608 $ea $6c $d3
    ld   A, [wD36B]                                    ;; 7f:460b $fa $6b $d3
    inc  A                                             ;; 7f:460e $3c
    ld   [wD36B], A                                    ;; 7f:460f $ea $6b $d3
    cp   A, $40                                        ;; 7f:4612 $fe $40
    ret  NZ                                            ;; 7f:4614 $c0
    ld   A, $01                                        ;; 7f:4615 $3e $01
    ld   [wD36C], A                                    ;; 7f:4617 $ea $6c $d3
    ret                                                ;; 7f:461a $c9
    db   $21, $77, $4e, $fa, $6b, $d3, $cb, $27        ;; 7f:461b ????????
    db   $4f, $06, $00, $09, $2a, $cb, $27, $ea        ;; 7f:4623 ????????
    db   $23, $d3, $7e, $ea, $3b, $d3, $21, $f7        ;; 7f:462b ????????
    db   $4d, $fa, $6b, $d3, $cb, $27, $4f, $06        ;; 7f:4633 ????????
    db   $00, $09, $2a, $cb, $27, $ea, $24, $d3        ;; 7f:463b ????????
    db   $7e, $ea, $3c, $d3, $21, $77, $4f, $fa        ;; 7f:4643 ????????
    db   $6b, $d3, $cb, $27, $4f, $06, $00, $09        ;; 7f:464b ????????
    db   $2a, $cb, $27, $ea, $25, $d3, $7e, $ea        ;; 7f:4653 ????????
    db   $3d, $d3, $21, $f7, $4e, $fa, $6b, $d3        ;; 7f:465b ????????
    db   $cb, $27, $4f, $06, $00, $09, $2a, $cb        ;; 7f:4663 ????????
    db   $27, $ea, $26, $d3, $7e, $ea, $3e, $d3        ;; 7f:466b ????????
    db   $21, $77, $4e, $fa, $6b, $d3, $cb, $27        ;; 7f:4673 ????????
    db   $4f, $06, $00, $09, $2a, $cb, $27, $ea        ;; 7f:467b ????????
    db   $27, $d3, $7e, $ea, $3f, $d3, $21, $f7        ;; 7f:4683 ????????
    db   $4d, $fa, $6b, $d3, $cb, $27, $4f, $06        ;; 7f:468b ????????
    db   $00, $09, $2a, $cb, $27, $ea, $28, $d3        ;; 7f:4693 ????????
    db   $7e, $ea, $40, $d3, $21, $77, $4f, $fa        ;; 7f:469b ????????
    db   $6b, $d3, $cb, $27, $4f, $06, $00, $09        ;; 7f:46a3 ????????
    db   $2a, $cb, $27, $ea, $29, $d3, $7e, $ea        ;; 7f:46ab ????????
    db   $41, $d3, $21, $f7, $4e, $fa, $6b, $d3        ;; 7f:46b3 ????????
    db   $cb, $27, $4f, $06, $00, $09, $2a, $cb        ;; 7f:46bb ????????
    db   $27, $ea, $2a, $d3, $7e, $ea, $42, $d3        ;; 7f:46c3 ????????
    db   $3e, $03, $ea, $6d, $d3, $c9, $fa, $70        ;; 7f:46cb ????????
    db   $d3, $67, $fa, $71, $d3, $6f, $fa, $23        ;; 7f:46d3 ????????
    db   $d3, $4f, $06, $00, $09, $fa, $3b, $d3        ;; 7f:46db ????????
    db   $57, $7e, $a2, $22, $7e, $a2, $77, $fa        ;; 7f:46e3 ????????
    db   $70, $d3, $67, $fa, $71, $d3, $6f, $16        ;; 7f:46eb ????????
    db   $10, $fa, $24, $d3, $82, $4f, $06, $00        ;; 7f:46f3 ????????
    db   $09, $fa, $3c, $d3, $57, $7e, $a2, $22        ;; 7f:46fb ????????
    db   $7e, $a2, $77, $fa, $70, $d3, $67, $fa        ;; 7f:4703 ????????
    db   $71, $d3, $6f, $16, $20, $fa, $25, $d3        ;; 7f:470b ????????
    db   $82, $4f, $06, $00, $09, $fa, $3d, $d3        ;; 7f:4713 ????????
    db   $57, $7e, $a2, $22, $7e, $a2, $77, $fa        ;; 7f:471b ????????
    db   $70, $d3, $67, $fa, $71, $d3, $6f, $16        ;; 7f:4723 ????????
    db   $30, $fa, $26, $d3, $82, $4f, $06, $00        ;; 7f:472b ????????
    db   $09, $fa, $3e, $d3, $57, $7e, $a2, $22        ;; 7f:4733 ????????
    db   $7e, $a2, $77, $fa, $70, $d3, $67, $fa        ;; 7f:473b ????????
    db   $71, $d3, $6f, $16, $40, $fa, $27, $d3        ;; 7f:4743 ????????
    db   $82, $4f, $06, $00, $09, $fa, $3f, $d3        ;; 7f:474b ????????
    db   $57, $7e, $a2, $22, $7e, $a2, $77, $fa        ;; 7f:4753 ????????
    db   $70, $d3, $67, $fa, $71, $d3, $6f, $16        ;; 7f:475b ????????
    db   $50, $fa, $28, $d3, $82, $4f, $06, $00        ;; 7f:4763 ????????
    db   $09, $fa, $40, $d3, $57, $7e, $a2, $22        ;; 7f:476b ????????
    db   $7e, $a2, $77, $fa, $70, $d3, $67, $fa        ;; 7f:4773 ????????
    db   $71, $d3, $6f, $16, $60, $fa, $29, $d3        ;; 7f:477b ????????
    db   $82, $4f, $06, $00, $09, $fa, $41, $d3        ;; 7f:4783 ????????
    db   $57, $7e, $a2, $22, $7e, $a2, $77, $fa        ;; 7f:478b ????????
    db   $70, $d3, $67, $fa, $71, $d3, $6f, $16        ;; 7f:4793 ????????
    db   $70, $fa, $2a, $d3, $82, $4f, $06, $00        ;; 7f:479b ????????
    db   $09, $fa, $42, $d3, $57, $7e, $a2, $22        ;; 7f:47a3 ????????
    db   $7e, $a2, $77, $3e, $02, $ea, $6d, $d3        ;; 7f:47ab ????????
    db   $fa, $6b, $d3, $3c, $ea, $6b, $d3, $fe        ;; 7f:47b3 ????????
    db   $40, $c0, $3e, $00, $ea, $6d, $d3, $c9        ;; 7f:47bb ????????

call_7f_47c3:
    ld   A, [wD36B]                                    ;; 7f:47c3 $fa $6b $d3
    cp   A, $10                                        ;; 7f:47c6 $fe $10
    jr   NC, .jr_7f_4800                               ;; 7f:47c8 $30 $36
    ld   HL, data_7f_4ff7                              ;; 7f:47ca $21 $f7 $4f
    ld   A, [wD372]                                    ;; 7f:47cd $fa $72 $d3
    cp   A, $08                                        ;; 7f:47d0 $fe $08
    jr   C, .jr_7f_47dd                                ;; 7f:47d2 $38 $09
    sub  A, $08                                        ;; 7f:47d4 $d6 $08
    ld   C, A                                          ;; 7f:47d6 $4f
    ld   B, $00                                        ;; 7f:47d7 $06 $00
    add  HL, BC                                        ;; 7f:47d9 $09
    ld   A, $08                                        ;; 7f:47da $3e $08
    sub  A, C                                          ;; 7f:47dc $91
.jr_7f_47dd:
    ld   D, H                                          ;; 7f:47dd $54
    ld   E, L                                          ;; 7f:47de $5d
    ld   HL, wD33B                                     ;; 7f:47df $21 $3b $d3
    inc  A                                             ;; 7f:47e2 $3c
    ld   B, A                                          ;; 7f:47e3 $47
    ld   C, A                                          ;; 7f:47e4 $4f
.jr_7f_47e5:
    ld   A, [DE]                                       ;; 7f:47e5 $1a
    ld   [HL+], A                                      ;; 7f:47e6 $22
    inc  DE                                            ;; 7f:47e7 $13
    dec  B                                             ;; 7f:47e8 $05
    jr   NZ, .jr_7f_47e5                               ;; 7f:47e9 $20 $fa
    ld   A, [wD372]                                    ;; 7f:47eb $fa $72 $d3
    cp   A, $08                                        ;; 7f:47ee $fe $08
    jr   C, .jr_7f_47f4                                ;; 7f:47f0 $38 $02
    ld   A, $07                                        ;; 7f:47f2 $3e $07
.jr_7f_47f4:
    sla  A                                             ;; 7f:47f4 $cb $27
    ld   [wD323], A                                    ;; 7f:47f6 $ea $23 $d3
    ld   A, [wD36B]                                    ;; 7f:47f9 $fa $6b $d3
    cp   A, $08                                        ;; 7f:47fc $fe $08
    jr   C, .jr_7f_486c                                ;; 7f:47fe $38 $6c
.jr_7f_4800:
    ld   A, [wD36B]                                    ;; 7f:4800 $fa $6b $d3
    cp   A, $18                                        ;; 7f:4803 $fe $18
    jr   NC, .jr_7f_483d                               ;; 7f:4805 $30 $36
    ld   HL, data_7f_4ff7                              ;; 7f:4807 $21 $f7 $4f
    ld   A, [wD373]                                    ;; 7f:480a $fa $73 $d3
    cp   A, $08                                        ;; 7f:480d $fe $08
    jr   C, .jr_7f_481a                                ;; 7f:480f $38 $09
    sub  A, $08                                        ;; 7f:4811 $d6 $08
    ld   C, A                                          ;; 7f:4813 $4f
    ld   B, $00                                        ;; 7f:4814 $06 $00
    ld   A, $08                                        ;; 7f:4816 $3e $08
    sub  A, C                                          ;; 7f:4818 $91
    add  HL, BC                                        ;; 7f:4819 $09
.jr_7f_481a:
    ld   D, H                                          ;; 7f:481a $54
    ld   E, L                                          ;; 7f:481b $5d
    ld   HL, wD343                                     ;; 7f:481c $21 $43 $d3
    inc  A                                             ;; 7f:481f $3c
    ld   B, A                                          ;; 7f:4820 $47
    ld   C, A                                          ;; 7f:4821 $4f
.jr_7f_4822:
    ld   A, [DE]                                       ;; 7f:4822 $1a
    ld   [HL+], A                                      ;; 7f:4823 $22
    inc  DE                                            ;; 7f:4824 $13
    dec  B                                             ;; 7f:4825 $05
    jr   NZ, .jr_7f_4822                               ;; 7f:4826 $20 $fa
    ld   A, [wD373]                                    ;; 7f:4828 $fa $73 $d3
    cp   A, $08                                        ;; 7f:482b $fe $08
    jr   C, .jr_7f_4831                                ;; 7f:482d $38 $02
    ld   A, $07                                        ;; 7f:482f $3e $07
.jr_7f_4831:
    sla  A                                             ;; 7f:4831 $cb $27
    ld   [wD324], A                                    ;; 7f:4833 $ea $24 $d3
    ld   A, [wD36B]                                    ;; 7f:4836 $fa $6b $d3
    cp   A, $10                                        ;; 7f:4839 $fe $10
    jr   C, .jr_7f_486c                                ;; 7f:483b $38 $2f
.jr_7f_483d:
    ld   HL, data_7f_4ff7                              ;; 7f:483d $21 $f7 $4f
    ld   A, [wD374]                                    ;; 7f:4840 $fa $74 $d3
    cp   A, $08                                        ;; 7f:4843 $fe $08
    jr   C, .jr_7f_4850                                ;; 7f:4845 $38 $09
    sub  A, $08                                        ;; 7f:4847 $d6 $08
    ld   C, A                                          ;; 7f:4849 $4f
    ld   B, $00                                        ;; 7f:484a $06 $00
    add  HL, BC                                        ;; 7f:484c $09
    ld   A, $08                                        ;; 7f:484d $3e $08
    sub  A, C                                          ;; 7f:484f $91
.jr_7f_4850:
    ld   D, H                                          ;; 7f:4850 $54
    ld   E, L                                          ;; 7f:4851 $5d
    ld   HL, wD34B                                     ;; 7f:4852 $21 $4b $d3
    inc  A                                             ;; 7f:4855 $3c
    ld   B, A                                          ;; 7f:4856 $47
    ld   C, A                                          ;; 7f:4857 $4f
.jr_7f_4858:
    ld   A, [DE]                                       ;; 7f:4858 $1a
    ld   [HL+], A                                      ;; 7f:4859 $22
    inc  DE                                            ;; 7f:485a $13
    dec  B                                             ;; 7f:485b $05
    jr   NZ, .jr_7f_4858                               ;; 7f:485c $20 $fa
    ld   A, [wD374]                                    ;; 7f:485e $fa $74 $d3
    cp   A, $08                                        ;; 7f:4861 $fe $08
    jr   C, .jr_7f_4867                                ;; 7f:4863 $38 $02
    ld   A, $07                                        ;; 7f:4865 $3e $07
.jr_7f_4867:
    sla  A                                             ;; 7f:4867 $cb $27
    ld   [wD325], A                                    ;; 7f:4869 $ea $25 $d3
.jr_7f_486c:
    ld   A, $03                                        ;; 7f:486c $3e $03
    ld   [wD36D], A                                    ;; 7f:486e $ea $6d $d3
    ret                                                ;; 7f:4871 $c9

call_7f_4872:
    ld   A, [wD36E]                                    ;; 7f:4872 $fa $6e $d3
    and  A, A                                          ;; 7f:4875 $a7
    jp   NZ, .jp_7f_4943                               ;; 7f:4876 $c2 $43 $49
    ld   A, [wD36B]                                    ;; 7f:4879 $fa $6b $d3
    cp   A, $10                                        ;; 7f:487c $fe $10
    jr   NC, .jr_7f_48f2                               ;; 7f:487e $30 $72
    ld   A, [wD370]                                    ;; 7f:4880 $fa $70 $d3
    ld   H, A                                          ;; 7f:4883 $67
    ld   A, [wD371]                                    ;; 7f:4884 $fa $71 $d3
    ld   L, A                                          ;; 7f:4887 $6f
    ld   A, [wD323]                                    ;; 7f:4888 $fa $23 $d3
    ld   C, A                                          ;; 7f:488b $4f
    ld   B, $00                                        ;; 7f:488c $06 $00
    add  HL, BC                                        ;; 7f:488e $09
    ld   A, [wD372]                                    ;; 7f:488f $fa $72 $d3
    cp   A, $08                                        ;; 7f:4892 $fe $08
    jr   C, .jr_7f_489c                                ;; 7f:4894 $38 $06
    sub  A, $08                                        ;; 7f:4896 $d6 $08
    ld   C, A                                          ;; 7f:4898 $4f
    ld   A, $08                                        ;; 7f:4899 $3e $08
    sub  A, C                                          ;; 7f:489b $91
.jr_7f_489c:
    ld   C, A                                          ;; 7f:489c $4f
    inc  C                                             ;; 7f:489d $0c
    ld   DE, wD33B                                     ;; 7f:489e $11 $3b $d3
.jr_7f_48a1:
    ld   A, [DE]                                       ;; 7f:48a1 $1a
    ld   B, A                                          ;; 7f:48a2 $47
    ld   A, [HL]                                       ;; 7f:48a3 $7e
    and  A, B                                          ;; 7f:48a4 $a0
    ld   [HL+], A                                      ;; 7f:48a5 $22
    ld   A, [HL]                                       ;; 7f:48a6 $7e
    and  A, B                                          ;; 7f:48a7 $a0
    ld   [HL], A                                       ;; 7f:48a8 $77
    inc  DE                                            ;; 7f:48a9 $13
    dec  HL                                            ;; 7f:48aa $2b
    dec  HL                                            ;; 7f:48ab $2b
    dec  HL                                            ;; 7f:48ac $2b
    dec  C                                             ;; 7f:48ad $0d
    jr   NZ, .jr_7f_48a1                               ;; 7f:48ae $20 $f1
    ld   D, $40                                        ;; 7f:48b0 $16 $40
    ld   A, [wD370]                                    ;; 7f:48b2 $fa $70 $d3
    ld   H, A                                          ;; 7f:48b5 $67
    ld   A, [wD371]                                    ;; 7f:48b6 $fa $71 $d3
    ld   L, A                                          ;; 7f:48b9 $6f
    ld   A, [wD323]                                    ;; 7f:48ba $fa $23 $d3
    add  A, D                                          ;; 7f:48bd $82
    ld   C, A                                          ;; 7f:48be $4f
    ld   B, $00                                        ;; 7f:48bf $06 $00
    add  HL, BC                                        ;; 7f:48c1 $09
    ld   A, [wD372]                                    ;; 7f:48c2 $fa $72 $d3
    cp   A, $08                                        ;; 7f:48c5 $fe $08
    jr   C, .jr_7f_48cf                                ;; 7f:48c7 $38 $06
    sub  A, $08                                        ;; 7f:48c9 $d6 $08
    ld   C, A                                          ;; 7f:48cb $4f
    ld   A, $08                                        ;; 7f:48cc $3e $08
    sub  A, C                                          ;; 7f:48ce $91
.jr_7f_48cf:
    ld   C, A                                          ;; 7f:48cf $4f
    inc  C                                             ;; 7f:48d0 $0c
    ld   DE, wD33B                                     ;; 7f:48d1 $11 $3b $d3
.jr_7f_48d4:
    ld   A, [DE]                                       ;; 7f:48d4 $1a
    ld   B, A                                          ;; 7f:48d5 $47
    ld   A, [HL]                                       ;; 7f:48d6 $7e
    and  A, B                                          ;; 7f:48d7 $a0
    ld   [HL+], A                                      ;; 7f:48d8 $22
    ld   A, [HL]                                       ;; 7f:48d9 $7e
    and  A, B                                          ;; 7f:48da $a0
    ld   [HL], A                                       ;; 7f:48db $77
    inc  DE                                            ;; 7f:48dc $13
    dec  HL                                            ;; 7f:48dd $2b
    dec  HL                                            ;; 7f:48de $2b
    dec  HL                                            ;; 7f:48df $2b
    dec  C                                             ;; 7f:48e0 $0d
    jr   NZ, .jr_7f_48d4                               ;; 7f:48e1 $20 $f1
    ld   A, [wD372]                                    ;; 7f:48e3 $fa $72 $d3
    inc  A                                             ;; 7f:48e6 $3c
    ld   [wD372], A                                    ;; 7f:48e7 $ea $72 $d3
    ld   A, [wD36B]                                    ;; 7f:48ea $fa $6b $d3
    cp   A, $08                                        ;; 7f:48ed $fe $08
    jp   C, .jp_7f_4a08                                ;; 7f:48ef $da $08 $4a
.jr_7f_48f2:
    ld   A, [wD36B]                                    ;; 7f:48f2 $fa $6b $d3
    cp   A, $18                                        ;; 7f:48f5 $fe $18
    jp   NC, .jp_7f_499b                               ;; 7f:48f7 $d2 $9b $49
    ld   D, $10                                        ;; 7f:48fa $16 $10
    xor  A, A                                          ;; 7f:48fc $af
    ld   [wD4F7], A                                    ;; 7f:48fd $ea $f7 $d4
.jp_7f_4900:
    ld   A, [wD370]                                    ;; 7f:4900 $fa $70 $d3
    ld   H, A                                          ;; 7f:4903 $67
    ld   A, [wD371]                                    ;; 7f:4904 $fa $71 $d3
    ld   L, A                                          ;; 7f:4907 $6f
    ld   A, [wD324]                                    ;; 7f:4908 $fa $24 $d3
    add  A, D                                          ;; 7f:490b $82
    ld   C, A                                          ;; 7f:490c $4f
    ld   B, $00                                        ;; 7f:490d $06 $00
    add  HL, BC                                        ;; 7f:490f $09
    ld   A, [wD373]                                    ;; 7f:4910 $fa $73 $d3
    cp   A, $08                                        ;; 7f:4913 $fe $08
    jr   C, .jr_7f_491d                                ;; 7f:4915 $38 $06
    sub  A, $08                                        ;; 7f:4917 $d6 $08
    ld   C, A                                          ;; 7f:4919 $4f
    ld   A, $08                                        ;; 7f:491a $3e $08
    sub  A, C                                          ;; 7f:491c $91
.jr_7f_491d:
    ld   C, A                                          ;; 7f:491d $4f
    inc  C                                             ;; 7f:491e $0c
    ld   DE, wD343                                     ;; 7f:491f $11 $43 $d3
.jr_7f_4922:
    ld   A, [DE]                                       ;; 7f:4922 $1a
    ld   B, A                                          ;; 7f:4923 $47
    ld   A, [HL]                                       ;; 7f:4924 $7e
    and  A, B                                          ;; 7f:4925 $a0
    ld   [HL+], A                                      ;; 7f:4926 $22
    ld   A, [HL]                                       ;; 7f:4927 $7e
    and  A, B                                          ;; 7f:4928 $a0
    ld   [HL], A                                       ;; 7f:4929 $77
    inc  DE                                            ;; 7f:492a $13
    dec  HL                                            ;; 7f:492b $2b
    dec  HL                                            ;; 7f:492c $2b
    dec  HL                                            ;; 7f:492d $2b
    dec  C                                             ;; 7f:492e $0d
    jr   NZ, .jr_7f_4922                               ;; 7f:492f $20 $f1
    ld   D, $20                                        ;; 7f:4931 $16 $20
    ld   A, [wD4F7]                                    ;; 7f:4933 $fa $f7 $d4
    inc  A                                             ;; 7f:4936 $3c
    ld   [wD4F7], A                                    ;; 7f:4937 $ea $f7 $d4
    cp   A, $01                                        ;; 7f:493a $fe $01
    jp   Z, .jp_7f_4900                                ;; 7f:493c $ca $00 $49
    ld   [wD36E], A                                    ;; 7f:493f $ea $6e $d3
    ret                                                ;; 7f:4942 $c9
.jp_7f_4943:
    xor  A, A                                          ;; 7f:4943 $af
    ld   [wD36E], A                                    ;; 7f:4944 $ea $6e $d3
    ld   D, $50                                        ;; 7f:4947 $16 $50
    xor  A, A                                          ;; 7f:4949 $af
    ld   [wD4F7], A                                    ;; 7f:494a $ea $f7 $d4
.jp_7f_494d:
    ld   A, [wD370]                                    ;; 7f:494d $fa $70 $d3
    ld   H, A                                          ;; 7f:4950 $67
    ld   A, [wD371]                                    ;; 7f:4951 $fa $71 $d3
    ld   L, A                                          ;; 7f:4954 $6f
    ld   A, [wD324]                                    ;; 7f:4955 $fa $24 $d3
    add  A, D                                          ;; 7f:4958 $82
    ld   C, A                                          ;; 7f:4959 $4f
    ld   B, $00                                        ;; 7f:495a $06 $00
    add  HL, BC                                        ;; 7f:495c $09
    ld   A, [wD373]                                    ;; 7f:495d $fa $73 $d3
    cp   A, $08                                        ;; 7f:4960 $fe $08
    jr   C, .jr_7f_496a                                ;; 7f:4962 $38 $06
    sub  A, $08                                        ;; 7f:4964 $d6 $08
    ld   C, A                                          ;; 7f:4966 $4f
    ld   A, $08                                        ;; 7f:4967 $3e $08
    sub  A, C                                          ;; 7f:4969 $91
.jr_7f_496a:
    ld   C, A                                          ;; 7f:496a $4f
    inc  C                                             ;; 7f:496b $0c
    ld   DE, wD343                                     ;; 7f:496c $11 $43 $d3
.jr_7f_496f:
    ld   A, [DE]                                       ;; 7f:496f $1a
    ld   B, A                                          ;; 7f:4970 $47
    ld   A, [HL]                                       ;; 7f:4971 $7e
    and  A, B                                          ;; 7f:4972 $a0
    ld   [HL+], A                                      ;; 7f:4973 $22
    ld   A, [HL]                                       ;; 7f:4974 $7e
    and  A, B                                          ;; 7f:4975 $a0
    ld   [HL], A                                       ;; 7f:4976 $77
    inc  DE                                            ;; 7f:4977 $13
    dec  HL                                            ;; 7f:4978 $2b
    dec  HL                                            ;; 7f:4979 $2b
    dec  HL                                            ;; 7f:497a $2b
    dec  C                                             ;; 7f:497b $0d
    jr   NZ, .jr_7f_496f                               ;; 7f:497c $20 $f1
    ld   D, $60                                        ;; 7f:497e $16 $60
    ld   A, [wD4F7]                                    ;; 7f:4980 $fa $f7 $d4
    inc  A                                             ;; 7f:4983 $3c
    ld   [wD4F7], A                                    ;; 7f:4984 $ea $f7 $d4
    cp   A, $01                                        ;; 7f:4987 $fe $01
    jp   Z, .jp_7f_494d                                ;; 7f:4989 $ca $4d $49
    ld   A, [wD373]                                    ;; 7f:498c $fa $73 $d3
    inc  A                                             ;; 7f:498f $3c
    ld   [wD373], A                                    ;; 7f:4990 $ea $73 $d3
    ld   A, [wD36B]                                    ;; 7f:4993 $fa $6b $d3
    cp   A, $10                                        ;; 7f:4996 $fe $10
    jp   C, .jp_7f_4a08                                ;; 7f:4998 $da $08 $4a
.jp_7f_499b:
    ld   A, [wD370]                                    ;; 7f:499b $fa $70 $d3
    ld   H, A                                          ;; 7f:499e $67
    ld   A, [wD371]                                    ;; 7f:499f $fa $71 $d3
    ld   L, A                                          ;; 7f:49a2 $6f
    ld   D, $30                                        ;; 7f:49a3 $16 $30
    ld   A, [wD325]                                    ;; 7f:49a5 $fa $25 $d3
    add  A, D                                          ;; 7f:49a8 $82
    ld   C, A                                          ;; 7f:49a9 $4f
    ld   B, $00                                        ;; 7f:49aa $06 $00
    add  HL, BC                                        ;; 7f:49ac $09
    ld   A, [wD374]                                    ;; 7f:49ad $fa $74 $d3
    cp   A, $08                                        ;; 7f:49b0 $fe $08
    jr   C, .jr_7f_49ba                                ;; 7f:49b2 $38 $06
    sub  A, $08                                        ;; 7f:49b4 $d6 $08
    ld   C, A                                          ;; 7f:49b6 $4f
    ld   A, $08                                        ;; 7f:49b7 $3e $08
    sub  A, C                                          ;; 7f:49b9 $91
.jr_7f_49ba:
    ld   C, A                                          ;; 7f:49ba $4f
    inc  C                                             ;; 7f:49bb $0c
    ld   DE, wD34B                                     ;; 7f:49bc $11 $4b $d3
.jr_7f_49bf:
    ld   A, [DE]                                       ;; 7f:49bf $1a
    ld   B, A                                          ;; 7f:49c0 $47
    ld   A, [HL]                                       ;; 7f:49c1 $7e
    and  A, B                                          ;; 7f:49c2 $a0
    ld   [HL+], A                                      ;; 7f:49c3 $22
    ld   A, [HL]                                       ;; 7f:49c4 $7e
    and  A, B                                          ;; 7f:49c5 $a0
    ld   [HL], A                                       ;; 7f:49c6 $77
    inc  DE                                            ;; 7f:49c7 $13
    dec  HL                                            ;; 7f:49c8 $2b
    dec  HL                                            ;; 7f:49c9 $2b
    dec  HL                                            ;; 7f:49ca $2b
    dec  C                                             ;; 7f:49cb $0d
    jr   NZ, .jr_7f_49bf                               ;; 7f:49cc $20 $f1
    ld   A, [wD370]                                    ;; 7f:49ce $fa $70 $d3
    ld   H, A                                          ;; 7f:49d1 $67
    ld   A, [wD371]                                    ;; 7f:49d2 $fa $71 $d3
    ld   L, A                                          ;; 7f:49d5 $6f
    ld   D, $70                                        ;; 7f:49d6 $16 $70
    ld   A, [wD325]                                    ;; 7f:49d8 $fa $25 $d3
    add  A, D                                          ;; 7f:49db $82
    ld   C, A                                          ;; 7f:49dc $4f
    ld   B, $00                                        ;; 7f:49dd $06 $00
    add  HL, BC                                        ;; 7f:49df $09
    ld   A, [wD374]                                    ;; 7f:49e0 $fa $74 $d3
    cp   A, $08                                        ;; 7f:49e3 $fe $08
    jr   C, .jr_7f_49ed                                ;; 7f:49e5 $38 $06
    sub  A, $08                                        ;; 7f:49e7 $d6 $08
    ld   C, A                                          ;; 7f:49e9 $4f
    ld   A, $08                                        ;; 7f:49ea $3e $08
    sub  A, C                                          ;; 7f:49ec $91
.jr_7f_49ed:
    ld   C, A                                          ;; 7f:49ed $4f
    inc  C                                             ;; 7f:49ee $0c
    ld   DE, wD34B                                     ;; 7f:49ef $11 $4b $d3
.jr_7f_49f2:
    ld   A, [DE]                                       ;; 7f:49f2 $1a
    ld   B, A                                          ;; 7f:49f3 $47
    ld   A, [HL]                                       ;; 7f:49f4 $7e
    and  A, B                                          ;; 7f:49f5 $a0
    ld   [HL+], A                                      ;; 7f:49f6 $22
    ld   A, [HL]                                       ;; 7f:49f7 $7e
    and  A, B                                          ;; 7f:49f8 $a0
    ld   [HL], A                                       ;; 7f:49f9 $77
    inc  DE                                            ;; 7f:49fa $13
    dec  HL                                            ;; 7f:49fb $2b
    dec  HL                                            ;; 7f:49fc $2b
    dec  HL                                            ;; 7f:49fd $2b
    dec  C                                             ;; 7f:49fe $0d
    jr   NZ, .jr_7f_49f2                               ;; 7f:49ff $20 $f1
    ld   A, [wD374]                                    ;; 7f:4a01 $fa $74 $d3
    inc  A                                             ;; 7f:4a04 $3c
    ld   [wD374], A                                    ;; 7f:4a05 $ea $74 $d3
.jp_7f_4a08:
    ld   A, $02                                        ;; 7f:4a08 $3e $02
    ld   [wD36D], A                                    ;; 7f:4a0a $ea $6d $d3
    ld   A, [wD36B]                                    ;; 7f:4a0d $fa $6b $d3
    inc  A                                             ;; 7f:4a10 $3c
    ld   [wD36B], A                                    ;; 7f:4a11 $ea $6b $d3
    cp   A, $20                                        ;; 7f:4a14 $fe $20
    ret  NZ                                            ;; 7f:4a16 $c0
    ld   A, $00                                        ;; 7f:4a17 $3e $00
    ld   [wD36D], A                                    ;; 7f:4a19 $ea $6d $d3
    ret                                                ;; 7f:4a1c $c9

call_7f_4a1d:
    ld   A, [wD36B]                                    ;; 7f:4a1d $fa $6b $d3
    cp   A, $10                                        ;; 7f:4a20 $fe $10
    jr   NC, .jr_7f_4a60                               ;; 7f:4a22 $30 $3c
    ld   HL, data_7f_4fff                              ;; 7f:4a24 $21 $ff $4f
    ld   A, [wD372]                                    ;; 7f:4a27 $fa $72 $d3
    cp   A, $08                                        ;; 7f:4a2a $fe $08
    jr   C, .jr_7f_4a37                                ;; 7f:4a2c $38 $09
    sub  A, $08                                        ;; 7f:4a2e $d6 $08
    ld   C, A                                          ;; 7f:4a30 $4f
    ld   B, $00                                        ;; 7f:4a31 $06 $00
    add  HL, BC                                        ;; 7f:4a33 $09
    ld   A, $08                                        ;; 7f:4a34 $3e $08
    sub  A, C                                          ;; 7f:4a36 $91
.jr_7f_4a37:
    ld   D, H                                          ;; 7f:4a37 $54
    ld   E, L                                          ;; 7f:4a38 $5d
    ld   HL, wD33B                                     ;; 7f:4a39 $21 $3b $d3
    inc  A                                             ;; 7f:4a3c $3c
    ld   B, A                                          ;; 7f:4a3d $47
    ld   C, A                                          ;; 7f:4a3e $4f
.jr_7f_4a3f:
    ld   A, [DE]                                       ;; 7f:4a3f $1a
    ld   [HL+], A                                      ;; 7f:4a40 $22
    inc  DE                                            ;; 7f:4a41 $13
    dec  B                                             ;; 7f:4a42 $05
    jr   NZ, .jr_7f_4a3f                               ;; 7f:4a43 $20 $fa
    ld   A, [wD372]                                    ;; 7f:4a45 $fa $72 $d3
    cp   A, $08                                        ;; 7f:4a48 $fe $08
    jr   NC, .jr_7f_4a52                               ;; 7f:4a4a $30 $06
    ld   C, A                                          ;; 7f:4a4c $4f
    ld   A, $08                                        ;; 7f:4a4d $3e $08
    sub  A, C                                          ;; 7f:4a4f $91
    jr   .jr_7f_4a54                                   ;; 7f:4a50 $18 $02
.jr_7f_4a52:
    ld   A, $00                                        ;; 7f:4a52 $3e $00
.jr_7f_4a54:
    sla  A                                             ;; 7f:4a54 $cb $27
    ld   [wD323], A                                    ;; 7f:4a56 $ea $23 $d3
    ld   A, [wD36B]                                    ;; 7f:4a59 $fa $6b $d3
    cp   A, $08                                        ;; 7f:4a5c $fe $08
    jr   C, .jr_7f_4ad8                                ;; 7f:4a5e $38 $78
.jr_7f_4a60:
    ld   A, [wD36B]                                    ;; 7f:4a60 $fa $6b $d3
    cp   A, $18                                        ;; 7f:4a63 $fe $18
    jr   NC, .jr_7f_4aa3                               ;; 7f:4a65 $30 $3c
    ld   HL, data_7f_4fff                              ;; 7f:4a67 $21 $ff $4f
    ld   A, [wD373]                                    ;; 7f:4a6a $fa $73 $d3
    cp   A, $08                                        ;; 7f:4a6d $fe $08
    jr   C, .jr_7f_4a7a                                ;; 7f:4a6f $38 $09
    sub  A, $08                                        ;; 7f:4a71 $d6 $08
    ld   C, A                                          ;; 7f:4a73 $4f
    ld   B, $00                                        ;; 7f:4a74 $06 $00
    add  HL, BC                                        ;; 7f:4a76 $09
    ld   A, $08                                        ;; 7f:4a77 $3e $08
    sub  A, C                                          ;; 7f:4a79 $91
.jr_7f_4a7a:
    ld   D, H                                          ;; 7f:4a7a $54
    ld   E, L                                          ;; 7f:4a7b $5d
    ld   HL, wD343                                     ;; 7f:4a7c $21 $43 $d3
    inc  A                                             ;; 7f:4a7f $3c
    ld   B, A                                          ;; 7f:4a80 $47
    ld   C, A                                          ;; 7f:4a81 $4f
.jr_7f_4a82:
    ld   A, [DE]                                       ;; 7f:4a82 $1a
    ld   [HL+], A                                      ;; 7f:4a83 $22
    inc  DE                                            ;; 7f:4a84 $13
    dec  B                                             ;; 7f:4a85 $05
    jr   NZ, .jr_7f_4a82                               ;; 7f:4a86 $20 $fa
    ld   A, [wD373]                                    ;; 7f:4a88 $fa $73 $d3
    cp   A, $08                                        ;; 7f:4a8b $fe $08
    jr   NC, .jr_7f_4a95                               ;; 7f:4a8d $30 $06
    ld   C, A                                          ;; 7f:4a8f $4f
    ld   A, $08                                        ;; 7f:4a90 $3e $08
    sub  A, C                                          ;; 7f:4a92 $91
    jr   .jr_7f_4a97                                   ;; 7f:4a93 $18 $02
.jr_7f_4a95:
    ld   A, $00                                        ;; 7f:4a95 $3e $00
.jr_7f_4a97:
    sla  A                                             ;; 7f:4a97 $cb $27
    ld   [wD324], A                                    ;; 7f:4a99 $ea $24 $d3
    ld   A, [wD36B]                                    ;; 7f:4a9c $fa $6b $d3
    cp   A, $10                                        ;; 7f:4a9f $fe $10
    jr   C, .jr_7f_4ad8                                ;; 7f:4aa1 $38 $35
.jr_7f_4aa3:
    ld   HL, data_7f_4fff                              ;; 7f:4aa3 $21 $ff $4f
    ld   A, [wD374]                                    ;; 7f:4aa6 $fa $74 $d3
    cp   A, $08                                        ;; 7f:4aa9 $fe $08
    jr   C, .jr_7f_4ab6                                ;; 7f:4aab $38 $09
    sub  A, $08                                        ;; 7f:4aad $d6 $08
    ld   C, A                                          ;; 7f:4aaf $4f
    ld   B, $00                                        ;; 7f:4ab0 $06 $00
    add  HL, BC                                        ;; 7f:4ab2 $09
    ld   A, $08                                        ;; 7f:4ab3 $3e $08
    sub  A, C                                          ;; 7f:4ab5 $91
.jr_7f_4ab6:
    ld   D, H                                          ;; 7f:4ab6 $54
    ld   E, L                                          ;; 7f:4ab7 $5d
    ld   HL, wD34B                                     ;; 7f:4ab8 $21 $4b $d3
    inc  A                                             ;; 7f:4abb $3c
    ld   B, A                                          ;; 7f:4abc $47
    ld   C, A                                          ;; 7f:4abd $4f
.jr_7f_4abe:
    ld   A, [DE]                                       ;; 7f:4abe $1a
    ld   [HL+], A                                      ;; 7f:4abf $22
    inc  DE                                            ;; 7f:4ac0 $13
    dec  B                                             ;; 7f:4ac1 $05
    jr   NZ, .jr_7f_4abe                               ;; 7f:4ac2 $20 $fa
    ld   A, [wD374]                                    ;; 7f:4ac4 $fa $74 $d3
    cp   A, $08                                        ;; 7f:4ac7 $fe $08
    jr   NC, .jr_7f_4ad1                               ;; 7f:4ac9 $30 $06
    ld   C, A                                          ;; 7f:4acb $4f
    ld   A, $08                                        ;; 7f:4acc $3e $08
    sub  A, C                                          ;; 7f:4ace $91
    jr   .jr_7f_4ad3                                   ;; 7f:4acf $18 $02
.jr_7f_4ad1:
    ld   A, $00                                        ;; 7f:4ad1 $3e $00
.jr_7f_4ad3:
    sla  A                                             ;; 7f:4ad3 $cb $27
    ld   [wD325], A                                    ;; 7f:4ad5 $ea $25 $d3
.jr_7f_4ad8:
    ld   A, $03                                        ;; 7f:4ad8 $3e $03
    ld   [wD36D], A                                    ;; 7f:4ada $ea $6d $d3
    ret                                                ;; 7f:4add $c9

call_7f_4ade:
    ld   A, [wD36E]                                    ;; 7f:4ade $fa $6e $d3
    and  A, A                                          ;; 7f:4ae1 $a7
    jp   NZ, .jp_7f_4ba9                               ;; 7f:4ae2 $c2 $a9 $4b
    ld   A, [wD36B]                                    ;; 7f:4ae5 $fa $6b $d3
    cp   A, $10                                        ;; 7f:4ae8 $fe $10
    jr   NC, .jr_7f_4b5b                               ;; 7f:4aea $30 $6f
    ld   A, [wD370]                                    ;; 7f:4aec $fa $70 $d3
    ld   H, A                                          ;; 7f:4aef $67
    ld   A, [wD371]                                    ;; 7f:4af0 $fa $71 $d3
    ld   L, A                                          ;; 7f:4af3 $6f
    ld   D, $30                                        ;; 7f:4af4 $16 $30
    ld   A, [wD323]                                    ;; 7f:4af6 $fa $23 $d3
    add  A, D                                          ;; 7f:4af9 $82
    ld   C, A                                          ;; 7f:4afa $4f
    ld   B, $00                                        ;; 7f:4afb $06 $00
    add  HL, BC                                        ;; 7f:4afd $09
    ld   A, [wD372]                                    ;; 7f:4afe $fa $72 $d3
    cp   A, $08                                        ;; 7f:4b01 $fe $08
    jr   C, .jr_7f_4b0b                                ;; 7f:4b03 $38 $06
    sub  A, $08                                        ;; 7f:4b05 $d6 $08
    ld   C, A                                          ;; 7f:4b07 $4f
    ld   A, $08                                        ;; 7f:4b08 $3e $08
    sub  A, C                                          ;; 7f:4b0a $91
.jr_7f_4b0b:
    ld   C, A                                          ;; 7f:4b0b $4f
    inc  C                                             ;; 7f:4b0c $0c
    ld   DE, wD33B                                     ;; 7f:4b0d $11 $3b $d3
.jr_7f_4b10:
    ld   A, [DE]                                       ;; 7f:4b10 $1a
    ld   B, A                                          ;; 7f:4b11 $47
    ld   A, [HL]                                       ;; 7f:4b12 $7e
    and  A, B                                          ;; 7f:4b13 $a0
    ld   [HL+], A                                      ;; 7f:4b14 $22
    ld   A, [HL]                                       ;; 7f:4b15 $7e
    and  A, B                                          ;; 7f:4b16 $a0
    ld   [HL+], A                                      ;; 7f:4b17 $22
    inc  DE                                            ;; 7f:4b18 $13
    dec  C                                             ;; 7f:4b19 $0d
    jr   NZ, .jr_7f_4b10                               ;; 7f:4b1a $20 $f4
    ld   A, [wD370]                                    ;; 7f:4b1c $fa $70 $d3
    ld   H, A                                          ;; 7f:4b1f $67
    ld   A, [wD371]                                    ;; 7f:4b20 $fa $71 $d3
    ld   L, A                                          ;; 7f:4b23 $6f
    ld   D, $70                                        ;; 7f:4b24 $16 $70
    ld   A, [wD323]                                    ;; 7f:4b26 $fa $23 $d3
    add  A, D                                          ;; 7f:4b29 $82
    ld   C, A                                          ;; 7f:4b2a $4f
    ld   B, $00                                        ;; 7f:4b2b $06 $00
    add  HL, BC                                        ;; 7f:4b2d $09
    ld   A, [wD372]                                    ;; 7f:4b2e $fa $72 $d3
    cp   A, $08                                        ;; 7f:4b31 $fe $08
    jr   C, .jr_7f_4b3b                                ;; 7f:4b33 $38 $06
    sub  A, $08                                        ;; 7f:4b35 $d6 $08
    ld   C, A                                          ;; 7f:4b37 $4f
    ld   A, $08                                        ;; 7f:4b38 $3e $08
    sub  A, C                                          ;; 7f:4b3a $91
.jr_7f_4b3b:
    ld   C, A                                          ;; 7f:4b3b $4f
    inc  C                                             ;; 7f:4b3c $0c
    ld   DE, wD33B                                     ;; 7f:4b3d $11 $3b $d3
.jr_7f_4b40:
    ld   A, [DE]                                       ;; 7f:4b40 $1a
    ld   B, A                                          ;; 7f:4b41 $47
    ld   A, [HL]                                       ;; 7f:4b42 $7e
    and  A, B                                          ;; 7f:4b43 $a0
    ld   [HL+], A                                      ;; 7f:4b44 $22
    ld   A, [HL]                                       ;; 7f:4b45 $7e
    and  A, B                                          ;; 7f:4b46 $a0
    ld   [HL+], A                                      ;; 7f:4b47 $22
    inc  DE                                            ;; 7f:4b48 $13
    dec  C                                             ;; 7f:4b49 $0d
    jr   NZ, .jr_7f_4b40                               ;; 7f:4b4a $20 $f4
    ld   A, [wD372]                                    ;; 7f:4b4c $fa $72 $d3
    inc  A                                             ;; 7f:4b4f $3c
    ld   [wD372], A                                    ;; 7f:4b50 $ea $72 $d3
    ld   A, [wD36B]                                    ;; 7f:4b53 $fa $6b $d3
    cp   A, $08                                        ;; 7f:4b56 $fe $08
    jp   C, .jp_7f_4c62                                ;; 7f:4b58 $da $62 $4c
.jr_7f_4b5b:
    ld   A, [wD36B]                                    ;; 7f:4b5b $fa $6b $d3
    cp   A, $18                                        ;; 7f:4b5e $fe $18
    jp   NC, .jp_7f_4bfe                               ;; 7f:4b60 $d2 $fe $4b
    ld   D, $10                                        ;; 7f:4b63 $16 $10
    xor  A, A                                          ;; 7f:4b65 $af
    ld   [wD4F7], A                                    ;; 7f:4b66 $ea $f7 $d4
.jp_7f_4b69:
    ld   A, [wD370]                                    ;; 7f:4b69 $fa $70 $d3
    ld   H, A                                          ;; 7f:4b6c $67
    ld   A, [wD371]                                    ;; 7f:4b6d $fa $71 $d3
    ld   L, A                                          ;; 7f:4b70 $6f
    ld   A, [wD324]                                    ;; 7f:4b71 $fa $24 $d3
    add  A, D                                          ;; 7f:4b74 $82
    ld   C, A                                          ;; 7f:4b75 $4f
    ld   B, $00                                        ;; 7f:4b76 $06 $00
    add  HL, BC                                        ;; 7f:4b78 $09
    ld   A, [wD373]                                    ;; 7f:4b79 $fa $73 $d3
    cp   A, $08                                        ;; 7f:4b7c $fe $08
    jr   C, .jr_7f_4b86                                ;; 7f:4b7e $38 $06
    sub  A, $08                                        ;; 7f:4b80 $d6 $08
    ld   C, A                                          ;; 7f:4b82 $4f
    ld   A, $08                                        ;; 7f:4b83 $3e $08
    sub  A, C                                          ;; 7f:4b85 $91
.jr_7f_4b86:
    ld   C, A                                          ;; 7f:4b86 $4f
    inc  C                                             ;; 7f:4b87 $0c
    ld   DE, wD343                                     ;; 7f:4b88 $11 $43 $d3
.jr_7f_4b8b:
    ld   A, [DE]                                       ;; 7f:4b8b $1a
    ld   B, A                                          ;; 7f:4b8c $47
    ld   A, [HL]                                       ;; 7f:4b8d $7e
    and  A, B                                          ;; 7f:4b8e $a0
    ld   [HL+], A                                      ;; 7f:4b8f $22
    ld   A, [HL]                                       ;; 7f:4b90 $7e
    and  A, B                                          ;; 7f:4b91 $a0
    ld   [HL+], A                                      ;; 7f:4b92 $22
    inc  DE                                            ;; 7f:4b93 $13
    dec  C                                             ;; 7f:4b94 $0d
    jr   NZ, .jr_7f_4b8b                               ;; 7f:4b95 $20 $f4
    ld   D, $20                                        ;; 7f:4b97 $16 $20
    ld   A, [wD4F7]                                    ;; 7f:4b99 $fa $f7 $d4
    inc  A                                             ;; 7f:4b9c $3c
    ld   [wD4F7], A                                    ;; 7f:4b9d $ea $f7 $d4
    cp   A, $01                                        ;; 7f:4ba0 $fe $01
    jp   Z, .jp_7f_4b69                                ;; 7f:4ba2 $ca $69 $4b
    ld   [wD36E], A                                    ;; 7f:4ba5 $ea $6e $d3
    ret                                                ;; 7f:4ba8 $c9
.jp_7f_4ba9:
    xor  A, A                                          ;; 7f:4ba9 $af
    ld   [wD36E], A                                    ;; 7f:4baa $ea $6e $d3
    ld   D, $50                                        ;; 7f:4bad $16 $50
    xor  A, A                                          ;; 7f:4baf $af
    ld   [wD4F7], A                                    ;; 7f:4bb0 $ea $f7 $d4
.jp_7f_4bb3:
    ld   A, [wD370]                                    ;; 7f:4bb3 $fa $70 $d3
    ld   H, A                                          ;; 7f:4bb6 $67
    ld   A, [wD371]                                    ;; 7f:4bb7 $fa $71 $d3
    ld   L, A                                          ;; 7f:4bba $6f
    ld   A, [wD324]                                    ;; 7f:4bbb $fa $24 $d3
    add  A, D                                          ;; 7f:4bbe $82
    ld   C, A                                          ;; 7f:4bbf $4f
    ld   B, $00                                        ;; 7f:4bc0 $06 $00
    add  HL, BC                                        ;; 7f:4bc2 $09
    ld   A, [wD373]                                    ;; 7f:4bc3 $fa $73 $d3
    cp   A, $08                                        ;; 7f:4bc6 $fe $08
    jr   C, .jr_7f_4bd0                                ;; 7f:4bc8 $38 $06
    sub  A, $08                                        ;; 7f:4bca $d6 $08
    ld   C, A                                          ;; 7f:4bcc $4f
    ld   A, $08                                        ;; 7f:4bcd $3e $08
    sub  A, C                                          ;; 7f:4bcf $91
.jr_7f_4bd0:
    ld   C, A                                          ;; 7f:4bd0 $4f
    inc  C                                             ;; 7f:4bd1 $0c
    ld   DE, wD343                                     ;; 7f:4bd2 $11 $43 $d3
.jr_7f_4bd5:
    ld   A, [DE]                                       ;; 7f:4bd5 $1a
    ld   B, A                                          ;; 7f:4bd6 $47
    ld   A, [HL]                                       ;; 7f:4bd7 $7e
    and  A, B                                          ;; 7f:4bd8 $a0
    ld   [HL+], A                                      ;; 7f:4bd9 $22
    ld   A, [HL]                                       ;; 7f:4bda $7e
    and  A, B                                          ;; 7f:4bdb $a0
    ld   [HL+], A                                      ;; 7f:4bdc $22
    inc  DE                                            ;; 7f:4bdd $13
    dec  C                                             ;; 7f:4bde $0d
    jr   NZ, .jr_7f_4bd5                               ;; 7f:4bdf $20 $f4
    ld   D, $60                                        ;; 7f:4be1 $16 $60
    ld   A, [wD4F7]                                    ;; 7f:4be3 $fa $f7 $d4
    inc  A                                             ;; 7f:4be6 $3c
    ld   [wD4F7], A                                    ;; 7f:4be7 $ea $f7 $d4
    cp   A, $01                                        ;; 7f:4bea $fe $01
    jp   Z, .jp_7f_4bb3                                ;; 7f:4bec $ca $b3 $4b
    ld   A, [wD373]                                    ;; 7f:4bef $fa $73 $d3
    inc  A                                             ;; 7f:4bf2 $3c
    ld   [wD373], A                                    ;; 7f:4bf3 $ea $73 $d3
    ld   A, [wD36B]                                    ;; 7f:4bf6 $fa $6b $d3
    cp   A, $10                                        ;; 7f:4bf9 $fe $10
    jp   C, .jp_7f_4c62                                ;; 7f:4bfb $da $62 $4c
.jp_7f_4bfe:
    ld   A, [wD370]                                    ;; 7f:4bfe $fa $70 $d3
    ld   H, A                                          ;; 7f:4c01 $67
    ld   A, [wD371]                                    ;; 7f:4c02 $fa $71 $d3
    ld   L, A                                          ;; 7f:4c05 $6f
    ld   A, [wD325]                                    ;; 7f:4c06 $fa $25 $d3
    ld   C, A                                          ;; 7f:4c09 $4f
    ld   B, $00                                        ;; 7f:4c0a $06 $00
    add  HL, BC                                        ;; 7f:4c0c $09
    ld   A, [wD374]                                    ;; 7f:4c0d $fa $74 $d3
    cp   A, $08                                        ;; 7f:4c10 $fe $08
    jr   C, .jr_7f_4c1a                                ;; 7f:4c12 $38 $06
    sub  A, $08                                        ;; 7f:4c14 $d6 $08
    ld   C, A                                          ;; 7f:4c16 $4f
    ld   A, $08                                        ;; 7f:4c17 $3e $08
    sub  A, C                                          ;; 7f:4c19 $91
.jr_7f_4c1a:
    ld   C, A                                          ;; 7f:4c1a $4f
    inc  C                                             ;; 7f:4c1b $0c
    ld   DE, wD34B                                     ;; 7f:4c1c $11 $4b $d3
.jr_7f_4c1f:
    ld   A, [DE]                                       ;; 7f:4c1f $1a
    ld   B, A                                          ;; 7f:4c20 $47
    ld   A, [HL]                                       ;; 7f:4c21 $7e
    and  A, B                                          ;; 7f:4c22 $a0
    ld   [HL+], A                                      ;; 7f:4c23 $22
    ld   A, [HL]                                       ;; 7f:4c24 $7e
    and  A, B                                          ;; 7f:4c25 $a0
    ld   [HL+], A                                      ;; 7f:4c26 $22
    inc  DE                                            ;; 7f:4c27 $13
    dec  C                                             ;; 7f:4c28 $0d
    jr   NZ, .jr_7f_4c1f                               ;; 7f:4c29 $20 $f4
    ld   D, $40                                        ;; 7f:4c2b $16 $40
    ld   A, [wD370]                                    ;; 7f:4c2d $fa $70 $d3
    ld   H, A                                          ;; 7f:4c30 $67
    ld   A, [wD371]                                    ;; 7f:4c31 $fa $71 $d3
    ld   L, A                                          ;; 7f:4c34 $6f
    ld   A, [wD325]                                    ;; 7f:4c35 $fa $25 $d3
    add  A, D                                          ;; 7f:4c38 $82
    ld   C, A                                          ;; 7f:4c39 $4f
    ld   B, $00                                        ;; 7f:4c3a $06 $00
    add  HL, BC                                        ;; 7f:4c3c $09
    ld   A, [wD374]                                    ;; 7f:4c3d $fa $74 $d3
    cp   A, $08                                        ;; 7f:4c40 $fe $08
    jr   C, .jr_7f_4c4a                                ;; 7f:4c42 $38 $06
    sub  A, $08                                        ;; 7f:4c44 $d6 $08
    ld   C, A                                          ;; 7f:4c46 $4f
    ld   A, $08                                        ;; 7f:4c47 $3e $08
    sub  A, C                                          ;; 7f:4c49 $91
.jr_7f_4c4a:
    ld   C, A                                          ;; 7f:4c4a $4f
    inc  C                                             ;; 7f:4c4b $0c
    ld   DE, wD34B                                     ;; 7f:4c4c $11 $4b $d3
.jr_7f_4c4f:
    ld   A, [DE]                                       ;; 7f:4c4f $1a
    ld   B, A                                          ;; 7f:4c50 $47
    ld   A, [HL]                                       ;; 7f:4c51 $7e
    and  A, B                                          ;; 7f:4c52 $a0
    ld   [HL+], A                                      ;; 7f:4c53 $22
    ld   A, [HL]                                       ;; 7f:4c54 $7e
    and  A, B                                          ;; 7f:4c55 $a0
    ld   [HL+], A                                      ;; 7f:4c56 $22
    inc  DE                                            ;; 7f:4c57 $13
    dec  C                                             ;; 7f:4c58 $0d
    jr   NZ, .jr_7f_4c4f                               ;; 7f:4c59 $20 $f4
    ld   A, [wD374]                                    ;; 7f:4c5b $fa $74 $d3
    inc  A                                             ;; 7f:4c5e $3c
    ld   [wD374], A                                    ;; 7f:4c5f $ea $74 $d3
.jp_7f_4c62:
    ld   A, $02                                        ;; 7f:4c62 $3e $02
    ld   [wD36D], A                                    ;; 7f:4c64 $ea $6d $d3
    ld   A, [wD36B]                                    ;; 7f:4c67 $fa $6b $d3
    inc  A                                             ;; 7f:4c6a $3c
    ld   [wD36B], A                                    ;; 7f:4c6b $ea $6b $d3
    cp   A, $20                                        ;; 7f:4c6e $fe $20
    ret  NZ                                            ;; 7f:4c70 $c0
    ld   A, $00                                        ;; 7f:4c71 $3e $00
    ld   [wD36D], A                                    ;; 7f:4c73 $ea $6d $d3
    ret                                                ;; 7f:4c76 $c9

data_7f_4c77:
    db   $03, $02, $05, $80, $07, $01, $00, $40        ;; 7f:4c77 ????????
    db   $06, $20, $03, $01, $04, $20, $07, $04        ;; 7f:4c7f ????????
    db   $01, $20, $06, $02, $00, $20, $01, $10        ;; 7f:4c87 ????????
    db   $05, $20, $07, $02, $02, $02, $03, $04        ;; 7f:4c8f ????????
    db   $04, $04, $07, $08, $01, $04, $00, $04        ;; 7f:4c97 ????????
    db   $02, $08, $04, $10, $05, $02, $06, $01        ;; 7f:4c9f ????????
    db   $01, $08, $02, $10, $03, $08, $06, $10        ;; 7f:4ca7 ????????
    db   $07, $40, $02, $20, $03, $20, $01, $40        ;; 7f:4caf ????????
    db   $05, $04, $05, $01, $00, $02, $06, $08        ;; 7f:4cb7 ????????
    db   $06, $04, $04, $08, $00, $08, $02, $04        ;; 7f:4cbf ????????
    db   $07, $10, $05, $10, $04, $01, $03, $80        ;; 7f:4cc7 ????????
    db   $02, $80, $04, $02, $03, $40, $00, $01        ;; 7f:4ccf ????????
    db   $05, $08, $01, $01, $03, $10, $07, $20        ;; 7f:4cd7 ????????
    db   $01, $80, $04, $40, $02, $01, $00, $80        ;; 7f:4cdf ????????
    db   $06, $80, $07, $80, $06, $40, $04, $80        ;; 7f:4ce7 ????????
    db   $00, $10, $02, $40, $05, $40, $01, $02        ;; 7f:4cef ????????

data_7f_4cf7:
    db   $00, $04, $06, $10, $04, $40, $02, $10        ;; 7f:4cf7 ????????
    db   $03, $20, $07, $02, $05, $02, $04, $04        ;; 7f:4cff ????????
    db   $01, $80, $05, $01, $07, $80, $06, $04        ;; 7f:4d07 ????????
    db   $01, $10, $00, $10, $04, $08, $07, $20        ;; 7f:4d0f ????????
    db   $06, $01, $02, $04, $05, $04, $00, $01        ;; 7f:4d17 ????????
    db   $07, $08, $02, $02, $03, $01, $06, $80        ;; 7f:4d1f ????????
    db   $07, $01, $03, $04, $00, $08, $06, $40        ;; 7f:4d27 ????????
    db   $04, $20, $01, $08, $02, $20, $05, $10        ;; 7f:4d2f ????????
    db   $04, $10, $00, $20, $01, $01, $03, $10        ;; 7f:4d37 ????????
    db   $01, $04, $02, $08, $06, $20, $03, $80        ;; 7f:4d3f ????????
    db   $05, $20, $00, $40, $03, $02, $07, $10        ;; 7f:4d47 ????????
    db   $05, $80, $02, $80, $04, $02, $06, $08        ;; 7f:4d4f ????????
    db   $01, $02, $05, $08, $00, $02, $03, $08        ;; 7f:4d57 ????????
    db   $07, $04, $02, $01, $01, $20, $04, $01        ;; 7f:4d5f ????????
    db   $05, $40, $01, $40, $03, $40, $00, $80        ;; 7f:4d67 ????????
    db   $06, $02, $04, $80, $07, $40, $02, $40        ;; 7f:4d6f ????????

data_7f_4d77:
    db   $06, $04, $02, $10, $00, $04, $04, $10        ;; 7f:4d77 ????????
    db   $05, $04, $06, $01, $07, $02, $00, $02        ;; 7f:4d7f ????????
    db   $02, $08, $05, $08, $04, $01, $06, $02        ;; 7f:4d87 ????????
    db   $07, $01, $01, $80, $03, $04, $01, $20        ;; 7f:4d8f ????????
    db   $06, $10, $05, $10, $07, $40, $00, $10        ;; 7f:4d97 ????????
    db   $03, $40, $02, $20, $04, $04, $07, $04        ;; 7f:4d9f ????????
    db   $05, $80, $01, $04, $03, $20, $06, $80        ;; 7f:4da7 ????????
    db   $00, $20, $02, $40, $07, $08, $03, $08        ;; 7f:4daf ????????
    db   $04, $80, $03, $01, $01, $08, $02, $02        ;; 7f:4db7 ????????
    db   $05, $20, $00, $80, $04, $02, $06, $20        ;; 7f:4dbf ????????
    db   $01, $01, $07, $20, $05, $02, $00, $01        ;; 7f:4dc7 ????????
    db   $02, $01, $04, $20, $06, $08, $01, $10        ;; 7f:4dcf ????????
    db   $03, $10, $04, $08, $07, $80, $00, $08        ;; 7f:4dd7 ????????
    db   $02, $80, $03, $02, $05, $01, $01, $02        ;; 7f:4ddf ????????
    db   $07, $10, $02, $04, $00, $40, $04, $40        ;; 7f:4de7 ????????
    db   $06, $40, $05, $40, $01, $40, $03, $80        ;; 7f:4def ????????
    db   $00, $ef, $00, $fd, $00, $bf, $00, $fe        ;; 7f:4df7 ????????
    db   $00, $7f, $00, $fb, $00, $df, $00, $f7        ;; 7f:4dff ????????
    db   $01, $7f, $01, $fb, $01, $fe, $01, $f7        ;; 7f:4e07 ????????
    db   $01, $df, $01, $ef, $01, $bf, $01, $fd        ;; 7f:4e0f ????????
    db   $02, $fe, $02, $ef, $02, $7f, $02, $f7        ;; 7f:4e17 ????????
    db   $02, $df, $02, $fd, $02, $fb, $02, $bf        ;; 7f:4e1f ????????
    db   $03, $7f, $03, $fd, $03, $df, $03, $ef        ;; 7f:4e27 ????????
    db   $03, $fe, $03, $f7, $03, $bf, $03, $fb        ;; 7f:4e2f ????????
    db   $04, $df, $04, $fe, $04, $fb, $04, $bf        ;; 7f:4e37 ????????
    db   $04, $ef, $04, $f7, $04, $7f, $04, $fd        ;; 7f:4e3f ????????
    db   $05, $7f, $05, $fd, $05, $fe, $05, $ef        ;; 7f:4e47 ????????
    db   $05, $df, $05, $fb, $05, $bf, $05, $f7        ;; 7f:4e4f ????????
    db   $06, $fb, $06, $df, $06, $7f, $06, $fe        ;; 7f:4e57 ????????
    db   $06, $f7, $06, $bf, $06, $fd, $06, $ef        ;; 7f:4e5f ????????
    db   $07, $f7, $07, $fe, $07, $7f, $07, $ef        ;; 7f:4e67 ????????
    db   $07, $fd, $07, $fb, $07, $bf, $07, $df        ;; 7f:4e6f ????????
    db   $00, $f7, $00, $bf, $00, $fd, $00, $7f        ;; 7f:4e77 ????????
    db   $00, $fe, $00, $df, $00, $fb, $00, $ef        ;; 7f:4e7f ????????
    db   $01, $fe, $01, $df, $01, $7f, $01, $ef        ;; 7f:4e87 ????????
    db   $01, $fb, $01, $f7, $01, $fd, $01, $bf        ;; 7f:4e8f ????????
    db   $02, $7f, $02, $f7, $02, $fe, $02, $ef        ;; 7f:4e97 ????????
    db   $02, $fb, $02, $bf, $02, $df, $02, $fd        ;; 7f:4e9f ????????
    db   $03, $fe, $03, $bf, $03, $fb, $03, $f7        ;; 7f:4ea7 ????????
    db   $03, $7f, $03, $ef, $03, $fd, $03, $df        ;; 7f:4eaf ????????
    db   $04, $fb, $04, $7f, $04, $df, $04, $fd        ;; 7f:4eb7 ????????
    db   $04, $f7, $04, $ef, $04, $fe, $04, $bf        ;; 7f:4ebf ????????
    db   $05, $fe, $05, $bf, $05, $7f, $05, $f7        ;; 7f:4ec7 ????????
    db   $05, $fb, $05, $df, $05, $fd, $05, $ef        ;; 7f:4ecf ????????
    db   $06, $df, $06, $fb, $06, $fe, $06, $7f        ;; 7f:4ed7 ????????
    db   $06, $ef, $06, $fd, $06, $bf, $06, $f7        ;; 7f:4edf ????????
    db   $07, $ef, $07, $7f, $07, $fe, $07, $f7        ;; 7f:4ee7 ????????
    db   $07, $bf, $07, $df, $07, $fd, $07, $fb        ;; 7f:4eef ????????
    db   $05, $ef, $07, $7f, $00, $f7, $02, $7f        ;; 7f:4ef7 ????????
    db   $03, $f7, $04, $fe, $05, $7f, $06, $f7        ;; 7f:4eff ????????
    db   $06, $bf, $07, $fb, $01, $df, $02, $df        ;; 7f:4f07 ????????
    db   $06, $fd, $04, $fb, $01, $fb, $07, $df        ;; 7f:4f0f ????????
    db   $01, $fd, $00, $fe, $02, $bf, $04, $df        ;; 7f:4f17 ????????
    db   $06, $df, $05, $fd, $03, $fb, $05, $f7        ;; 7f:4f1f ????????
    db   $07, $f7, $03, $ef, $04, $bf, $00, $bf        ;; 7f:4f27 ????????
    db   $02, $fb, $03, $bf, $07, $fd, $00, $ef        ;; 7f:4f2f ????????
    db   $03, $fe, $01, $bf, $06, $fe, $02, $fd        ;; 7f:4f37 ????????
    db   $04, $ef, $05, $fe, $01, $ef, $00, $7f        ;; 7f:4f3f ????????
    db   $07, $fe, $03, $df, $02, $f7, $05, $bf        ;; 7f:4f47 ????????
    db   $06, $fb, $00, $df, $04, $7f, $01, $fe        ;; 7f:4f4f ????????
    db   $06, $ef, $01, $f7, $07, $ef, $00, $fd        ;; 7f:4f57 ????????
    db   $04, $fd, $03, $7f, $02, $fe, $05, $df        ;; 7f:4f5f ????????
    db   $02, $ef, $01, $7f, $06, $7f, $03, $fd        ;; 7f:4f67 ????????
    db   $00, $fb, $07, $bf, $04, $f7, $05, $fb        ;; 7f:4f6f ????????
    db   $05, $fe, $06, $7f, $01, $ef, $02, $f7        ;; 7f:4f77 ????????
    db   $00, $ef, $04, $f7, $03, $f7, $05, $f7        ;; 7f:4f7f ????????
    db   $07, $fe, $00, $fb, $02, $fd, $01, $fe        ;; 7f:4f87 ????????
    db   $04, $fe, $04, $fb, $06, $f7, $06, $df        ;; 7f:4f8f ????????
    db   $00, $f7, $05, $fd, $01, $bf, $07, $fb        ;; 7f:4f97 ????????
    db   $03, $fb, $06, $fd, $02, $bf, $03, $df        ;; 7f:4f9f ????????
    db   $04, $df, $07, $fd, $00, $bf, $01, $df        ;; 7f:4fa7 ????????
    db   $03, $bf, $00, $7f, $02, $df, $05, $fb        ;; 7f:4faf ????????
    db   $06, $ef, $01, $f7, $04, $bf, $07, $ef        ;; 7f:4fb7 ????????
    db   $02, $ef, $03, $fe, $06, $fb, $01, $7f        ;; 7f:4fbf ????????
    db   $00, $df, $03, $ef, $07, $bf, $05, $bf        ;; 7f:4fc7 ????????
    db   $02, $fe, $06, $fe, $04, $7f, $07, $df        ;; 7f:4fcf ????????
    db   $05, $ef, $02, $7f, $05, $df, $00, $fd        ;; 7f:4fd7 ????????
    db   $01, $fd, $07, $f7, $03, $7f, $04, $ef        ;; 7f:4fdf ????????
    db   $05, $7f, $02, $fb, $04, $fd, $06, $bf        ;; 7f:4fe7 ????????
    db   $03, $fd, $00, $fe, $01, $fb, $07, $7f        ;; 7f:4fef ????????

data_7f_4ff7:
    db   $7f, $bf, $df, $ef, $f7, $fb, $fd, $fe        ;; 7f:4ff7 ????????

data_7f_4fff:
    db   $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f        ;; 7f:4fff ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5007 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:500f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5017 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:501f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5027 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:502f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5037 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:503f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5047 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:504f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5057 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:505f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5067 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:506f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5077 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:507f ????????
    db   $00, $00, $00, $00, $00, $04, $04, $04        ;; 7f:5087 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:508f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5097 ????????
    db   $04, $00, $00, $00, $00, $00, $00, $00        ;; 7f:509f ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:50a7 ????????
    db   $05, $05, $05, $05, $05, $05, $05, $05        ;; 7f:50af ????????
    db   $05, $05, $05, $05, $05, $05, $05, $05        ;; 7f:50b7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:50bf ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:50c7 ????????
    db   $05, $04, $04, $05, $05, $05, $05, $05        ;; 7f:50cf ????????
    db   $05, $05, $05, $04, $04, $05, $05, $05        ;; 7f:50d7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:50df ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:50e7 ????????
    db   $05, $04, $04, $05, $05, $05, $05, $05        ;; 7f:50ef ????????
    db   $05, $05, $05, $04, $04, $05, $05, $05        ;; 7f:50f7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:50ff ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:5107 ????????
    db   $05, $05, $05, $05, $05, $05, $05, $05        ;; 7f:510f ????????
    db   $05, $05, $05, $05, $05, $05, $05, $05        ;; 7f:5117 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:511f ????????
    db   $00, $00, $00, $00, $00, $05, $04, $04        ;; 7f:5127 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:512f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5137 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:513f ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:5147 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:514f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5157 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:515f ????????
    db   $00, $00, $00, $00, $00, $05, $04, $04        ;; 7f:5167 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:516f ????????
    db   $04, $04, $04, $04, $04, $04, $05, $05        ;; 7f:5177 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:517f ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:5187 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:518f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5197 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:519f ????????
    db   $00, $00, $00, $00, $00, $05, $04, $04        ;; 7f:51a7 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:51af ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:51b7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:51bf ????????
    db   $00, $00, $00, $00, $00, $05, $04, $04        ;; 7f:51c7 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:51cf ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:51d7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:51df ????????
    db   $00, $00, $00, $00, $00, $05, $04, $04        ;; 7f:51e7 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:51ef ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:51f7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:51ff ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:5207 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:520f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5217 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:521f ????????
    db   $00, $00, $00, $00, $00, $05, $04, $04        ;; 7f:5227 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:522f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5237 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:523f ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:5247 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:524f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5257 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:525f ????????
    db   $00, $00, $00, $00, $00, $04, $04, $04        ;; 7f:5267 ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:526f ????????
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 7f:5277 ????????
    db   $04, $00, $00, $00, $00, $00, $00, $00        ;; 7f:527f ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:5287 ????????
    db   $05, $05, $05, $05, $05, $05, $05, $04        ;; 7f:528f ????????
    db   $04, $05, $05, $05, $05, $05, $05, $05        ;; 7f:5297 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:529f ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:52a7 ????????
    db   $05, $04, $04, $05, $05, $05, $05, $04        ;; 7f:52af ????????
    db   $04, $05, $05, $05, $05, $05, $05, $05        ;; 7f:52b7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:52bf ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:52c7 ????????
    db   $05, $04, $04, $05, $05, $05, $05, $04        ;; 7f:52cf ????????
    db   $04, $05, $05, $05, $05, $05, $05, $05        ;; 7f:52d7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:52df ????????
    db   $00, $00, $00, $00, $00, $05, $05, $05        ;; 7f:52e7 ????????
    db   $05, $05, $05, $05, $05, $05, $05, $04        ;; 7f:52ef ????????
    db   $04, $05, $05, $05, $05, $05, $05, $05        ;; 7f:52f7 ????????
    db   $05, $00, $00, $00, $00, $00, $00, $00        ;; 7f:52ff ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5307 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:530f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5317 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:531f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5327 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:532f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5337 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:533f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5347 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:534f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5357 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:535f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5367 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:536f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5377 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:537f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5387 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:538f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5397 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:539f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53b7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53bf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53c7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53ef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53f7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:53ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5407 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:540f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5417 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:541f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5427 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:542f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5437 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:543f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5447 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:544f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5457 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:545f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5467 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:546f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5477 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:547f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5487 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:548f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5497 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:549f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54d7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54df ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:54ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5507 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:550f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5517 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:551f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5527 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:552f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5537 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:553f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5547 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:554f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5557 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:555f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5567 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:556f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5577 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:557f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5587 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:558f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5597 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:559f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55d7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55df ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:55ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5607 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:560f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5617 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:561f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5627 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:562f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5637 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:563f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5647 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:564f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5657 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:565f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5667 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:566f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5677 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:567f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5687 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:568f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5697 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:569f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56d7 ????????
    db   $80, $80, $80, $80, $80, $88, $88, $88        ;; 7f:56df ????????
    db   $88, $88, $80, $80, $80, $80, $80, $80        ;; 7f:56e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:56ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5707 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:570f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5717 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:571f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5727 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:572f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5737 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:573f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5747 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:574f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5757 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:575f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5767 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:576f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5777 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:577f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5787 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:578f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5797 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:579f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:57a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:57af ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:57b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:57bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:57c7 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:57cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:57d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:57df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:57e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:57ef ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:57f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:57ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5807 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:580f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5817 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:581f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5827 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:582f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5837 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:583f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5847 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:584f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5857 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:585f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5867 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:586f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5877 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:587f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5887 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:588f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5897 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:589f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:58a7 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:58af ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:58b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:58bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:58c7 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:58cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:58d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:58df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:58e7 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:58ef ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:58f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:58ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5907 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:590f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5917 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:591f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5927 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:592f ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5937 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:593f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5947 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:594f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5957 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:595f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5967 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:596f ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5977 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:597f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5987 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:598f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5997 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:599f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:59a7 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:59af ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:59b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:59bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:59c7 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:59cf ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:59d7 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:59df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:59e7 ????????
    db   $00, $00, $00, $80, $88, $80, $80, $80        ;; 7f:59ef ????????
    db   $80, $80, $00, $00, $00, $00, $80, $80        ;; 7f:59f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:59ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5a07 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:5a0f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5a17 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5a1f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5a27 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5a2f ????????
    db   $80, $80, $00, $00, $00, $00, $80, $80        ;; 7f:5a37 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5a3f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5a47 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:5a4f ????????
    db   $00, $00, $00, $80, $88, $80, $80, $80        ;; 7f:5a57 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5a5f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5a67 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5a6f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:5a77 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5a7f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5a87 ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:5a8f ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:5a97 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5a9f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5aa7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5aaf ????????
    db   $00, $00, $00, $00, $00, $00, $80, $00        ;; 7f:5ab7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5abf ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5ac7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5acf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ad7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5adf ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5ae7 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5aef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5af7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5aff ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5b07 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b0f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b17 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b1f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5b27 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5b2f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b37 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5b3f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5b47 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5b4f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b57 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b5f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5b67 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5b6f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b77 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5b7f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5b87 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5b8f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5b9f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5ba7 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5baf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5bb7 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:5bbf ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5bc7 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5bcf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5bd7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5bdf ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5be7 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5bef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5bf7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5bff ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5c07 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5c0f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5c17 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5c1f ????????
    db   $00, $00, $00, $00, $80, $22, $22, $80        ;; 7f:5c27 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5c2f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5c37 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5c3f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5c47 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5c4f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5c57 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5c5f ????????
    db   $00, $00, $00, $00, $80, $07, $07, $80        ;; 7f:5c67 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:5c6f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5c77 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5c7f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5c87 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5c8f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5c97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5c9f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ca7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5caf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5cb7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5cbf ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5cc7 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5ccf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5cd7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5cdf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ce7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5cef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5cf7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5cff ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5d07 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5d0f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5d17 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5d1f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5d27 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5d2f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5d37 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5d3f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5d47 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5d4f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5d57 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5d5f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5d67 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5d6f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5d77 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5d7f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5d87 ????????
    db   $26, $26, $80, $80, $80, $80, $00, $00        ;; 7f:5d8f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5d97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5d9f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5da7 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5daf ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5db7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5dbf ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:5dc7 ????????
    db   $07, $07, $80, $80, $80, $80, $00, $00        ;; 7f:5dcf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5dd7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ddf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5de7 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5def ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5df7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5dff ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5e07 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e0f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:5e17 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e1f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e27 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5e2f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5e37 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5e3f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5e47 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e4f ????????
    db   $80, $80, $27, $27, $80, $80, $80, $80        ;; 7f:5e57 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e5f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e67 ????????
    db   $80, $88, $80, $80, $80, $80, $00, $00        ;; 7f:5e6f ????????
    db   $80, $23, $23, $80, $80, $80, $00, $80        ;; 7f:5e77 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5e7f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5e87 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e8f ????????
    db   $80, $80, $07, $07, $80, $80, $80, $80        ;; 7f:5e97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5e9f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ea7 ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:5eaf ????????
    db   $80, $07, $07, $80, $80, $80, $80, $00        ;; 7f:5eb7 ????????
    db   $80, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5ebf ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5ec7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ecf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ed7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5edf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ee7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5eef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ef7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5eff ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5f07 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f0f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f17 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f1f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f27 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f2f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f37 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5f3f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5f47 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:5f4f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5f57 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:5f5f ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:5f67 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5f6f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5f77 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5f7f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5f87 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:5f8f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5f97 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:5f9f ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:5fa7 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5faf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5fb7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5fbf ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5fc7 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:5fcf ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5fd7 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:5fdf ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:5fe7 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:5fef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:5ff7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:5fff ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6007 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:600f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:6017 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:601f ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:6027 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:602f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6037 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:603f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6047 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:604f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:6057 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:605f ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:6067 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:606f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6077 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:607f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6087 ????????
    db   $00, $00, $80, $24, $24, $80, $80, $80        ;; 7f:608f ????????
    db   $00, $00, $00, $00, $80, $25, $25, $80        ;; 7f:6097 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:609f ????????
    db   $00, $00, $00, $00, $00, $00, $80, $88        ;; 7f:60a7 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:60af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:60b7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:60bf ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:60c7 ????????
    db   $00, $00, $80, $07, $07, $80, $80, $80        ;; 7f:60cf ????????
    db   $00, $00, $00, $00, $80, $07, $07, $80        ;; 7f:60d7 ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:60df ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:60e7 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:60ef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:60f7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:60ff ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6107 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:610f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6117 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:611f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6127 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:612f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6137 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:613f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6147 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:614f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6157 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:615f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6167 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:616f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6177 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:617f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6187 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:618f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6197 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:619f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61b7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:61bf ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:61c7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61ef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:61f7 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:61ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6207 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:620f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6217 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:621f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:6227 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:622f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6237 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:623f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6247 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:624f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6257 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:625f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:6267 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:626f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6277 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:627f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6287 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:628f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6297 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:629f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:62a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62d7 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:62df ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:62e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:62ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6307 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:630f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6317 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:631f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:6327 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:632f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6337 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:633f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6347 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:634f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6357 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:635f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:6367 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:636f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6377 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:637f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6387 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:638f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6397 ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:639f ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 7f:63a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63d7 ????????
    db   $80, $80, $80, $80, $21, $21, $21, $21        ;; 7f:63df ????????
    db   $21, $21, $21, $21, $80, $80, $80, $80        ;; 7f:63e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:63ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6407 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:640f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6417 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:641f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6427 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:642f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6437 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:643f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6447 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:644f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6457 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:645f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6467 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:646f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6477 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:647f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6487 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:648f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6497 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:649f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64d7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64df ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:64ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6507 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:650f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $88        ;; 7f:6517 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:651f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6527 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:652f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6537 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:653f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6547 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:654f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6557 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:655f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6567 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:656f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6577 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:657f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6587 ????????
    db   $80, $80, $80, $80, $00, $00, $80, $00        ;; 7f:658f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6597 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:659f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:65a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:65af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:65b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:65bf ????????
    db   $80, $80, $80, $80, $80, $80, $00, $80        ;; 7f:65c7 ????????
    db   $80, $80, $80, $80, $80, $00, $80, $80        ;; 7f:65cf ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:65d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:65df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:65e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:65ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:65f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:65ff ????????
    db   $80, $00, $00, $80, $80, $80, $00, $80        ;; 7f:6607 ????????
    db   $80, $80, $80, $80, $80, $00, $80, $80        ;; 7f:660f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6617 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:661f ????????
    db   $00, $00, $00, $00, $15, $00, $00, $00        ;; 7f:6627 ????????
    db   $13, $00, $80, $80, $80, $80, $80, $80        ;; 7f:662f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6637 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:663f ????????
    db   $00, $00, $00, $00, $00, $80, $00, $80        ;; 7f:6647 ????????
    db   $80, $80, $80, $80, $80, $00, $80, $80        ;; 7f:664f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6657 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:665f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6667 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:666f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6677 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:667f ????????
    db   $00, $00, $00, $00, $00, $80, $00, $80        ;; 7f:6687 ????????
    db   $80, $80, $80, $80, $80, $00, $80, $00        ;; 7f:668f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6697 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:669f ????????
    db   $80, $80, $00, $00, $16, $00, $00, $00        ;; 7f:66a7 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:66af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:66b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:66bf ????????
    db   $00, $00, $80, $80, $00, $80, $00, $80        ;; 7f:66c7 ????????
    db   $80, $80, $80, $80, $80, $00, $80, $00        ;; 7f:66cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:66d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:66df ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:66e7 ????????
    db   $14, $00, $80, $80, $80, $80, $80, $80        ;; 7f:66ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:66f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:66ff ????????
    db   $00, $00, $80, $80, $00, $80, $00, $80        ;; 7f:6707 ????????
    db   $80, $80, $80, $80, $80, $00, $80, $00        ;; 7f:670f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6717 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:671f ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6727 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:672f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6737 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:673f ????????
    db   $00, $00, $80, $80, $00, $80, $00, $80        ;; 7f:6747 ????????
    db   $22, $22, $80, $80, $80, $00, $80, $00        ;; 7f:674f ????????
    db   $00, $00, $80, $80, $80, $00, $00, $00        ;; 7f:6757 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:675f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6767 ????????
    db   $00, $00, $80, $26, $26, $80, $80, $80        ;; 7f:676f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6777 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:677f ????????
    db   $80, $80, $00, $00, $00, $80, $00, $80        ;; 7f:6787 ????????
    db   $07, $07, $80, $80, $80, $00, $80, $00        ;; 7f:678f ????????
    db   $00, $00, $80, $80, $80, $00, $00, $00        ;; 7f:6797 ????????
    db   $00, $00, $80, $00, $00, $00, $00, $00        ;; 7f:679f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:67a7 ????????
    db   $00, $00, $80, $00, $00, $80, $80, $80        ;; 7f:67af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:67b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:67bf ????????
    db   $80, $80, $00, $00, $00, $80, $00, $00        ;; 7f:67c7 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $00        ;; 7f:67cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:67d7 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $00        ;; 7f:67df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:67e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:67ef ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:67f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:67ff ????????
    db   $80, $80, $00, $00, $00, $80, $00, $00        ;; 7f:6807 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:680f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6817 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $00        ;; 7f:681f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6827 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:682f ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6837 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:683f ????????
    db   $00, $00, $00, $00, $00, $80, $00, $00        ;; 7f:6847 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:684f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6857 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $00        ;; 7f:685f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6867 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:686f ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6877 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:687f ????????
    db   $00, $00, $00, $00, $00, $80, $00, $00        ;; 7f:6887 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:688f ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6897 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:689f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:68a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:68af ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:68b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:68bf ????????
    db   $00, $00, $00, $00, $00, $80, $00, $00        ;; 7f:68c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:68cf ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:68d7 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:68df ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:68e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:68ef ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:68f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:68ff ????????
    db   $00, $00, $00, $00, $00, $80, $00, $00        ;; 7f:6907 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:690f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6917 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:691f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6927 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:692f ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6937 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:693f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6947 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:694f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6957 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:695f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6967 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:696f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6977 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:697f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6987 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:698f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6997 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:699f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:69a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:69af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:69b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:69bf ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:69c7 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:69cf ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:69d7 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:69df ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:69e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:69ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:69f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:69ff ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6a07 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6a0f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6a17 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:6a1f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6a27 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6a2f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6a37 ????????
    db   $80, $28, $28, $80, $80, $80, $80, $80        ;; 7f:6a3f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6a47 ????????
    db   $80, $00, $80, $24, $24, $80, $80, $80        ;; 7f:6a4f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6a57 ????????
    db   $00, $00, $80, $00, $80, $25, $25, $80        ;; 7f:6a5f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6a67 ????????
    db   $80, $27, $27, $80, $80, $80, $80, $80        ;; 7f:6a6f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6a77 ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:6a7f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6a87 ????????
    db   $80, $00, $80, $07, $07, $80, $80, $80        ;; 7f:6a8f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6a97 ????????
    db   $00, $00, $80, $00, $80, $07, $07, $80        ;; 7f:6a9f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6aa7 ????????
    db   $80, $00, $00, $80, $80, $80, $80, $80        ;; 7f:6aaf ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ab7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6abf ????????
    db   $80, $80, $20, $20, $80, $80, $00, $00        ;; 7f:6ac7 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6acf ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6ad7 ????????
    db   $00, $00, $80, $00, $00, $00, $00, $00        ;; 7f:6adf ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6ae7 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6aef ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6af7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6aff ????????
    db   $80, $80, $20, $20, $80, $80, $00, $00        ;; 7f:6b07 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b0f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b17 ????????
    db   $00, $00, $80, $80, $80, $00, $00, $80        ;; 7f:6b1f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6b27 ????????
    db   $80, $00, $00, $11, $00, $00, $12, $00        ;; 7f:6b2f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b37 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6b3f ????????
    db   $80, $80, $06, $06, $80, $80, $00, $00        ;; 7f:6b47 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b4f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b57 ????????
    db   $00, $00, $80, $80, $80, $00, $00, $80        ;; 7f:6b5f ????????
    db   $80, $80, $80, $80, $00, $00, $80, $80        ;; 7f:6b67 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b6f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b77 ????????
    db   $00, $00, $00, $00, $17, $00, $00, $80        ;; 7f:6b7f ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6b87 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6b8f ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6b97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6b9f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ba7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6baf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6bb7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6bbf ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6bc7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6bcf ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6bd7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6bdf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6be7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6bef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6bf7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6bff ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6c07 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6c0f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6c17 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6c1f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6c27 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6c2f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6c37 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6c3f ????????
    db   $80, $80, $00, $00, $00, $00, $80, $80        ;; 7f:6c47 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6c4f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6c57 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6c5f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6c67 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6c6f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6c77 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6c7f ????????
    db   $80, $80, $00, $00, $00, $00, $80, $80        ;; 7f:6c87 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6c8f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6c97 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:6c9f ????????
    db   $80, $80, $80, $00, $00, $00, $80, $80        ;; 7f:6ca7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6caf ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6cb7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6cbf ????????
    db   $80, $80, $00, $00, $00, $00, $80, $80        ;; 7f:6cc7 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6ccf ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6cd7 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:6cdf ????????
    db   $80, $80, $80, $00, $00, $00, $80, $80        ;; 7f:6ce7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6cef ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6cf7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6cff ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6d07 ????????
    db   $80, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6d0f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6d17 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:6d1f ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:6d27 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6d2f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6d37 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6d3f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6d47 ????????
    db   $80, $00, $80, $29, $29, $80, $80, $80        ;; 7f:6d4f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6d57 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:6d5f ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:6d67 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6d6f ????????
    db   $80, $00, $00, $18, $00, $00, $00, $00        ;; 7f:6d77 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6d7f ????????
    db   $80, $80, $80, $80, $00, $00, $00, $00        ;; 7f:6d87 ????????
    db   $80, $00, $80, $07, $07, $80, $80, $80        ;; 7f:6d8f ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6d97 ????????
    db   $00, $00, $80, $00, $80, $80, $80, $80        ;; 7f:6d9f ????????
    db   $80, $80, $80, $00, $80, $80, $00, $00        ;; 7f:6da7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6daf ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6db7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6dbf ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6dc7 ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6dcf ????????
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6dd7 ????????
    db   $00, $00, $80, $00, $80, $2a, $2a, $80        ;; 7f:6ddf ????????
    db   $80, $80, $80, $00, $80, $80, $00, $00        ;; 7f:6de7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6def ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6df7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6dff ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6e07 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:6e0f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e17 ????????
    db   $00, $00, $80, $00, $80, $07, $07, $80        ;; 7f:6e1f ????????
    db   $80, $80, $80, $00, $80, $80, $00, $00        ;; 7f:6e27 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e2f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e37 ????????
    db   $00, $19, $00, $00, $60, $00, $80, $80        ;; 7f:6e3f ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6e47 ????????
    db   $80, $80, $80, $00, $00, $00, $00, $00        ;; 7f:6e4f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e57 ????????
    db   $00, $00, $80, $00, $00, $00, $00, $00        ;; 7f:6e5f ????????
    db   $00, $00, $80, $00, $00, $00, $00, $00        ;; 7f:6e67 ????????
    db   $00, $00, $80, $80, $00, $80, $80, $00        ;; 7f:6e6f ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e77 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 7f:6e7f ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6e87 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e8f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6e9f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ea7 ????????
    db   $00, $00, $80, $80, $00, $80, $80, $00        ;; 7f:6eaf ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6eb7 ????????
    db   $00, $00, $00, $00, $00, $80, $00, $80        ;; 7f:6ebf ????????
    db   $80, $80, $00, $00, $00, $00, $00, $00        ;; 7f:6ec7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ecf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ed7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6edf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ee7 ????????
    db   $00, $00, $80, $80, $00, $80, $80, $00        ;; 7f:6eef ????????
    db   $80, $00, $00, $00, $00, $00, $00, $00        ;; 7f:6ef7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $80        ;; 7f:6eff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f07 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f0f ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:6f17 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:6f1f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f27 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f2f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f37 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f3f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f47 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f4f ????????
    db   $80, $80, $80, $80, $80, $00, $00, $00        ;; 7f:6f57 ????????
    db   $00, $00, $00, $80, $80, $80, $80, $80        ;; 7f:6f5f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f67 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f6f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f77 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f7f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f87 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6f8f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6f97 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6f9f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fa7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6faf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fb7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fbf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fc7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fcf ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:6fd7 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:6fdf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fe7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6ff7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:6fff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7007 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:700f ????????
    db   $80, $80, $80, $80, $80, $80, $00, $00        ;; 7f:7017 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 7f:701f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7027 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:702f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7037 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:703f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7047 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:704f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7057 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:705f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7067 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:706f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7077 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:707f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7087 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:708f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7097 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:709f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70b7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70bf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70c7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70ef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70f7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:70ff ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7107 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:710f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7117 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:711f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7127 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:712f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7137 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:713f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7147 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:714f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7157 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:715f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7167 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:716f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7177 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:717f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7187 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:718f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7197 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:719f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71b7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71bf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71c7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71ef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71f7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:71ff ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7207 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:720f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7217 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:721f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7227 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:722f ????????
    db   $00, $00, $00, $00, $00, $10, $00, $00        ;; 7f:7237 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:723f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7247 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:724f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7257 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:725f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7267 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:726f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7277 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:727f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7287 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:728f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7297 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:729f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72b7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72bf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72c7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72cf ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72d7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72df ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72e7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72ef ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72f7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:72ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7307 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:730f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7317 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:731f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7327 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:732f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7337 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:733f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7347 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:734f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7357 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:735f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7367 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:736f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7377 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:737f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7387 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:738f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7397 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:739f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73b7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73d7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73df ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:73ff ????????

data_7f_7407:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7407 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:740f ????????

data_7f_7417:
    db   $03, $03, $05, $06, $0b, $0c, $0f, $08        ;; 7f:7417 ????????
    db   $0f, $08, $16, $19, $1e, $11, $1f, $11        ;; 7f:741f ????????

data_7f_7427:
    db   $f8, $f8, $f4, $0c, $7c, $c4, $dc, $e4        ;; 7f:7427 ????????
    db   $bc, $a4, $bc, $bc, $80, $80, $00, $00        ;; 7f:742f ????????

data_7f_7437:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7437 ????????
    db   $00, $00, $3e, $3e, $3d, $23, $5f, $61        ;; 7f:743f ????????

data_7f_7447:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7447 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:744f ????????

data_7f_7457:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7457 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:745f ????????

data_7f_7467:
    db   $07, $07, $07, $04, $07, $04, $07, $07        ;; 7f:7467 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:746f ????????

data_7f_7477:
    db   $ff, $f1, $ff, $00, $ff, $00, $ff, $e3        ;; 7f:7477 ????????
    db   $3e, $22, $3e, $22, $3e, $22, $5e, $62        ;; 7f:747f ????????

data_7f_7487:
    db   $fc, $fc, $fa, $06, $f4, $0c, $f8, $f8        ;; 7f:7487 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:748f ????????

data_7f_7497:
    db   $bf, $c1, $fb, $87, $ec, $9c, $b0, $f0        ;; 7f:7497 ????????
    db   $f9, $f9, $f9, $89, $f9, $89, $f8, $88        ;; 7f:749f ????????

data_7f_74a7:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:74a7 ????????
    db   $ff, $ff, $eb, $1c, $76, $89, $fb, $87        ;; 7f:74af ????????

data_7f_74b7:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:74b7 ????????
    db   $f8, $f8, $f6, $0e, $dd, $e3, $3d, $23        ;; 7f:74bf ????????

data_7f_74c7:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:74c7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:74cf ????????

data_7f_74d7:
    db   $5a, $66, $7a, $46, $7c, $44, $7c, $44        ;; 7f:74d7 ????????
    db   $7c, $44, $b4, $cc, $b4, $cc, $f8, $88        ;; 7f:74df ????????

data_7f_74e7:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:74e7 ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 7f:74ef ????????

data_7f_74f7:
    db   $f8, $88, $f8, $88, $f9, $89, $e9, $99        ;; 7f:74f7 ????????
    db   $69, $99, $69, $99, $71, $91, $f2, $13        ;; 7f:74ff ????????

data_7f_7507:
    db   $f4, $8c, $f8, $88, $68, $98, $70, $90        ;; 7f:7507 ????????
    db   $f0, $10, $f0, $10, $d0, $30, $d0, $30        ;; 7f:750f ????????

data_7f_7517:
    db   $2f, $31, $1f, $11, $1f, $11, $1f, $11        ;; 7f:7517 ????????
    db   $2d, $33, $3d, $23, $5e, $62, $7a, $46        ;; 7f:751f ????????

data_7f_7527:
    db   $01, $01, $01, $01, $02, $03, $fd, $fe        ;; 7f:7527 ????????
    db   $ff, $80, $7f, $40, $5f, $60, $3f, $3f        ;; 7f:752f ????????

data_7f_7537:
    db   $78, $88, $e8, $18, $e8, $18, $f0, $10        ;; 7f:7537 ????????
    db   $d0, $30, $a0, $60, $60, $e0, $80, $80        ;; 7f:753f ????????

data_7f_7547:
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 7f:7547 ????????
    db   $01, $01, $01, $01, $01, $01, $00, $00        ;; 7f:754f ????????

data_7f_7557:
    db   $f2, $13, $f3, $12, $f3, $12, $f3, $12        ;; 7f:7557 ????????
    db   $eb, $1a, $eb, $1a, $7b, $8a, $fb, $fb        ;; 7f:755f ????????

data_7f_7567:
    db   $e0, $20, $e0, $20, $e0, $20, $d0, $30        ;; 7f:7567 ????????
    db   $d0, $30, $f0, $10, $f0, $10, $f0, $f0        ;; 7f:756f ????????

data_7f_7577:
    db   $7c, $44, $b4, $cc, $ff, $8f, $ff, $8d        ;; 7f:7577 ????????
    db   $f7, $89, $bf, $c1, $dd, $e3, $7e, $7e        ;; 7f:757f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7587 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:758f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:7597 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:759f ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:75a7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:75af ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 7f:75b7 ????????
    db   $00, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75bf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75c7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75cf ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75d7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75df ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75e7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75ef ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75f7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:75ff ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7607 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:760f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7617 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:761f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7627 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:762f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7637 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:763f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7647 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:764f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7657 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:765f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7667 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:766f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7677 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:767f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7687 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:768f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:7697 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:769f ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:76a7 ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:76af ????????
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 7f:76b7 ????????
    db   $80                                           ;; 7f:76bf ?
