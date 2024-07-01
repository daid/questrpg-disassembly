;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank05", ROMX[$4000], BANK[$05]

startScript:
    ld   A, [wScriptIndex]                             ;; 05:4000 $fa $c3 $d2
    ld   L, A                                          ;; 05:4003 $6f
    ld   H, $00                                        ;; 05:4004 $26 $00
    add  HL, HL                                        ;; 05:4006 $29
    ld   DE, scriptTable01                             ;; 05:4007 $11 $49 $4e
    add  HL, DE                                        ;; 05:400a $19
    ld   A, [HL+]                                      ;; 05:400b $2a
    ld   [wScriptPointer], A                           ;; 05:400c $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:400f $7e
    ld   [wScriptPointer.low], A                       ;; 05:4010 $ea $c6 $d2
    xor  A, A                                          ;; 05:4013 $af
    ld   [wD2C7], A                                    ;; 05:4014 $ea $c7 $d2
    ld   [wD2C8], A                                    ;; 05:4017 $ea $c8 $d2
    ld   [wD2D2], A                                    ;; 05:401a $ea $d2 $d2
    ld   [wD2D8], A                                    ;; 05:401d $ea $d8 $d2
    ld   [wD2D3], A                                    ;; 05:4020 $ea $d3 $d2
    ld   [wD2D4], A                                    ;; 05:4023 $ea $d4 $d2
    ld   [wScriptDelay], A                             ;; 05:4026 $ea $d5 $d2
    ld   [wD310], A                                    ;; 05:4029 $ea $10 $d3
    ld   [wD2D6], A                                    ;; 05:402c $ea $d6 $d2
    ld   [wD30D], A                                    ;; 05:402f $ea $0d $d3
    ld   [wD30E], A                                    ;; 05:4032 $ea $0e $d3
    ld   [wD2E8], A                                    ;; 05:4035 $ea $e8 $d2
    ld   A, $28                                        ;; 05:4038 $3e $28
    ld   [wD319], A                                    ;; 05:403a $ea $19 $d3
    ret                                                ;; 05:403d $c9

call_05_403e:
    xor  A, A                                          ;; 05:403e $af
    ld   [wD2C7], A                                    ;; 05:403f $ea $c7 $d2
    ld   [wD2C8], A                                    ;; 05:4042 $ea $c8 $d2
    ld   [wD2D2], A                                    ;; 05:4045 $ea $d2 $d2
    ld   [wD2D8], A                                    ;; 05:4048 $ea $d8 $d2
    ld   [wD2D3], A                                    ;; 05:404b $ea $d3 $d2
    ld   [wD2D4], A                                    ;; 05:404e $ea $d4 $d2
    ld   [wScriptDelay], A                             ;; 05:4051 $ea $d5 $d2
    ld   [wD310], A                                    ;; 05:4054 $ea $10 $d3
    ld   [wD2D6], A                                    ;; 05:4057 $ea $d6 $d2
    ld   [wD30D], A                                    ;; 05:405a $ea $0d $d3
    ld   [wD30E], A                                    ;; 05:405d $ea $0e $d3
    ld   [wD2E8], A                                    ;; 05:4060 $ea $e8 $d2
    ld   A, $28                                        ;; 05:4063 $3e $28
    ld   [wD319], A                                    ;; 05:4065 $ea $19 $d3
    ld   A, [wCurrentMap.low]                          ;; 05:4068 $fa $43 $c1
    cp   A, $9f                                        ;; 05:406b $fe $9f
    jr   Z, .jr_05_40bb                                ;; 05:406d $28 $4c
    cp   A, $3e                                        ;; 05:406f $fe $3e
    jr   Z, .jr_05_4097                                ;; 05:4071 $28 $24
    cp   A, $3f                                        ;; 05:4073 $fe $3f
    jr   Z, .jr_05_4097                                ;; 05:4075 $28 $20
    ld   HL, wC155                                     ;; 05:4077 $21 $55 $c1
    ld   BC, $05                                       ;; 05:407a $01 $05 $00
    add  HL, BC                                        ;; 05:407d $09
    ld   A, [HL]                                       ;; 05:407e $7e
    and  A, A                                          ;; 05:407f $a7
    jr   NZ, .jr_05_408b                               ;; 05:4080 $20 $09
    ld   A, $01                                        ;; 05:4082 $3e $01
    ld   [wD58C], A                                    ;; 05:4084 $ea $8c $d5
    ld   [wD58B], A                                    ;; 05:4087 $ea $8b $d5
    ret                                                ;; 05:408a $c9
.jr_05_408b:
    ld   HL, data_05_4e7d                              ;; 05:408b $21 $7d $4e
    ld   A, [HL+]                                      ;; 05:408e $2a
    ld   [wScriptPointer], A                           ;; 05:408f $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:4092 $7e
    ld   [wScriptPointer.low], A                       ;; 05:4093 $ea $c6 $d2
    ret                                                ;; 05:4096 $c9
.jr_05_4097:
    ld   HL, wC155                                     ;; 05:4097 $21 $55 $c1
    ld   BC, $0d                                       ;; 05:409a $01 $0d $00
    add  HL, BC                                        ;; 05:409d $09
    ld   A, [HL]                                       ;; 05:409e $7e
    and  A, A                                          ;; 05:409f $a7
    jr   NZ, .jr_05_40ab                               ;; 05:40a0 $20 $09
    ld   A, $01                                        ;; 05:40a2 $3e $01
    ld   [wD58C], A                                    ;; 05:40a4 $ea $8c $d5
    ld   [wD58B], A                                    ;; 05:40a7 $ea $8b $d5
    ret                                                ;; 05:40aa $c9
.jr_05_40ab:
    ld   HL, data_05_4e7d                              ;; 05:40ab $21 $7d $4e
    ld   BC, $02                                       ;; 05:40ae $01 $02 $00
    add  HL, BC                                        ;; 05:40b1 $09
    ld   A, [HL+]                                      ;; 05:40b2 $2a
    ld   [wScriptPointer], A                           ;; 05:40b3 $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:40b6 $7e
    ld   [wScriptPointer.low], A                       ;; 05:40b7 $ea $c6 $d2
    ret                                                ;; 05:40ba $c9
.jr_05_40bb:
    ld   HL, data_05_4e7d                              ;; 05:40bb $21 $7d $4e
    ld   BC, $04                                       ;; 05:40be $01 $04 $00
    add  HL, BC                                        ;; 05:40c1 $09
    ld   A, [HL+]                                      ;; 05:40c2 $2a
    ld   [wScriptPointer], A                           ;; 05:40c3 $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:40c6 $7e
    ld   [wScriptPointer.low], A                       ;; 05:40c7 $ea $c6 $d2
    ret                                                ;; 05:40ca $c9

call_05_40cb:
    ld   A, [wD36C]                                    ;; 05:40cb $fa $6c $d3
    and  A, A                                          ;; 05:40ce $a7
    ret  NZ                                            ;; 05:40cf $c0
    ld   A, [wD36D]                                    ;; 05:40d0 $fa $6d $d3
    and  A, A                                          ;; 05:40d3 $a7
    ret  NZ                                            ;; 05:40d4 $c0
    ld   A, [wC557]                                    ;; 05:40d5 $fa $57 $c5
    and  A, A                                          ;; 05:40d8 $a7
    ret  NZ                                            ;; 05:40d9 $c0
    ld   A, [wScriptDelay]                             ;; 05:40da $fa $d5 $d2
    and  A, A                                          ;; 05:40dd $a7
    jr   Z, .jr_05_40e8                                ;; 05:40de $28 $08
    ld   A, [wScriptDelay]                             ;; 05:40e0 $fa $d5 $d2
    dec  A                                             ;; 05:40e3 $3d
    ld   [wScriptDelay], A                             ;; 05:40e4 $ea $d5 $d2
    ret                                                ;; 05:40e7 $c9
.jr_05_40e8:
    ld   A, [wD2C7]                                    ;; 05:40e8 $fa $c7 $d2
    and  A, A                                          ;; 05:40eb $a7
    jr   Z, .jr_05_40f7                                ;; 05:40ec $28 $09
    ld   A, [wC45B]                                    ;; 05:40ee $fa $5b $c4
    and  A, A                                          ;; 05:40f1 $a7
    ret  NZ                                            ;; 05:40f2 $c0
    xor  A, A                                          ;; 05:40f3 $af
    ld   [wD2C7], A                                    ;; 05:40f4 $ea $c7 $d2
.jr_05_40f7:
    ld   A, [wD31D]                                    ;; 05:40f7 $fa $1d $d3
    and  A, A                                          ;; 05:40fa $a7
    jp   Z, .jp_05_41b3                                ;; 05:40fb $ca $b3 $41
    ld   A, [wPlayerX]                                 ;; 05:40fe $fa $44 $c1
    ld   H, A                                          ;; 05:4101 $67
    ld   A, [wPlayerX.low]                             ;; 05:4102 $fa $45 $c1
    ld   L, A                                          ;; 05:4105 $6f
    ld   A, [wD31E]                                    ;; 05:4106 $fa $1e $d3
    and  A, A                                          ;; 05:4109 $a7
    jr   NZ, .jr_05_412a                               ;; 05:410a $20 $1e
    ld   A, [wC45D]                                    ;; 05:410c $fa $5d $c4
    inc  A                                             ;; 05:410f $3c
    ld   [wC45D], A                                    ;; 05:4110 $ea $5d $c4
    ld   A, $01                                        ;; 05:4113 $3e $01
    add  A, L                                          ;; 05:4115 $85
    ld   L, A                                          ;; 05:4116 $6f
    xor  A, A                                          ;; 05:4117 $af
    adc  A, H                                          ;; 05:4118 $8c
    ld   H, A                                          ;; 05:4119 $67
    ld   A, [wC089]                                    ;; 05:411a $fa $89 $c0
    inc  A                                             ;; 05:411d $3c
    ld   [wC089], A                                    ;; 05:411e $ea $89 $c0
    ld   A, [wC08D]                                    ;; 05:4121 $fa $8d $c0
    inc  A                                             ;; 05:4124 $3c
    ld   [wC08D], A                                    ;; 05:4125 $ea $8d $c0
    jr   .jr_05_4147                                   ;; 05:4128 $18 $1d
.jr_05_412a:
    ld   A, [wC45D]                                    ;; 05:412a $fa $5d $c4
    dec  A                                             ;; 05:412d $3d
    ld   [wC45D], A                                    ;; 05:412e $ea $5d $c4
    ld   A, L                                          ;; 05:4131 $7d
    sub  A, $01                                        ;; 05:4132 $d6 $01
    ld   L, A                                          ;; 05:4134 $6f
    ld   A, H                                          ;; 05:4135 $7c
    sbc  A, $00                                        ;; 05:4136 $de $00
    ld   H, A                                          ;; 05:4138 $67
    ld   A, [wC089]                                    ;; 05:4139 $fa $89 $c0
    dec  A                                             ;; 05:413c $3d
    ld   [wC089], A                                    ;; 05:413d $ea $89 $c0
    ld   A, [wC08D]                                    ;; 05:4140 $fa $8d $c0
    dec  A                                             ;; 05:4143 $3d
    ld   [wC08D], A                                    ;; 05:4144 $ea $8d $c0
.jr_05_4147:
    ld   [wPlayerX], A                                 ;; 05:4147 $ea $44 $c1
    ld   A, L                                          ;; 05:414a $7d
    ld   [wPlayerX.low], A                             ;; 05:414b $ea $45 $c1
    ld   A, [wD31F]                                    ;; 05:414e $fa $1f $d3
    dec  A                                             ;; 05:4151 $3d
    ld   [wD31F], A                                    ;; 05:4152 $ea $1f $d3
    and  A, A                                          ;; 05:4155 $a7
    jr   NZ, .jr_05_4168                               ;; 05:4156 $20 $10
    xor  A, A                                          ;; 05:4158 $af
    ld   [wD31D], A                                    ;; 05:4159 $ea $1d $d3
    ld   [wC088], A                                    ;; 05:415c $ea $88 $c0
    ld   [wC089], A                                    ;; 05:415f $ea $89 $c0
    ld   [wC08C], A                                    ;; 05:4162 $ea $8c $c0
    ld   [wC08D], A                                    ;; 05:4165 $ea $8d $c0
.jr_05_4168:
    ld   A, [wD4F8]                                    ;; 05:4168 $fa $f8 $d4
    cp   A, $01                                        ;; 05:416b $fe $01
    jr   NZ, .jr_05_41a6                               ;; 05:416d $20 $37
    xor  A, A                                          ;; 05:416f $af
    ld   [wD4F8], A                                    ;; 05:4170 $ea $f8 $d4
    ld   A, [wPlayerY]                                 ;; 05:4173 $fa $46 $c1
    ld   H, A                                          ;; 05:4176 $67
    ld   A, [wPlayerY.low]                             ;; 05:4177 $fa $47 $c1
    ld   L, A                                          ;; 05:417a $6f
    ld   A, [wD4F7]                                    ;; 05:417b $fa $f7 $d4
    ld   B, A                                          ;; 05:417e $47
    ld   A, [wD31F]                                    ;; 05:417f $fa $1f $d3
    cp   A, B                                          ;; 05:4182 $b8
    jr   NC, .jr_05_4195                               ;; 05:4183 $30 $10
    ld   A, [wC45C]                                    ;; 05:4185 $fa $5c $c4
    inc  A                                             ;; 05:4188 $3c
    ld   [wC45C], A                                    ;; 05:4189 $ea $5c $c4
    ld   A, $01                                        ;; 05:418c $3e $01
    add  A, L                                          ;; 05:418e $85
    ld   L, A                                          ;; 05:418f $6f
    xor  A, A                                          ;; 05:4190 $af
    adc  A, H                                          ;; 05:4191 $8c
    ld   H, A                                          ;; 05:4192 $67
    jr   .jr_05_41ab                                   ;; 05:4193 $18 $16
.jr_05_4195:
    ld   A, [wC45C]                                    ;; 05:4195 $fa $5c $c4
    dec  A                                             ;; 05:4198 $3d
    ld   [wC45C], A                                    ;; 05:4199 $ea $5c $c4
    ld   A, L                                          ;; 05:419c $7d
    sub  A, $01                                        ;; 05:419d $d6 $01
    ld   L, A                                          ;; 05:419f $6f
    ld   A, H                                          ;; 05:41a0 $7c
    sbc  A, $00                                        ;; 05:41a1 $de $00
    ld   H, A                                          ;; 05:41a3 $67
    jr   .jr_05_41ab                                   ;; 05:41a4 $18 $05
.jr_05_41a6:
    inc  A                                             ;; 05:41a6 $3c
    ld   [wD4F8], A                                    ;; 05:41a7 $ea $f8 $d4
    ret                                                ;; 05:41aa $c9
.jr_05_41ab:
    ld   [wPlayerY], A                                 ;; 05:41ab $ea $46 $c1
    ld   A, L                                          ;; 05:41ae $7d
    ld   [wPlayerY.low], A                             ;; 05:41af $ea $47 $c1
    ret                                                ;; 05:41b2 $c9
.jp_05_41b3:
    ld   A, [wD320]                                    ;; 05:41b3 $fa $20 $d3
    and  A, A                                          ;; 05:41b6 $a7
    jp   Z, .jp_05_421b                                ;; 05:41b7 $ca $1b $42
    cp   A, $02                                        ;; 05:41ba $fe $02
    jr   Z, .jr_05_41f0                                ;; 05:41bc $28 $32
    ld   A, [wPlayerY]                                 ;; 05:41be $fa $46 $c1
    ld   H, A                                          ;; 05:41c1 $67
    ld   A, [wPlayerY.low]                             ;; 05:41c2 $fa $47 $c1
    ld   L, A                                          ;; 05:41c5 $6f
    ld   A, [wD322]                                    ;; 05:41c6 $fa $22 $d3
    ld   B, A                                          ;; 05:41c9 $47
    ld   A, [wC45C]                                    ;; 05:41ca $fa $5c $c4
    sub  A, B                                          ;; 05:41cd $90
    ld   [wC45C], A                                    ;; 05:41ce $ea $5c $c4
    ld   A, L                                          ;; 05:41d1 $7d
    sub  A, B                                          ;; 05:41d2 $90
    ld   L, A                                          ;; 05:41d3 $6f
    ld   A, H                                          ;; 05:41d4 $7c
    sbc  A, $00                                        ;; 05:41d5 $de $00
    ld   H, A                                          ;; 05:41d7 $67
    ld   A, [wD4F7]                                    ;; 05:41d8 $fa $f7 $d4
    sub  A, B                                          ;; 05:41db $90
    ld   [wD4F7], A                                    ;; 05:41dc $ea $f7 $d4
    ld   A, [wD4F7]                                    ;; 05:41df $fa $f7 $d4
    and  A, A                                          ;; 05:41e2 $a7
    ret  NZ                                            ;; 05:41e3 $c0
    ld   A, [wD321]                                    ;; 05:41e4 $fa $21 $d3
    ld   [wD4F7], A                                    ;; 05:41e7 $ea $f7 $d4
    ld   A, $02                                        ;; 05:41ea $3e $02
    ld   [wD320], A                                    ;; 05:41ec $ea $20 $d3
    ret                                                ;; 05:41ef $c9
.jr_05_41f0:
    ld   A, [wPlayerY]                                 ;; 05:41f0 $fa $46 $c1
    ld   H, A                                          ;; 05:41f3 $67
    ld   A, [wPlayerY.low]                             ;; 05:41f4 $fa $47 $c1
    ld   L, A                                          ;; 05:41f7 $6f
    ld   A, [wD322]                                    ;; 05:41f8 $fa $22 $d3
    ld   B, A                                          ;; 05:41fb $47
    ld   A, [wC45C]                                    ;; 05:41fc $fa $5c $c4
    add  A, B                                          ;; 05:41ff $80
    ld   [wC45C], A                                    ;; 05:4200 $ea $5c $c4
    ld   A, L                                          ;; 05:4203 $7d
    add  A, B                                          ;; 05:4204 $80
    ld   L, A                                          ;; 05:4205 $6f
    ld   A, H                                          ;; 05:4206 $7c
    adc  A, $00                                        ;; 05:4207 $ce $00
    ld   H, A                                          ;; 05:4209 $67
    ld   A, [wD4F7]                                    ;; 05:420a $fa $f7 $d4
    sub  A, B                                          ;; 05:420d $90
    ld   [wD4F7], A                                    ;; 05:420e $ea $f7 $d4
    ld   A, [wD4F7]                                    ;; 05:4211 $fa $f7 $d4
    and  A, A                                          ;; 05:4214 $a7
    ret  NZ                                            ;; 05:4215 $c0
    xor  A, A                                          ;; 05:4216 $af
    ld   [wD320], A                                    ;; 05:4217 $ea $20 $d3
    ret                                                ;; 05:421a $c9
.jp_05_421b:
    ld   A, [wD2C8]                                    ;; 05:421b $fa $c8 $d2
    and  A, A                                          ;; 05:421e $a7
    jr   Z, .jp_05_4268                                ;; 05:421f $28 $47
    ld   DE, $00                                       ;; 05:4221 $11 $00 $00
    ld   BC, $00                                       ;; 05:4224 $01 $00 $00
.jr_05_4227:
    ld   HL, wD2C9                                     ;; 05:4227 $21 $c9 $d2
    add  HL, DE                                        ;; 05:422a $19
    ld   A, [HL]                                       ;; 05:422b $7e
    ld   C, A                                          ;; 05:422c $4f
    sla  C                                             ;; 05:422d $cb $21
    rl   B                                             ;; 05:422f $cb $10
    ld   HL, $323                                      ;; 05:4231 $21 $23 $03
    add  HL, BC                                        ;; 05:4234 $09
    ld   A, [HL+]                                      ;; 05:4235 $2a
    ld   L, [HL]                                       ;; 05:4236 $6e
    ld   H, A                                          ;; 05:4237 $67
    ld   BC, $0d                                       ;; 05:4238 $01 $0d $00
    add  HL, BC                                        ;; 05:423b $09
    ld   A, [HL]                                       ;; 05:423c $7e
    and  A, A                                          ;; 05:423d $a7
    jr   Z, .jr_05_4248                                ;; 05:423e $28 $08
    ld   A, [wD2E8]                                    ;; 05:4240 $fa $e8 $d2
    and  A, A                                          ;; 05:4243 $a7
    jp   NZ, .jp_05_4268                               ;; 05:4244 $c2 $68 $42
    ret                                                ;; 05:4247 $c9
.jr_05_4248:
    ld   A, [wD2D2]                                    ;; 05:4248 $fa $d2 $d2
    dec  A                                             ;; 05:424b $3d
    ld   [wD2D2], A                                    ;; 05:424c $ea $d2 $d2
    and  A, A                                          ;; 05:424f $a7
    jr   Z, .jr_05_4264                                ;; 05:4250 $28 $12
    ld   C, E                                          ;; 05:4252 $4b
    ld   B, $00                                        ;; 05:4253 $06 $00
    ld   HL, wD2C9                                     ;; 05:4255 $21 $c9 $d2
    add  HL, BC                                        ;; 05:4258 $09
.jr_05_4259:
    inc  HL                                            ;; 05:4259 $23
    ld   A, [HL-]                                      ;; 05:425a $3a
    ld   [HL+], A                                      ;; 05:425b $22
    inc  C                                             ;; 05:425c $0c
    ld   A, C                                          ;; 05:425d $79
    cp   A, $08                                        ;; 05:425e $fe $08
    jr   NZ, .jr_05_4259                               ;; 05:4260 $20 $f7
    jr   .jr_05_4227                                   ;; 05:4262 $18 $c3
.jr_05_4264:
    xor  A, A                                          ;; 05:4264 $af
    ld   [wD2C8], A                                    ;; 05:4265 $ea $c8 $d2
.jp_05_4268:
    ld   A, [wD2E8]                                    ;; 05:4268 $fa $e8 $d2
    and  A, A                                          ;; 05:426b $a7
    jp   Z, .jp_05_4393                                ;; 05:426c $ca $93 $43
    xor  A, A                                          ;; 05:426f $af
    ld   [wD4F7], A                                    ;; 05:4270 $ea $f7 $d4
    ld   [wD4F8], A                                    ;; 05:4273 $ea $f8 $d4
.jp_05_4276:
    ld   A, [wD4F7]                                    ;; 05:4276 $fa $f7 $d4
    ld   C, A                                          ;; 05:4279 $4f
    ld   B, $00                                        ;; 05:427a $06 $00
    sla  C                                             ;; 05:427c $cb $21
    rl   B                                             ;; 05:427e $cb $10
    sla  C                                             ;; 05:4280 $cb $21
    rl   B                                             ;; 05:4282 $cb $10
    ld   HL, wD2EA                                     ;; 05:4284 $21 $ea $d2
    add  HL, BC                                        ;; 05:4287 $09
    ld   A, [HL]                                       ;; 05:4288 $7e
    and  A, A                                          ;; 05:4289 $a7
    jp   Z, .jp_05_42df                                ;; 05:428a $ca $df $42
    dec  A                                             ;; 05:428d $3d
    ld   [HL-], A                                      ;; 05:428e $32
    ld   A, [HL]                                       ;; 05:428f $7e
    and  A, A                                          ;; 05:4290 $a7
    jp   NZ, .jp_05_42bb                               ;; 05:4291 $c2 $bb $42
    ld   A, [wD4F7]                                    ;; 05:4294 $fa $f7 $d4
    ld   C, A                                          ;; 05:4297 $4f
    ld   B, $00                                        ;; 05:4298 $06 $00
    ld   HL, wD2DF                                     ;; 05:429a $21 $df $d2
    add  HL, BC                                        ;; 05:429d $09
    ld   A, [HL]                                       ;; 05:429e $7e
    ld   C, A                                          ;; 05:429f $4f
    ld   B, $00                                        ;; 05:42a0 $06 $00
    sla  C                                             ;; 05:42a2 $cb $21
    rl   B                                             ;; 05:42a4 $cb $10
    ld   HL, $323                                      ;; 05:42a6 $21 $23 $03
    add  HL, BC                                        ;; 05:42a9 $09
    ld   A, [HL+]                                      ;; 05:42aa $2a
    ld   L, [HL]                                       ;; 05:42ab $6e
    ld   H, A                                          ;; 05:42ac $67
    ld   BC, $0a                                       ;; 05:42ad $01 $0a $00
    add  HL, BC                                        ;; 05:42b0 $09
    ld   A, [HL]                                       ;; 05:42b1 $7e
    inc  A                                             ;; 05:42b2 $3c
    ld   [HL-], A                                      ;; 05:42b3 $32
    ld   A, [HL]                                       ;; 05:42b4 $7e
    adc  A, $00                                        ;; 05:42b5 $ce $00
    ld   [HL], A                                       ;; 05:42b7 $77
    jp   .jp_05_42df                                   ;; 05:42b8 $c3 $df $42
.jp_05_42bb:
    ld   A, [wD4F7]                                    ;; 05:42bb $fa $f7 $d4
    ld   C, A                                          ;; 05:42be $4f
    ld   B, $00                                        ;; 05:42bf $06 $00
    ld   HL, wD2DF                                     ;; 05:42c1 $21 $df $d2
    add  HL, BC                                        ;; 05:42c4 $09
    ld   A, [HL]                                       ;; 05:42c5 $7e
    ld   C, A                                          ;; 05:42c6 $4f
    ld   B, $00                                        ;; 05:42c7 $06 $00
    sla  C                                             ;; 05:42c9 $cb $21
    rl   B                                             ;; 05:42cb $cb $10
    ld   HL, $323                                      ;; 05:42cd $21 $23 $03
    add  HL, BC                                        ;; 05:42d0 $09
    ld   A, [HL+]                                      ;; 05:42d1 $2a
    ld   L, [HL]                                       ;; 05:42d2 $6e
    ld   H, A                                          ;; 05:42d3 $67
    ld   BC, $0a                                       ;; 05:42d4 $01 $0a $00
    add  HL, BC                                        ;; 05:42d7 $09
    ld   A, [HL]                                       ;; 05:42d8 $7e
    dec  A                                             ;; 05:42d9 $3d
    ld   [HL-], A                                      ;; 05:42da $32
    ld   A, [HL]                                       ;; 05:42db $7e
    sbc  A, $00                                        ;; 05:42dc $de $00
    ld   [HL], A                                       ;; 05:42de $77
.jp_05_42df:
    ld   A, [wD4F7]                                    ;; 05:42df $fa $f7 $d4
    ld   C, A                                          ;; 05:42e2 $4f
    ld   B, $00                                        ;; 05:42e3 $06 $00
    sla  C                                             ;; 05:42e5 $cb $21
    rl   B                                             ;; 05:42e7 $cb $10
    sla  C                                             ;; 05:42e9 $cb $21
    rl   B                                             ;; 05:42eb $cb $10
    ld   HL, wD2EC                                     ;; 05:42ed $21 $ec $d2
    add  HL, BC                                        ;; 05:42f0 $09
    ld   A, [HL]                                       ;; 05:42f1 $7e
    and  A, A                                          ;; 05:42f2 $a7
    jp   Z, .jp_05_4348                                ;; 05:42f3 $ca $48 $43
    dec  A                                             ;; 05:42f6 $3d
    ld   [HL-], A                                      ;; 05:42f7 $32
    ld   A, [HL]                                       ;; 05:42f8 $7e
    and  A, A                                          ;; 05:42f9 $a7
    jp   NZ, .jp_05_4324                               ;; 05:42fa $c2 $24 $43
    ld   A, [wD4F7]                                    ;; 05:42fd $fa $f7 $d4
    ld   C, A                                          ;; 05:4300 $4f
    ld   B, $00                                        ;; 05:4301 $06 $00
    ld   HL, wD2DF                                     ;; 05:4303 $21 $df $d2
    add  HL, BC                                        ;; 05:4306 $09
    ld   A, [HL]                                       ;; 05:4307 $7e
    ld   C, A                                          ;; 05:4308 $4f
    ld   B, $00                                        ;; 05:4309 $06 $00
    sla  C                                             ;; 05:430b $cb $21
    rl   B                                             ;; 05:430d $cb $10
    ld   HL, $323                                      ;; 05:430f $21 $23 $03
    add  HL, BC                                        ;; 05:4312 $09
    ld   A, [HL+]                                      ;; 05:4313 $2a
    ld   L, [HL]                                       ;; 05:4314 $6e
    ld   H, A                                          ;; 05:4315 $67
    ld   BC, $0c                                       ;; 05:4316 $01 $0c $00
    add  HL, BC                                        ;; 05:4319 $09
    ld   A, [HL]                                       ;; 05:431a $7e
    inc  A                                             ;; 05:431b $3c
    ld   [HL-], A                                      ;; 05:431c $32
    ld   A, [HL]                                       ;; 05:431d $7e
    adc  A, $00                                        ;; 05:431e $ce $00
    ld   [HL], A                                       ;; 05:4320 $77
    jp   .jp_05_4348                                   ;; 05:4321 $c3 $48 $43
.jp_05_4324:
    ld   A, [wD4F7]                                    ;; 05:4324 $fa $f7 $d4
    ld   C, A                                          ;; 05:4327 $4f
    ld   B, $00                                        ;; 05:4328 $06 $00
    ld   HL, wD2DF                                     ;; 05:432a $21 $df $d2
    add  HL, BC                                        ;; 05:432d $09
    ld   A, [HL]                                       ;; 05:432e $7e
    ld   C, A                                          ;; 05:432f $4f
    ld   B, $00                                        ;; 05:4330 $06 $00
    sla  C                                             ;; 05:4332 $cb $21
    rl   B                                             ;; 05:4334 $cb $10
    ld   HL, $323                                      ;; 05:4336 $21 $23 $03
    add  HL, BC                                        ;; 05:4339 $09
    ld   A, [HL+]                                      ;; 05:433a $2a
    ld   L, [HL]                                       ;; 05:433b $6e
    ld   H, A                                          ;; 05:433c $67
    ld   BC, $0c                                       ;; 05:433d $01 $0c $00
    add  HL, BC                                        ;; 05:4340 $09
    ld   A, [HL]                                       ;; 05:4341 $7e
    dec  A                                             ;; 05:4342 $3d
    ld   [HL-], A                                      ;; 05:4343 $32
    ld   A, [HL]                                       ;; 05:4344 $7e
    sbc  A, $00                                        ;; 05:4345 $de $00
    ld   [HL], A                                       ;; 05:4347 $77
.jp_05_4348:
    ld   A, [wD4F7]                                    ;; 05:4348 $fa $f7 $d4
    ld   C, A                                          ;; 05:434b $4f
    ld   B, $00                                        ;; 05:434c $06 $00
    sla  C                                             ;; 05:434e $cb $21
    rl   B                                             ;; 05:4350 $cb $10
    sla  C                                             ;; 05:4352 $cb $21
    rl   B                                             ;; 05:4354 $cb $10
    ld   HL, wD2EA                                     ;; 05:4356 $21 $ea $d2
    ld   A, [HL+]                                      ;; 05:4359 $2a
    inc  HL                                            ;; 05:435a $23
    ld   B, A                                          ;; 05:435b $47
    ld   A, [HL]                                       ;; 05:435c $7e
    or   A, B                                          ;; 05:435d $b0
    jr   Z, .jr_05_4370                                ;; 05:435e $28 $10
    ld   A, [wD4F7]                                    ;; 05:4360 $fa $f7 $d4
    inc  A                                             ;; 05:4363 $3c
    ld   [wD4F7], A                                    ;; 05:4364 $ea $f7 $d4
    ld   B, A                                          ;; 05:4367 $47
    ld   A, [wD2E8]                                    ;; 05:4368 $fa $e8 $d2
    cp   A, B                                          ;; 05:436b $b8
    jp   NZ, .jp_05_4276                               ;; 05:436c $c2 $76 $42
    ret                                                ;; 05:436f $c9
.jr_05_4370:
    ld   A, [wD4F8]                                    ;; 05:4370 $fa $f8 $d4
    inc  A                                             ;; 05:4373 $3c
    ld   [wD4F8], A                                    ;; 05:4374 $ea $f8 $d4
    ld   A, [wD4F7]                                    ;; 05:4377 $fa $f7 $d4
    inc  A                                             ;; 05:437a $3c
    ld   [wD4F7], A                                    ;; 05:437b $ea $f7 $d4
    ld   B, A                                          ;; 05:437e $47
    ld   A, [wD2E8]                                    ;; 05:437f $fa $e8 $d2
    cp   A, B                                          ;; 05:4382 $b8
    jp   NZ, .jp_05_4276                               ;; 05:4383 $c2 $76 $42
    ld   A, [wD4F8]                                    ;; 05:4386 $fa $f8 $d4
    ld   B, A                                          ;; 05:4389 $47
    ld   A, [wD2E8]                                    ;; 05:438a $fa $e8 $d2
    cp   A, B                                          ;; 05:438d $b8
    ret  NZ                                            ;; 05:438e $c0
    xor  A, A                                          ;; 05:438f $af
    ld   [wD2E8], A                                    ;; 05:4390 $ea $e8 $d2
.jp_05_4393:
    ld   A, [wD2D8]                                    ;; 05:4393 $fa $d8 $d2
    and  A, A                                          ;; 05:4396 $a7
    jp   Z, .jp_05_443f                                ;; 05:4397 $ca $3f $44
    ld   A, [wD2D9]                                    ;; 05:439a $fa $d9 $d2
    cp   A, $00                                        ;; 05:439d $fe $00
    jr   Z, .jr_05_43e6                                ;; 05:439f $28 $45
    dec  A                                             ;; 05:43a1 $3d
    ld   [wD2D9], A                                    ;; 05:43a2 $ea $d9 $d2
    ld   A, [wD2DB]                                    ;; 05:43a5 $fa $db $d2
    cp   A, $01                                        ;; 05:43a8 $fe $01
    jr   Z, .jr_05_43c9                                ;; 05:43aa $28 $1d
    ld   A, [wD2DD]                                    ;; 05:43ac $fa $dd $d2
    ld   B, A                                          ;; 05:43af $47
    ld   HL, wCEB3                                     ;; 05:43b0 $21 $b3 $ce
    ld   A, B                                          ;; 05:43b3 $78
    add  A, [HL]                                       ;; 05:43b4 $86
    ld   [HL-], A                                      ;; 05:43b5 $32
    ld   A, $00                                        ;; 05:43b6 $3e $00
    adc  A, [HL]                                       ;; 05:43b8 $8e
    ld   [HL], A                                       ;; 05:43b9 $77
    ld   A, [wCEB3]                                    ;; 05:43ba $fa $b3 $ce
    ld   [wSCX], A                                     ;; 05:43bd $ea $88 $d5
    ld   A, [wC45D]                                    ;; 05:43c0 $fa $5d $c4
    sub  A, B                                          ;; 05:43c3 $90
    ld   [wC45D], A                                    ;; 05:43c4 $ea $5d $c4
    jr   .jr_05_43e6                                   ;; 05:43c7 $18 $1d
.jr_05_43c9:
    ld   A, [wD2DD]                                    ;; 05:43c9 $fa $dd $d2
    ld   B, A                                          ;; 05:43cc $47
    ld   HL, wCEB3                                     ;; 05:43cd $21 $b3 $ce
    ld   A, [HL]                                       ;; 05:43d0 $7e
    sub  A, B                                          ;; 05:43d1 $90
    ld   [HL-], A                                      ;; 05:43d2 $32
    ld   A, [HL]                                       ;; 05:43d3 $7e
    sbc  A, $00                                        ;; 05:43d4 $de $00
    ld   [HL], A                                       ;; 05:43d6 $77
    ld   A, [wCEB3]                                    ;; 05:43d7 $fa $b3 $ce
    ld   [wSCX], A                                     ;; 05:43da $ea $88 $d5
    ld   A, [wC45D]                                    ;; 05:43dd $fa $5d $c4
    add  A, B                                          ;; 05:43e0 $80
    ld   [wC45D], A                                    ;; 05:43e1 $ea $5d $c4
    jr   .jr_05_43e6                                   ;; 05:43e4 $18 $00
.jr_05_43e6:
    ld   A, [wD2DA]                                    ;; 05:43e6 $fa $da $d2
    cp   A, $00                                        ;; 05:43e9 $fe $00
    jr   Z, .jr_05_4432                                ;; 05:43eb $28 $45
    dec  A                                             ;; 05:43ed $3d
    ld   [wD2DA], A                                    ;; 05:43ee $ea $da $d2
    ld   A, [wD2DC]                                    ;; 05:43f1 $fa $dc $d2
    cp   A, $01                                        ;; 05:43f4 $fe $01
    jr   Z, .jr_05_4415                                ;; 05:43f6 $28 $1d
    ld   A, [wD2DD]                                    ;; 05:43f8 $fa $dd $d2
    ld   B, A                                          ;; 05:43fb $47
    ld   HL, wCEB5                                     ;; 05:43fc $21 $b5 $ce
    ld   A, A                                          ;; 05:43ff $7f
    add  A, [HL]                                       ;; 05:4400 $86
    ld   [HL-], A                                      ;; 05:4401 $32
    ld   A, $00                                        ;; 05:4402 $3e $00
    adc  A, [HL]                                       ;; 05:4404 $8e
    ld   [HL], A                                       ;; 05:4405 $77
    ld   A, [wCEB5]                                    ;; 05:4406 $fa $b5 $ce
    ld   [wSCY], A                                     ;; 05:4409 $ea $87 $d5
    ld   A, [wC45C]                                    ;; 05:440c $fa $5c $c4
    sub  A, B                                          ;; 05:440f $90
    ld   [wC45C], A                                    ;; 05:4410 $ea $5c $c4
    jr   .jr_05_4432                                   ;; 05:4413 $18 $1d
.jr_05_4415:
    ld   A, [wD2DD]                                    ;; 05:4415 $fa $dd $d2
    ld   B, A                                          ;; 05:4418 $47
    ld   HL, wCEB5                                     ;; 05:4419 $21 $b5 $ce
    ld   A, [HL]                                       ;; 05:441c $7e
    sub  A, B                                          ;; 05:441d $90
    ld   [HL-], A                                      ;; 05:441e $32
    ld   A, [HL]                                       ;; 05:441f $7e
    sbc  A, $00                                        ;; 05:4420 $de $00
    ld   [HL], A                                       ;; 05:4422 $77
    ld   A, [wCEB5]                                    ;; 05:4423 $fa $b5 $ce
    ld   [wSCY], A                                     ;; 05:4426 $ea $87 $d5
    ld   A, [wC45C]                                    ;; 05:4429 $fa $5c $c4
    add  A, B                                          ;; 05:442c $80
    ld   [wC45C], A                                    ;; 05:442d $ea $5c $c4
    jr   .jr_05_4432                                   ;; 05:4430 $18 $00
.jr_05_4432:
    ld   A, [wD2D9]                                    ;; 05:4432 $fa $d9 $d2
    ld   B, A                                          ;; 05:4435 $47
    ld   A, [wD2DA]                                    ;; 05:4436 $fa $da $d2
    or   A, B                                          ;; 05:4439 $b0
    ret  NZ                                            ;; 05:443a $c0
    xor  A, A                                          ;; 05:443b $af
    ld   [wD2D8], A                                    ;; 05:443c $ea $d8 $d2
.jp_05_443f:
    ld   A, [wD2D3]                                    ;; 05:443f $fa $d3 $d2
    and  A, A                                          ;; 05:4442 $a7
    jr   Z, .jr_05_4454                                ;; 05:4443 $28 $0f
    ld   A, [wD2D4]                                    ;; 05:4445 $fa $d4 $d2
    dec  A                                             ;; 05:4448 $3d
    ld   [wD2D4], A                                    ;; 05:4449 $ea $d4 $d2
    and  A, A                                          ;; 05:444c $a7
    ret  NZ                                            ;; 05:444d $c0
    ld   [wD5E0], A                                    ;; 05:444e $ea $e0 $d5
    ld   [wD2D3], A                                    ;; 05:4451 $ea $d3 $d2
.jr_05_4454:
    ld   A, [wD30D]                                    ;; 05:4454 $fa $0d $d3
    and  A, A                                          ;; 05:4457 $a7
    jr   Z, .jr_05_4474                                ;; 05:4458 $28 $1a
    ld   A, [wD4F7]                                    ;; 05:445a $fa $f7 $d4
    dec  A                                             ;; 05:445d $3d
    ld   [wD4F7], A                                    ;; 05:445e $ea $f7 $d4
    ret  NZ                                            ;; 05:4461 $c0
    ld   A, $03                                        ;; 05:4462 $3e $03
    ld   [wD4F7], A                                    ;; 05:4464 $ea $f7 $d4
    ld   A, $01                                        ;; 05:4467 $3e $01
    ld   [wD30E], A                                    ;; 05:4469 $ea $0e $d3
    ld   A, [wD30D]                                    ;; 05:446c $fa $0d $d3
    dec  A                                             ;; 05:446f $3d
    ld   [wD30D], A                                    ;; 05:4470 $ea $0d $d3
    ret                                                ;; 05:4473 $c9
.jr_05_4474:
    ld   A, [wD310]                                    ;; 05:4474 $fa $10 $d3
    and  A, A                                          ;; 05:4477 $a7
    jr   Z, .jr_05_4493                                ;; 05:4478 $28 $19
    ld   A, [wD317]                                    ;; 05:447a $fa $17 $d3
    and  A, A                                          ;; 05:447d $a7
    jr   NZ, .jr_05_4485                               ;; 05:447e $20 $05
    xor  A, A                                          ;; 05:4480 $af
    ld   [wD310], A                                    ;; 05:4481 $ea $10 $d3
    ret                                                ;; 05:4484 $c9
.jr_05_4485:
    ld   A, [wD310]                                    ;; 05:4485 $fa $10 $d3
    cp   A, $02                                        ;; 05:4488 $fe $02
    jp   Z, jp_05_4dc2                                 ;; 05:448a $ca $c2 $4d
    cp   A, $03                                        ;; 05:448d $fe $03
    jp   Z, jp_05_4dfe                                 ;; 05:448f $ca $fe $4d
    ret                                                ;; 05:4492 $c9
.jr_05_4493:
    ld   A, [wScriptPointer]                           ;; 05:4493 $fa $c5 $d2
    ld   H, A                                          ;; 05:4496 $67
    ld   A, [wScriptPointer.low]                       ;; 05:4497 $fa $c6 $d2
    ld   L, A                                          ;; 05:449a $6f
    ld   A, [HL+]                                      ;; 05:449b $2a
    cp   A, $01                                        ;; 05:449c $fe $01
    jp   C, script_opcode_00                           ;; 05:449e $da $3d $45
    jp   Z, script_opcode_01                           ;; 05:44a1 $ca $75 $45
    cp   A, $03                                        ;; 05:44a4 $fe $03
    jp   C, script_opcode_02                           ;; 05:44a6 $da $ce $45
    jp   Z, script_opcode_03                           ;; 05:44a9 $ca $1f $46
    cp   A, $05                                        ;; 05:44ac $fe $05
    jp   C, script_opcode_04                           ;; 05:44ae $da $3a $46
    jp   Z, script_opcode_05                           ;; 05:44b1 $ca $5c $46
    cp   A, $07                                        ;; 05:44b4 $fe $07
    jp   C, script_opcode_06                           ;; 05:44b6 $da $71 $46
    jp   Z, script_opcode_07                           ;; 05:44b9 $ca $93 $46
    cp   A, $09                                        ;; 05:44bc $fe $09
    jp   C, script_opcode_08                           ;; 05:44be $da $c2 $46
    jp   Z, script_opcode_09                           ;; 05:44c1 $ca $60 $47
    cp   A, $0b                                        ;; 05:44c4 $fe $0b
    jp   C, script_opcode_0A                           ;; 05:44c6 $da $7b $47
    jp   Z, script_opcode_0B                           ;; 05:44c9 $ca $96 $47
    cp   A, $0d                                        ;; 05:44cc $fe $0d
    jp   C, script_opcode_0C                           ;; 05:44ce $da $d6 $47
    jp   Z, script_opcode_0D                           ;; 05:44d1 $ca $e5 $47
    cp   A, $0f                                        ;; 05:44d4 $fe $0f
    jp   C, script_opcode_0E                           ;; 05:44d6 $da $16 $48
    jp   Z, script_opcode_0F                           ;; 05:44d9 $ca $1f $48
    cp   A, $11                                        ;; 05:44dc $fe $11
    jp   C, script_opcode_10                           ;; 05:44de $da $39 $48
    jp   Z, script_opcode_11                           ;; 05:44e1 $ca $66 $48
    cp   A, $13                                        ;; 05:44e4 $fe $13
    jp   C, script_opcode_12                           ;; 05:44e6 $da $8e $48
    jp   Z, script_opcode_13                           ;; 05:44e9 $ca $9b $48
    cp   A, $15                                        ;; 05:44ec $fe $15
    jp   C, script_opcode_14                           ;; 05:44ee $da $c9 $48
    jp   Z, script_opcode_15                           ;; 05:44f1 $ca $d8 $48
    cp   A, $17                                        ;; 05:44f4 $fe $17
    jp   C, script_opcode_16                           ;; 05:44f6 $da $ec $48
    jp   Z, script_opcode_17                           ;; 05:44f9 $ca $ef $48
    cp   A, $19                                        ;; 05:44fc $fe $19
    jp   C, script_opcode_18                           ;; 05:44fe $da $2e $49
    jp   Z, script_opcode_19                           ;; 05:4501 $ca $46 $49
    cp   A, $1b                                        ;; 05:4504 $fe $1b
    jp   C, script_opcode_1A                           ;; 05:4506 $da $5d $49
    jp   Z, script_opcode_1B                           ;; 05:4509 $ca $69 $49
    cp   A, $1d                                        ;; 05:450c $fe $1d
    jp   C, script_opcode_1C                           ;; 05:450e $da $77 $49
    jp   Z, script_opcode_1D                           ;; 05:4511 $ca $c1 $49
    cp   A, $1f                                        ;; 05:4514 $fe $1f
    jp   C, script_opcode_1E                           ;; 05:4516 $da $d9 $49
    jp   Z, script_opcode_1F                           ;; 05:4519 $ca $e7 $49
    cp   A, $21                                        ;; 05:451c $fe $21
    jp   C, script_opcode_20                           ;; 05:451e $da $04 $4a
    jp   Z, script_opcode_21                           ;; 05:4521 $ca $1b $4a
    cp   A, $23                                        ;; 05:4524 $fe $23
    jp   C, script_opcode_22                           ;; 05:4526 $da $6b $4a
    jp   Z, script_opcode_23                           ;; 05:4529 $ca $84 $4a
    cp   A, $25                                        ;; 05:452c $fe $25
    jp   C, script_opcode_24                           ;; 05:452e $da $91 $4a
    jp   Z, script_opcode_25                           ;; 05:4531 $ca $07 $4b
    cp   A, $27                                        ;; 05:4534 $fe $27
    jp   C, script_opcode_26                           ;; 05:4536 $da $28 $4b
    jp   Z, script_opcode_27                           ;; 05:4539 $ca $3f $4b
    ret                                                ;; 05:453c $c9

script_opcode_00:
    ld   A, [HL+]                                      ;; 05:453d $2a
    ld   [wD5C0], A                                    ;; 05:453e $ea $c0 $d5
    ld   A, [HL+]                                      ;; 05:4541 $2a
    ld   [wD5BC], A                                    ;; 05:4542 $ea $bc $d5
    ld   A, [HL+]                                      ;; 05:4545 $2a
    ld   [wD5BD], A                                    ;; 05:4546 $ea $bd $d5
    ld   A, [HL+]                                      ;; 05:4549 $2a
    ld   [wD5BE], A                                    ;; 05:454a $ea $be $d5
    ld   A, [HL+]                                      ;; 05:454d $2a
    ld   [wD5BF], A                                    ;; 05:454e $ea $bf $d5
    ld   A, [HL+]                                      ;; 05:4551 $2a
    ld   [wC55F], A                                    ;; 05:4552 $ea $5f $c5
    ld   A, [HL+]                                      ;; 05:4555 $2a
    ld   [wC562], A                                    ;; 05:4556 $ea $62 $c5
    ld   A, [HL+]                                      ;; 05:4559 $2a
    ld   [wC564], A                                    ;; 05:455a $ea $64 $c5
    ld   A, $00                                        ;; 05:455d $3e $00
    ld   [wC563], A                                    ;; 05:455f $ea $63 $c5
    ld   A, $01                                        ;; 05:4562 $3e $01
    ld   [wC557], A                                    ;; 05:4564 $ea $57 $c5
    push HL                                            ;; 05:4567 $e5
    call call_00_09eb                                  ;; 05:4568 $cd $eb $09
    pop  HL                                            ;; 05:456b $e1
    ld   A, H                                          ;; 05:456c $7c
    ld   [wScriptPointer], A                           ;; 05:456d $ea $c5 $d2
    ld   A, L                                          ;; 05:4570 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4571 $ea $c6 $d2
    ret                                                ;; 05:4574 $c9

script_opcode_01:
    ld   A, [HL+]                                      ;; 05:4575 $2a
    ld   [wD2D6], A                                    ;; 05:4576 $ea $d6 $d2
    ld   D, H                                          ;; 05:4579 $54
    ld   E, L                                          ;; 05:457a $5d
    ld   A, $01                                        ;; 05:457b $3e $01
    ld   [wD2C8], A                                    ;; 05:457d $ea $c8 $d2
    ld   A, [wD2D2]                                    ;; 05:4580 $fa $d2 $d2
    inc  A                                             ;; 05:4583 $3c
    ld   [wD2D2], A                                    ;; 05:4584 $ea $d2 $d2
    ld   C, A                                          ;; 05:4587 $4f
    ld   B, $00                                        ;; 05:4588 $06 $00
    ld   HL, wD2C9                                     ;; 05:458a $21 $c9 $d2
    add  HL, BC                                        ;; 05:458d $09
    dec  HL                                            ;; 05:458e $2b
    ld   A, [wD2D6]                                    ;; 05:458f $fa $d6 $d2
    ld   [HL], A                                       ;; 05:4592 $77
    ld   A, [wD2D6]                                    ;; 05:4593 $fa $d6 $d2
    ld   C, A                                          ;; 05:4596 $4f
    sla  C                                             ;; 05:4597 $cb $21
    rl   B                                             ;; 05:4599 $cb $10
    ld   HL, $323                                      ;; 05:459b $21 $23 $03
    add  HL, BC                                        ;; 05:459e $09
    ld   A, [HL+]                                      ;; 05:459f $2a
    ld   L, [HL]                                       ;; 05:45a0 $6e
    ld   H, A                                          ;; 05:45a1 $67
    ld   BC, $0d                                       ;; 05:45a2 $01 $0d $00
    add  HL, BC                                        ;; 05:45a5 $09
    ld   A, [DE]                                       ;; 05:45a6 $1a
    ld   [HL+], A                                      ;; 05:45a7 $22
    inc  DE                                            ;; 05:45a8 $13
    ld   A, [DE]                                       ;; 05:45a9 $1a
    ld   [HL], A                                       ;; 05:45aa $77
    inc  DE                                            ;; 05:45ab $13
    ld   BC, $08                                       ;; 05:45ac $01 $08 $00
    add  HL, BC                                        ;; 05:45af $09
    ld   A, [DE]                                       ;; 05:45b0 $1a
    ld   [HL], A                                       ;; 05:45b1 $77
    inc  DE                                            ;; 05:45b2 $13
    ld   BC, $03                                       ;; 05:45b3 $01 $03 $00
    add  HL, BC                                        ;; 05:45b6 $09
    ld   A, $00                                        ;; 05:45b7 $3e $00
    ld   [HL+], A                                      ;; 05:45b9 $22
    ld   A, [DE]                                       ;; 05:45ba $1a
    ld   [HL], A                                       ;; 05:45bb $77
    inc  DE                                            ;; 05:45bc $13
    ld   H, D                                          ;; 05:45bd $62
    ld   L, E                                          ;; 05:45be $6b
    ld   A, [HL+]                                      ;; 05:45bf $2a
    cp   A, $01                                        ;; 05:45c0 $fe $01
    jr   Z, script_opcode_01                           ;; 05:45c2 $28 $b1
    dec  HL                                            ;; 05:45c4 $2b
    ld   A, H                                          ;; 05:45c5 $7c
    ld   [wScriptPointer], A                           ;; 05:45c6 $ea $c5 $d2
    ld   A, L                                          ;; 05:45c9 $7d
    ld   [wScriptPointer.low], A                       ;; 05:45ca $ea $c6 $d2
    ret                                                ;; 05:45cd $c9

script_opcode_02:
    ld   A, $d3                                        ;; 05:45ce $3e $d3
    ld   [wD1BD], A                                    ;; 05:45d0 $ea $bd $d1
    ld   A, $19                                        ;; 05:45d3 $3e $19
    ld   [wD1BE], A                                    ;; 05:45d5 $ea $be $d1
    ld   A, [HL+]                                      ;; 05:45d8 $2a
    ld   E, A                                          ;; 05:45d9 $5f
    ld   D, $00                                        ;; 05:45da $16 $00
    ld   A, H                                          ;; 05:45dc $7c
    ld   [wScriptPointer], A                           ;; 05:45dd $ea $c5 $d2
    ld   A, L                                          ;; 05:45e0 $7d
    ld   [wScriptPointer.low], A                       ;; 05:45e1 $ea $c6 $d2
    ld   HL, stringTablePointers                       ;; 05:45e4 $21 $22 $79
    ld   A, [wScriptIndex]                             ;; 05:45e7 $fa $c3 $d2
    ld   C, A                                          ;; 05:45ea $4f
    sla  C                                             ;; 05:45eb $cb $21
    ld   B, $00                                        ;; 05:45ed $06 $00
    add  HL, BC                                        ;; 05:45ef $09
    ld   A, [HL+]                                      ;; 05:45f0 $2a
    ld   L, [HL]                                       ;; 05:45f1 $6e
    ld   H, A                                          ;; 05:45f2 $67
    sla  E                                             ;; 05:45f3 $cb $23
    rl   D                                             ;; 05:45f5 $cb $12
    add  HL, DE                                        ;; 05:45f7 $19
    ld   A, [HL+]                                      ;; 05:45f8 $2a
    ld   [wMessageAddr], A                             ;; 05:45f9 $ea $3a $d1
    ld   A, [HL]                                       ;; 05:45fc $7e
    ld   [wMessageAddr.low], A                         ;; 05:45fd $ea $3b $d1
    ld   A, [wScriptIndex]                             ;; 05:4600 $fa $c3 $d2
    cp   A, $11                                        ;; 05:4603 $fe $11
    jr   NC, .jr_05_4612                               ;; 05:4605 $30 $0b
    xor  A, A                                          ;; 05:4607 $af
    ld   [wD138], A                                    ;; 05:4608 $ea $38 $d1
    ld   A, $16                                        ;; 05:460b $3e $16
    ld   [wMessageBank], A                             ;; 05:460d $ea $39 $d1
    jr   .jr_05_461b                                   ;; 05:4610 $18 $09
.jr_05_4612:
    xor  A, A                                          ;; 05:4612 $af
    ld   [wD138], A                                    ;; 05:4613 $ea $38 $d1
    ld   A, $17                                        ;; 05:4616 $3e $17
    ld   [wMessageBank], A                             ;; 05:4618 $ea $39 $d1
.jr_05_461b:
    call call_00_2b1b                                  ;; 05:461b $cd $1b $2b
    ret                                                ;; 05:461e $c9

script_opcode_03:
    ld   A, [HL+]                                      ;; 05:461f $2a
    ld   E, A                                          ;; 05:4620 $5f
    ld   D, $00                                        ;; 05:4621 $16 $00
    ld   A, H                                          ;; 05:4623 $7c
    ld   [wScriptPointer], A                           ;; 05:4624 $ea $c5 $d2
    ld   A, L                                          ;; 05:4627 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4628 $ea $c6 $d2
    sla  E                                             ;; 05:462b $cb $23
    rl   D                                             ;; 05:462d $cb $12
    ld   HL, $323                                      ;; 05:462f $21 $23 $03
    add  HL, DE                                        ;; 05:4632 $19
    ld   A, [HL+]                                      ;; 05:4633 $2a
    ld   L, [HL]                                       ;; 05:4634 $6e
    ld   H, A                                          ;; 05:4635 $67
    call call_00_0f5d                                  ;; 05:4636 $cd $5d $0f
    ret                                                ;; 05:4639 $c9

script_opcode_04:
    ld   A, [HL+]                                      ;; 05:463a $2a
    ld   [wD2DB], A                                    ;; 05:463b $ea $db $d2
    ld   A, [HL+]                                      ;; 05:463e $2a
    ld   [wD2D9], A                                    ;; 05:463f $ea $d9 $d2
    ld   A, [HL+]                                      ;; 05:4642 $2a
    ld   [wD2DC], A                                    ;; 05:4643 $ea $dc $d2
    ld   A, [HL+]                                      ;; 05:4646 $2a
    ld   [wD2DA], A                                    ;; 05:4647 $ea $da $d2
    ld   A, [HL+]                                      ;; 05:464a $2a
    ld   [wD2DD], A                                    ;; 05:464b $ea $dd $d2
    ld   A, $01                                        ;; 05:464e $3e $01
    ld   [wD2D8], A                                    ;; 05:4650 $ea $d8 $d2
    ld   A, H                                          ;; 05:4653 $7c
    ld   [wScriptPointer], A                           ;; 05:4654 $ea $c5 $d2
    ld   A, L                                          ;; 05:4657 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4658 $ea $c6 $d2
    ret                                                ;; 05:465b $c9

script_opcode_05:
    ld   A, $01                                        ;; 05:465c $3e $01
    ld   [wD5E0], A                                    ;; 05:465e $ea $e0 $d5
    ld   [wD2D3], A                                    ;; 05:4661 $ea $d3 $d2
    ld   A, [HL+]                                      ;; 05:4664 $2a
    ld   [wD2D4], A                                    ;; 05:4665 $ea $d4 $d2
    ld   A, H                                          ;; 05:4668 $7c
    ld   [wScriptPointer], A                           ;; 05:4669 $ea $c5 $d2
    ld   A, L                                          ;; 05:466c $7d
    ld   [wScriptPointer.low], A                       ;; 05:466d $ea $c6 $d2
    ret                                                ;; 05:4670 $c9

script_opcode_06:
    ld   A, [HL+]                                      ;; 05:4671 $2a
    ld   [wD311], A                                    ;; 05:4672 $ea $11 $d3
    ld   A, [HL+]                                      ;; 05:4675 $2a
    ld   [wD312], A                                    ;; 05:4676 $ea $12 $d3
    ld   A, $01                                        ;; 05:4679 $3e $01
    ld   [wD310], A                                    ;; 05:467b $ea $10 $d3
    ld   [wD314], A                                    ;; 05:467e $ea $14 $d3
    ld   [wD317], A                                    ;; 05:4681 $ea $17 $d3
    ld   A, [wD312]                                    ;; 05:4684 $fa $12 $d3
    ld   [wD313], A                                    ;; 05:4687 $ea $13 $d3
    ld   A, H                                          ;; 05:468a $7c
    ld   [wScriptPointer], A                           ;; 05:468b $ea $c5 $d2
    ld   A, L                                          ;; 05:468e $7d
    ld   [wScriptPointer.low], A                       ;; 05:468f $ea $c6 $d2
    ret                                                ;; 05:4692 $c9

script_opcode_07:
    ld   A, $01                                        ;; 05:4693 $3e $01
    ld   [wD317], A                                    ;; 05:4695 $ea $17 $d3
    ld   A, [HL+]                                      ;; 05:4698 $2a
    cp   A, $00                                        ;; 05:4699 $fe $00
    jr   Z, .jr_05_46a1                                ;; 05:469b $28 $04
    cp   A, $01                                        ;; 05:469d $fe $01
    jr   Z, .jr_05_46a8                                ;; 05:469f $28 $07
.jr_05_46a1:
    ld   A, $02                                        ;; 05:46a1 $3e $02
    ld   [wD310], A                                    ;; 05:46a3 $ea $10 $d3
    jr   .jr_05_46af                                   ;; 05:46a6 $18 $07
.jr_05_46a8:
    ld   A, $03                                        ;; 05:46a8 $3e $03
    ld   [wD310], A                                    ;; 05:46aa $ea $10 $d3
    jr   .jr_05_46af                                   ;; 05:46ad $18 $00
.jr_05_46af:
    ldh  A, [hIsGBC]                                   ;; 05:46af $f0 $fe
    and  A, A                                          ;; 05:46b1 $a7
    jr   NZ, .jr_05_46b9                               ;; 05:46b2 $20 $05
    ld   A, $14                                        ;; 05:46b4 $3e $14
    ld   [wD316], A                                    ;; 05:46b6 $ea $16 $d3
.jr_05_46b9:
    ld   A, H                                          ;; 05:46b9 $7c
    ld   [wScriptPointer], A                           ;; 05:46ba $ea $c5 $d2
    ld   A, L                                          ;; 05:46bd $7d
    ld   [wScriptPointer.low], A                       ;; 05:46be $ea $c6 $d2
    ret                                                ;; 05:46c1 $c9

script_opcode_08:
    ld   A, [HL+]                                      ;; 05:46c2 $2a
    ld   [wCurrentMap], A                              ;; 05:46c3 $ea $42 $c1
    ld   A, [HL+]                                      ;; 05:46c6 $2a
    ld   [wCurrentMap.low], A                          ;; 05:46c7 $ea $43 $c1
    ld   A, [HL+]                                      ;; 05:46ca $2a
    cp   A, $00                                        ;; 05:46cb $fe $00
    jr   NZ, .jr_05_46d6                               ;; 05:46cd $20 $07
    ld   A, $01                                        ;; 05:46cf $3e $01
    ld   [wHidePlayer], A                              ;; 05:46d1 $ea $6c $c4
    jr   .jr_05_46db                                   ;; 05:46d4 $18 $05
.jr_05_46d6:
    ld   A, $00                                        ;; 05:46d6 $3e $00
    ld   [wHidePlayer], A                              ;; 05:46d8 $ea $6c $c4
.jr_05_46db:
    ld   A, [HL+]                                      ;; 05:46db $2a
    and  A, A                                          ;; 05:46dc $a7
    jr   NZ, .jr_05_46e8                               ;; 05:46dd $20 $09
    ld   A, $01                                        ;; 05:46df $3e $01
    ld   [wD5C4], A                                    ;; 05:46e1 $ea $c4 $d5
    xor  A, A                                          ;; 05:46e4 $af
    ld   [wD5D8], A                                    ;; 05:46e5 $ea $d8 $d5
.jr_05_46e8:
    ld   A, [HL]                                       ;; 05:46e8 $7e
    cp   A, $11                                        ;; 05:46e9 $fe $11
    jr   NZ, .jr_05_4707                               ;; 05:46eb $20 $1a
    inc  HL                                            ;; 05:46ed $23
    ld   A, [HL+]                                      ;; 05:46ee $2a
    ld   [wPlayerX], A                                 ;; 05:46ef $ea $44 $c1
    ld   A, [HL+]                                      ;; 05:46f2 $2a
    ld   [wPlayerX.low], A                             ;; 05:46f3 $ea $45 $c1
    ld   A, [HL+]                                      ;; 05:46f6 $2a
    ld   [wPlayerY], A                                 ;; 05:46f7 $ea $46 $c1
    ld   A, [HL+]                                      ;; 05:46fa $2a
    ld   [wPlayerY.low], A                             ;; 05:46fb $ea $47 $c1
    ld   A, [HL+]                                      ;; 05:46fe $2a
    ld   [wC148], A                                    ;; 05:46ff $ea $48 $c1
    ld   A, $00                                        ;; 05:4702 $3e $00
    ld   [wC45B], A                                    ;; 05:4704 $ea $5b $c4
.jr_05_4707:
    ld   A, [HL+]                                      ;; 05:4707 $2a
    cp   A, $00                                        ;; 05:4708 $fe $00
    jr   NZ, .jr_05_4740                               ;; 05:470a $20 $34
.jr_05_470c:
    ld   A, [HL+]                                      ;; 05:470c $2a
    ld   [wD5C0], A                                    ;; 05:470d $ea $c0 $d5
    ld   A, [HL+]                                      ;; 05:4710 $2a
    ld   [wD5BC], A                                    ;; 05:4711 $ea $bc $d5
    ld   A, [HL+]                                      ;; 05:4714 $2a
    ld   [wD5BD], A                                    ;; 05:4715 $ea $bd $d5
    ld   A, [HL+]                                      ;; 05:4718 $2a
    ld   [wD5BE], A                                    ;; 05:4719 $ea $be $d5
    ld   A, [HL+]                                      ;; 05:471c $2a
    ld   [wD5BF], A                                    ;; 05:471d $ea $bf $d5
    ld   A, [HL+]                                      ;; 05:4720 $2a
    ld   [wC55F], A                                    ;; 05:4721 $ea $5f $c5
    ld   A, [HL+]                                      ;; 05:4724 $2a
    ld   [wC562], A                                    ;; 05:4725 $ea $62 $c5
    ld   A, [HL+]                                      ;; 05:4728 $2a
    ld   [wC564], A                                    ;; 05:4729 $ea $64 $c5
    ld   A, $00                                        ;; 05:472c $3e $00
    ld   [wC563], A                                    ;; 05:472e $ea $63 $c5
    ld   A, $01                                        ;; 05:4731 $3e $01
    ld   [wC557], A                                    ;; 05:4733 $ea $57 $c5
    push HL                                            ;; 05:4736 $e5
    call call_00_09eb                                  ;; 05:4737 $cd $eb $09
    pop  HL                                            ;; 05:473a $e1
    ld   A, [HL+]                                      ;; 05:473b $2a
    cp   A, $00                                        ;; 05:473c $fe $00
    jr   Z, .jr_05_470c                                ;; 05:473e $28 $cc
.jr_05_4740:
    xor  A, A                                          ;; 05:4740 $af
    ld   [wD58C], A                                    ;; 05:4741 $ea $8c $d5
    ld   [wD58B], A                                    ;; 05:4744 $ea $8b $d5
    ld   A, $8f                                        ;; 05:4747 $3e $8f
    ld   [wD5D2], A                                    ;; 05:4749 $ea $d2 $d5
    ld   A, $05                                        ;; 05:474c $3e $05
    ld   [wD58D], A                                    ;; 05:474e $ea $8d $d5
    ld   A, $01                                        ;; 05:4751 $3e $01
    ld   [wD318], A                                    ;; 05:4753 $ea $18 $d3
    dec  HL                                            ;; 05:4756 $2b
    ld   A, H                                          ;; 05:4757 $7c
    ld   [wScriptPointer], A                           ;; 05:4758 $ea $c5 $d2
    ld   A, L                                          ;; 05:475b $7d
    ld   [wScriptPointer.low], A                       ;; 05:475c $ea $c6 $d2
    ret                                                ;; 05:475f $c9

script_opcode_09:
    ld   A, [HL+]                                      ;; 05:4760 $2a
    ld   [wD318], A                                    ;; 05:4761 $ea $18 $d3
    ld   A, H                                          ;; 05:4764 $7c
    ld   [wScriptPointer], A                           ;; 05:4765 $ea $c5 $d2
    ld   A, L                                          ;; 05:4768 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4769 $ea $c6 $d2
    ld   A, [wD2B9]                                    ;; 05:476c $fa $b9 $d2
    ld   [wD31C], A                                    ;; 05:476f $ea $1c $d3
    ld   A, $01                                        ;; 05:4772 $3e $01
    ld   [wD31A], A                                    ;; 05:4774 $ea $1a $d3
    call call_00_12b9                                  ;; 05:4777 $cd $b9 $12
    ret                                                ;; 05:477a $c9

script_opcode_0A:
    ld   A, [HL+]                                      ;; 05:477b $2a
    ld   [wD30D], A                                    ;; 05:477c $ea $0d $d3
    ld   A, [HL+]                                      ;; 05:477f $2a
    ld   [wD30F], A                                    ;; 05:4780 $ea $0f $d3
    ld   A, H                                          ;; 05:4783 $7c
    ld   [wScriptPointer], A                           ;; 05:4784 $ea $c5 $d2
    ld   A, L                                          ;; 05:4787 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4788 $ea $c6 $d2
    ld   A, $01                                        ;; 05:478b $3e $01
    ld   [wD30E], A                                    ;; 05:478d $ea $0e $d3
    ld   A, $05                                        ;; 05:4790 $3e $05
    ld   [wD4F7], A                                    ;; 05:4792 $ea $f7 $d4
    ret                                                ;; 05:4795 $c9

script_opcode_0B:
    ld   A, [HL+]                                      ;; 05:4796 $2a
    cp   A, $01                                        ;; 05:4797 $fe $01
    jr   C, ._00                                       ;; 05:4799 $38 $0f
    jr   Z, ._01                                       ;; 05:479b $28 $21
    ld   A, [wD38B]                                    ;; 05:479d $fa $8b $d3
    ld   [wScriptPointer], A                           ;; 05:47a0 $ea $c5 $d2
    ld   A, [wD38C]                                    ;; 05:47a3 $fa $8c $d3
    ld   [wScriptPointer.low], A                       ;; 05:47a6 $ea $c6 $d2
    ret                                                ;; 05:47a9 $c9
._00:
    ld   A, H                                          ;; 05:47aa $7c
    ld   [wD38B], A                                    ;; 05:47ab $ea $8b $d3
    ld   A, L                                          ;; 05:47ae $7d
    ld   [wD38C], A                                    ;; 05:47af $ea $8c $d3
    ld   HL, data_05_75e9                              ;; 05:47b2 $21 $e9 $75
    ld   A, [HL+]                                      ;; 05:47b5 $2a
    ld   [wScriptPointer], A                           ;; 05:47b6 $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:47b9 $7e
    ld   [wScriptPointer.low], A                       ;; 05:47ba $ea $c6 $d2
    ret                                                ;; 05:47bd $c9
._01:
    ld   A, H                                          ;; 05:47be $7c
    ld   [wD38B], A                                    ;; 05:47bf $ea $8b $d3
    ld   A, L                                          ;; 05:47c2 $7d
    ld   [wD38C], A                                    ;; 05:47c3 $ea $8c $d3
    ld   DE, $02                                       ;; 05:47c6 $11 $02 $00
    ld   HL, data_05_75e9                              ;; 05:47c9 $21 $e9 $75
    add  HL, DE                                        ;; 05:47cc $19
    ld   A, [HL+]                                      ;; 05:47cd $2a
    ld   [wScriptPointer], A                           ;; 05:47ce $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:47d1 $7e
    ld   [wScriptPointer.low], A                       ;; 05:47d2 $ea $c6 $d2
    ret                                                ;; 05:47d5 $c9

script_opcode_0C:
    ld   A, [HL+]                                      ;; 05:47d6 $2a
    push HL                                            ;; 05:47d7 $e5
    call call_00_11a8                                  ;; 05:47d8 $cd $a8 $11
    pop  HL                                            ;; 05:47db $e1
    ld   A, H                                          ;; 05:47dc $7c
    ld   [wScriptPointer], A                           ;; 05:47dd $ea $c5 $d2
    ld   A, L                                          ;; 05:47e0 $7d
    ld   [wScriptPointer.low], A                       ;; 05:47e1 $ea $c6 $d2
    ret                                                ;; 05:47e4 $c9

script_opcode_0D:
    ld   A, [HL+]                                      ;; 05:47e5 $2a
    ld   E, A                                          ;; 05:47e6 $5f
    ld   D, $00                                        ;; 05:47e7 $16 $00
    ld   B, H                                          ;; 05:47e9 $44
    ld   C, L                                          ;; 05:47ea $4d
    ld   HL, wC155                                     ;; 05:47eb $21 $55 $c1
    add  HL, DE                                        ;; 05:47ee $19
    ld   A, $01                                        ;; 05:47ef $3e $01
    ld   [HL], A                                       ;; 05:47f1 $77
    ld   H, B                                          ;; 05:47f2 $60
    ld   L, C                                          ;; 05:47f3 $69
    ld   A, [HL+]                                      ;; 05:47f4 $2a
    and  A, A                                          ;; 05:47f5 $a7
    jr   NZ, .jr_05_4801                               ;; 05:47f6 $20 $09
    ld   A, $01                                        ;; 05:47f8 $3e $01
    ld   [wD58C], A                                    ;; 05:47fa $ea $8c $d5
    ld   [wD58B], A                                    ;; 05:47fd $ea $8b $d5
    ret                                                ;; 05:4800 $c9
.jr_05_4801:
    ld   A, [HL+]                                      ;; 05:4801 $2a
    ld   [wCurrentMap], A                              ;; 05:4802 $ea $42 $c1
    ld   A, [HL]                                       ;; 05:4805 $7e
    ld   [wCurrentMap.low], A                          ;; 05:4806 $ea $43 $c1
    xor  A, A                                          ;; 05:4809 $af
    ld   [wD58C], A                                    ;; 05:480a $ea $8c $d5
    ld   [wD58B], A                                    ;; 05:480d $ea $8b $d5
    ld   A, $8f                                        ;; 05:4810 $3e $8f
    ld   [wD5D2], A                                    ;; 05:4812 $ea $d2 $d5
    ret                                                ;; 05:4815 $c9

script_opcode_0E:
    ld   A, H                                          ;; 05:4816 $7c
    ld   [wScriptPointer], A                           ;; 05:4817 $ea $c5 $d2
    ld   A, L                                          ;; 05:481a $7d
    ld   [wScriptPointer.low], A                       ;; 05:481b $ea $c6 $d2
    ret                                                ;; 05:481e $c9

script_opcode_0F:
    ld   A, [HL+]                                      ;; 05:481f $2a
    cp   A, $00                                        ;; 05:4820 $fe $00
    jr   NZ, .jr_05_482b                               ;; 05:4822 $20 $07
    ld   A, $01                                        ;; 05:4824 $3e $01
    ld   [wHidePlayer], A                              ;; 05:4826 $ea $6c $c4
    jr   .jr_05_4830                                   ;; 05:4829 $18 $05
.jr_05_482b:
    ld   A, $00                                        ;; 05:482b $3e $00
    ld   [wHidePlayer], A                              ;; 05:482d $ea $6c $c4
.jr_05_4830:
    ld   A, H                                          ;; 05:4830 $7c
    ld   [wScriptPointer], A                           ;; 05:4831 $ea $c5 $d2
    ld   A, L                                          ;; 05:4834 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4835 $ea $c6 $d2
    ret                                                ;; 05:4838 $c9

script_opcode_10:
    ld   A, [HL+]                                      ;; 05:4839 $2a
    ld   [wC45B], A                                    ;; 05:483a $ea $5b $c4
    ld   A, [HL+]                                      ;; 05:483d $2a
    ld   [wC460], A                                    ;; 05:483e $ea $60 $c4
    ld   [wC148], A                                    ;; 05:4841 $ea $48 $c1
    ld   A, [HL+]                                      ;; 05:4844 $2a
    ld   [wC461], A                                    ;; 05:4845 $ea $61 $c4
    ld   A, $01                                        ;; 05:4848 $3e $01
    ld   [wD2C7], A                                    ;; 05:484a $ea $c7 $d2
    xor  A, A                                          ;; 05:484d $af
    ld   [wC518], A                                    ;; 05:484e $ea $18 $c5
    ld   A, [HL+]                                      ;; 05:4851 $2a
    ld   [wC519], A                                    ;; 05:4852 $ea $19 $c5
    ld   A, [HL+]                                      ;; 05:4855 $2a
    and  A, A                                          ;; 05:4856 $a7
    cp   A, $01                                        ;; 05:4857 $fe $01
    jp   Z, script_opcode_01                           ;; 05:4859 $ca $75 $45
    dec  HL                                            ;; 05:485c $2b
    ld   A, H                                          ;; 05:485d $7c
    ld   [wScriptPointer], A                           ;; 05:485e $ea $c5 $d2
    ld   A, L                                          ;; 05:4861 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4862 $ea $c6 $d2
    ret                                                ;; 05:4865 $c9

script_opcode_11:
    ld   A, [HL+]                                      ;; 05:4866 $2a
    ld   [wPlayerX], A                                 ;; 05:4867 $ea $44 $c1
    ld   A, [HL+]                                      ;; 05:486a $2a
    ld   [wPlayerX.low], A                             ;; 05:486b $ea $45 $c1
    ld   A, [HL+]                                      ;; 05:486e $2a
    ld   [wPlayerY], A                                 ;; 05:486f $ea $46 $c1
    ld   A, [HL+]                                      ;; 05:4872 $2a
    ld   [wPlayerY.low], A                             ;; 05:4873 $ea $47 $c1
    ld   A, [HL+]                                      ;; 05:4876 $2a
    ld   [wC460], A                                    ;; 05:4877 $ea $60 $c4
    ld   A, $00                                        ;; 05:487a $3e $00
    ld   [wC45B], A                                    ;; 05:487c $ea $5b $c4
    ld   A, [HL+]                                      ;; 05:487f $2a
    and  A, A                                          ;; 05:4880 $a7
    jp   Z, script_opcode_00                           ;; 05:4881 $ca $3d $45
    dec  HL                                            ;; 05:4884 $2b
    ld   A, H                                          ;; 05:4885 $7c
    ld   [wScriptPointer], A                           ;; 05:4886 $ea $c5 $d2
    ld   A, L                                          ;; 05:4889 $7d
    ld   [wScriptPointer.low], A                       ;; 05:488a $ea $c6 $d2
    ret                                                ;; 05:488d $c9

script_opcode_12:
    ld   A, [HL+]                                      ;; 05:488e $2a
    ld   [wScriptDelay], A                             ;; 05:488f $ea $d5 $d2
    ld   A, H                                          ;; 05:4892 $7c
    ld   [wScriptPointer], A                           ;; 05:4893 $ea $c5 $d2
    ld   A, L                                          ;; 05:4896 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4897 $ea $c6 $d2
    ret                                                ;; 05:489a $c9

script_opcode_13:
    ld   A, [wMainGameState]                           ;; 05:489b $fa $86 $d5
    ld   [wD58C], A                                    ;; 05:489e $ea $8c $d5
    ld   A, $05                                        ;; 05:48a1 $3e $05
    ld   [wD58D], A                                    ;; 05:48a3 $ea $8d $d5
    ld   A, $01                                        ;; 05:48a6 $3e $01
    ld   [wD5C4], A                                    ;; 05:48a8 $ea $c4 $d5
    ld   A, [HL+]                                      ;; 05:48ab $2a
    and  A, A                                          ;; 05:48ac $a7
    jp   NZ, .jp_05_48b7                               ;; 05:48ad $c2 $b7 $48
    ld   A, $0f                                        ;; 05:48b0 $3e $0f
    ld   [wD5D2], A                                    ;; 05:48b2 $ea $d2 $d5
    jr   .jr_05_48bc                                   ;; 05:48b5 $18 $05
.jp_05_48b7:
    ld   A, $8f                                        ;; 05:48b7 $3e $8f
    ld   [wD5D2], A                                    ;; 05:48b9 $ea $d2 $d5
.jr_05_48bc:
    xor  A, A                                          ;; 05:48bc $af
    ld   [wD58B], A                                    ;; 05:48bd $ea $8b $d5
    ld   A, H                                          ;; 05:48c0 $7c
    ld   [wScriptPointer], A                           ;; 05:48c1 $ea $c5 $d2
    ld   A, L                                          ;; 05:48c4 $7d
    ld   [wScriptPointer.low], A                       ;; 05:48c5 $ea $c6 $d2
    ret                                                ;; 05:48c8 $c9

script_opcode_14:
    ldh  A, [rLCDC]                                    ;; 05:48c9 $f0 $40
    and  A, $df                                        ;; 05:48cb $e6 $df
    ldh  [rLCDC], A                                    ;; 05:48cd $e0 $40
    ld   A, H                                          ;; 05:48cf $7c
    ld   [wScriptPointer], A                           ;; 05:48d0 $ea $c5 $d2
    ld   A, L                                          ;; 05:48d3 $7d
    ld   [wScriptPointer.low], A                       ;; 05:48d4 $ea $c6 $d2
    ret                                                ;; 05:48d7 $c9

script_opcode_15:
    ld   A, [HL+]                                      ;; 05:48d8 $2a
    ld   C, A                                          ;; 05:48d9 $4f
    ld   B, $00                                        ;; 05:48da $06 $00
    ld   A, H                                          ;; 05:48dc $7c
    ld   [wScriptPointer], A                           ;; 05:48dd $ea $c5 $d2
    ld   A, L                                          ;; 05:48e0 $7d
    ld   [wScriptPointer.low], A                       ;; 05:48e1 $ea $c6 $d2
    ld   HL, wC12D                                     ;; 05:48e4 $21 $2d $c1
    add  HL, BC                                        ;; 05:48e7 $09
    ld   A, $01                                        ;; 05:48e8 $3e $01
    ld   [HL], A                                       ;; 05:48ea $77
    ret                                                ;; 05:48eb $c9

script_opcode_16:
    jp   jp_00_015d                                    ;; 05:48ec $c3 $5d $01

script_opcode_17:
    ld   D, H                                          ;; 05:48ef $54
    ld   E, L                                          ;; 05:48f0 $5d
    ld   A, [wD2E8]                                    ;; 05:48f1 $fa $e8 $d2
    ld   C, A                                          ;; 05:48f4 $4f
    ld   B, $00                                        ;; 05:48f5 $06 $00
    ld   HL, wD2DF                                     ;; 05:48f7 $21 $df $d2
    add  HL, BC                                        ;; 05:48fa $09
    ld   A, [DE]                                       ;; 05:48fb $1a
    ld   [HL+], A                                      ;; 05:48fc $22
    inc  DE                                            ;; 05:48fd $13
    sla  C                                             ;; 05:48fe $cb $21
    rl   B                                             ;; 05:4900 $cb $10
    sla  C                                             ;; 05:4902 $cb $21
    rl   B                                             ;; 05:4904 $cb $10
    ld   HL, wD2E9                                     ;; 05:4906 $21 $e9 $d2
    add  HL, BC                                        ;; 05:4909 $09
    ld   A, [DE]                                       ;; 05:490a $1a
    ld   [HL+], A                                      ;; 05:490b $22
    inc  DE                                            ;; 05:490c $13
    ld   A, [DE]                                       ;; 05:490d $1a
    ld   [HL+], A                                      ;; 05:490e $22
    inc  DE                                            ;; 05:490f $13
    ld   A, [DE]                                       ;; 05:4910 $1a
    ld   [HL+], A                                      ;; 05:4911 $22
    inc  DE                                            ;; 05:4912 $13
    ld   A, [DE]                                       ;; 05:4913 $1a
    ld   [HL+], A                                      ;; 05:4914 $22
    inc  DE                                            ;; 05:4915 $13
    ld   A, [wD2E8]                                    ;; 05:4916 $fa $e8 $d2
    inc  A                                             ;; 05:4919 $3c
    ld   [wD2E8], A                                    ;; 05:491a $ea $e8 $d2
    ld   H, D                                          ;; 05:491d $62
    ld   L, E                                          ;; 05:491e $6b
    ld   A, [HL+]                                      ;; 05:491f $2a
    cp   A, $17                                        ;; 05:4920 $fe $17
    jr   Z, script_opcode_17                           ;; 05:4922 $28 $cb
    dec  HL                                            ;; 05:4924 $2b
    ld   A, H                                          ;; 05:4925 $7c
    ld   [wScriptPointer], A                           ;; 05:4926 $ea $c5 $d2
    ld   A, L                                          ;; 05:4929 $7d
    ld   [wScriptPointer.low], A                       ;; 05:492a $ea $c6 $d2
    ret                                                ;; 05:492d $c9

script_opcode_18:
    ld   A, [HL+]                                      ;; 05:492e $2a
    ld   E, A                                          ;; 05:492f $5f
    ld   D, $00                                        ;; 05:4930 $16 $00
    ld   B, H                                          ;; 05:4932 $44
    ld   C, L                                          ;; 05:4933 $4d
    ld   HL, wC155                                     ;; 05:4934 $21 $55 $c1
    add  HL, DE                                        ;; 05:4937 $19
    ld   A, $01                                        ;; 05:4938 $3e $01
    ld   [HL], A                                       ;; 05:493a $77
    ld   H, B                                          ;; 05:493b $60
    ld   L, C                                          ;; 05:493c $69
    ld   A, H                                          ;; 05:493d $7c
    ld   [wScriptPointer], A                           ;; 05:493e $ea $c5 $d2
    ld   A, L                                          ;; 05:4941 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4942 $ea $c6 $d2
    ret                                                ;; 05:4945 $c9

script_opcode_19:
    ld   A, [HL+]                                      ;; 05:4946 $2a
    ld   E, A                                          ;; 05:4947 $5f
    ld   D, $00                                        ;; 05:4948 $16 $00
    ld   B, H                                          ;; 05:494a $44
    ld   C, L                                          ;; 05:494b $4d
    ld   HL, wC155                                     ;; 05:494c $21 $55 $c1
    add  HL, DE                                        ;; 05:494f $19
    xor  A, A                                          ;; 05:4950 $af
    ld   [HL], A                                       ;; 05:4951 $77
    ld   H, B                                          ;; 05:4952 $60
    ld   L, C                                          ;; 05:4953 $69
    ld   A, H                                          ;; 05:4954 $7c
    ld   [wScriptPointer], A                           ;; 05:4955 $ea $c5 $d2
    ld   A, L                                          ;; 05:4958 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4959 $ea $c6 $d2
    ret                                                ;; 05:495c $c9

script_opcode_1A:
    ld   A, H                                          ;; 05:495d $7c
    ld   [wScriptPointer], A                           ;; 05:495e $ea $c5 $d2
    ld   A, L                                          ;; 05:4961 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4962 $ea $c6 $d2
    call call_00_0f2a                                  ;; 05:4965 $cd $2a $0f
    ret                                                ;; 05:4968 $c9

script_opcode_1B:
    ld   A, H                                          ;; 05:4969 $7c
    ld   [wScriptPointer], A                           ;; 05:496a $ea $c5 $d2
    ld   A, L                                          ;; 05:496d $7d
    ld   [wScriptPointer.low], A                       ;; 05:496e $ea $c6 $d2
    ld   A, $01                                        ;; 05:4971 $3e $01
    ld   [wC46B], A                                    ;; 05:4973 $ea $6b $c4
    ret                                                ;; 05:4976 $c9

script_opcode_1C:
    ld   A, [HL+]                                      ;; 05:4977 $2a
    ld   [wD31E], A                                    ;; 05:4978 $ea $1e $d3
    inc  A                                             ;; 05:497b $3c
    ld   [wC460], A                                    ;; 05:497c $ea $60 $c4
    ld   A, [HL+]                                      ;; 05:497f $2a
    ld   [wD31F], A                                    ;; 05:4980 $ea $1f $d3
    srl  A                                             ;; 05:4983 $cb $3f
    ld   [wD4F7], A                                    ;; 05:4985 $ea $f7 $d4
    xor  A, A                                          ;; 05:4988 $af
    ld   [wD4F8], A                                    ;; 05:4989 $ea $f8 $d4
    ld   A, $01                                        ;; 05:498c $3e $01
    ld   [wD31D], A                                    ;; 05:498e $ea $1d $d3
    ld   A, H                                          ;; 05:4991 $7c
    ld   [wScriptPointer], A                           ;; 05:4992 $ea $c5 $d2
    ld   A, L                                          ;; 05:4995 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4996 $ea $c6 $d2
    ld   A, [wC45D]                                    ;; 05:4999 $fa $5d $c4
    ld   [wC089], A                                    ;; 05:499c $ea $89 $c0
    add  A, $08                                        ;; 05:499f $c6 $08
    ld   [wC08D], A                                    ;; 05:49a1 $ea $8d $c0
    ld   A, [wC45C]                                    ;; 05:49a4 $fa $5c $c4
    add  A, $08                                        ;; 05:49a7 $c6 $08
    ld   [wC088], A                                    ;; 05:49a9 $ea $88 $c0
    ld   [wC08C], A                                    ;; 05:49ac $ea $8c $c0
    ld   A, $88                                        ;; 05:49af $3e $88
    ld   [wC08A], A                                    ;; 05:49b1 $ea $8a $c0
    ld   [wC08E], A                                    ;; 05:49b4 $ea $8e $c0
    xor  A, A                                          ;; 05:49b7 $af
    ld   [wC08B], A                                    ;; 05:49b8 $ea $8b $c0
    ld   A, $20                                        ;; 05:49bb $3e $20
    ld   [wC08F], A                                    ;; 05:49bd $ea $8f $c0
    ret                                                ;; 05:49c0 $c9

script_opcode_1D:
    ld   A, [HL+]                                      ;; 05:49c1 $2a
    and  A, A                                          ;; 05:49c2 $a7
    jr   NZ, .jr_05_49cb                               ;; 05:49c3 $20 $06
    xor  A, A                                          ;; 05:49c5 $af
    ld   [wD5B9], A                                    ;; 05:49c6 $ea $b9 $d5
    jr   .jr_05_49d0                                   ;; 05:49c9 $18 $05
.jr_05_49cb:
    ld   A, $01                                        ;; 05:49cb $3e $01
    ld   [wD5B9], A                                    ;; 05:49cd $ea $b9 $d5
.jr_05_49d0:
    ld   A, H                                          ;; 05:49d0 $7c
    ld   [wScriptPointer], A                           ;; 05:49d1 $ea $c5 $d2
    ld   A, L                                          ;; 05:49d4 $7d
    ld   [wScriptPointer.low], A                       ;; 05:49d5 $ea $c6 $d2
    ret                                                ;; 05:49d8 $c9

script_opcode_1E:
    ld   A, $01                                        ;; 05:49d9 $3e $01
    ld   [wD2BD], A                                    ;; 05:49db $ea $bd $d2
    ld   A, H                                          ;; 05:49de $7c
    ld   [wScriptPointer], A                           ;; 05:49df $ea $c5 $d2
    ld   A, L                                          ;; 05:49e2 $7d
    ld   [wScriptPointer.low], A                       ;; 05:49e3 $ea $c6 $d2
    ret                                                ;; 05:49e6 $c9

script_opcode_1F:
    ld   A, H                                          ;; 05:49e7 $7c
    ld   [wScriptPointer], A                           ;; 05:49e8 $ea $c5 $d2
    ld   A, L                                          ;; 05:49eb $7d
    ld   [wScriptPointer.low], A                       ;; 05:49ec $ea $c6 $d2
    ld   HL, data_05_7b86                              ;; 05:49ef $21 $86 $7b
    ld   DE, wShadowOAM                                ;; 05:49f2 $11 $00 $c0
    ld   B, $60                                        ;; 05:49f5 $06 $60
    call memcopySmall                                  ;; 05:49f7 $cd $91 $05
    ld   A, $01                                        ;; 05:49fa $3e $01
    ld   [wD36C], A                                    ;; 05:49fc $ea $6c $d3
    xor  A, A                                          ;; 05:49ff $af
    ld   [wD36B], A                                    ;; 05:4a00 $ea $6b $d3
    ret                                                ;; 05:4a03 $c9

script_opcode_20:
    ld   A, [HL+]                                      ;; 05:4a04 $2a
    and  A, A                                          ;; 05:4a05 $a7
    jr   Z, .jr_05_4a0f                                ;; 05:4a06 $28 $07
    ld   A, $01                                        ;; 05:4a08 $3e $01
    ld   [wD5BA], A                                    ;; 05:4a0a $ea $ba $d5
    jr   .jr_05_4a12                                   ;; 05:4a0d $18 $03
.jr_05_4a0f:
    ld   [wD5BA], A                                    ;; 05:4a0f $ea $ba $d5
.jr_05_4a12:
    ld   A, H                                          ;; 05:4a12 $7c
    ld   [wScriptPointer], A                           ;; 05:4a13 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a16 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4a17 $ea $c6 $d2
    ret                                                ;; 05:4a1a $c9

script_opcode_21:
    ld   A, [HL+]                                      ;; 05:4a1b $2a
    and  A, A                                          ;; 05:4a1c $a7
    jr   NZ, .jr_05_4a3b                               ;; 05:4a1d $20 $1c
    ld   A, H                                          ;; 05:4a1f $7c
    ld   [wScriptPointer], A                           ;; 05:4a20 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a23 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4a24 $ea $c6 $d2
    xor  A, A                                          ;; 05:4a27 $af
    ld   [wC088], A                                    ;; 05:4a28 $ea $88 $c0
    ld   [wC089], A                                    ;; 05:4a2b $ea $89 $c0
    ld   [wC08A], A                                    ;; 05:4a2e $ea $8a $c0
    ld   [wC08C], A                                    ;; 05:4a31 $ea $8c $c0
    ld   [wC08D], A                                    ;; 05:4a34 $ea $8d $c0
    ld   [wC08E], A                                    ;; 05:4a37 $ea $8e $c0
    ret                                                ;; 05:4a3a $c9
.jr_05_4a3b:
    ld   A, H                                          ;; 05:4a3b $7c
    ld   [wScriptPointer], A                           ;; 05:4a3c $ea $c5 $d2
    ld   A, L                                          ;; 05:4a3f $7d
    ld   [wScriptPointer.low], A                       ;; 05:4a40 $ea $c6 $d2
    ld   A, [wC45D]                                    ;; 05:4a43 $fa $5d $c4
    ld   [wC089], A                                    ;; 05:4a46 $ea $89 $c0
    add  A, $08                                        ;; 05:4a49 $c6 $08
    ld   [wC08D], A                                    ;; 05:4a4b $ea $8d $c0
    ld   A, [wC45C]                                    ;; 05:4a4e $fa $5c $c4
    add  A, $08                                        ;; 05:4a51 $c6 $08
    ld   [wC088], A                                    ;; 05:4a53 $ea $88 $c0
    ld   [wC08C], A                                    ;; 05:4a56 $ea $8c $c0
    ld   A, $88                                        ;; 05:4a59 $3e $88
    ld   [wC08A], A                                    ;; 05:4a5b $ea $8a $c0
    ld   [wC08E], A                                    ;; 05:4a5e $ea $8e $c0
    xor  A, A                                          ;; 05:4a61 $af
    ld   [wC08B], A                                    ;; 05:4a62 $ea $8b $c0
    ld   A, $20                                        ;; 05:4a65 $3e $20
    ld   [wC08F], A                                    ;; 05:4a67 $ea $8f $c0
    ret                                                ;; 05:4a6a $c9

script_opcode_22:
    ld   A, [HL+]                                      ;; 05:4a6b $2a
    ld   [wD321], A                                    ;; 05:4a6c $ea $21 $d3
    ld   [wD4F7], A                                    ;; 05:4a6f $ea $f7 $d4
    ld   A, [HL+]                                      ;; 05:4a72 $2a
    ld   [wD322], A                                    ;; 05:4a73 $ea $22 $d3
    ld   A, H                                          ;; 05:4a76 $7c
    ld   [wScriptPointer], A                           ;; 05:4a77 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a7a $7d
    ld   [wScriptPointer.low], A                       ;; 05:4a7b $ea $c6 $d2
    ld   A, $01                                        ;; 05:4a7e $3e $01
    ld   [wD320], A                                    ;; 05:4a80 $ea $20 $d3
    ret                                                ;; 05:4a83 $c9

script_opcode_23:
    ld   A, H                                          ;; 05:4a84 $7c
    ld   [wScriptPointer], A                           ;; 05:4a85 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a88 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4a89 $ea $c6 $d2
    ld   A, $c3                                        ;; 05:4a8c $3e $c3
    ldh  [rLCDC], A                                    ;; 05:4a8e $e0 $40
    ret                                                ;; 05:4a90 $c9

script_opcode_24:
    ld   A, [HL+]                                      ;; 05:4a91 $2a
    ld   C, A                                          ;; 05:4a92 $4f
    ld   A, [HL+]                                      ;; 05:4a93 $2a
    ld   [wD4F7], A                                    ;; 05:4a94 $ea $f7 $d4
    ld   A, $01                                        ;; 05:4a97 $3e $01
    ld   [wD36D], A                                    ;; 05:4a99 $ea $6d $d3
    ld   A, H                                          ;; 05:4a9c $7c
    ld   [wScriptPointer], A                           ;; 05:4a9d $ea $c5 $d2
    ld   A, L                                          ;; 05:4aa0 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4aa1 $ea $c6 $d2
    xor  A, A                                          ;; 05:4aa4 $af
    ld   [wD36F], A                                    ;; 05:4aa5 $ea $6f $d3
    sla  C                                             ;; 05:4aa8 $cb $21
    rl   B                                             ;; 05:4aaa $cb $10
    ld   HL, $323                                      ;; 05:4aac $21 $23 $03
    add  HL, BC                                        ;; 05:4aaf $09
    ld   A, [HL+]                                      ;; 05:4ab0 $2a
    ld   L, [HL]                                       ;; 05:4ab1 $6e
    ld   H, A                                          ;; 05:4ab2 $67
    ld   BC, $0e                                       ;; 05:4ab3 $01 $0e $00
    add  HL, BC                                        ;; 05:4ab6 $09
    ld   A, [HL]                                       ;; 05:4ab7 $7e
    cp   A, $05                                        ;; 05:4ab8 $fe $05
    jr   C, .jr_05_4ac1                                ;; 05:4aba $38 $05
    ld   [wD36F], A                                    ;; 05:4abc $ea $6f $d3
    sub  A, $04                                        ;; 05:4abf $d6 $04
.jr_05_4ac1:
    sub  A, $04                                        ;; 05:4ac1 $d6 $04
    cpl                                                ;; 05:4ac3 $2f
    inc  A                                             ;; 05:4ac4 $3c
    cp   A, $03                                        ;; 05:4ac5 $fe $03
    jr   C, .jr_05_4aca                                ;; 05:4ac7 $38 $01
    dec  A                                             ;; 05:4ac9 $3d
.jr_05_4aca:
    ld   E, A                                          ;; 05:4aca $5f
    sla  E                                             ;; 05:4acb $cb $23
    sla  E                                             ;; 05:4acd $cb $23
    ld   A, [wD4F7]                                    ;; 05:4acf $fa $f7 $d4
    cp   A, $01                                        ;; 05:4ad2 $fe $01
    jr   NZ, .jr_05_4ad8                               ;; 05:4ad4 $20 $02
    sla  E                                             ;; 05:4ad6 $cb $23
.jr_05_4ad8:
    ld   BC, $07                                       ;; 05:4ad8 $01 $07 $00
    add  HL, BC                                        ;; 05:4adb $09
    ld   A, [HL]                                       ;; 05:4adc $7e
    add  A, E                                          ;; 05:4add $83
    ld   C, A                                          ;; 05:4ade $4f
    ld   B, $00                                        ;; 05:4adf $06 $00
    ld   A, $04                                        ;; 05:4ae1 $3e $04
.jr_05_4ae3:
    sla  C                                             ;; 05:4ae3 $cb $21
    rl   B                                             ;; 05:4ae5 $cb $10
    dec  A                                             ;; 05:4ae7 $3d
    jr   NZ, .jr_05_4ae3                               ;; 05:4ae8 $20 $f9
    ld   HL, $8000                                     ;; 05:4aea $21 $00 $80
    add  HL, BC                                        ;; 05:4aed $09
    ld   A, H                                          ;; 05:4aee $7c
    ld   [wD370], A                                    ;; 05:4aef $ea $70 $d3
    ld   A, L                                          ;; 05:4af2 $7d
    ld   [wD371], A                                    ;; 05:4af3 $ea $71 $d3
    xor  A, A                                          ;; 05:4af6 $af
    ld   [wD36B], A                                    ;; 05:4af7 $ea $6b $d3
    ld   [wD36E], A                                    ;; 05:4afa $ea $6e $d3
    ld   [wD372], A                                    ;; 05:4afd $ea $72 $d3
    ld   [wD373], A                                    ;; 05:4b00 $ea $73 $d3
    ld   [wD374], A                                    ;; 05:4b03 $ea $74 $d3
    ret                                                ;; 05:4b06 $c9

script_opcode_25:
    ld   A, [HL+]                                      ;; 05:4b07 $2a
    ld   C, A                                          ;; 05:4b08 $4f
    ld   A, H                                          ;; 05:4b09 $7c
    ld   [wScriptPointer], A                           ;; 05:4b0a $ea $c5 $d2
    ld   A, L                                          ;; 05:4b0d $7d
    ld   [wScriptPointer.low], A                       ;; 05:4b0e $ea $c6 $d2
    sla  C                                             ;; 05:4b11 $cb $21
    rl   B                                             ;; 05:4b13 $cb $10
    ld   HL, $323                                      ;; 05:4b15 $21 $23 $03
    add  HL, BC                                        ;; 05:4b18 $09
    ld   A, [HL+]                                      ;; 05:4b19 $2a
    ld   L, [HL]                                       ;; 05:4b1a $6e
    ld   H, A                                          ;; 05:4b1b $67
    ld   C, $01                                        ;; 05:4b1c $0e $01
    ld   B, $00                                        ;; 05:4b1e $06 $00
    add  HL, BC                                        ;; 05:4b20 $09
    ld   A, [HL+]                                      ;; 05:4b21 $2a
    ld   L, [HL]                                       ;; 05:4b22 $6e
    ld   H, A                                          ;; 05:4b23 $67
    ld   A, $ff                                        ;; 05:4b24 $3e $ff
    ld   [HL], A                                       ;; 05:4b26 $77
    ret                                                ;; 05:4b27 $c9

script_opcode_26:
    ld   A, [HL+]                                      ;; 05:4b28 $2a
    ld   C, A                                          ;; 05:4b29 $4f
    ld   A, H                                          ;; 05:4b2a $7c
    ld   [wScriptPointer], A                           ;; 05:4b2b $ea $c5 $d2
    ld   A, L                                          ;; 05:4b2e $7d
    ld   [wScriptPointer.low], A                       ;; 05:4b2f $ea $c6 $d2
    ld   HL, wC10E                                     ;; 05:4b32 $21 $0e $c1
    ld   B, $00                                        ;; 05:4b35 $06 $00
    add  HL, BC                                        ;; 05:4b37 $09
    ld   A, [HL]                                       ;; 05:4b38 $7e
    cp   A, $32                                        ;; 05:4b39 $fe $32
    ret  NC                                            ;; 05:4b3b $d0
    inc  A                                             ;; 05:4b3c $3c
    ld   [HL], A                                       ;; 05:4b3d $77
    ret                                                ;; 05:4b3e $c9

script_opcode_27:
    ld   A, [HL+]                                      ;; 05:4b3f $2a
    ld   [wCurrentMap], A                              ;; 05:4b40 $ea $42 $c1
    ld   A, [HL+]                                      ;; 05:4b43 $2a
    ld   [wCurrentMap.low], A                          ;; 05:4b44 $ea $43 $c1
    ld   A, [HL+]                                      ;; 05:4b47 $2a
    cp   A, $00                                        ;; 05:4b48 $fe $00
    jr   NZ, .jr_05_4b53                               ;; 05:4b4a $20 $07
    ld   A, $01                                        ;; 05:4b4c $3e $01
    ld   [wHidePlayer], A                              ;; 05:4b4e $ea $6c $c4
    jr   .jr_05_4b58                                   ;; 05:4b51 $18 $05
.jr_05_4b53:
    ld   A, $00                                        ;; 05:4b53 $3e $00
    ld   [wHidePlayer], A                              ;; 05:4b55 $ea $6c $c4
.jr_05_4b58:
    ld   A, [HL+]                                      ;; 05:4b58 $2a
    and  A, A                                          ;; 05:4b59 $a7
    jr   NZ, .jr_05_4b65                               ;; 05:4b5a $20 $09
    ld   A, $01                                        ;; 05:4b5c $3e $01
    ld   [wD5C4], A                                    ;; 05:4b5e $ea $c4 $d5
    xor  A, A                                          ;; 05:4b61 $af
    ld   [wD5D8], A                                    ;; 05:4b62 $ea $d8 $d5
.jr_05_4b65:
    ld   A, [HL]                                       ;; 05:4b65 $7e
    cp   A, $11                                        ;; 05:4b66 $fe $11
    jr   NZ, .jr_05_4b84                               ;; 05:4b68 $20 $1a
    inc  HL                                            ;; 05:4b6a $23
    ld   A, [HL+]                                      ;; 05:4b6b $2a
    ld   [wPlayerX], A                                 ;; 05:4b6c $ea $44 $c1
    ld   A, [HL+]                                      ;; 05:4b6f $2a
    ld   [wPlayerX.low], A                             ;; 05:4b70 $ea $45 $c1
    ld   A, [HL+]                                      ;; 05:4b73 $2a
    ld   [wPlayerY], A                                 ;; 05:4b74 $ea $46 $c1
    ld   A, [HL+]                                      ;; 05:4b77 $2a
    ld   [wPlayerY.low], A                             ;; 05:4b78 $ea $47 $c1
    ld   A, [HL+]                                      ;; 05:4b7b $2a
    ld   [wC148], A                                    ;; 05:4b7c $ea $48 $c1
    ld   A, $00                                        ;; 05:4b7f $3e $00
    ld   [wC45B], A                                    ;; 05:4b81 $ea $5b $c4
.jr_05_4b84:
    ld   A, [HL+]                                      ;; 05:4b84 $2a
    cp   A, $00                                        ;; 05:4b85 $fe $00
    jr   NZ, .jr_05_4bbd                               ;; 05:4b87 $20 $34
.jr_05_4b89:
    ld   A, [HL+]                                      ;; 05:4b89 $2a
    ld   [wD5C0], A                                    ;; 05:4b8a $ea $c0 $d5
    ld   A, [HL+]                                      ;; 05:4b8d $2a
    ld   [wD5BC], A                                    ;; 05:4b8e $ea $bc $d5
    ld   A, [HL+]                                      ;; 05:4b91 $2a
    ld   [wD5BD], A                                    ;; 05:4b92 $ea $bd $d5
    ld   A, [HL+]                                      ;; 05:4b95 $2a
    ld   [wD5BE], A                                    ;; 05:4b96 $ea $be $d5
    ld   A, [HL+]                                      ;; 05:4b99 $2a
    ld   [wD5BF], A                                    ;; 05:4b9a $ea $bf $d5
    ld   A, [HL+]                                      ;; 05:4b9d $2a
    ld   [wC55F], A                                    ;; 05:4b9e $ea $5f $c5
    ld   A, [HL+]                                      ;; 05:4ba1 $2a
    ld   [wC562], A                                    ;; 05:4ba2 $ea $62 $c5
    ld   A, [HL+]                                      ;; 05:4ba5 $2a
    ld   [wC564], A                                    ;; 05:4ba6 $ea $64 $c5
    ld   A, $00                                        ;; 05:4ba9 $3e $00
    ld   [wC563], A                                    ;; 05:4bab $ea $63 $c5
    ld   A, $01                                        ;; 05:4bae $3e $01
    ld   [wC557], A                                    ;; 05:4bb0 $ea $57 $c5
    push HL                                            ;; 05:4bb3 $e5
    call call_00_09eb                                  ;; 05:4bb4 $cd $eb $09
    pop  HL                                            ;; 05:4bb7 $e1
    ld   A, [HL+]                                      ;; 05:4bb8 $2a
    cp   A, $00                                        ;; 05:4bb9 $fe $00
    jr   Z, .jr_05_4b89                                ;; 05:4bbb $28 $cc
.jr_05_4bbd:
    dec  HL                                            ;; 05:4bbd $2b
    ld   A, H                                          ;; 05:4bbe $7c
    ld   [wScriptPointer], A                           ;; 05:4bbf $ea $c5 $d2
    ld   A, L                                          ;; 05:4bc2 $7d
    ld   [wScriptPointer.low], A                       ;; 05:4bc3 $ea $c6 $d2
    ld   A, $01                                        ;; 05:4bc6 $3e $01
    ld   [wD318], A                                    ;; 05:4bc8 $ea $18 $d3
    ld   A, $05                                        ;; 05:4bcb $3e $05
    ld   [wD58B], A                                    ;; 05:4bcd $ea $8b $d5
    xor  A, A                                          ;; 05:4bd0 $af
    ld   [wMainGameState], A                           ;; 05:4bd1 $ea $86 $d5
    ret                                                ;; 05:4bd4 $c9

call_05_4bd5:
    ld   A, [wD313]                                    ;; 05:4bd5 $fa $13 $d3
    and  A, A                                          ;; 05:4bd8 $a7
    jp   Z, .jp_05_4be1                                ;; 05:4bd9 $ca $e1 $4b
    dec  A                                             ;; 05:4bdc $3d
    ld   [wD313], A                                    ;; 05:4bdd $ea $13 $d3
    ret                                                ;; 05:4be0 $c9
.jp_05_4be1:
    ld   A, [wD314]                                    ;; 05:4be1 $fa $14 $d3
    and  A, A                                          ;; 05:4be4 $a7
    jr   NZ, .jr_05_4c06                               ;; 05:4be5 $20 $1f
    ldh  A, [hIsGBC]                                   ;; 05:4be7 $f0 $fe
    and  A, A                                          ;; 05:4be9 $a7
    jr   Z, .jr_05_4bfa                                ;; 05:4bea $28 $0e
    ld   HL, wCE65                                     ;; 05:4bec $21 $65 $ce
    call setSpritePaletteData                          ;; 05:4bef $cd $ad $04
    ld   HL, wBackgroundPalette                        ;; 05:4bf2 $21 $25 $ce
    call setBackgroundPaletteData                      ;; 05:4bf5 $cd $9f $04
    jr   .jr_05_4c09                                   ;; 05:4bf8 $18 $0f
.jr_05_4bfa:
    ld   A, [wBGP]                                     ;; 05:4bfa $fa $d4 $d5
    ldh  [rBGP], A                                     ;; 05:4bfd $e0 $47
    ld   A, [wOBP0]                                    ;; 05:4bff $fa $d5 $d5
    ldh  [rOBP0], A                                    ;; 05:4c02 $e0 $48
    jr   .jr_05_4c09                                   ;; 05:4c04 $18 $03
.jr_05_4c06:
    call call_00_1255                                  ;; 05:4c06 $cd $55 $12
.jr_05_4c09:
    ld   A, [wD312]                                    ;; 05:4c09 $fa $12 $d3
    ld   [wD313], A                                    ;; 05:4c0c $ea $13 $d3
    ld   A, [wD314]                                    ;; 05:4c0f $fa $14 $d3
    xor  A, $01                                        ;; 05:4c12 $ee $01
    ld   [wD314], A                                    ;; 05:4c14 $ea $14 $d3
    ld   A, [wD311]                                    ;; 05:4c17 $fa $11 $d3
    dec  A                                             ;; 05:4c1a $3d
    ld   [wD311], A                                    ;; 05:4c1b $ea $11 $d3
    and  A, A                                          ;; 05:4c1e $a7
    ret  NZ                                            ;; 05:4c1f $c0
    ld   A, [wD314]                                    ;; 05:4c20 $fa $14 $d3
    and  A, A                                          ;; 05:4c23 $a7
    jr   NZ, .jr_05_4c2c                               ;; 05:4c24 $20 $06
    ld   A, $01                                        ;; 05:4c26 $3e $01
    ld   [wD311], A                                    ;; 05:4c28 $ea $11 $d3
    ret                                                ;; 05:4c2b $c9
.jr_05_4c2c:
    xor  A, A                                          ;; 05:4c2c $af
    ld   [wD317], A                                    ;; 05:4c2d $ea $17 $d3
    ret                                                ;; 05:4c30 $c9

call_05_4c31:
    ld   C, $20                                        ;; 05:4c31 $0e $20
.jr_05_4c33:
    ld   A, [HL]                                       ;; 05:4c33 $7e
    and  A, $1f                                        ;; 05:4c34 $e6 $1f
    sub  A, $03                                        ;; 05:4c36 $d6 $03
    jr   NC, .jr_05_4c3b                               ;; 05:4c38 $30 $01
    xor  A, A                                          ;; 05:4c3a $af
.jr_05_4c3b:
    ld   [wCEA5], A                                    ;; 05:4c3b $ea $a5 $ce
    ld   A, [HL+]                                      ;; 05:4c3e $2a
    and  A, $e0                                        ;; 05:4c3f $e6 $e0
    srl  A                                             ;; 05:4c41 $cb $3f
    srl  A                                             ;; 05:4c43 $cb $3f
    ld   B, A                                          ;; 05:4c45 $47
    ld   A, [HL]                                       ;; 05:4c46 $7e
    and  A, $03                                        ;; 05:4c47 $e6 $03
    swap A                                             ;; 05:4c49 $cb $37
    sla  A                                             ;; 05:4c4b $cb $27
    sla  A                                             ;; 05:4c4d $cb $27
    or   A, B                                          ;; 05:4c4f $b0
    sub  A, $18                                        ;; 05:4c50 $d6 $18
    jr   NC, .jr_05_4c55                               ;; 05:4c52 $30 $01
    xor  A, A                                          ;; 05:4c54 $af
.jr_05_4c55:
    ld   [wCEA6], A                                    ;; 05:4c55 $ea $a6 $ce
    ld   A, [HL]                                       ;; 05:4c58 $7e
    and  A, $7c                                        ;; 05:4c59 $e6 $7c
    sub  A, $0c                                        ;; 05:4c5b $d6 $0c
    jr   NC, .jr_05_4c60                               ;; 05:4c5d $30 $01
    xor  A, A                                          ;; 05:4c5f $af
.jr_05_4c60:
    ld   [wCEA7], A                                    ;; 05:4c60 $ea $a7 $ce
    ld   B, A                                          ;; 05:4c63 $47
    ld   A, [wCEA6]                                    ;; 05:4c64 $fa $a6 $ce
    ld   E, A                                          ;; 05:4c67 $5f
    ld   D, $00                                        ;; 05:4c68 $16 $00
    sla  E                                             ;; 05:4c6a $cb $23
    rl   D                                             ;; 05:4c6c $cb $12
    sla  E                                             ;; 05:4c6e $cb $23
    rl   D                                             ;; 05:4c70 $cb $12
    ld   A, B                                          ;; 05:4c72 $78
    or   A, D                                          ;; 05:4c73 $b2
    ld   [HL-], A                                      ;; 05:4c74 $32
    ld   D, A                                          ;; 05:4c75 $57
    ld   A, [wCEA5]                                    ;; 05:4c76 $fa $a5 $ce
    or   A, E                                          ;; 05:4c79 $b3
    ld   [HL+], A                                      ;; 05:4c7a $22
    inc  HL                                            ;; 05:4c7b $23
    ld   A, D                                          ;; 05:4c7c $7a
    or   A, E                                          ;; 05:4c7d $b3
    jr   Z, .jr_05_4c85                                ;; 05:4c7e $28 $05
    ld   A, $01                                        ;; 05:4c80 $3e $01
    ld   [wD315], A                                    ;; 05:4c82 $ea $15 $d3
.jr_05_4c85:
    dec  C                                             ;; 05:4c85 $0d
    jr   NZ, .jr_05_4c33                               ;; 05:4c86 $20 $ab
    ret                                                ;; 05:4c88 $c9

call_05_4c89:
    ld   A, [HL]                                       ;; 05:4c89 $7e
    and  A, $c0                                        ;; 05:4c8a $e6 $c0
    add  A, $40                                        ;; 05:4c8c $c6 $40
    jr   NC, .jr_05_4c92                               ;; 05:4c8e $30 $02
    ld   A, $c0                                        ;; 05:4c90 $3e $c0
.jr_05_4c92:
    ld   B, A                                          ;; 05:4c92 $47
    ld   A, [HL]                                       ;; 05:4c93 $7e
    and  A, $30                                        ;; 05:4c94 $e6 $30
    add  A, $10                                        ;; 05:4c96 $c6 $10
    bit  6, A                                          ;; 05:4c98 $cb $77
    jr   Z, .jr_05_4c9e                                ;; 05:4c9a $28 $02
    ld   A, $30                                        ;; 05:4c9c $3e $30
.jr_05_4c9e:
    ld   C, A                                          ;; 05:4c9e $4f
    ld   A, [HL]                                       ;; 05:4c9f $7e
    and  A, $0c                                        ;; 05:4ca0 $e6 $0c
    add  A, $04                                        ;; 05:4ca2 $c6 $04
    bit  4, A                                          ;; 05:4ca4 $cb $67
    jr   Z, .jr_05_4caa                                ;; 05:4ca6 $28 $02
    ld   A, $0c                                        ;; 05:4ca8 $3e $0c
.jr_05_4caa:
    ld   D, A                                          ;; 05:4caa $57
    ld   A, [HL]                                       ;; 05:4cab $7e
    and  A, $03                                        ;; 05:4cac $e6 $03
    add  A, $01                                        ;; 05:4cae $c6 $01
    bit  2, A                                          ;; 05:4cb0 $cb $57
    jr   Z, .jr_05_4cb6                                ;; 05:4cb2 $28 $02
    ld   A, $03                                        ;; 05:4cb4 $3e $03
.jr_05_4cb6:
    or   A, B                                          ;; 05:4cb6 $b0
    or   A, C                                          ;; 05:4cb7 $b1
    or   A, D                                          ;; 05:4cb8 $b2
    ld   [HL], A                                       ;; 05:4cb9 $77
    cp   A, $ff                                        ;; 05:4cba $fe $ff
    ret  Z                                             ;; 05:4cbc $c8
    ld   A, $01                                        ;; 05:4cbd $3e $01
    ld   [wD315], A                                    ;; 05:4cbf $ea $15 $d3
    ret                                                ;; 05:4cc2 $c9

call_05_4cc3:
    ld   B, $20                                        ;; 05:4cc3 $06 $20
.jp_05_4cc5:
    ld   A, [DE]                                       ;; 05:4cc5 $1a
    and  A, $1f                                        ;; 05:4cc6 $e6 $1f
    ld   C, A                                          ;; 05:4cc8 $4f
    ld   A, [HL]                                       ;; 05:4cc9 $7e
    and  A, $1f                                        ;; 05:4cca $e6 $1f
    add  A, $03                                        ;; 05:4ccc $c6 $03
    cp   A, C                                          ;; 05:4cce $b9
    jr   C, .jr_05_4cd2                                ;; 05:4ccf $38 $01
    ld   A, C                                          ;; 05:4cd1 $79
.jr_05_4cd2:
    ld   [wCEA5], A                                    ;; 05:4cd2 $ea $a5 $ce
    ld   A, [HL+]                                      ;; 05:4cd5 $2a
    and  A, $e0                                        ;; 05:4cd6 $e6 $e0
    ld   C, A                                          ;; 05:4cd8 $4f
    ld   A, [HL]                                       ;; 05:4cd9 $7e
    and  A, $03                                        ;; 05:4cda $e6 $03
    srl  A                                             ;; 05:4cdc $cb $3f
    rr   C                                             ;; 05:4cde $cb $19
    srl  A                                             ;; 05:4ce0 $cb $3f
    rr   C                                             ;; 05:4ce2 $cb $19
    ld   A, C                                          ;; 05:4ce4 $79
    ld   [wCEA6], A                                    ;; 05:4ce5 $ea $a6 $ce
    ld   A, [DE]                                       ;; 05:4ce8 $1a
    and  A, $e0                                        ;; 05:4ce9 $e6 $e0
    ld   C, A                                          ;; 05:4ceb $4f
    inc  DE                                            ;; 05:4cec $13
    ld   A, [DE]                                       ;; 05:4ced $1a
    and  A, $03                                        ;; 05:4cee $e6 $03
    srl  A                                             ;; 05:4cf0 $cb $3f
    rr   C                                             ;; 05:4cf2 $cb $19
    srl  A                                             ;; 05:4cf4 $cb $3f
    rr   C                                             ;; 05:4cf6 $cb $19
    ld   A, [wCEA6]                                    ;; 05:4cf8 $fa $a6 $ce
    add  A, $18                                        ;; 05:4cfb $c6 $18
    jr   NC, .jr_05_4d01                               ;; 05:4cfd $30 $02
    ld   A, $f8                                        ;; 05:4cff $3e $f8
.jr_05_4d01:
    cp   A, C                                          ;; 05:4d01 $b9
    jr   C, .jr_05_4d05                                ;; 05:4d02 $38 $01
    ld   A, C                                          ;; 05:4d04 $79
.jr_05_4d05:
    ld   [wCEA6], A                                    ;; 05:4d05 $ea $a6 $ce
    ld   A, [DE]                                       ;; 05:4d08 $1a
    and  A, $7c                                        ;; 05:4d09 $e6 $7c
    ld   C, A                                          ;; 05:4d0b $4f
    ld   A, [HL-]                                      ;; 05:4d0c $3a
    and  A, $7c                                        ;; 05:4d0d $e6 $7c
    add  A, $0c                                        ;; 05:4d0f $c6 $0c
    cp   A, C                                          ;; 05:4d11 $b9
    jr   C, .jr_05_4d15                                ;; 05:4d12 $38 $01
    ld   A, C                                          ;; 05:4d14 $79
.jr_05_4d15:
    ld   C, A                                          ;; 05:4d15 $4f
    ld   A, [DE]                                       ;; 05:4d16 $1a
    and  A, $80                                        ;; 05:4d17 $e6 $80
    or   A, C                                          ;; 05:4d19 $b1
    ld   [wCEA7], A                                    ;; 05:4d1a $ea $a7 $ce
    push DE                                            ;; 05:4d1d $d5
    ld   A, [wCEA6]                                    ;; 05:4d1e $fa $a6 $ce
    ld   C, $00                                        ;; 05:4d21 $0e $00
    sla  A                                             ;; 05:4d23 $cb $27
    rl   C                                             ;; 05:4d25 $cb $11
    sla  A                                             ;; 05:4d27 $cb $27
    rl   C                                             ;; 05:4d29 $cb $11
    ld   D, A                                          ;; 05:4d2b $57
    ld   A, [wCEA5]                                    ;; 05:4d2c $fa $a5 $ce
    or   A, D                                          ;; 05:4d2f $b2
    ld   [HL+], A                                      ;; 05:4d30 $22
    ld   A, [wCEA7]                                    ;; 05:4d31 $fa $a7 $ce
    or   A, C                                          ;; 05:4d34 $b1
    ld   [HL-], A                                      ;; 05:4d35 $32
    pop  DE                                            ;; 05:4d36 $d1
    dec  DE                                            ;; 05:4d37 $1b
    ld   A, [DE]                                       ;; 05:4d38 $1a
    inc  DE                                            ;; 05:4d39 $13
    ld   C, A                                          ;; 05:4d3a $4f
    ld   A, [HL+]                                      ;; 05:4d3b $2a
    cp   A, C                                          ;; 05:4d3c $b9
    jr   NZ, .jr_05_4d45                               ;; 05:4d3d $20 $06
    ld   A, [DE]                                       ;; 05:4d3f $1a
    ld   C, A                                          ;; 05:4d40 $4f
    ld   A, [HL]                                       ;; 05:4d41 $7e
    cp   A, C                                          ;; 05:4d42 $b9
    jr   Z, .jr_05_4d4a                                ;; 05:4d43 $28 $05
.jr_05_4d45:
    ld   A, $01                                        ;; 05:4d45 $3e $01
    ld   [wD315], A                                    ;; 05:4d47 $ea $15 $d3
.jr_05_4d4a:
    inc  HL                                            ;; 05:4d4a $23
    inc  DE                                            ;; 05:4d4b $13
    dec  B                                             ;; 05:4d4c $05
    jp   NZ, .jp_05_4cc5                               ;; 05:4d4d $c2 $c5 $4c
    ret                                                ;; 05:4d50 $c9

call_05_4d51:
    ld   A, [HL]                                       ;; 05:4d51 $7e
    and  A, $c0                                        ;; 05:4d52 $e6 $c0
    sub  A, $40                                        ;; 05:4d54 $d6 $40
    cp   A, $c0                                        ;; 05:4d56 $fe $c0
    jr   NC, .jr_05_4d5c                               ;; 05:4d58 $30 $02
    ld   A, $c0                                        ;; 05:4d5a $3e $c0
.jr_05_4d5c:
    ld   B, A                                          ;; 05:4d5c $47
    ld   A, [HL]                                       ;; 05:4d5d $7e
    and  A, $30                                        ;; 05:4d5e $e6 $30
    sub  A, $10                                        ;; 05:4d60 $d6 $10
    cp   A, $20                                        ;; 05:4d62 $fe $20
    jr   NC, .jr_05_4d68                               ;; 05:4d64 $30 $02
    ld   A, $20                                        ;; 05:4d66 $3e $20
.jr_05_4d68:
    or   A, B                                          ;; 05:4d68 $b0
    ld   B, A                                          ;; 05:4d69 $47
    ld   A, [HL]                                       ;; 05:4d6a $7e
    and  A, $0c                                        ;; 05:4d6b $e6 $0c
    sub  A, $04                                        ;; 05:4d6d $d6 $04
    cp   A, $04                                        ;; 05:4d6f $fe $04
    jr   NC, .jr_05_4d75                               ;; 05:4d71 $30 $02
    ld   A, $04                                        ;; 05:4d73 $3e $04
.jr_05_4d75:
    or   A, B                                          ;; 05:4d75 $b0
    ld   B, A                                          ;; 05:4d76 $47
    ld   A, [HL]                                       ;; 05:4d77 $7e
    and  A, $03                                        ;; 05:4d78 $e6 $03
    sub  A, $01                                        ;; 05:4d7a $d6 $01
    jr   NC, .jr_05_4d80                               ;; 05:4d7c $30 $02
    ld   A, $00                                        ;; 05:4d7e $3e $00
.jr_05_4d80:
    or   A, B                                          ;; 05:4d80 $b0
    ld   [HL], A                                       ;; 05:4d81 $77
    ld   A, [DE]                                       ;; 05:4d82 $1a
    and  A, $c0                                        ;; 05:4d83 $e6 $c0
    sub  A, $40                                        ;; 05:4d85 $d6 $40
    cp   A, $c0                                        ;; 05:4d87 $fe $c0
    jr   NC, .jr_05_4d8d                               ;; 05:4d89 $30 $02
    ld   A, $c0                                        ;; 05:4d8b $3e $c0
.jr_05_4d8d:
    ld   B, A                                          ;; 05:4d8d $47
    ld   A, [DE]                                       ;; 05:4d8e $1a
    and  A, $30                                        ;; 05:4d8f $e6 $30
    sub  A, $10                                        ;; 05:4d91 $d6 $10
    cp   A, $10                                        ;; 05:4d93 $fe $10
    jr   NC, .jr_05_4d99                               ;; 05:4d95 $30 $02
    ld   A, $10                                        ;; 05:4d97 $3e $10
.jr_05_4d99:
    or   A, B                                          ;; 05:4d99 $b0
    ld   B, A                                          ;; 05:4d9a $47
    ld   A, [DE]                                       ;; 05:4d9b $1a
    and  A, $0c                                        ;; 05:4d9c $e6 $0c
    sub  A, $04                                        ;; 05:4d9e $d6 $04
    jr   NC, .jr_05_4da4                               ;; 05:4da0 $30 $02
    ld   A, $00                                        ;; 05:4da2 $3e $00
.jr_05_4da4:
    or   A, B                                          ;; 05:4da4 $b0
    ld   B, A                                          ;; 05:4da5 $47
    ld   A, [DE]                                       ;; 05:4da6 $1a
    and  A, $03                                        ;; 05:4da7 $e6 $03
    sub  A, $01                                        ;; 05:4da9 $d6 $01
    cp   A, $02                                        ;; 05:4dab $fe $02
    jr   NC, .jr_05_4db1                               ;; 05:4dad $30 $02
    ld   A, $02                                        ;; 05:4daf $3e $02
.jr_05_4db1:
    or   A, B                                          ;; 05:4db1 $b0
    ld   [DE], A                                       ;; 05:4db2 $12
    ld   A, [HL]                                       ;; 05:4db3 $7e
    cp   A, $e4                                        ;; 05:4db4 $fe $e4
    jr   NZ, .jr_05_4dbc                               ;; 05:4db6 $20 $04
    ld   A, [DE]                                       ;; 05:4db8 $1a
    cp   A, $d2                                        ;; 05:4db9 $fe $d2
    ret  Z                                             ;; 05:4dbb $c8
.jr_05_4dbc:
    ld   A, $01                                        ;; 05:4dbc $3e $01
    ld   [wD315], A                                    ;; 05:4dbe $ea $15 $d3
    ret                                                ;; 05:4dc1 $c9

jp_05_4dc2:
    ldh  A, [hIsGBC]                                   ;; 05:4dc2 $f0 $fe
    and  A, A                                          ;; 05:4dc4 $a7
    jr   Z, .jr_05_4dd5                                ;; 05:4dc5 $28 $0e
    ld   HL, wCDE5                                     ;; 05:4dc7 $21 $e5 $cd
    call call_05_4c31                                  ;; 05:4dca $cd $31 $4c
    ld   HL, wCDA5                                     ;; 05:4dcd $21 $a5 $cd
    call call_05_4c31                                  ;; 05:4dd0 $cd $31 $4c
    jr   .jr_05_4def                                   ;; 05:4dd3 $18 $1a
.jr_05_4dd5:
    ld   A, [wD316]                                    ;; 05:4dd5 $fa $16 $d3
    dec  A                                             ;; 05:4dd8 $3d
    ld   [wD316], A                                    ;; 05:4dd9 $ea $16 $d3
    jr   NZ, .jr_05_4df9                               ;; 05:4ddc $20 $1b
    ld   HL, wBGP                                      ;; 05:4dde $21 $d4 $d5
    call call_05_4c89                                  ;; 05:4de1 $cd $89 $4c
    ld   HL, wOBP0                                     ;; 05:4de4 $21 $d5 $d5
    call call_05_4c89                                  ;; 05:4de7 $cd $89 $4c
    ld   A, $14                                        ;; 05:4dea $3e $14
    ld   [wD316], A                                    ;; 05:4dec $ea $16 $d3
.jr_05_4def:
    ld   A, [wD315]                                    ;; 05:4def $fa $15 $d3
    and  A, A                                          ;; 05:4df2 $a7
    jr   NZ, .jr_05_4df9                               ;; 05:4df3 $20 $04
    xor  A, A                                          ;; 05:4df5 $af
    ld   [wD317], A                                    ;; 05:4df6 $ea $17 $d3
.jr_05_4df9:
    xor  A, A                                          ;; 05:4df9 $af
    ld   [wD315], A                                    ;; 05:4dfa $ea $15 $d3
    ret                                                ;; 05:4dfd $c9

jp_05_4dfe:
    ldh  A, [hIsGBC]                                   ;; 05:4dfe $f0 $fe
    and  A, A                                          ;; 05:4e00 $a7
    jr   Z, .jr_05_4e17                                ;; 05:4e01 $28 $14
    ld   DE, wCE65                                     ;; 05:4e03 $11 $65 $ce
    ld   HL, wCDE5                                     ;; 05:4e06 $21 $e5 $cd
    call call_05_4cc3                                  ;; 05:4e09 $cd $c3 $4c
    ld   DE, wBackgroundPalette                        ;; 05:4e0c $11 $25 $ce
    ld   HL, wCDA5                                     ;; 05:4e0f $21 $a5 $cd
    call call_05_4cc3                                  ;; 05:4e12 $cd $c3 $4c
    jr   .jr_05_4e2e                                   ;; 05:4e15 $18 $17
.jr_05_4e17:
    ld   A, [wD316]                                    ;; 05:4e17 $fa $16 $d3
    dec  A                                             ;; 05:4e1a $3d
    ld   [wD316], A                                    ;; 05:4e1b $ea $16 $d3
    jr   NZ, .jr_05_4e44                               ;; 05:4e1e $20 $24
    ld   HL, wBGP                                      ;; 05:4e20 $21 $d4 $d5
    ld   DE, wOBP0                                     ;; 05:4e23 $11 $d5 $d5
    call call_05_4d51                                  ;; 05:4e26 $cd $51 $4d
    ld   A, $14                                        ;; 05:4e29 $3e $14
    ld   [wD316], A                                    ;; 05:4e2b $ea $16 $d3
.jr_05_4e2e:
    ld   A, [wD315]                                    ;; 05:4e2e $fa $15 $d3
    and  A, A                                          ;; 05:4e31 $a7
    jr   NZ, .jr_05_4e44                               ;; 05:4e32 $20 $10
    xor  A, A                                          ;; 05:4e34 $af
    ld   [wD317], A                                    ;; 05:4e35 $ea $17 $d3
    ld   HL, wCE65                                     ;; 05:4e38 $21 $65 $ce
    call setSpritePaletteData                          ;; 05:4e3b $cd $ad $04
    ld   HL, wBackgroundPalette                        ;; 05:4e3e $21 $25 $ce
    call setBackgroundPaletteData                      ;; 05:4e41 $cd $9f $04
.jr_05_4e44:
    xor  A, A                                          ;; 05:4e44 $af
    ld   [wD315], A                                    ;; 05:4e45 $ea $15 $d3
    ret                                                ;; 05:4e48 $c9

INCLUDE "script/scripts.asm"

;@string_table_pointers amount=30
stringTablePointers:
    data_P data_05_795e                                ;; 05:7922 Ww $00
    data_P data_05_7982                                ;; 05:7924 ?? $01
    data_P data_05_7986                                ;; 05:7926 ?? $02
    data_P data_05_7992                                ;; 05:7928 ?? $03
    data_P data_05_79be                                ;; 05:792a ?? $04
    data_P data_05_79c6                                ;; 05:792c ?? $05
    data_P data_05_79d8                                ;; 05:792e ?? $06
    data_P data_05_79d8                                ;; 05:7930 ?? $07
    data_P data_05_79e4                                ;; 05:7932 ?? $08
    data_P data_05_7a06                                ;; 05:7934 ?? $09
    data_P data_05_7a0c                                ;; 05:7936 ?? $0a
    data_P data_05_7a10                                ;; 05:7938 ?? $0b
    data_P data_05_7a2a                                ;; 05:793a ?? $0c
    data_P data_05_7a44                                ;; 05:793c ?? $0d
    data_P data_05_7a48                                ;; 05:793e ?? $0e
    data_P data_05_7a5e                                ;; 05:7940 ?? $0f
    data_P data_05_7a62                                ;; 05:7942 ?? $10
    data_P data_05_7a64                                ;; 05:7944 ?? $11
    data_P data_05_7ae0                                ;; 05:7946 ?? $12
    data_P data_05_7ae8                                ;; 05:7948 ?? $13
    data_P data_05_7af2                                ;; 05:794a ?? $14
    data_P data_05_7b04                                ;; 05:794c ?? $15
    data_P data_05_7b28                                ;; 05:794e ?? $16
    data_P data_05_7b36                                ;; 05:7950 ?? $17
    data_P data_05_7b44                                ;; 05:7952 ?? $18
    data_P data_05_7b48                                ;; 05:7954 ?? $19
    data_P data_05_7b58                                ;; 05:7956 ?? $1a
    data_P data_05_7b48                                ;; 05:7958 ?? $1b
    data_P data_05_7b48                                ;; 05:795a ?? $1c
    data_P data_05_7b48                                ;; 05:795c ?? $1d

data_05_795e:
    data_P data_stringtable_16_4000                    ;; 05:795e Pp
    data_P data_stringtable_16_403b                    ;; 05:7960 Pp
    data_P data_stringtable_16_4059                    ;; 05:7962 Pp
    data_P data_stringtable_16_4083                    ;; 05:7964 Pp
    data_P data_stringtable_16_40d5                    ;; 05:7966 Pp
    data_P data_stringtable_16_40ff                    ;; 05:7968 Pp
    data_P data_stringtable_16_413d                    ;; 05:796a Pp
    data_P data_stringtable_16_41ac                    ;; 05:796c Pp
    data_P data_stringtable_16_41c0                    ;; 05:796e Pp
    data_P data_stringtable_16_423a                    ;; 05:7970 Pp
    data_P data_stringtable_16_434f                    ;; 05:7972 Pp
    data_P data_stringtable_16_43ae                    ;; 05:7974 Pp
    data_P data_stringtable_16_441c                    ;; 05:7976 Pp
    data_P data_stringtable_16_443c                    ;; 05:7978 Pp
    data_P data_stringtable_16_4488                    ;; 05:797a Pp
    data_P data_stringtable_16_454c                    ;; 05:797c Pp
    data_P data_stringtable_16_4572                    ;; 05:797e Pp
    data_P data_stringtable_16_4679                    ;; 05:7980 Pp

data_05_7982:
    data_P data_stringtable_16_468c                    ;; 05:7982 ??
    data_P data_stringtable_16_4756                    ;; 05:7984 ??

data_05_7986:
    data_P data_stringtable_16_479e                    ;; 05:7986 ??
    data_P data_stringtable_16_47b9                    ;; 05:7988 ??
    data_P data_stringtable_16_4831                    ;; 05:798a ??
    data_P data_stringtable_16_486e                    ;; 05:798c ??
    data_P data_stringtable_16_4896                    ;; 05:798e ??
    data_P data_stringtable_16_4a1d                    ;; 05:7990 ??

data_05_7992:
    data_P data_stringtable_16_4a6a                    ;; 05:7992 ??
    data_P data_stringtable_16_4ac5                    ;; 05:7994 ??
    data_P data_stringtable_16_4b2c                    ;; 05:7996 ??
    data_P data_stringtable_16_4bb3                    ;; 05:7998 ??
    data_P data_stringtable_16_4bf5                    ;; 05:799a ??
    data_P data_stringtable_16_4c73                    ;; 05:799c ??
    data_P data_stringtable_16_4cab                    ;; 05:799e ??
    data_P data_stringtable_16_4cd7                    ;; 05:79a0 ??
    data_P data_stringtable_16_4d14                    ;; 05:79a2 ??
    data_P data_stringtable_16_4d83                    ;; 05:79a4 ??
    data_P data_stringtable_16_4dc6                    ;; 05:79a6 ??
    data_P data_stringtable_16_4e0a                    ;; 05:79a8 ??
    data_P data_stringtable_16_4e25                    ;; 05:79aa ??
    data_P data_stringtable_16_4e93                    ;; 05:79ac ??
    data_P data_stringtable_16_4ebb                    ;; 05:79ae ??
    data_P data_stringtable_16_4f17                    ;; 05:79b0 ??
    data_P data_stringtable_16_4f42                    ;; 05:79b2 ??
    data_P data_stringtable_16_4f86                    ;; 05:79b4 ??
    data_P data_stringtable_16_4f9a                    ;; 05:79b6 ??
    data_P data_stringtable_16_4faa                    ;; 05:79b8 ??
    data_P data_stringtable_16_5030                    ;; 05:79ba ??
    data_P data_stringtable_16_5059                    ;; 05:79bc ??

data_05_79be:
    data_P data_stringtable_16_515b                    ;; 05:79be ??
    data_P data_stringtable_16_526f                    ;; 05:79c0 ??
    data_P data_stringtable_16_52b7                    ;; 05:79c2 ??
    data_P data_stringtable_16_52d5                    ;; 05:79c4 ??

data_05_79c6:
    data_P data_stringtable_16_5321                    ;; 05:79c6 ??
    data_P data_stringtable_16_536d                    ;; 05:79c8 ??
    data_P data_stringtable_16_53c3                    ;; 05:79ca ??
    data_P data_stringtable_16_5472                    ;; 05:79cc ??
    data_P data_stringtable_16_54b1                    ;; 05:79ce ??
    data_P data_stringtable_16_54ef                    ;; 05:79d0 ??
    data_P data_stringtable_16_552b                    ;; 05:79d2 ??
    data_P data_stringtable_16_5574                    ;; 05:79d4 ??
    data_P data_stringtable_16_558b                    ;; 05:79d6 ??

data_05_79d8:
    data_P data_stringtable_16_7c3c                    ;; 05:79d8 ??
    data_P data_stringtable_16_55c4                    ;; 05:79da ??
    data_P data_stringtable_16_5689                    ;; 05:79dc ??
    data_P data_stringtable_16_56a7                    ;; 05:79de ??
    data_P data_stringtable_16_7cdc                    ;; 05:79e0 ??
    data_P data_stringtable_16_56f5                    ;; 05:79e2 ??

data_05_79e4:
    data_P data_stringtable_16_5806                    ;; 05:79e4 ??
    data_P data_stringtable_16_5832                    ;; 05:79e6 ??
    data_P data_stringtable_16_5846                    ;; 05:79e8 ??
    data_P data_stringtable_16_588f                    ;; 05:79ea ??
    data_P data_stringtable_16_58a5                    ;; 05:79ec ??
    data_P data_stringtable_16_5917                    ;; 05:79ee ??
    data_P data_stringtable_16_5937                    ;; 05:79f0 ??
    data_P data_stringtable_16_59b3                    ;; 05:79f2 ??
    data_P data_stringtable_16_59ce                    ;; 05:79f4 ??
    data_P data_stringtable_16_59f1                    ;; 05:79f6 ??
    data_P data_stringtable_16_5a6d                    ;; 05:79f8 ??
    data_P data_stringtable_16_5adb                    ;; 05:79fa ??
    data_P data_stringtable_16_5b4f                    ;; 05:79fc ??
    data_P data_stringtable_16_5bf7                    ;; 05:79fe ??
    data_P data_stringtable_16_5c46                    ;; 05:7a00 ??
    data_P data_stringtable_16_5c5e                    ;; 05:7a02 ??
    data_P data_stringtable_16_5cc5                    ;; 05:7a04 ??

data_05_7a06:
    data_P data_stringtable_16_5d01                    ;; 05:7a06 ??
    data_P data_stringtable_16_5da3                    ;; 05:7a08 ??
    data_P data_stringtable_16_5e47                    ;; 05:7a0a ??

data_05_7a0c:
    data_P data_stringtable_16_5f02                    ;; 05:7a0c ??
    data_P data_stringtable_16_5fac                    ;; 05:7a0e ??

data_05_7a10:
    data_P data_stringtable_16_6096                    ;; 05:7a10 ??
    data_P data_stringtable_16_6155                    ;; 05:7a12 ??
    data_P data_stringtable_16_61fd                    ;; 05:7a14 ??
    data_P data_stringtable_16_6248                    ;; 05:7a16 ??
    data_P data_stringtable_16_62dd                    ;; 05:7a18 ??
    data_P data_stringtable_16_63ad                    ;; 05:7a1a ??
    data_P data_stringtable_16_63f2                    ;; 05:7a1c ??
    data_P data_stringtable_16_64fc                    ;; 05:7a1e ??
    data_P data_stringtable_16_6608                    ;; 05:7a20 ??
    data_P data_stringtable_16_6735                    ;; 05:7a22 ??
    data_P data_stringtable_16_6762                    ;; 05:7a24 ??
    data_P data_stringtable_16_67dd                    ;; 05:7a26 ??
    data_P data_stringtable_16_67fa                    ;; 05:7a28 ??

data_05_7a2a:
    data_P data_stringtable_16_6838                    ;; 05:7a2a ??
    data_P data_stringtable_16_6860                    ;; 05:7a2c ??
    data_P data_stringtable_16_68ff                    ;; 05:7a2e ??
    data_P data_stringtable_16_694e                    ;; 05:7a30 ??
    data_P data_stringtable_16_69e7                    ;; 05:7a32 ??
    data_P data_stringtable_16_6a3e                    ;; 05:7a34 ??
    data_P data_stringtable_16_6aa3                    ;; 05:7a36 ??
    data_P data_stringtable_16_6aee                    ;; 05:7a38 ??
    data_P data_stringtable_16_6b5b                    ;; 05:7a3a ??
    data_P data_stringtable_16_6c11                    ;; 05:7a3c ??
    data_P data_stringtable_16_6c2f                    ;; 05:7a3e ??
    data_P data_stringtable_16_6c88                    ;; 05:7a40 ??
    data_P data_stringtable_16_6cb5                    ;; 05:7a42 ??

data_05_7a44:
    data_P data_stringtable_16_6cf7                    ;; 05:7a44 ??
    data_P data_stringtable_16_6dc6                    ;; 05:7a46 ??

data_05_7a48:
    data_P data_stringtable_16_6e2b                    ;; 05:7a48 ??
    data_P data_stringtable_16_6ec2                    ;; 05:7a4a ??
    data_P data_stringtable_16_6f93                    ;; 05:7a4c ??
    data_P data_stringtable_16_7002                    ;; 05:7a4e ??
    data_P data_stringtable_16_7020                    ;; 05:7a50 ??
    data_P data_stringtable_16_7067                    ;; 05:7a52 ??
    data_P data_stringtable_16_70cc                    ;; 05:7a54 ??
    data_P data_stringtable_16_714b                    ;; 05:7a56 ??
    data_P data_stringtable_16_719d                    ;; 05:7a58 ??
    data_P data_stringtable_16_737c                    ;; 05:7a5a ??
    data_P data_stringtable_16_73ca                    ;; 05:7a5c ??

data_05_7a5e:
    data_P data_stringtable_16_73f7                    ;; 05:7a5e ??
    data_P data_stringtable_16_754d                    ;; 05:7a60 ??

data_05_7a62:
    data_P data_stringtable_16_75b0                    ;; 05:7a62 ??

data_05_7a64:
    data_P data_stringtable_17_4000                    ;; 05:7a64 ??
    data_P data_stringtable_17_40bc                    ;; 05:7a66 ??
    data_P data_stringtable_17_40d5                    ;; 05:7a68 ??
    data_P data_stringtable_17_411a                    ;; 05:7a6a ??
    data_P data_stringtable_17_418d                    ;; 05:7a6c ??
    data_P data_stringtable_17_41ee                    ;; 05:7a6e ??
    data_P data_stringtable_17_4235                    ;; 05:7a70 ??
    data_P data_stringtable_17_4248                    ;; 05:7a72 ??
    data_P data_stringtable_17_428b                    ;; 05:7a74 ??
    data_P data_stringtable_17_42df                    ;; 05:7a76 ??
    data_P data_stringtable_17_4300                    ;; 05:7a78 ??
    data_P data_stringtable_17_443d                    ;; 05:7a7a ??
    data_P data_stringtable_17_4465                    ;; 05:7a7c ??
    data_P data_stringtable_17_45a9                    ;; 05:7a7e ??
    data_P data_stringtable_17_45be                    ;; 05:7a80 ??
    data_P data_stringtable_17_45d6                    ;; 05:7a82 ??
    data_P data_stringtable_17_4606                    ;; 05:7a84 ??
    data_P data_stringtable_17_4621                    ;; 05:7a86 ??
    data_P data_stringtable_17_4637                    ;; 05:7a88 ??
    data_P data_stringtable_17_465b                    ;; 05:7a8a ??
    data_P data_stringtable_17_46ad                    ;; 05:7a8c ??
    data_P data_stringtable_17_46f5                    ;; 05:7a8e ??
    data_P data_stringtable_17_4718                    ;; 05:7a90 ??
    data_P data_stringtable_17_47d3                    ;; 05:7a92 ??
    data_P data_stringtable_17_47e6                    ;; 05:7a94 ??
    data_P data_stringtable_17_47fa                    ;; 05:7a96 ??
    data_P data_stringtable_17_484a                    ;; 05:7a98 ??
    data_P data_stringtable_17_4865                    ;; 05:7a9a ??
    data_P data_stringtable_17_4887                    ;; 05:7a9c ??
    data_P data_stringtable_17_48b0                    ;; 05:7a9e ??
    data_P data_stringtable_17_48dd                    ;; 05:7aa0 ??
    data_P data_stringtable_17_490d                    ;; 05:7aa2 ??
    data_P data_stringtable_17_4926                    ;; 05:7aa4 ??
    data_P data_stringtable_17_494c                    ;; 05:7aa6 ??
    data_P data_stringtable_17_4964                    ;; 05:7aa8 ??
    data_P data_stringtable_17_49a4                    ;; 05:7aaa ??
    data_P data_stringtable_17_49b6                    ;; 05:7aac ??
    data_P data_stringtable_17_49fe                    ;; 05:7aae ??
    data_P data_stringtable_17_4a1c                    ;; 05:7ab0 ??
    data_P data_stringtable_17_4a5e                    ;; 05:7ab2 ??
    data_P data_stringtable_17_4aa8                    ;; 05:7ab4 ??
    data_P data_stringtable_17_4ae9                    ;; 05:7ab6 ??
    data_P data_stringtable_17_4b58                    ;; 05:7ab8 ??
    data_P data_stringtable_17_4baa                    ;; 05:7aba ??
    data_P data_stringtable_17_4bd1                    ;; 05:7abc ??
    data_P data_stringtable_17_4c25                    ;; 05:7abe ??
    data_P data_stringtable_17_4c60                    ;; 05:7ac0 ??
    data_P data_stringtable_17_4c7b                    ;; 05:7ac2 ??
    data_P data_stringtable_17_4cb9                    ;; 05:7ac4 ??
    data_P data_stringtable_17_4d05                    ;; 05:7ac6 ??
    data_P data_stringtable_17_4d2a                    ;; 05:7ac8 ??
    data_P data_stringtable_17_4d72                    ;; 05:7aca ??
    data_P data_stringtable_17_4d87                    ;; 05:7acc ??
    data_P data_stringtable_17_4f35                    ;; 05:7ace ??
    data_P data_stringtable_17_4f79                    ;; 05:7ad0 ??
    data_P data_stringtable_17_5148                    ;; 05:7ad2 ??
    data_P data_stringtable_17_5185                    ;; 05:7ad4 ??
    data_P data_stringtable_17_52bb                    ;; 05:7ad6 ??
    data_P data_stringtable_17_5400                    ;; 05:7ad8 ??
    data_P data_stringtable_17_5451                    ;; 05:7ada ??
    data_P data_stringtable_17_5497                    ;; 05:7adc ??
    data_P data_stringtable_17_5502                    ;; 05:7ade ??

data_05_7ae0:
    data_P data_stringtable_17_5551                    ;; 05:7ae0 ??
    data_P data_stringtable_17_55ee                    ;; 05:7ae2 ??
    data_P data_stringtable_17_562d                    ;; 05:7ae4 ??
    data_P data_stringtable_17_5670                    ;; 05:7ae6 ??

data_05_7ae8:
    data_P data_stringtable_17_56b4                    ;; 05:7ae8 ??
    data_P data_stringtable_17_56f8                    ;; 05:7aea ??
    data_P data_stringtable_17_572f                    ;; 05:7aec ??
    data_P data_stringtable_17_57a8                    ;; 05:7aee ??
    data_P data_stringtable_17_57d2                    ;; 05:7af0 ??

data_05_7af2:
    data_P data_stringtable_17_5809                    ;; 05:7af2 ??
    data_P data_stringtable_17_5855                    ;; 05:7af4 ??
    data_P data_stringtable_17_58ac                    ;; 05:7af6 ??
    data_P data_stringtable_17_5939                    ;; 05:7af8 ??
    data_P data_stringtable_17_5987                    ;; 05:7afa ??
    data_P data_stringtable_17_59e4                    ;; 05:7afc ??
    data_P data_stringtable_17_5a4e                    ;; 05:7afe ??
    data_P data_stringtable_17_5aef                    ;; 05:7b00 ??
    data_P data_stringtable_17_5b0f                    ;; 05:7b02 ??

data_05_7b04:
    data_P data_stringtable_17_5b38                    ;; 05:7b04 ??
    data_P data_stringtable_17_5b82                    ;; 05:7b06 ??
    data_P data_stringtable_17_5ba1                    ;; 05:7b08 ??
    data_P data_stringtable_17_5be3                    ;; 05:7b0a ??
    data_P data_stringtable_17_5c49                    ;; 05:7b0c ??
    data_P data_stringtable_17_5cbb                    ;; 05:7b0e ??
    data_P data_stringtable_17_5cd8                    ;; 05:7b10 ??
    data_P data_stringtable_17_5d22                    ;; 05:7b12 ??
    data_P data_stringtable_17_5d95                    ;; 05:7b14 ??
    data_P data_stringtable_17_5de9                    ;; 05:7b16 ??
    data_P data_stringtable_17_5e13                    ;; 05:7b18 ??
    data_P data_stringtable_17_5f0c                    ;; 05:7b1a ??
    data_P data_stringtable_17_5f2f                    ;; 05:7b1c ??
    data_P data_stringtable_17_5f52                    ;; 05:7b1e ??
    data_P data_stringtable_17_5f88                    ;; 05:7b20 ??
    data_P data_stringtable_17_5fa2                    ;; 05:7b22 ??
    data_P data_stringtable_17_5fe4                    ;; 05:7b24 ??
    data_P data_stringtable_17_607e                    ;; 05:7b26 ??

data_05_7b28:
    data_P data_stringtable_17_60bc                    ;; 05:7b28 ??
    data_P data_stringtable_17_6157                    ;; 05:7b2a ??
    data_P data_stringtable_17_618f                    ;; 05:7b2c ??
    data_P data_stringtable_17_6243                    ;; 05:7b2e ??
    data_P data_stringtable_17_6264                    ;; 05:7b30 ??
    data_P data_stringtable_17_62e1                    ;; 05:7b32 ??
    data_P data_stringtable_17_6318                    ;; 05:7b34 ??

data_05_7b36:
    data_P data_stringtable_17_6354                    ;; 05:7b36 ??
    data_P data_stringtable_17_657c                    ;; 05:7b38 ??
    data_P data_stringtable_17_65d3                    ;; 05:7b3a ??
    data_P data_stringtable_17_6610                    ;; 05:7b3c ??
    data_P data_stringtable_17_6654                    ;; 05:7b3e ??
    data_P data_stringtable_17_67ee                    ;; 05:7b40 ??
    data_P data_stringtable_17_682e                    ;; 05:7b42 ??

data_05_7b44:
    data_P data_stringtable_17_686b                    ;; 05:7b44 ??
    data_P data_stringtable_17_693d                    ;; 05:7b46 ??

data_05_7b48:
    data_P data_stringtable_17_6ae0                    ;; 05:7b48 ??
    data_P data_stringtable_17_6c46                    ;; 05:7b4a ??
    data_P data_stringtable_17_6d18                    ;; 05:7b4c ??
    data_P data_stringtable_17_6d32                    ;; 05:7b4e ??
    data_P data_stringtable_17_6d4f                    ;; 05:7b50 ??
    data_P data_stringtable_17_6d9a                    ;; 05:7b52 ??
    data_P data_stringtable_17_6f53                    ;; 05:7b54 ??
    data_P data_stringtable_17_6f6d                    ;; 05:7b56 ??

data_05_7b58:
    data_P data_stringtable_17_6f84                    ;; 05:7b58 ??
    data_P data_stringtable_17_6faf                    ;; 05:7b5a ??
    data_P data_stringtable_17_7027                    ;; 05:7b5c ??
    data_P data_stringtable_17_7048                    ;; 05:7b5e ??
    data_P data_stringtable_17_708c                    ;; 05:7b60 ??
    data_P data_stringtable_17_70c7                    ;; 05:7b62 ??
    data_P data_stringtable_17_71b5                    ;; 05:7b64 ??
    data_P data_stringtable_17_71cf                    ;; 05:7b66 ??
    data_P data_stringtable_17_7200                    ;; 05:7b68 ??
    data_P data_stringtable_17_7224                    ;; 05:7b6a ??
    data_P data_stringtable_17_7246                    ;; 05:7b6c ??
    data_P data_stringtable_17_7260                    ;; 05:7b6e ??
    db   $72, $7a, $72, $94, $72, $c7, $72, $fa        ;; 05:7b70 ????????
    db   $73, $1b, $73, $35, $73, $4f, $73, $70        ;; 05:7b78 ????????
    db   $73, $8a, $73, $a4, $73, $ce                  ;; 05:7b80 ??????

data_05_7b86:
    db   $74, $6d, $28, $00, $74, $75, $29, $00        ;; 05:7b86 ????????
    db   $74, $7d, $2a, $00, $74, $85, $2b, $00        ;; 05:7b8e ????????
    db   $74, $8d, $2c, $00, $74, $95, $2d, $00        ;; 05:7b96 ????????
    db   $7c, $6d, $2e, $00, $7c, $75, $2f, $00        ;; 05:7b9e ????????
    db   $7c, $7d, $30, $00, $7c, $85, $31, $00        ;; 05:7ba6 ????????
    db   $7c, $8d, $32, $00, $7c, $95, $33, $00        ;; 05:7bae ????????
    db   $84, $6d, $34, $00, $84, $75, $35, $00        ;; 05:7bb6 ????????
    db   $84, $7d, $36, $00, $84, $85, $37, $00        ;; 05:7bbe ????????
    db   $84, $8d, $38, $00, $84, $95, $39, $00        ;; 05:7bc6 ????????
    db   $8c, $6d, $3a, $00, $8c, $75, $3b, $00        ;; 05:7bce ????????
    db   $8c, $7d, $3c, $00, $8c, $85, $3d, $00        ;; 05:7bd6 ????????
    db   $8c, $8d, $3e, $00, $8c, $95, $3f, $00        ;; 05:7bde ????????
    db   $60, $79, $40, $00, $40, $4e, $40, $71        ;; 05:7be6 ????????
    db   $40, $98, $40, $d7, $41, $09, $41, $2b        ;; 05:7bee ????????
    db   $41, $39, $41, $64, $41, $8c, $41, $a4        ;; 05:7bf6 ????????
    db   $42, $2d, $42, $43, $42, $ea, $42, $fa        ;; 05:7bfe ????????
    db   $43, $0b, $43, $67, $43, $82, $43, $98        ;; 05:7c06 ????????
    db   $43, $b1, $44, $21, $44, $4d, $44, $66        ;; 05:7c0e ????????
    db   $44, $be, $44, $ce, $44, $e7, $45, $0b        ;; 05:7c16 ????????
    db   $45, $2d, $45, $49, $45, $66, $45, $83        ;; 05:7c1e ????????
    db   $45, $9f, $45, $b6, $45, $d2, $45, $e4        ;; 05:7c26 ????????
    db   $46, $0a, $46, $1c, $46, $42, $46, $59        ;; 05:7c2e ????????
    db   $46, $7a, $46, $9e, $46, $c4, $46, $f7        ;; 05:7c36 ????????
    db   $47, $1d, $47, $3d, $47, $65, $47, $87        ;; 05:7c3e ????????
    db   $47, $97, $47, $b7, $47, $ca, $47, $ef        ;; 05:7c46 ????????
    db   $48, $11, $48, $57, $48, $7c, $49, $33        ;; 05:7c4e ????????
    db   $49, $56, $4a, $87, $4a, $a7, $4b, $45        ;; 05:7c56 ????????
    db   $4c, $00, $4c, $27, $4c, $47, $4c, $8a        ;; 05:7c5e ????????
    db   $4c, $d4, $4d, $15, $4d, $26, $4d, $52        ;; 05:7c66 ????????
    db   $4d, $8b, $4d, $ab, $4d, $d8, $4e, $04        ;; 05:7c6e ????????
    db   $4e, $5d, $4e, $7a, $4e, $af, $4e, $dd        ;; 05:7c76 ????????
    db   $4f, $23, $4f, $62, $4f, $88, $4f, $b6        ;; 05:7c7e ????????
    db   $50, $01, $50, $13, $50, $27, $50, $42        ;; 05:7c86 ????????
    db   $50, $72, $50, $8b, $50, $ac, $50, $e7        ;; 05:7c8e ????????
    db   $51, $27, $51, $39, $51, $64, $51, $9d        ;; 05:7c96 ????????
    db   $51, $c7, $51, $de, $52, $67, $52, $9c        ;; 05:7c9e ????????
    db   $52, $ae, $52, $c4, $52, $d2, $52, $ed        ;; 05:7ca6 ????????
    db   $53, $43, $53, $5c, $53, $e4, $54, $0a        ;; 05:7cae ????????
    db   $54, $57, $54, $6c, $54, $ab, $54, $d4        ;; 05:7cb6 ????????
    db   $54, $f7, $56, $29, $56, $3a, $56, $6b        ;; 05:7cbe ????????
    db   $56, $85, $56, $aa, $57, $65, $57, $8c        ;; 05:7cc6 ????????
    db   $57, $af, $58, $61, $59, $15, $5a, $40        ;; 05:7cce ????????
    db   $5a, $be, $5a, $d4, $5a, $e8, $5b, $11        ;; 05:7cd6 ????????
    db   $5b, $ea, $5b, $fb, $5c, $0d, $5c, $27        ;; 05:7cde ????????
    db   $5c, $5e, $5c, $74, $5c, $97, $5c, $bc        ;; 05:7ce6 ????????
    db   $5d, $41, $5d, $5a, $5d, $7d, $5d, $9a        ;; 05:7cee ????????
    db   $5d, $b9, $5d, $d9, $5d, $f5, $5e, $1b        ;; 05:7cf6 ????????
    db   $5e, $3f, $5e, $58, $5e, $6b, $5e, $80        ;; 05:7cfe ????????
    db   $5e, $9b, $5e, $b0, $5e, $c6, $5e, $e8        ;; 05:7d06 ????????
    db   $74, $6d, $28, $00, $74, $75, $29, $00        ;; 05:7d0e ????????
    db   $74, $7d, $2a, $00, $74, $85, $2b, $00        ;; 05:7d16 ????????
    db   $74, $8d, $2c, $00, $74, $95, $2d, $00        ;; 05:7d1e ????????
    db   $7c, $6d, $2e, $00, $7c, $75, $2f, $00        ;; 05:7d26 ????????
    db   $7c, $7d, $30, $00, $7c, $85, $31, $00        ;; 05:7d2e ????????
    db   $7c, $8d, $32, $00, $7c, $95, $33, $00        ;; 05:7d36 ????????
    db   $84, $6d, $34, $00, $84, $75, $35, $00        ;; 05:7d3e ????????
    db   $84, $7d, $36, $00, $84, $85, $37, $00        ;; 05:7d46 ????????
    db   $84, $8d, $38, $00, $84, $95, $39, $00        ;; 05:7d4e ????????
    db   $8c, $6d, $3a, $00, $8c, $75, $3b, $00        ;; 05:7d56 ????????
    db   $8c, $7d, $3c, $00, $8c, $85, $3d, $00        ;; 05:7d5e ????????
    db   $8c, $8d, $3e, $00, $8c, $95, $3f             ;; 05:7d66 ???????
