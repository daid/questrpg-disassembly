;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank05", ROMX[$4000], BANK[$05]

call_05_4000:
    ld   A, [wD2C3]                                    ;; 05:4000 $fa $c3 $d2
    ld   L, A                                          ;; 05:4003 $6f
    ld   H, $00                                        ;; 05:4004 $26 $00
    add  HL, HL                                        ;; 05:4006 $29
    ld   DE, data_05_4e49                              ;; 05:4007 $11 $49 $4e
    add  HL, DE                                        ;; 05:400a $19
    ld   A, [HL+]                                      ;; 05:400b $2a
    ld   [wD2C5], A                                    ;; 05:400c $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:400f $7e
    ld   [wD2C6], A                                    ;; 05:4010 $ea $c6 $d2
    xor  A, A                                          ;; 05:4013 $af
    ld   [wD2C7], A                                    ;; 05:4014 $ea $c7 $d2
    ld   [wD2C8], A                                    ;; 05:4017 $ea $c8 $d2
    ld   [wD2D2], A                                    ;; 05:401a $ea $d2 $d2
    ld   [wD2D8], A                                    ;; 05:401d $ea $d8 $d2
    ld   [wD2D3], A                                    ;; 05:4020 $ea $d3 $d2
    ld   [wD2D4], A                                    ;; 05:4023 $ea $d4 $d2
    ld   [wD2D5], A                                    ;; 05:4026 $ea $d5 $d2
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
    ld   [wD2D5], A                                    ;; 05:4051 $ea $d5 $d2
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
    ld   [wD2C5], A                                    ;; 05:408f $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:4092 $7e
    ld   [wD2C6], A                                    ;; 05:4093 $ea $c6 $d2
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
    ld   [wD2C5], A                                    ;; 05:40b3 $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:40b6 $7e
    ld   [wD2C6], A                                    ;; 05:40b7 $ea $c6 $d2
    ret                                                ;; 05:40ba $c9
.jr_05_40bb:
    ld   HL, data_05_4e7d                              ;; 05:40bb $21 $7d $4e
    ld   BC, $04                                       ;; 05:40be $01 $04 $00
    add  HL, BC                                        ;; 05:40c1 $09
    ld   A, [HL+]                                      ;; 05:40c2 $2a
    ld   [wD2C5], A                                    ;; 05:40c3 $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:40c6 $7e
    ld   [wD2C6], A                                    ;; 05:40c7 $ea $c6 $d2
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
    ld   A, [wD2D5]                                    ;; 05:40da $fa $d5 $d2
    and  A, A                                          ;; 05:40dd $a7
    jr   Z, .jr_05_40e8                                ;; 05:40de $28 $08
    ld   A, [wD2D5]                                    ;; 05:40e0 $fa $d5 $d2
    dec  A                                             ;; 05:40e3 $3d
    ld   [wD2D5], A                                    ;; 05:40e4 $ea $d5 $d2
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
    ld   A, [wD2C5]                                    ;; 05:4493 $fa $c5 $d2
    ld   H, A                                          ;; 05:4496 $67
    ld   A, [wD2C6]                                    ;; 05:4497 $fa $c6 $d2
    ld   L, A                                          ;; 05:449a $6f
    ld   A, [HL+]                                      ;; 05:449b $2a
    cp   A, $01                                        ;; 05:449c $fe $01
    jp   C, .jp_05_453d                                ;; 05:449e $da $3d $45
    jp   Z, .jp_05_4575                                ;; 05:44a1 $ca $75 $45
    cp   A, $03                                        ;; 05:44a4 $fe $03
    jp   C, .jp_05_45ce                                ;; 05:44a6 $da $ce $45
    jp   Z, .jp_05_461f                                ;; 05:44a9 $ca $1f $46
    cp   A, $05                                        ;; 05:44ac $fe $05
    jp   C, .jp_05_463a                                ;; 05:44ae $da $3a $46
    jp   Z, .jp_05_465c                                ;; 05:44b1 $ca $5c $46
    cp   A, $07                                        ;; 05:44b4 $fe $07
    jp   C, .jp_05_4671                                ;; 05:44b6 $da $71 $46
    jp   Z, .jp_05_4693                                ;; 05:44b9 $ca $93 $46
    cp   A, $09                                        ;; 05:44bc $fe $09
    jp   C, .jp_05_46c2                                ;; 05:44be $da $c2 $46
    jp   Z, .jp_05_4760                                ;; 05:44c1 $ca $60 $47
    cp   A, $0b                                        ;; 05:44c4 $fe $0b
    jp   C, .jp_05_477b                                ;; 05:44c6 $da $7b $47
    jp   Z, .jp_05_4796                                ;; 05:44c9 $ca $96 $47
    cp   A, $0d                                        ;; 05:44cc $fe $0d
    jp   C, .jp_05_47d6                                ;; 05:44ce $da $d6 $47
    jp   Z, .jp_05_47e5                                ;; 05:44d1 $ca $e5 $47
    cp   A, $0f                                        ;; 05:44d4 $fe $0f
    jp   C, .jp_05_4816                                ;; 05:44d6 $da $16 $48
    jp   Z, .jp_05_481f                                ;; 05:44d9 $ca $1f $48
    cp   A, $11                                        ;; 05:44dc $fe $11
    jp   C, .jp_05_4839                                ;; 05:44de $da $39 $48
    jp   Z, .jp_05_4866                                ;; 05:44e1 $ca $66 $48
    cp   A, $13                                        ;; 05:44e4 $fe $13
    jp   C, .jp_05_488e                                ;; 05:44e6 $da $8e $48
    jp   Z, .jp_05_489b                                ;; 05:44e9 $ca $9b $48
    cp   A, $15                                        ;; 05:44ec $fe $15
    jp   C, .jp_05_48c9                                ;; 05:44ee $da $c9 $48
    jp   Z, .jp_05_48d8                                ;; 05:44f1 $ca $d8 $48
    cp   A, $17                                        ;; 05:44f4 $fe $17
    jp   C, .jp_05_48ec                                ;; 05:44f6 $da $ec $48
    jp   Z, .jp_05_48ef                                ;; 05:44f9 $ca $ef $48
    cp   A, $19                                        ;; 05:44fc $fe $19
    jp   C, .jp_05_492e                                ;; 05:44fe $da $2e $49
    jp   Z, .jp_05_4946                                ;; 05:4501 $ca $46 $49
    cp   A, $1b                                        ;; 05:4504 $fe $1b
    jp   C, .jp_05_495d                                ;; 05:4506 $da $5d $49
    jp   Z, .jp_05_4969                                ;; 05:4509 $ca $69 $49
    cp   A, $1d                                        ;; 05:450c $fe $1d
    jp   C, .jp_05_4977                                ;; 05:450e $da $77 $49
    jp   Z, .jp_05_49c1                                ;; 05:4511 $ca $c1 $49
    cp   A, $1f                                        ;; 05:4514 $fe $1f
    jp   C, .jp_05_49d9                                ;; 05:4516 $da $d9 $49
    jp   Z, .jp_05_49e7                                ;; 05:4519 $ca $e7 $49
    cp   A, $21                                        ;; 05:451c $fe $21
    jp   C, .jp_05_4a04                                ;; 05:451e $da $04 $4a
    jp   Z, .jp_05_4a1b                                ;; 05:4521 $ca $1b $4a
    cp   A, $23                                        ;; 05:4524 $fe $23
    jp   C, .jp_05_4a6b                                ;; 05:4526 $da $6b $4a
    jp   Z, .jp_05_4a84                                ;; 05:4529 $ca $84 $4a
    cp   A, $25                                        ;; 05:452c $fe $25
    jp   C, .jp_05_4a91                                ;; 05:452e $da $91 $4a
    jp   Z, .jp_05_4b07                                ;; 05:4531 $ca $07 $4b
    cp   A, $27                                        ;; 05:4534 $fe $27
    jp   C, .jp_05_4b28                                ;; 05:4536 $da $28 $4b
    jp   Z, .jp_05_4b3f                                ;; 05:4539 $ca $3f $4b
    ret                                                ;; 05:453c $c9
.jp_05_453d:
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
    ld   [wD2C5], A                                    ;; 05:456d $ea $c5 $d2
    ld   A, L                                          ;; 05:4570 $7d
    ld   [wD2C6], A                                    ;; 05:4571 $ea $c6 $d2
    ret                                                ;; 05:4574 $c9
.jp_05_4575:
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
    jr   Z, .jp_05_4575                                ;; 05:45c2 $28 $b1
    dec  HL                                            ;; 05:45c4 $2b
    ld   A, H                                          ;; 05:45c5 $7c
    ld   [wD2C5], A                                    ;; 05:45c6 $ea $c5 $d2
    ld   A, L                                          ;; 05:45c9 $7d
    ld   [wD2C6], A                                    ;; 05:45ca $ea $c6 $d2
    ret                                                ;; 05:45cd $c9
.jp_05_45ce:
    ld   A, $d3                                        ;; 05:45ce $3e $d3
    ld   [wD1BD], A                                    ;; 05:45d0 $ea $bd $d1
    ld   A, $19                                        ;; 05:45d3 $3e $19
    ld   [wD1BE], A                                    ;; 05:45d5 $ea $be $d1
    ld   A, [HL+]                                      ;; 05:45d8 $2a
    ld   E, A                                          ;; 05:45d9 $5f
    ld   D, $00                                        ;; 05:45da $16 $00
    ld   A, H                                          ;; 05:45dc $7c
    ld   [wD2C5], A                                    ;; 05:45dd $ea $c5 $d2
    ld   A, L                                          ;; 05:45e0 $7d
    ld   [wD2C6], A                                    ;; 05:45e1 $ea $c6 $d2
    ld   HL, data_05_7922                              ;; 05:45e4 $21 $22 $79
    ld   A, [wD2C3]                                    ;; 05:45e7 $fa $c3 $d2
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
    ld   A, [wD2C3]                                    ;; 05:4600 $fa $c3 $d2
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
.jp_05_461f:
    ld   A, [HL+]                                      ;; 05:461f $2a
    ld   E, A                                          ;; 05:4620 $5f
    ld   D, $00                                        ;; 05:4621 $16 $00
    ld   A, H                                          ;; 05:4623 $7c
    ld   [wD2C5], A                                    ;; 05:4624 $ea $c5 $d2
    ld   A, L                                          ;; 05:4627 $7d
    ld   [wD2C6], A                                    ;; 05:4628 $ea $c6 $d2
    sla  E                                             ;; 05:462b $cb $23
    rl   D                                             ;; 05:462d $cb $12
    ld   HL, $323                                      ;; 05:462f $21 $23 $03
    add  HL, DE                                        ;; 05:4632 $19
    ld   A, [HL+]                                      ;; 05:4633 $2a
    ld   L, [HL]                                       ;; 05:4634 $6e
    ld   H, A                                          ;; 05:4635 $67
    call call_00_0f5d                                  ;; 05:4636 $cd $5d $0f
    ret                                                ;; 05:4639 $c9
.jp_05_463a:
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
    ld   [wD2C5], A                                    ;; 05:4654 $ea $c5 $d2
    ld   A, L                                          ;; 05:4657 $7d
    ld   [wD2C6], A                                    ;; 05:4658 $ea $c6 $d2
    ret                                                ;; 05:465b $c9
.jp_05_465c:
    ld   A, $01                                        ;; 05:465c $3e $01
    ld   [wD5E0], A                                    ;; 05:465e $ea $e0 $d5
    ld   [wD2D3], A                                    ;; 05:4661 $ea $d3 $d2
    ld   A, [HL+]                                      ;; 05:4664 $2a
    ld   [wD2D4], A                                    ;; 05:4665 $ea $d4 $d2
    ld   A, H                                          ;; 05:4668 $7c
    ld   [wD2C5], A                                    ;; 05:4669 $ea $c5 $d2
    ld   A, L                                          ;; 05:466c $7d
    ld   [wD2C6], A                                    ;; 05:466d $ea $c6 $d2
    ret                                                ;; 05:4670 $c9
.jp_05_4671:
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
    ld   [wD2C5], A                                    ;; 05:468b $ea $c5 $d2
    ld   A, L                                          ;; 05:468e $7d
    ld   [wD2C6], A                                    ;; 05:468f $ea $c6 $d2
    ret                                                ;; 05:4692 $c9
.jp_05_4693:
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
    ld   [wD2C5], A                                    ;; 05:46ba $ea $c5 $d2
    ld   A, L                                          ;; 05:46bd $7d
    ld   [wD2C6], A                                    ;; 05:46be $ea $c6 $d2
    ret                                                ;; 05:46c1 $c9
.jp_05_46c2:
    ld   A, [HL+]                                      ;; 05:46c2 $2a
    ld   [wCurrentMap], A                              ;; 05:46c3 $ea $42 $c1
    ld   A, [HL+]                                      ;; 05:46c6 $2a
    ld   [wCurrentMap.low], A                          ;; 05:46c7 $ea $43 $c1
    ld   A, [HL+]                                      ;; 05:46ca $2a
    cp   A, $00                                        ;; 05:46cb $fe $00
    jr   NZ, .jr_05_46d6                               ;; 05:46cd $20 $07
    ld   A, $01                                        ;; 05:46cf $3e $01
    ld   [wC46C], A                                    ;; 05:46d1 $ea $6c $c4
    jr   .jr_05_46db                                   ;; 05:46d4 $18 $05
.jr_05_46d6:
    ld   A, $00                                        ;; 05:46d6 $3e $00
    ld   [wC46C], A                                    ;; 05:46d8 $ea $6c $c4
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
    ld   [wD2C5], A                                    ;; 05:4758 $ea $c5 $d2
    ld   A, L                                          ;; 05:475b $7d
    ld   [wD2C6], A                                    ;; 05:475c $ea $c6 $d2
    ret                                                ;; 05:475f $c9
.jp_05_4760:
    ld   A, [HL+]                                      ;; 05:4760 $2a
    ld   [wD318], A                                    ;; 05:4761 $ea $18 $d3
    ld   A, H                                          ;; 05:4764 $7c
    ld   [wD2C5], A                                    ;; 05:4765 $ea $c5 $d2
    ld   A, L                                          ;; 05:4768 $7d
    ld   [wD2C6], A                                    ;; 05:4769 $ea $c6 $d2
    ld   A, [wD2B9]                                    ;; 05:476c $fa $b9 $d2
    ld   [wD31C], A                                    ;; 05:476f $ea $1c $d3
    ld   A, $01                                        ;; 05:4772 $3e $01
    ld   [wD31A], A                                    ;; 05:4774 $ea $1a $d3
    call call_00_12b9                                  ;; 05:4777 $cd $b9 $12
    ret                                                ;; 05:477a $c9
.jp_05_477b:
    ld   A, [HL+]                                      ;; 05:477b $2a
    ld   [wD30D], A                                    ;; 05:477c $ea $0d $d3
    ld   A, [HL+]                                      ;; 05:477f $2a
    ld   [wD30F], A                                    ;; 05:4780 $ea $0f $d3
    ld   A, H                                          ;; 05:4783 $7c
    ld   [wD2C5], A                                    ;; 05:4784 $ea $c5 $d2
    ld   A, L                                          ;; 05:4787 $7d
    ld   [wD2C6], A                                    ;; 05:4788 $ea $c6 $d2
    ld   A, $01                                        ;; 05:478b $3e $01
    ld   [wD30E], A                                    ;; 05:478d $ea $0e $d3
    ld   A, $05                                        ;; 05:4790 $3e $05
    ld   [wD4F7], A                                    ;; 05:4792 $ea $f7 $d4
    ret                                                ;; 05:4795 $c9
.jp_05_4796:
    ld   A, [HL+]                                      ;; 05:4796 $2a
    cp   A, $01                                        ;; 05:4797 $fe $01
    jr   C, .jr_05_47aa                                ;; 05:4799 $38 $0f
    jr   Z, .jr_05_47be                                ;; 05:479b $28 $21
    ld   A, [wD38B]                                    ;; 05:479d $fa $8b $d3
    ld   [wD2C5], A                                    ;; 05:47a0 $ea $c5 $d2
    ld   A, [wD38C]                                    ;; 05:47a3 $fa $8c $d3
    ld   [wD2C6], A                                    ;; 05:47a6 $ea $c6 $d2
    ret                                                ;; 05:47a9 $c9
.jr_05_47aa:
    ld   A, H                                          ;; 05:47aa $7c
    ld   [wD38B], A                                    ;; 05:47ab $ea $8b $d3
    ld   A, L                                          ;; 05:47ae $7d
    ld   [wD38C], A                                    ;; 05:47af $ea $8c $d3
    ld   HL, data_05_75e9                              ;; 05:47b2 $21 $e9 $75
    ld   A, [HL+]                                      ;; 05:47b5 $2a
    ld   [wD2C5], A                                    ;; 05:47b6 $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:47b9 $7e
    ld   [wD2C6], A                                    ;; 05:47ba $ea $c6 $d2
    ret                                                ;; 05:47bd $c9
.jr_05_47be:
    ld   A, H                                          ;; 05:47be $7c
    ld   [wD38B], A                                    ;; 05:47bf $ea $8b $d3
    ld   A, L                                          ;; 05:47c2 $7d
    ld   [wD38C], A                                    ;; 05:47c3 $ea $8c $d3
    ld   DE, $02                                       ;; 05:47c6 $11 $02 $00
    ld   HL, data_05_75e9                              ;; 05:47c9 $21 $e9 $75
    add  HL, DE                                        ;; 05:47cc $19
    ld   A, [HL+]                                      ;; 05:47cd $2a
    ld   [wD2C5], A                                    ;; 05:47ce $ea $c5 $d2
    ld   A, [HL]                                       ;; 05:47d1 $7e
    ld   [wD2C6], A                                    ;; 05:47d2 $ea $c6 $d2
    ret                                                ;; 05:47d5 $c9
.jp_05_47d6:
    ld   A, [HL+]                                      ;; 05:47d6 $2a
    push HL                                            ;; 05:47d7 $e5
    call call_00_11a8                                  ;; 05:47d8 $cd $a8 $11
    pop  HL                                            ;; 05:47db $e1
    ld   A, H                                          ;; 05:47dc $7c
    ld   [wD2C5], A                                    ;; 05:47dd $ea $c5 $d2
    ld   A, L                                          ;; 05:47e0 $7d
    ld   [wD2C6], A                                    ;; 05:47e1 $ea $c6 $d2
    ret                                                ;; 05:47e4 $c9
.jp_05_47e5:
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
.jp_05_4816:
    ld   A, H                                          ;; 05:4816 $7c
    ld   [wD2C5], A                                    ;; 05:4817 $ea $c5 $d2
    ld   A, L                                          ;; 05:481a $7d
    ld   [wD2C6], A                                    ;; 05:481b $ea $c6 $d2
    ret                                                ;; 05:481e $c9
.jp_05_481f:
    ld   A, [HL+]                                      ;; 05:481f $2a
    cp   A, $00                                        ;; 05:4820 $fe $00
    jr   NZ, .jr_05_482b                               ;; 05:4822 $20 $07
    ld   A, $01                                        ;; 05:4824 $3e $01
    ld   [wC46C], A                                    ;; 05:4826 $ea $6c $c4
    jr   .jr_05_4830                                   ;; 05:4829 $18 $05
.jr_05_482b:
    ld   A, $00                                        ;; 05:482b $3e $00
    ld   [wC46C], A                                    ;; 05:482d $ea $6c $c4
.jr_05_4830:
    ld   A, H                                          ;; 05:4830 $7c
    ld   [wD2C5], A                                    ;; 05:4831 $ea $c5 $d2
    ld   A, L                                          ;; 05:4834 $7d
    ld   [wD2C6], A                                    ;; 05:4835 $ea $c6 $d2
    ret                                                ;; 05:4838 $c9
.jp_05_4839:
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
    jp   Z, .jp_05_4575                                ;; 05:4859 $ca $75 $45
    dec  HL                                            ;; 05:485c $2b
    ld   A, H                                          ;; 05:485d $7c
    ld   [wD2C5], A                                    ;; 05:485e $ea $c5 $d2
    ld   A, L                                          ;; 05:4861 $7d
    ld   [wD2C6], A                                    ;; 05:4862 $ea $c6 $d2
    ret                                                ;; 05:4865 $c9
.jp_05_4866:
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
    jp   Z, .jp_05_453d                                ;; 05:4881 $ca $3d $45
    dec  HL                                            ;; 05:4884 $2b
    ld   A, H                                          ;; 05:4885 $7c
    ld   [wD2C5], A                                    ;; 05:4886 $ea $c5 $d2
    ld   A, L                                          ;; 05:4889 $7d
    ld   [wD2C6], A                                    ;; 05:488a $ea $c6 $d2
    ret                                                ;; 05:488d $c9
.jp_05_488e:
    ld   A, [HL+]                                      ;; 05:488e $2a
    ld   [wD2D5], A                                    ;; 05:488f $ea $d5 $d2
    ld   A, H                                          ;; 05:4892 $7c
    ld   [wD2C5], A                                    ;; 05:4893 $ea $c5 $d2
    ld   A, L                                          ;; 05:4896 $7d
    ld   [wD2C6], A                                    ;; 05:4897 $ea $c6 $d2
    ret                                                ;; 05:489a $c9
.jp_05_489b:
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
    ld   [wD2C5], A                                    ;; 05:48c1 $ea $c5 $d2
    ld   A, L                                          ;; 05:48c4 $7d
    ld   [wD2C6], A                                    ;; 05:48c5 $ea $c6 $d2
    ret                                                ;; 05:48c8 $c9
.jp_05_48c9:
    ldh  A, [rLCDC]                                    ;; 05:48c9 $f0 $40
    and  A, $df                                        ;; 05:48cb $e6 $df
    ldh  [rLCDC], A                                    ;; 05:48cd $e0 $40
    ld   A, H                                          ;; 05:48cf $7c
    ld   [wD2C5], A                                    ;; 05:48d0 $ea $c5 $d2
    ld   A, L                                          ;; 05:48d3 $7d
    ld   [wD2C6], A                                    ;; 05:48d4 $ea $c6 $d2
    ret                                                ;; 05:48d7 $c9
.jp_05_48d8:
    ld   A, [HL+]                                      ;; 05:48d8 $2a
    ld   C, A                                          ;; 05:48d9 $4f
    ld   B, $00                                        ;; 05:48da $06 $00
    ld   A, H                                          ;; 05:48dc $7c
    ld   [wD2C5], A                                    ;; 05:48dd $ea $c5 $d2
    ld   A, L                                          ;; 05:48e0 $7d
    ld   [wD2C6], A                                    ;; 05:48e1 $ea $c6 $d2
    ld   HL, wC12D                                     ;; 05:48e4 $21 $2d $c1
    add  HL, BC                                        ;; 05:48e7 $09
    ld   A, $01                                        ;; 05:48e8 $3e $01
    ld   [HL], A                                       ;; 05:48ea $77
    ret                                                ;; 05:48eb $c9
.jp_05_48ec:
    jp   jp_00_015d                                    ;; 05:48ec $c3 $5d $01
.jp_05_48ef:
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
    jr   Z, .jp_05_48ef                                ;; 05:4922 $28 $cb
    dec  HL                                            ;; 05:4924 $2b
    ld   A, H                                          ;; 05:4925 $7c
    ld   [wD2C5], A                                    ;; 05:4926 $ea $c5 $d2
    ld   A, L                                          ;; 05:4929 $7d
    ld   [wD2C6], A                                    ;; 05:492a $ea $c6 $d2
    ret                                                ;; 05:492d $c9
.jp_05_492e:
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
    ld   [wD2C5], A                                    ;; 05:493e $ea $c5 $d2
    ld   A, L                                          ;; 05:4941 $7d
    ld   [wD2C6], A                                    ;; 05:4942 $ea $c6 $d2
    ret                                                ;; 05:4945 $c9
.jp_05_4946:
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
    ld   [wD2C5], A                                    ;; 05:4955 $ea $c5 $d2
    ld   A, L                                          ;; 05:4958 $7d
    ld   [wD2C6], A                                    ;; 05:4959 $ea $c6 $d2
    ret                                                ;; 05:495c $c9
.jp_05_495d:
    ld   A, H                                          ;; 05:495d $7c
    ld   [wD2C5], A                                    ;; 05:495e $ea $c5 $d2
    ld   A, L                                          ;; 05:4961 $7d
    ld   [wD2C6], A                                    ;; 05:4962 $ea $c6 $d2
    call call_00_0f2a                                  ;; 05:4965 $cd $2a $0f
    ret                                                ;; 05:4968 $c9
.jp_05_4969:
    ld   A, H                                          ;; 05:4969 $7c
    ld   [wD2C5], A                                    ;; 05:496a $ea $c5 $d2
    ld   A, L                                          ;; 05:496d $7d
    ld   [wD2C6], A                                    ;; 05:496e $ea $c6 $d2
    ld   A, $01                                        ;; 05:4971 $3e $01
    ld   [wC46B], A                                    ;; 05:4973 $ea $6b $c4
    ret                                                ;; 05:4976 $c9
.jp_05_4977:
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
    ld   [wD2C5], A                                    ;; 05:4992 $ea $c5 $d2
    ld   A, L                                          ;; 05:4995 $7d
    ld   [wD2C6], A                                    ;; 05:4996 $ea $c6 $d2
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
.jp_05_49c1:
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
    ld   [wD2C5], A                                    ;; 05:49d1 $ea $c5 $d2
    ld   A, L                                          ;; 05:49d4 $7d
    ld   [wD2C6], A                                    ;; 05:49d5 $ea $c6 $d2
    ret                                                ;; 05:49d8 $c9
.jp_05_49d9:
    ld   A, $01                                        ;; 05:49d9 $3e $01
    ld   [wD2BD], A                                    ;; 05:49db $ea $bd $d2
    ld   A, H                                          ;; 05:49de $7c
    ld   [wD2C5], A                                    ;; 05:49df $ea $c5 $d2
    ld   A, L                                          ;; 05:49e2 $7d
    ld   [wD2C6], A                                    ;; 05:49e3 $ea $c6 $d2
    ret                                                ;; 05:49e6 $c9
.jp_05_49e7:
    ld   A, H                                          ;; 05:49e7 $7c
    ld   [wD2C5], A                                    ;; 05:49e8 $ea $c5 $d2
    ld   A, L                                          ;; 05:49eb $7d
    ld   [wD2C6], A                                    ;; 05:49ec $ea $c6 $d2
    ld   HL, data_05_7b86                              ;; 05:49ef $21 $86 $7b
    ld   DE, wShadowOAM                                ;; 05:49f2 $11 $00 $c0
    ld   B, $60                                        ;; 05:49f5 $06 $60
    call memcopySmall                                  ;; 05:49f7 $cd $91 $05
    ld   A, $01                                        ;; 05:49fa $3e $01
    ld   [wD36C], A                                    ;; 05:49fc $ea $6c $d3
    xor  A, A                                          ;; 05:49ff $af
    ld   [wD36B], A                                    ;; 05:4a00 $ea $6b $d3
    ret                                                ;; 05:4a03 $c9
.jp_05_4a04:
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
    ld   [wD2C5], A                                    ;; 05:4a13 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a16 $7d
    ld   [wD2C6], A                                    ;; 05:4a17 $ea $c6 $d2
    ret                                                ;; 05:4a1a $c9
.jp_05_4a1b:
    ld   A, [HL+]                                      ;; 05:4a1b $2a
    and  A, A                                          ;; 05:4a1c $a7
    jr   NZ, .jr_05_4a3b                               ;; 05:4a1d $20 $1c
    ld   A, H                                          ;; 05:4a1f $7c
    ld   [wD2C5], A                                    ;; 05:4a20 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a23 $7d
    ld   [wD2C6], A                                    ;; 05:4a24 $ea $c6 $d2
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
    ld   [wD2C5], A                                    ;; 05:4a3c $ea $c5 $d2
    ld   A, L                                          ;; 05:4a3f $7d
    ld   [wD2C6], A                                    ;; 05:4a40 $ea $c6 $d2
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
.jp_05_4a6b:
    ld   A, [HL+]                                      ;; 05:4a6b $2a
    ld   [wD321], A                                    ;; 05:4a6c $ea $21 $d3
    ld   [wD4F7], A                                    ;; 05:4a6f $ea $f7 $d4
    ld   A, [HL+]                                      ;; 05:4a72 $2a
    ld   [wD322], A                                    ;; 05:4a73 $ea $22 $d3
    ld   A, H                                          ;; 05:4a76 $7c
    ld   [wD2C5], A                                    ;; 05:4a77 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a7a $7d
    ld   [wD2C6], A                                    ;; 05:4a7b $ea $c6 $d2
    ld   A, $01                                        ;; 05:4a7e $3e $01
    ld   [wD320], A                                    ;; 05:4a80 $ea $20 $d3
    ret                                                ;; 05:4a83 $c9
.jp_05_4a84:
    ld   A, H                                          ;; 05:4a84 $7c
    ld   [wD2C5], A                                    ;; 05:4a85 $ea $c5 $d2
    ld   A, L                                          ;; 05:4a88 $7d
    ld   [wD2C6], A                                    ;; 05:4a89 $ea $c6 $d2
    ld   A, $c3                                        ;; 05:4a8c $3e $c3
    ldh  [rLCDC], A                                    ;; 05:4a8e $e0 $40
    ret                                                ;; 05:4a90 $c9
.jp_05_4a91:
    ld   A, [HL+]                                      ;; 05:4a91 $2a
    ld   C, A                                          ;; 05:4a92 $4f
    ld   A, [HL+]                                      ;; 05:4a93 $2a
    ld   [wD4F7], A                                    ;; 05:4a94 $ea $f7 $d4
    ld   A, $01                                        ;; 05:4a97 $3e $01
    ld   [wD36D], A                                    ;; 05:4a99 $ea $6d $d3
    ld   A, H                                          ;; 05:4a9c $7c
    ld   [wD2C5], A                                    ;; 05:4a9d $ea $c5 $d2
    ld   A, L                                          ;; 05:4aa0 $7d
    ld   [wD2C6], A                                    ;; 05:4aa1 $ea $c6 $d2
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
.jp_05_4b07:
    ld   A, [HL+]                                      ;; 05:4b07 $2a
    ld   C, A                                          ;; 05:4b08 $4f
    ld   A, H                                          ;; 05:4b09 $7c
    ld   [wD2C5], A                                    ;; 05:4b0a $ea $c5 $d2
    ld   A, L                                          ;; 05:4b0d $7d
    ld   [wD2C6], A                                    ;; 05:4b0e $ea $c6 $d2
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
.jp_05_4b28:
    ld   A, [HL+]                                      ;; 05:4b28 $2a
    ld   C, A                                          ;; 05:4b29 $4f
    ld   A, H                                          ;; 05:4b2a $7c
    ld   [wD2C5], A                                    ;; 05:4b2b $ea $c5 $d2
    ld   A, L                                          ;; 05:4b2e $7d
    ld   [wD2C6], A                                    ;; 05:4b2f $ea $c6 $d2
    ld   HL, wC10E                                     ;; 05:4b32 $21 $0e $c1
    ld   B, $00                                        ;; 05:4b35 $06 $00
    add  HL, BC                                        ;; 05:4b37 $09
    ld   A, [HL]                                       ;; 05:4b38 $7e
    cp   A, $32                                        ;; 05:4b39 $fe $32
    ret  NC                                            ;; 05:4b3b $d0
    inc  A                                             ;; 05:4b3c $3c
    ld   [HL], A                                       ;; 05:4b3d $77
    ret                                                ;; 05:4b3e $c9
.jp_05_4b3f:
    ld   A, [HL+]                                      ;; 05:4b3f $2a
    ld   [wCurrentMap], A                              ;; 05:4b40 $ea $42 $c1
    ld   A, [HL+]                                      ;; 05:4b43 $2a
    ld   [wCurrentMap.low], A                          ;; 05:4b44 $ea $43 $c1
    ld   A, [HL+]                                      ;; 05:4b47 $2a
    cp   A, $00                                        ;; 05:4b48 $fe $00
    jr   NZ, .jr_05_4b53                               ;; 05:4b4a $20 $07
    ld   A, $01                                        ;; 05:4b4c $3e $01
    ld   [wC46C], A                                    ;; 05:4b4e $ea $6c $c4
    jr   .jr_05_4b58                                   ;; 05:4b51 $18 $05
.jr_05_4b53:
    ld   A, $00                                        ;; 05:4b53 $3e $00
    ld   [wC46C], A                                    ;; 05:4b55 $ea $6c $c4
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
    ld   [wD2C5], A                                    ;; 05:4bbf $ea $c5 $d2
    ld   A, L                                          ;; 05:4bc2 $7d
    ld   [wD2C6], A                                    ;; 05:4bc3 $ea $c6 $d2
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

data_05_4e49:
    db   $4e, $92, $51, $57, $51, $84, $52, $5d        ;; 05:4e49 ..??????
    db   $55, $4a, $55, $d8, $58, $72, $58, $78        ;; 05:4e51 ????????
    db   $58, $c0, $5a, $70, $5a, $b4, $5a, $d5        ;; 05:4e59 ????????
    db   $5c, $7d, $5d, $de, $5d, $f4, $5f, $2f        ;; 05:4e61 ????????
    db   $5f, $b7, $5f, $f2, $65, $46, $66, $31        ;; 05:4e69 ????????
    db   $66, $c9, $67, $62, $6b, $21, $6c, $6a        ;; 05:4e71 ????????
    db   $6c, $f1, $6d, $60                            ;; 05:4e79 ????

data_05_4e7d:
    db   $76, $da, $77, $92, $78, $46, $6f, $a3        ;; 05:4e7d ????????
    db   $4e, $87, $1b, $21, $01, $22, $10, $01        ;; 05:4e85 ????????
    db   $21, $00, $0d, $00, $00, $0c, $93, $1d        ;; 05:4e8d ?????...
    db   $01, $08, $00, $18, $00, $00, $11, $00        ;; 05:4e95 ..Ww...W
    dw   $0070                                         ;; 05:4e9d wW
    db   $88, $03, $00, $00, $00, $70, $00, $30        ;; 05:4e9f w.......
    db   $2c, $04, $a4, $0c, $20, $06, $05, $05        ;; 05:4ea7 ........
    db   $12, $1e, $10, $38, $01, $00, $01, $10        ;; 05:4eaf ......w.
    db   $58, $04, $03, $01, $13, $01, $10, $08        ;; 05:4eb7 ...w....
    db   $03, $02, $01, $0f, $01, $13, $00, $12        ;; 05:4ebf ........
    db   $14, $10, $18, $03, $02, $01, $12, $14        ;; 05:4ec7 ........
    db   $10, $00, $01, $00, $01, $12, $14, $10        ;; 05:4ecf .w......
    db   $00, $02, $01, $01, $12, $14, $10, $00        ;; 05:4ed7 w......w
    db   $01, $00, $01, $12, $14, $10, $00, $02        ;; 05:4edf ......w.
    db   $01, $01, $12, $14, $10, $40, $03, $02        ;; 05:4ee7 ........
    db   $01, $10, $38, $02, $01, $01, $12, $1e        ;; 05:4eef ........
    db   $10, $00, $01, $00, $01, $12, $1e, $10        ;; 05:4ef7 .w......
    db   $00, $02, $01, $01, $12, $1e, $10, $00        ;; 05:4eff w......w
    db   $01, $00, $01, $12, $1e, $10, $00, $02        ;; 05:4f07 ......w.
    db   $01, $01, $12, $1e, $10, $00, $01, $00        ;; 05:4f0f .....w..
    db   $01, $12, $1e, $10, $00, $02, $01, $01        ;; 05:4f17 ....w...
    db   $0c, $0e, $01, $00, $10, $04, $04, $01        ;; 05:4f1f ........
    db   $12, $1e, $10, $00, $03, $01, $01, $12        ;; 05:4f27 ...w....
    db   $1e, $04, $00, $00, $01, $18, $01, $12        ;; 05:4f2f ........
    db   $3c, $04, $00, $00, $00, $18, $01, $12        ;; 05:4f37 ........
    db   $0a, $02, $00, $14, $10, $0c, $03, $02        ;; 05:4f3f ........
    db   $02, $01, $00, $0c, $04, $04, $02, $0c        ;; 05:4f47 ........
    db   $09, $06, $01, $0a, $10, $08, $03, $03        ;; 05:4f4f ........
    db   $02, $01, $00, $08, $04, $03, $02, $12        ;; 05:4f57 w.......
    db   $08, $10, $08, $03, $02, $02, $01, $00        ;; 05:4f5f ........
    db   $08, $04, $04, $02, $0c, $09, $06, $01        ;; 05:4f67 ........
    db   $0a, $1e, $12, $0a, $1d, $00, $03, $00        ;; 05:4f6f ........
    db   $12, $14, $0c, $17, $12, $14, $02, $01        ;; 05:4f77 ........
    db   $14, $0c, $93, $12, $1e, $10, $18, $04        ;; 05:4f7f ........
    db   $03, $01, $00, $00, $00, $48, $00, $28        ;; 05:4f87 .w......
    db   $03, $04, $60, $12, $01, $02, $02, $14        ;; 05:4f8f ........
    db   $21, $01, $22, $10, $02, $21, $00, $12        ;; 05:4f97 ........
    db   $0a, $10, $00, $03, $02, $01, $01, $00        ;; 05:4f9f ..w.....
    db   $60, $04, $04, $01, $10, $00, $02, $03        ;; 05:4fa7 .....w..
    db   $01, $01, $00, $00, $01, $01, $00, $00        ;; 05:4faf ........
    db   $01, $00, $48, $00, $28, $1f, $04, $40        ;; 05:4fb7 ........
    db   $01, $01, $50, $04, $04, $01, $12, $01        ;; 05:4fbf ........
    db   $01, $01, $00, $01, $01, $00, $12, $0a        ;; 05:4fc7 ........
    db   $10, $00, $02, $01, $01, $12, $01, $04        ;; 05:4fcf .w......
    db   $00, $00, $00, $08, $01, $02, $03, $14        ;; 05:4fd7 ........
    db   $04, $00, $00, $01, $08, $01, $10, $18        ;; 05:4fdf ........
    db   $02, $01, $01, $04, $00, $00, $00, $08        ;; 05:4fe7 ........
    db   $01, $02, $04, $02, $05, $02, $06, $02        ;; 05:4fef ........
    db   $07, $14, $04, $00, $00, $01, $08, $01        ;; 05:4ff7 ........
    db   $12, $01, $10, $50, $01, $00, $01, $03        ;; 05:4fff ......w.
    db   $00, $03, $01, $10, $60, $04, $03, $01        ;; 05:5007 .......w
    db   $13, $01, $12, $0a, $1e, $12, $64, $08        ;; 05:500f ........
    db   $00, $12, $01, $01, $11, $00, $68, $00        ;; 05:5017 Ww...Ww.
    db   $a8, $03, $0e, $00, $00, $00, $50, $00        ;; 05:501f ........
    db   $58, $06, $04, $19, $02, $08, $14, $10        ;; 05:5027 ........
    db   $48, $03, $02, $01, $12, $01, $10, $00        ;; 05:502f .......w
    db   $02, $01, $01, $01, $00, $00, $01, $01        ;; 05:5037 ........
    db   $00, $02, $09, $14, $10, $28, $01, $00        ;; 05:503f ........
    db   $01, $1b, $10, $18, $03, $02, $01, $10        ;; 05:5047 w.......
    db   $08, $01, $00, $00, $1c, $00, $10, $1a        ;; 05:504f ...w....
    db   $12, $1e, $07, $00, $03, $00, $1e, $12        ;; 05:5057 ........
    db   $64, $0c, $18, $12, $c8, $0c, $8e, $07        ;; 05:505f ........
    db   $01, $12, $14, $1c, $01, $10, $10, $00        ;; 05:5067 .......w
    db   $04, $03, $01, $00, $00, $00, $68, $00        ;; 05:506f ........
    db   $a8, $1f, $03, $17, $01, $00, $30, $03        ;; 05:5077 ........
    db   $03, $01, $10, $30, $04, $03, $01, $10        ;; 05:507f ......w.
    db   $08, $02, $01, $01, $01, $00, $00, $01        ;; 05:5087 ........
    db   $01, $00, $02, $0a, $14, $10, $18, $04        ;; 05:508f ........
    db   $03, $01, $01, $00, $00, $04, $04, $00        ;; 05:5097 .w......
    db   $10, $20, $02, $01, $01, $10, $18, $04        ;; 05:509f ........
    db   $03, $01, $08, $00, $0e, $01, $01, $11        ;; 05:50a7 .w.Ww...
    db   $00, $88, $00, $c0, $03, $10, $20, $03        ;; 05:50af Ww......
    db   $02, $01, $00, $01, $00, $88, $00, $c0        ;; 05:50b7 ........
    db   $1f, $03, $17, $10, $30, $03, $02, $01        ;; 05:50bf ........
    db   $01, $01, $30, $03, $03, $01, $10, $20        ;; 05:50c7 ........
    db   $02, $01, $01, $01, $01, $20, $03, $03        ;; 05:50cf ........
    db   $01, $10, $08, $02, $01, $01, $01, $01        ;; 05:50d7 ........
    db   $08, $02, $02, $01, $0e, $01, $01, $00        ;; 05:50df ........
    db   $03, $00, $00, $12, $01, $10, $00, $03        ;; 05:50e7 ......w.
    db   $00, $01, $12, $14, $02, $0b, $02, $0c        ;; 05:50ef ........
    db   $02, $0d, $02, $0e, $14, $10, $00, $01        ;; 05:50f7 ......w.
    db   $00, $01, $01, $01, $00, $02, $00, $00        ;; 05:50ff ........
    db   $12, $32, $10, $00, $03, $00, $01, $01        ;; 05:5107 ...w....
    db   $01, $00, $03, $00, $00, $02, $0f, $02        ;; 05:510f ........
    db   $10, $02, $11, $14, $10, $18, $04, $03        ;; 05:5117 ........
    db   $01, $10, $28, $01, $00, $01, $10, $40        ;; 05:511f w....w..
    db   $04, $03, $01, $10, $08, $04, $03, $01        ;; 05:5127 ..w.....
    db   $10, $28, $04, $03, $01, $10, $28, $02        ;; 05:512f ....w...
    db   $01, $01, $10, $e8, $04, $03, $01, $10        ;; 05:5137 ......w.
    db   $38, $02, $01, $01, $10, $48, $04, $03        ;; 05:513f ........
    db   $01, $13, $01, $12, $0a, $1e, $12, $46        ;; 05:5147 w.......
    db   $10, $08, $04, $03, $01, $0d, $00, $00        ;; 05:514f ......w.
    db   $0c, $93, $02, $00, $14, $01, $00, $00        ;; 05:5157 ????????
    db   $04, $04, $00, $12, $1e, $01, $00, $20        ;; 05:515f ????????
    db   $04, $04, $01, $09, $02, $25, $00, $12        ;; 05:5167 ????????
    db   $14, $0c, $05, $24, $00, $01, $03, $00        ;; 05:516f ????????
    db   $12, $32, $02, $01, $14, $10, $20, $04        ;; 05:5177 ????????
    db   $03, $01, $0d, $01, $00, $12, $01, $00        ;; 05:517f ????????
    db   $01, $00, $88, $01, $88, $1f, $04, $1a        ;; 05:5187 ????????
    db   $10, $50, $03, $02, $01, $01, $01, $18        ;; 05:518f ????????
    db   $01, $01, $01, $12, $01, $10, $00, $02        ;; 05:5197 ????????
    db   $01, $01, $01, $01, $38, $01, $01, $01        ;; 05:519f ????????
    db   $02, $00, $14, $10, $60, $03, $02, $01        ;; 05:51a7 ????????
    db   $10, $48, $01, $00, $01, $10, $78, $03        ;; 05:51af ????????
    db   $02, $01, $10, $18, $01, $00, $01, $10        ;; 05:51b7 ????????
    db   $30, $03, $02, $01, $10, $08, $03, $02        ;; 05:51bf ????????
    db   $01, $10, $38, $03, $02, $01, $10, $18        ;; 05:51c7 ????????
    db   $02, $01, $01, $10, $10, $03, $02, $01        ;; 05:51cf ????????
    db   $12, $14, $02, $01, $14, $00, $01, $00        ;; 05:51d7 ????????
    db   $88, $00, $c0, $1f, $03, $1e, $01, $01        ;; 05:51df ????????
    db   $60, $03, $03, $01, $0e, $12, $05, $01        ;; 05:51e7 ????????
    db   $01, $08, $02, $02, $01, $02, $02, $14        ;; 05:51ef ????????
    db   $01, $00, $00, $01, $01, $00, $12, $3c        ;; 05:51f7 ????????
    db   $01, $00, $00, $04, $04, $00, $12, $0a        ;; 05:51ff ????????
    db   $02, $03, $14, $10, $10, $04, $03, $01        ;; 05:5207 ????????
    db   $10, $18, $01, $00, $01, $10, $40, $04        ;; 05:520f ????????
    db   $03, $01, $13, $01, $12, $32, $08, $00        ;; 05:5217 ????????
    db   $16, $01, $00, $11, $00, $a0, $00, $60        ;; 05:521f ????????
    db   $04, $10, $40, $04, $03, $01, $10, $50        ;; 05:5227 ????????
    db   $02, $01, $01, $10, $20, $03, $02, $01        ;; 05:522f ????????
    db   $10, $18, $01, $00, $01, $10, $38, $03        ;; 05:5237 ????????
    db   $02, $01, $12, $0a, $02, $04, $14, $12        ;; 05:523f ????????
    db   $32, $02, $05, $14, $10, $38, $04, $03        ;; 05:5247 ????????
    db   $01, $10, $28, $02, $01, $01, $10, $08        ;; 05:524f ????????
    db   $04, $03, $01, $0d, $02, $00, $18, $03        ;; 05:5257 ????????
    db   $12, $01, $03, $00, $00, $01, $00, $58        ;; 05:525f ????????
    db   $00, $38, $00, $01, $01, $00, $02, $00        ;; 05:5267 ????????
    db   $70, $00, $38, $22, $02, $38, $10, $40        ;; 05:526f ????????
    db   $03, $02, $01, $10, $10, $02, $01, $01        ;; 05:5277 ????????
    db   $04, $01, $14, $00, $00, $01, $04, $00        ;; 05:527f ????????
    db   $00, $01, $58, $01, $02, $00, $02, $01        ;; 05:5287 ????????
    db   $02, $02, $02, $03, $14, $12, $1e, $04        ;; 05:528f ????????
    db   $00, $00, $00, $58, $01, $04, $00, $14        ;; 05:5297 ????????
    db   $00, $00, $01, $12, $1e, $00, $03, $00        ;; 05:529f ????????
    db   $98, $00, $e0, $1e, $03, $34, $01, $03        ;; 05:52a7 ????????
    db   $50, $03, $03, $01, $0e, $10, $00, $01        ;; 05:52af ????????
    db   $00, $01, $01, $03, $00, $02, $02, $00        ;; 05:52b7 ????????
    db   $02, $04, $14, $01, $03, $10, $04, $04        ;; 05:52bf ????????
    db   $01, $10, $10, $01, $00, $01, $01, $03        ;; 05:52c7 ????????
    db   $10, $04, $04, $01, $10, $18, $04, $03        ;; 05:52cf ????????
    db   $01, $01, $03, $18, $04, $04, $01, $03        ;; 05:52d7 ????????
    db   $03, $10, $30, $04, $03, $01, $13, $01        ;; 05:52df ????????
    db   $08, $00, $28, $01, $00, $11, $00, $70        ;; 05:52e7 ????????
    db   $00, $d0, $04, $00, $00, $00, $70, $00        ;; 05:52ef ????????
    db   $f0, $1e, $04, $34, $10, $60, $04, $03        ;; 05:52f7 ????????
    db   $01, $01, $00, $60, $04, $04, $01, $10        ;; 05:52ff ????????
    db   $18, $04, $03, $01, $01, $00, $18, $01        ;; 05:5307 ????????
    db   $01, $01, $10, $38, $04, $03, $01, $01        ;; 05:530f ????????
    db   $00, $00, $02, $02, $00, $10, $10, $04        ;; 05:5317 ????????
    db   $03, $01, $00, $00, $00, $80, $00, $68        ;; 05:531f ????????
    db   $0c, $04, $39, $00, $01, $00, $90, $00        ;; 05:5327 ????????
    db   $88, $02, $02, $03, $10, $18, $04, $03        ;; 05:532f ????????
    db   $01, $12, $01, $02, $05, $14, $10, $20        ;; 05:5337 ????????
    db   $04, $03, $01, $12, $01, $02, $06, $14        ;; 05:533f ????????
    db   $10, $18, $04, $03, $01, $10, $30, $02        ;; 05:5347 ????????
    db   $01, $01, $12, $02, $10, $00, $03, $00        ;; 05:534f ????????
    db   $01, $12, $32, $00, $02, $00, $a8, $00        ;; 05:5357 ????????
    db   $50, $1e, $04, $34, $01, $02, $18, $04        ;; 05:535f ????????
    db   $04, $01, $01, $00, $00, $01, $01, $00        ;; 05:5367 ????????
    db   $01, $01, $00, $03, $03, $00, $02, $07        ;; 05:536f ????????
    db   $14, $01, $02, $18, $03, $03, $01, $01        ;; 05:5377 ????????
    db   $00, $18, $01, $01, $01, $01, $01, $18        ;; 05:537f ????????
    db   $01, $01, $01, $0e, $01, $00, $10, $01        ;; 05:5387 ????????
    db   $01, $01, $01, $01, $10, $03, $03, $01        ;; 05:538f ????????
    db   $03, $02, $10, $30, $01, $00, $01, $01        ;; 05:5397 ????????
    db   $00, $30, $03, $03, $01, $01, $01, $30        ;; 05:539f ????????
    db   $03, $03, $01, $03, $01, $03, $00, $10        ;; 05:53a7 ????????
    db   $58, $03, $02, $01, $10, $10, $03, $02        ;; 05:53af ????????
    db   $01, $10, $48, $03, $02, $01, $10, $88        ;; 05:53b7 ????????
    db   $01, $00, $01, $10, $f0, $03, $02, $01        ;; 05:53bf ????????
    db   $10, $08, $03, $02, $01, $00, $02, $00        ;; 05:53c7 ????????
    db   $40, $00, $38, $00, $04, $01, $0e, $00        ;; 05:53cf ????????
    db   $03, $00, $48, $00, $60, $02, $03, $03        ;; 05:53d7 ????????
    db   $0e, $00, $04, $00, $58, $00, $60, $0c        ;; 05:53df ????????
    db   $03, $39, $10, $70, $03, $02, $01, $12        ;; 05:53e7 ????????
    db   $14, $02, $08, $02, $09, $02, $0a, $14        ;; 05:53ef ????????
    db   $1e, $0c, $10, $06, $0a, $0a, $10, $20        ;; 05:53f7 ????????
    db   $01, $01, $02, $01, $01, $18, $01, $02        ;; 05:53ff ????????
    db   $02, $01, $03, $1c, $02, $01, $02, $01        ;; 05:5407 ????????
    db   $04, $1c, $02, $01, $02, $05, $05, $10        ;; 05:540f ????????
    db   $00, $18, $01, $01, $01, $03, $00, $08        ;; 05:5417 ????????
    db   $01, $01, $01, $04, $00, $08, $01, $01        ;; 05:541f ????????
    db   $00, $05, $00, $50, $00, $60, $13, $04        ;; 05:5427 ????????
    db   $3a, $0c, $92, $12, $14, $01, $01, $10        ;; 05:542f ????????
    db   $01, $01, $01, $02, $0b, $14, $01, $03        ;; 05:5437 ????????
    db   $00, $02, $02, $01, $01, $04, $00, $02        ;; 05:543f ????????
    db   $02, $01, $01, $05, $00, $02, $02, $01        ;; 05:5447 ????????
    db   $0e, $01, $05, $10, $02, $02, $01, $12        ;; 05:544f ????????
    db   $14, $02, $0c, $02, $0d, $14, $01, $05        ;; 05:5457 ????????
    db   $00, $03, $03, $01, $02, $0e, $02, $0f        ;; 05:545f ????????
    db   $14, $01, $03, $0c, $02, $02, $02, $01        ;; 05:5467 ????????
    db   $05, $00, $01, $01, $00, $02, $10, $14        ;; 05:546f ????????
    db   $01, $03, $0c, $02, $02, $02, $0e, $01        ;; 05:5477 ????????
    db   $05, $04, $01, $01, $02, $0c, $0b, $06        ;; 05:547f ????????
    db   $03, $06, $01, $05, $08, $01, $02, $01        ;; 05:5487 ????????
    db   $01, $03, $18, $02, $01, $02, $0c, $09        ;; 05:548f ????????
    db   $01, $03, $20, $02, $01, $02, $01, $04        ;; 05:5497 ????????
    db   $20, $02, $01, $02, $03, $03, $03, $04        ;; 05:549f ????????
    db   $01, $01, $08, $01, $01, $02, $01, $05        ;; 05:54a7 ????????
    db   $08, $03, $03, $02, $0e, $01, $01, $02        ;; 05:54af ????????
    db   $01, $01, $02, $01, $05, $02, $02, $02        ;; 05:54b7 ????????
    db   $02, $06, $03, $06, $01, $01, $10, $01        ;; 05:54bf ????????
    db   $02, $02, $01, $05, $02, $02, $01, $02        ;; 05:54c7 ????????
    db   $0e, $01, $01, $00, $07, $02, $02, $01        ;; 05:54cf ????????
    db   $05, $04, $03, $03, $02, $02, $11, $02        ;; 05:54d7 ????????
    db   $12, $0c, $09, $03, $02, $14, $01, $05        ;; 05:54df ????????
    db   $00, $04, $04, $00, $12, $14, $02, $13        ;; 05:54e7 ????????
    db   $14, $0c, $10, $06, $0a, $05, $03, $05        ;; 05:54ef ????????
    db   $00, $06, $00, $40, $00, $50, $2c, $04        ;; 05:54f7 ????????
    db   $a4, $00, $07, $00, $50, $00, $60, $2c        ;; 05:54ff ????????
    db   $04, $a4, $00, $08, $00, $60, $00, $50        ;; 05:5507 ????????
    db   $2c, $04, $a4, $12, $0a, $10, $40, $01        ;; 05:550f ????????
    db   $00, $01, $10, $08, $03, $02, $01, $01        ;; 05:5517 ????????
    db   $01, $08, $01, $01, $01, $09, $03, $12        ;; 05:551f ????????
    db   $1e, $0c, $05, $03, $06, $03, $07, $03        ;; 05:5527 ????????
    db   $08, $01, $00, $08, $04, $04, $01, $02        ;; 05:552f ????????
    db   $14, $02, $15, $14, $12, $1e, $10, $78        ;; 05:5537 ????????
    db   $04, $03, $01, $10, $10, $04, $03, $01        ;; 05:553f ????????
    db   $0d, $03, $00, $00, $00, $00, $78, $00        ;; 05:5547 ????????
    db   $88, $13, $04, $3a, $10, $30, $03, $02        ;; 05:554f ????????
    db   $01, $0e, $01, $00, $10, $04, $04, $01        ;; 05:5557 ????????
    db   $04, $00, $00, $01, $18, $01, $12, $0a        ;; 05:555f ????????
    db   $02, $00, $14, $12, $0a, $01, $00, $10        ;; 05:5567 ????????
    db   $04, $04, $01, $09, $04, $25, $00, $06        ;; 05:556f ????????
    db   $01, $0a, $0c, $05, $24, $00, $00, $03        ;; 05:5577 ????????
    db   $00, $00, $00, $00, $90, $00, $28, $00        ;; 05:557f ????????
    db   $04, $01, $01, $00, $58, $04, $04, $01        ;; 05:5587 ????????
    db   $10, $18, $03, $02, $01, $01, $00, $20        ;; 05:558f ????????
    db   $04, $04, $01, $10, $00, $01, $00, $01        ;; 05:5597 ????????
    db   $0e, $01, $00, $00, $02, $02, $01, $02        ;; 05:559f ????????
    db   $01, $02, $02, $02, $03, $15, $00, $14        ;; 05:55a7 ????????
    db   $10, $08, $04, $03, $01, $10, $18, $04        ;; 05:55af ????????
    db   $03, $01, $01, $00, $18, $02, $02, $01        ;; 05:55b7 ????????
    db   $10, $30, $04, $03, $01, $01, $00, $30        ;; 05:55bf ????????
    db   $04, $04, $01, $08, $00, $2b, $01, $01        ;; 05:55c7 ????????
    db   $11, $00, $50, $00, $60, $03, $0d, $04        ;; 05:55cf ????????
    db   $00, $08, $00, $3b, $01, $01, $11, $01        ;; 05:55d7 ????????
    db   $10, $05, $a8, $04, $10, $08, $04, $03        ;; 05:55df ????????
    db   $01, $10, $08, $02, $01, $01, $0f, $00        ;; 05:55e7 ????????
    db   $00, $01, $01, $10, $05, $a8, $25, $04        ;; 05:55ef ????????
    db   $3e, $12, $0a, $01, $01, $08, $04, $04        ;; 05:55f7 ????????
    db   $01, $0e, $01, $01, $08, $02, $02, $01        ;; 05:55ff ????????
    db   $03, $01, $1d, $01, $0c, $97, $01, $00        ;; 05:5607 ????????
    db   $20, $02, $02, $01, $0e, $01, $00, $10        ;; 05:560f ????????
    db   $03, $03, $01, $0e, $01, $00, $20, $02        ;; 05:5617 ????????
    db   $02, $01, $08, $00, $3e, $00, $00, $11        ;; 05:561f ????????
    db   $03, $78, $03, $78, $04, $00, $00, $03        ;; 05:5627 ????????
    db   $c8, $03, $78, $2e, $02, $a4, $01, $00        ;; 05:562f ????????
    db   $a0, $02, $02, $01, $13, $01, $08, $00        ;; 05:5637 ????????
    db   $87, $00, $00, $11, $00, $30, $00, $68        ;; 05:563f ????????
    db   $01, $00, $00, $00, $a0, $00, $50, $09        ;; 05:5647 ????????
    db   $01, $3f, $00, $01, $00, $40, $00, $48        ;; 05:564f ????????
    db   $25, $02, $3e, $12, $32, $0f, $01, $12        ;; 05:5657 ????????
    db   $0a, $10, $38, $01, $00, $01, $01, $00        ;; 05:565f ????????
    db   $18, $04, $04, $01, $0e, $01, $00, $10        ;; 05:5667 ????????
    db   $02, $02, $01, $02, $00, $14, $01, $01        ;; 05:566f ????????
    db   $20, $01, $01, $01, $0e, $01, $01, $08        ;; 05:5677 ????????
    db   $04, $04, $01, $10, $00, $03, $01, $01        ;; 05:567f ????????
    db   $02, $01, $14, $12, $14, $0c, $1b, $05        ;; 05:5687 ????????
    db   $1e, $10, $00, $01, $00, $01, $01, $00        ;; 05:568f ????????
    db   $00, $01, $01, $01, $01, $01, $00, $02        ;; 05:5697 ????????
    db   $02, $01, $12, $14, $10, $00, $02, $00        ;; 05:569f ????????
    db   $01, $01, $00, $00, $02, $01, $01, $01        ;; 05:56a7 ????????
    db   $01, $00, $01, $02, $01, $12, $14, $10        ;; 05:56af ????????
    db   $00, $01, $00, $01, $01, $00, $00, $01        ;; 05:56b7 ????????
    db   $01, $01, $01, $01, $00, $02, $02, $01        ;; 05:56bf ????????
    db   $12, $14, $10, $00, $04, $00, $01, $01        ;; 05:56c7 ????????
    db   $00, $00, $04, $01, $01, $01, $01, $00        ;; 05:56cf ????????
    db   $04, $02, $01, $12, $14, $0c, $1b, $05        ;; 05:56d7 ????????
    db   $1e, $13, $01, $0c, $91, $08, $00, $3e        ;; 05:56df ????????
    db   $00, $00, $11, $03, $78, $03, $78, $04        ;; 05:56e7 ????????
    db   $00, $00, $03, $c8, $03, $60, $2e, $02        ;; 05:56ef ????????
    db   $a4, $00, $01, $03, $88, $03, $28, $2f        ;; 05:56f7 ????????
    db   $04, $a4, $01, $00, $10, $02, $02, $01        ;; 05:56ff ????????
    db   $0e, $01, $00, $30, $02, $02, $01, $01        ;; 05:5707 ????????
    db   $01, $30, $04, $04, $01, $0c, $1b, $05        ;; 05:570f ????????
    db   $1e, $13, $01, $08, $00, $87, $01, $00        ;; 05:5717 ????????
    db   $11, $00, $68, $00, $68, $04, $00, $00        ;; 05:571f ????????
    db   $00, $90, $00, $68, $09, $04, $3f, $00        ;; 05:5727 ????????
    db   $01, $00, $60, $00, $50, $25, $04, $3e        ;; 05:572f ????????
    db   $0c, $1b, $05, $1e, $10, $10, $01, $00        ;; 05:5737 ????????
    db   $01, $10, $50, $04, $03, $01, $12, $01        ;; 05:573f ????????
    db   $00, $00, $00, $e0, $00, $38, $01, $01        ;; 05:5747 ????????
    db   $02, $00, $01, $00, $d0, $00, $28, $28        ;; 05:574f ????????
    db   $01, $3d, $10, $78, $02, $01, $01, $12        ;; 05:5757 ????????
    db   $0a, $02, $02, $14, $10, $20, $02, $01        ;; 05:575f ????????
    db   $01, $12, $01, $10, $00, $03, $02, $01        ;; 05:5767 ????????
    db   $01, $00, $00, $04, $04, $01, $01, $01        ;; 05:576f ????????
    db   $00, $04, $04, $01, $12, $0a, $02, $03        ;; 05:5777 ????????
    db   $14, $10, $10, $03, $02, $01, $12, $0a        ;; 05:577f ????????
    db   $02, $04, $14, $1d, $00, $12, $0a, $09        ;; 05:5787 ????????
    db   $05, $1d, $01, $02, $05, $14, $12, $01        ;; 05:578f ????????
    db   $00, $02, $01, $60, $00, $60, $09, $04        ;; 05:5797 ????????
    db   $3f, $01, $02, $28, $02, $02, $01, $0e        ;; 05:579f ????????
    db   $01, $02, $10, $03, $03, $01, $0e, $01        ;; 05:57a7 ????????
    db   $02, $48, $02, $02, $01, $0e, $01, $02        ;; 05:57af ????????
    db   $00, $03, $03, $01, $02, $06, $14, $0c        ;; 05:57b7 ????????
    db   $1b, $05, $14, $08, $00, $3e, $00, $00        ;; 05:57bf ????????
    db   $11, $03, $78, $03, $78, $04, $00, $00        ;; 05:57c7 ????????
    db   $03, $88, $03, $60, $2e, $02, $a4, $00        ;; 05:57cf ????????
    db   $01, $03, $88, $03, $50, $2f, $04, $a4        ;; 05:57d7 ????????
    db   $00, $02, $03, $c8, $03, $50, $31, $02        ;; 05:57df ????????
    db   $a4, $01, $02, $30, $02, $02, $01, $0c        ;; 05:57e7 ????????
    db   $1b, $05, $14, $02, $07, $14, $0c, $1c        ;; 05:57ef ????????
    db   $01, $01, $78, $04, $02, $01, $13, $01        ;; 05:57f7 ????????
    db   $0c, $97, $08, $00, $86, $01, $00, $11        ;; 05:57ff ????????
    db   $00, $e0, $00, $50, $03, $00, $00, $00        ;; 05:5807 ????????
    db   $f0, $00, $50, $09, $03, $3f, $12, $14        ;; 05:580f ????????
    db   $10, $00, $01, $00, $01, $01, $00, $00        ;; 05:5817 ????????
    db   $02, $02, $01, $02, $08, $14, $08, $00        ;; 05:581f ????????
    db   $3e, $00, $00, $11, $03, $78, $03, $78        ;; 05:5827 ????????
    db   $04, $00, $00, $03, $c8, $03, $78, $2e        ;; 05:582f ????????
    db   $02, $a4, $01, $00, $a0, $02, $02, $01        ;; 05:5837 ????????
    db   $08, $00, $3e, $00, $00, $11, $03, $c8        ;; 05:583f ????????
    db   $01, $98, $02, $00, $00, $03, $f0, $01        ;; 05:5847 ????????
    db   $f0, $2e, $03, $a4, $01, $00, $20, $03        ;; 05:584f ????????
    db   $03, $01, $0e, $01, $00, $18, $02, $02        ;; 05:5857 ????????
    db   $01, $0e, $01, $00, $38, $03, $03, $01        ;; 05:585f ????????
    db   $12, $0a, $0c, $81, $1d, $00, $0f, $01        ;; 05:5867 ????????
    db   $0d, $05, $00, $02, $01, $14, $0d, $06        ;; 05:586f ????????
    db   $00, $08, $00, $62, $01, $00, $11, $00        ;; 05:5877 ????????
    db   $68, $00, $88, $01, $00, $00, $00, $78        ;; 05:587f ????????
    db   $00, $88, $0e, $02, $4f, $18, $06, $02        ;; 05:5887 ????????
    db   $05, $14, $01, $00, $00, $03, $03, $01        ;; 05:588f ????????
    db   $12, $32, $0c, $1b, $05, $32, $12, $32        ;; 05:5897 ????????
    db   $10, $10, $02, $01, $01, $10, $38, $04        ;; 05:589f ????????
    db   $03, $01, $10, $48, $02, $01, $01, $10        ;; 05:58a7 ????????
    db   $38, $04, $03, $01, $10, $c8, $01, $00        ;; 05:58af ????????
    db   $01, $10, $d0, $03, $02, $01, $0d, $07        ;; 05:58b7 ????????
    db   $00, $10, $20, $03, $02, $01, $10, $18        ;; 05:58bf ????????
    db   $02, $01, $01, $10, $48, $03, $02, $01        ;; 05:58c7 ????????
    db   $10, $40, $01, $00, $01, $02, $00, $14        ;; 05:58cf ????????
    db   $0c, $1b, $05, $14, $0c, $1f, $0a, $09        ;; 05:58d7 ????????
    db   $00, $10, $00, $02, $01, $01, $21, $01        ;; 05:58df ????????
    db   $22, $10, $02, $21, $00, $02, $01, $0c        ;; 05:58e7 ????????
    db   $1f, $0a, $02, $09, $0f, $00, $0a, $0a        ;; 05:58ef ????????
    db   $0b, $12, $1e, $13, $01, $1e, $12, $64        ;; 05:58f7 ????????
    db   $08, $00, $8b, $01, $00, $11, $00, $a0        ;; 05:58ff ????????
    db   $00, $c0, $14, $00, $00, $00, $60, $00        ;; 05:5907 ????????
    db   $60, $2b, $04, $5f, $12, $50, $01, $00        ;; 05:590f ????????
    db   $48, $04, $04, $01, $0e, $01, $00, $18        ;; 05:5917 ????????
    db   $01, $01, $01, $0e, $01, $00, $18, $04        ;; 05:591f ????????
    db   $04, $01, $0e, $01, $00, $10, $01, $01        ;; 05:5927 ????????
    db   $01, $02, $02, $14, $06, $01, $0a, $06        ;; 05:592f ????????
    db   $01, $1e, $06, $01, $32, $10, $00, $02        ;; 05:5937 ????????
    db   $01, $01, $12, $14, $10, $00, $01, $00        ;; 05:593f ????????
    db   $01, $12, $14, $10, $00, $02, $01, $01        ;; 05:5947 ????????
    db   $12, $0a, $02, $03, $02, $04, $14, $01        ;; 05:594f ????????
    db   $00, $10, $02, $02, $01, $0e, $01, $00        ;; 05:5957 ????????
    db   $18, $03, $03, $01, $0e, $01, $00, $00        ;; 05:595f ????????
    db   $04, $04, $01, $12, $1e, $10, $18, $02        ;; 05:5967 ????????
    db   $01, $01, $01, $00, $18, $02, $02, $01        ;; 05:596f ????????
    db   $10, $10, $02, $01, $01, $01, $00, $10        ;; 05:5977 ????????
    db   $03, $03, $01, $10, $18, $03, $02, $01        ;; 05:597f ????????
    db   $01, $00, $18, $03, $03, $01, $10, $18        ;; 05:5987 ????????
    db   $02, $01, $01, $01, $00, $18, $03, $03        ;; 05:598f ????????
    db   $01, $10, $08, $03, $02, $01, $01, $00        ;; 05:5997 ????????
    db   $08, $02, $02, $01, $10, $18, $03, $02        ;; 05:599f ????????
    db   $01, $01, $00, $18, $03, $03, $01, $03        ;; 05:59a7 ????????
    db   $00, $10, $20, $03, $02, $01, $10, $08        ;; 05:59af ????????
    db   $02, $01, $01, $10, $10, $03, $02, $01        ;; 05:59b7 ????????
    db   $01, $01, $00, $02, $02, $01, $10, $08        ;; 05:59bf ????????
    db   $03, $02, $01, $02, $05, $14, $10, $18        ;; 05:59c7 ????????
    db   $03, $02, $01, $01, $01, $00, $04, $04        ;; 05:59cf ????????
    db   $01, $10, $18, $01, $00, $01, $10, $08        ;; 05:59d7 ????????
    db   $03, $02, $01, $02, $06, $02, $07, $01        ;; 05:59df ????????
    db   $01, $00, $02, $02, $01, $02, $08, $02        ;; 05:59e7 ????????
    db   $09, $12, $01, $10, $00, $01, $02, $01        ;; 05:59ef ????????
    db   $02, $0a, $10, $00, $03, $02, $01, $02        ;; 05:59f7 ????????
    db   $0b, $02, $0c, $14, $12, $32, $0c, $0f        ;; 05:59ff ????????
    db   $06, $03, $0a, $08, $00, $5a, $01, $01        ;; 05:5a07 ????????
    db   $11, $00, $d8, $01, $e0, $03, $03, $03        ;; 05:5a0f ????????
    db   $00, $03, $00, $d8, $01, $20, $37, $04        ;; 05:5a17 ????????
    db   $4f, $06, $03, $0a, $12, $14, $10, $50        ;; 05:5a1f ????????
    db   $03, $02, $01, $01, $03, $58, $04, $04        ;; 05:5a27 ????????
    db   $01, $02, $0d, $02, $0e, $02, $0f, $14        ;; 05:5a2f ????????
    db   $10, $50, $03, $02, $01, $01, $03, $50        ;; 05:5a37 ????????
    db   $03, $03, $01, $12, $14, $01, $03, $08        ;; 05:5a3f ????????
    db   $03, $03, $01, $12, $32, $01, $03, $00        ;; 05:5a47 ????????
    db   $05, $05, $01, $12, $96, $0c, $15, $06        ;; 05:5a4f ????????
    db   $05, $0a, $08, $00, $5a, $01, $01, $11        ;; 05:5a57 ????????
    db   $00, $d8, $01, $40, $03, $01, $03, $10        ;; 05:5a5f ????????
    db   $04, $04, $01, $02, $10, $14, $0d, $08        ;; 05:5a67 ????????
    db   $00, $0c, $1b, $05, $1e, $10, $00, $02        ;; 05:5a6f ????????
    db   $01, $01, $12, $14, $10, $00, $01, $00        ;; 05:5a77 ????????
    db   $01, $12, $14, $10, $00, $02, $01, $01        ;; 05:5a7f ????????
    db   $12, $0a, $0b, $00, $10, $00, $03, $02        ;; 05:5a87 ????????
    db   $01, $12, $14, $21, $01, $22, $10, $02        ;; 05:5a8f ????????
    db   $21, $00, $12, $1e, $02, $00, $14, $09        ;; 05:5a97 ????????
    db   $06, $02, $01, $14, $0b, $01, $12, $32        ;; 05:5a9f ????????
    db   $10, $78, $03, $02, $01, $10, $08, $04        ;; 05:5aa7 ????????
    db   $03, $01, $0d, $09, $00, $14, $09, $07        ;; 05:5aaf ????????
    db   $12, $14, $02, $01, $14, $01, $00, $10        ;; 05:5ab7 ????????
    db   $01, $01, $01, $0e, $01, $00, $58, $04        ;; 05:5abf ????????
    db   $04, $01, $0e, $01, $00, $78, $02, $02        ;; 05:5ac7 ????????
    db   $01, $03, $00, $0d, $0a, $00, $00, $00        ;; 05:5acf ????????
    db   $00, $90, $01, $78, $15, $01, $6c, $00        ;; 05:5ad7 ????????
    db   $01, $00, $b0, $01, $78, $05, $02, $68        ;; 05:5adf ????????
    db   $04, $01, $50, $00, $00, $01, $12, $32        ;; 05:5ae7 ????????
    db   $04, $00, $50, $00, $00, $01, $12, $0a        ;; 05:5aef ????????
    db   $10, $60, $02, $01, $01, $10, $08, $03        ;; 05:5af7 ????????
    db   $02, $01, $02, $00, $02, $01, $14, $01        ;; 05:5aff ????????
    db   $00, $04, $01, $01, $02, $01, $01, $04        ;; 05:5b07 ????????
    db   $02, $02, $02, $0c, $09, $06, $01, $05        ;; 05:5b0f ????????
    db   $01, $00, $04, $01, $02, $02, $01, $01        ;; 05:5b17 ????????
    db   $04, $02, $01, $02, $0e, $01, $00, $04        ;; 05:5b1f ????????
    db   $01, $01, $02, $01, $01, $04, $02, $02        ;; 05:5b27 ????????
    db   $02, $0c, $09, $06, $03, $05, $01, $00        ;; 05:5b2f ????????
    db   $04, $01, $02, $02, $01, $01, $04, $02        ;; 05:5b37 ????????
    db   $01, $02, $0e, $01, $00, $04, $01, $01        ;; 05:5b3f ????????
    db   $02, $01, $01, $04, $02, $02, $02, $0c        ;; 05:5b47 ????????
    db   $09, $06, $05, $05, $01, $00, $04, $01        ;; 05:5b4f ????????
    db   $02, $02, $01, $01, $04, $02, $01, $02        ;; 05:5b57 ????????
    db   $02, $02, $14, $12, $0a, $10, $20, $02        ;; 05:5b5f ????????
    db   $01, $01, $10, $10, $03, $02, $01, $01        ;; 05:5b67 ????????
    db   $00, $00, $04, $04, $01, $10, $08, $03        ;; 05:5b6f ????????
    db   $02, $01, $12, $0a, $09, $08, $01, $00        ;; 05:5b77 ????????
    db   $00, $07, $07, $01, $25, $00, $12, $0a        ;; 05:5b7f ????????
    db   $02, $03, $14, $0c, $05, $24, $00, $01        ;; 05:5b87 ????????
    db   $03, $00, $12, $1e, $02, $04, $14, $15        ;; 05:5b8f ????????
    db   $01, $12, $01, $00, $00, $01, $40, $01        ;; 05:5b97 ????????
    db   $a8, $0e, $02, $4f, $01, $01, $20, $02        ;; 05:5b9f ????????
    db   $02, $01, $10, $00, $02, $01, $01, $01        ;; 05:5ba7 ????????
    db   $00, $38, $02, $02, $01, $01, $01, $38        ;; 05:5baf ????????
    db   $02, $02, $01, $0e, $01, $00, $20, $02        ;; 05:5bb7 ????????
    db   $02, $01, $01, $01, $38, $03, $03, $01        ;; 05:5bbf ????????
    db   $03, $01, $12, $50, $01, $00, $28, $02        ;; 05:5bc7 ????????
    db   $02, $01, $0e, $01, $00, $20, $03, $03        ;; 05:5bcf ????????
    db   $01, $0e, $01, $00, $10, $02, $02, $01        ;; 05:5bd7 ????????
    db   $12, $0a, $10, $08, $01, $00, $01, $12        ;; 05:5bdf ????????
    db   $0a, $02, $05, $02, $06, $14, $12, $1e        ;; 05:5be7 ????????
    db   $0c, $0f, $06, $05, $0a, $13, $01, $1e        ;; 05:5bef ????????
    db   $12, $64, $08, $00, $8b, $00, $00, $11        ;; 05:5bf7 ????????
    db   $00, $58, $00, $78, $04, $06, $03, $0a        ;; 05:5bff ????????
    db   $0f, $01, $12, $32, $10, $20, $03, $02        ;; 05:5c07 ????????
    db   $01, $10, $08, $03, $02, $01, $10, $18        ;; 05:5c0f ????????
    db   $03, $02, $01, $10, $18, $01, $00, $01        ;; 05:5c17 ????????
    db   $10, $08, $03, $02, $01, $12, $1e, $02        ;; 05:5c1f ????????
    db   $07, $14, $12, $1e, $10, $20, $02, $01        ;; 05:5c27 ????????
    db   $01, $10, $28, $03, $02, $01, $10, $28        ;; 05:5c2f ????????
    db   $02, $01, $01, $10, $08, $03, $02, $01        ;; 05:5c37 ????????
    db   $10, $08, $03, $02, $01, $10, $18, $03        ;; 05:5c3f ????????
    db   $02, $01, $10, $40, $02, $01, $01, $10        ;; 05:5c47 ????????
    db   $10, $04, $03, $01, $12, $1e, $1e, $0c        ;; 05:5c4f ????????
    db   $0f, $06, $05, $0a, $08, $00, $84, $00        ;; 05:5c57 ????????
    db   $01, $11, $00, $e8, $00, $48, $01, $12        ;; 05:5c5f ????????
    db   $32, $06, $03, $0a, $0f, $01, $12, $0a        ;; 05:5c67 ????????
    db   $02, $08, $02, $09, $02, $0a, $02, $0b        ;; 05:5c6f ????????
    db   $02, $0c, $14, $0d, $0b, $00, $0c, $1b        ;; 05:5c77 ????????
    db   $05, $32, $10, $28, $04, $03, $01, $0c        ;; 05:5c7f ????????
    db   $92, $12, $01, $00, $01, $00, $78, $00        ;; 05:5c87 ????????
    db   $38, $2c, $01, $a4, $10, $48, $02, $01        ;; 05:5c8f ????????
    db   $01, $12, $14, $0c, $1b, $05, $32, $01        ;; 05:5c97 ????????
    db   $00, $28, $02, $02, $01, $02, $00, $14        ;; 05:5c9f ????????
    db   $10, $28, $02, $01, $01, $04, $01, $58        ;; 05:5ca7 ????????
    db   $00, $00, $01, $12, $1e, $04, $00, $58        ;; 05:5caf ????????
    db   $00, $00, $01, $01, $01, $30, $01, $01        ;; 05:5cb7 ????????
    db   $01, $10, $20, $02, $01, $01, $01, $01        ;; 05:5cbf ????????
    db   $20, $01, $01, $01, $10, $18, $03, $02        ;; 05:5cc7 ????????
    db   $01, $01, $01, $18, $01, $01, $01, $09        ;; 05:5ccf ????????
    db   $09, $12, $14, $0c, $05, $03, $01, $0c        ;; 05:5cd7 ????????
    db   $97, $01, $00, $10, $02, $02, $01, $02        ;; 05:5cdf ????????
    db   $01, $14, $10, $00, $01, $00, $01, $12        ;; 05:5ce7 ????????
    db   $32, $1d, $01, $13, $01, $08, $00, $3e        ;; 05:5cef ????????
    db   $00, $00, $11, $03, $78, $03, $78, $04        ;; 05:5cf7 ????????
    db   $00, $00, $03, $c8, $03, $78, $2f, $02        ;; 05:5cff ????????
    db   $a4, $01, $00, $50, $02, $02, $01, $1d        ;; 05:5d07 ????????
    db   $00, $01, $00, $60, $03, $03, $01, $08        ;; 05:5d0f ????????
    db   $00, $88, $00, $00, $11, $01, $d0, $01        ;; 05:5d17 ????????
    db   $f0, $03, $00, $00, $01, $d0, $01, $f0        ;; 05:5d1f ????????
    db   $01, $03, $02, $01, $00, $18, $03, $03        ;; 05:5d27 ????????
    db   $01, $0f, $01, $10, $10, $03, $02, $01        ;; 05:5d2f ????????
    db   $01, $00, $10, $03, $03, $01, $0e, $01        ;; 05:5d37 ????????
    db   $00, $00, $04, $04, $01, $02, $02, $14        ;; 05:5d3f ????????
    db   $01, $00, $30, $03, $03, $01, $0e, $01        ;; 05:5d47 ????????
    db   $00, $30, $02, $02, $01, $0e, $01, $00        ;; 05:5d4f ????????
    db   $28, $03, $03, $01, $0e, $01, $00, $08        ;; 05:5d57 ????????
    db   $03, $03, $01, $03, $00, $10, $30, $03        ;; 05:5d5f ????????
    db   $02, $01, $10, $30, $02, $01, $01, $10        ;; 05:5d67 ????????
    db   $40, $03, $02, $01, $10, $08, $03, $02        ;; 05:5d6f ????????
    db   $01, $10, $18, $03, $02, $01, $10, $10        ;; 05:5d77 ????????
    db   $01, $00, $01, $10, $08, $03, $02, $01        ;; 05:5d7f ????????
    db   $02, $03, $10, $00, $01, $01, $01, $01        ;; 05:5d87 ????????
    db   $01, $00, $02, $02, $01, $02, $04, $01        ;; 05:5d8f ????????
    db   $00, $00, $01, $01, $01, $02, $05, $10        ;; 05:5d97 ????????
    db   $00, $03, $03, $01, $02, $06, $01, $00        ;; 05:5d9f ????????
    db   $00, $04, $04, $01, $02, $07, $10, $00        ;; 05:5da7 ????????
    db   $03, $03, $01, $02, $08, $02, $09, $12        ;; 05:5daf ????????
    db   $05, $10, $00, $01, $00, $01, $02, $0a        ;; 05:5db7 ????????
    db   $01, $00, $00, $01, $01, $01, $02, $0b        ;; 05:5dbf ????????
    db   $10, $00, $03, $03, $01, $01, $00, $00        ;; 05:5dc7 ????????
    db   $04, $04, $01, $02, $0c, $14, $01, $01        ;; 05:5dcf ????????
    db   $00, $04, $04, $01, $0d, $0c, $00, $14        ;; 05:5dd7 ????????
    db   $09, $0a, $25, $00, $12, $14, $0c, $05        ;; 05:5ddf ????????
    db   $24, $00, $01, $03, $00, $02, $01, $14        ;; 05:5de7 ????????
    db   $15, $02, $0d, $0d, $00, $10, $18, $03        ;; 05:5def ????????
    db   $02, $01, $10, $10, $01, $00, $01, $10        ;; 05:5df7 ????????
    db   $08, $03, $02, $01, $12, $0a, $10, $00        ;; 05:5dff ????????
    db   $01, $02, $01, $01, $01, $00, $02, $02        ;; 05:5e07 ????????
    db   $01, $02, $00, $12, $01, $10, $00, $03        ;; 05:5e0f ????????
    db   $02, $01, $02, $01, $12, $01, $10, $00        ;; 05:5e17 ????????
    db   $01, $02, $01, $02, $02, $01, $00, $00        ;; 05:5e1f ????????
    db   $01, $01, $01, $02, $03, $12, $01, $10        ;; 05:5e27 ????????
    db   $00, $03, $02, $01, $01, $00, $00, $04        ;; 05:5e2f ????????
    db   $04, $01, $02, $04, $02, $05, $01, $00        ;; 05:5e37 ????????
    db   $00, $01, $01, $01, $02, $06, $14, $01        ;; 05:5e3f ????????
    db   $00, $10, $02, $02, $01, $0e, $01, $00        ;; 05:5e47 ????????
    db   $08, $04, $04, $01, $0e, $01, $00, $20        ;; 05:5e4f ????????
    db   $02, $02, $01, $0e, $01, $00, $10, $03        ;; 05:5e57 ????????
    db   $03, $01, $03, $00, $10, $30, $02, $01        ;; 05:5e5f ????????
    db   $01, $10, $18, $03, $02, $01, $00, $00        ;; 05:5e67 ????????
    db   $00, $58, $00, $68, $09, $01, $3f, $10        ;; 05:5e6f ????????
    db   $18, $03, $02, $01, $10, $20, $02, $01        ;; 05:5e77 ????????
    db   $01, $10, $08, $04, $03, $01, $10, $20        ;; 05:5e7f ????????
    db   $02, $01, $01, $02, $07, $14, $10, $10        ;; 05:5e87 ????????
    db   $04, $03, $01, $12, $14, $0c, $0f, $06        ;; 05:5e8f ????????
    db   $03, $0a, $13, $01, $03, $00, $1e, $12        ;; 05:5e97 ????????
    db   $32, $08, $00, $8d, $01, $01, $11, $00        ;; 05:5e9f ????????
    db   $60, $00, $70, $03, $10, $10, $03, $02        ;; 05:5ea7 ????????
    db   $01, $10, $40, $01, $00, $01, $10, $30        ;; 05:5eaf ????????
    db   $04, $03, $01, $10, $20, $01, $00, $01        ;; 05:5eb7 ????????
    db   $10, $08, $04, $03, $01, $10, $10, $01        ;; 05:5ebf ????????
    db   $00, $01, $01, $00, $00, $02, $02, $01        ;; 05:5ec7 ????????
    db   $02, $08, $14, $12, $14, $0c, $0f, $06        ;; 05:5ecf ????????
    db   $03, $0a, $08, $00, $5a, $01, $01, $11        ;; 05:5ed7 ????????
    db   $00, $d8, $01, $a0, $03, $03, $03, $00        ;; 05:5edf ????????
    db   $03, $00, $d8, $01, $20, $37, $04, $4f        ;; 05:5ee7 ????????
    db   $10, $40, $03, $02, $01, $0e, $01, $03        ;; 05:5eef ????????
    db   $20, $04, $04, $01, $02, $09, $14, $10        ;; 05:5ef7 ????????
    db   $20, $03, $02, $01, $01, $03, $20, $03        ;; 05:5eff ????????
    db   $03, $01, $12, $1e, $01, $03, $00, $05        ;; 05:5f07 ????????
    db   $05, $01, $12, $96, $0c, $15, $06, $05        ;; 05:5f0f ????????
    db   $0a, $08, $00, $5a, $01, $01, $11, $00        ;; 05:5f17 ????????
    db   $d8, $01, $40, $03, $01, $03, $00, $04        ;; 05:5f1f ????????
    db   $04, $01, $02, $0a, $14, $0d, $0e, $00        ;; 05:5f27 ????????
    db   $10, $08, $04, $03, $01, $12, $0a, $21        ;; 05:5f2f ????????
    db   $01, $22, $10, $02, $21, $00, $12, $14        ;; 05:5f37 ????????
    db   $00, $00, $01, $18, $01, $a0, $03, $04        ;; 05:5f3f ????????
    db   $60, $0c, $92, $04, $00, $00, $00, $5a        ;; 05:5f47 ????????
    db   $01, $12, $32, $01, $00, $00, $03, $03        ;; 05:5f4f ????????
    db   $01, $12, $0a, $02, $00, $14, $04, $00        ;; 05:5f57 ????????
    db   $00, $01, $5a, $01, $10, $08, $04, $02        ;; 05:5f5f ????????
    db   $01, $01, $00, $20, $03, $03, $01, $12        ;; 05:5f67 ????????
    db   $0a, $10, $08, $04, $02, $01, $01, $00        ;; 05:5f6f ????????
    db   $20, $03, $03, $01, $12, $0a, $10, $08        ;; 05:5f77 ????????
    db   $04, $02, $01, $01, $00, $20, $03, $03        ;; 05:5f7f ????????
    db   $01, $10, $00, $04, $03, $01, $09, $0b        ;; 05:5f87 ????????
    db   $12, $1e, $01, $00, $10, $04, $04, $01        ;; 05:5f8f ????????
    db   $10, $08, $04, $03, $01, $04, $00, $00        ;; 05:5f97 ????????
    db   $00, $20, $01, $02, $01, $14, $12, $1e        ;; 05:5f9f ????????
    db   $06, $03, $0a, $03, $00, $04, $00, $00        ;; 05:5fa7 ????????
    db   $01, $20, $01, $0c, $94, $0d, $0f, $00        ;; 05:5faf ????????
    db   $00, $00, $01, $50, $01, $60, $10, $03        ;; 05:5fb7 ????????
    db   $a2, $10, $40, $04, $03, $01, $12, $14        ;; 05:5fbf ????????
    db   $04, $00, $00, $00, $38, $01, $12, $32        ;; 05:5fc7 ????????
    db   $02, $00, $14, $04, $00, $00, $01, $38        ;; 05:5fcf ????????
    db   $01, $12, $1e, $01, $00, $28, $03, $03        ;; 05:5fd7 ????????
    db   $01, $09, $0c, $25, $00, $12, $14, $0c        ;; 05:5fdf ????????
    db   $05, $24, $00, $00, $03, $00, $15, $03        ;; 05:5fe7 ????????
    db   $0d, $10, $00, $08, $00, $82, $01, $00        ;; 05:5fef ????????
    db   $11, $00, $e0, $00, $a8, $02, $00, $00        ;; 05:5ff7 ????????
    db   $01, $00, $00, $a8, $04, $02, $04, $00        ;; 05:5fff ????????
    db   $01, $00, $74, $00, $30, $11, $04, $9d        ;; 05:6007 ????????
    db   $00, $02, $00, $50, $00, $68, $26, $03        ;; 05:600f ????????
    db   $93, $00, $03, $00, $68, $00, $68, $26        ;; 05:6017 ????????
    db   $03, $9f, $00, $04, $00, $80, $00, $68        ;; 05:601f ????????
    db   $27, $03, $9e, $00, $05, $00, $98, $00        ;; 05:6027 ????????
    db   $68, $27, $03, $94, $00, $06, $00, $50        ;; 05:602f ????????
    db   $00, $80, $26, $03, $93, $00, $07, $00        ;; 05:6037 ????????
    db   $68, $00, $80, $26, $03, $9f, $00, $08        ;; 05:603f ????????
    db   $00, $80, $00, $80, $27, $03, $9e, $00        ;; 05:6047 ????????
    db   $09, $00, $98, $00, $80, $27, $03, $94        ;; 05:604f ????????
    db   $10, $10, $03, $02, $01, $10, $08, $02        ;; 05:6057 ????????
    db   $01, $01, $04, $01, $34, $00, $00, $01        ;; 05:605f ????????
    db   $04, $00, $00, $01, $69, $01, $02, $00        ;; 05:6067 ????????
    db   $14, $04, $00, $00, $00, $28, $01, $02        ;; 05:606f ????????
    db   $01, $14, $01, $00, $20, $02, $02, $01        ;; 05:6077 ????????
    db   $04, $00, $00, $00, $51, $01, $04, $00        ;; 05:607f ????????
    db   $34, $00, $00, $01, $10, $00, $04, $04        ;; 05:6087 ????????
    db   $01, $01, $00, $00, $03, $03, $01, $02        ;; 05:608f ????????
    db   $02, $14, $12, $1e, $13, $01, $1e, $12        ;; 05:6097 ????????
    db   $32, $08, $00, $81, $01, $00, $11, $00        ;; 05:609f ????????
    db   $48, $00, $78, $03, $00, $00, $00, $48        ;; 05:60a7 ????????
    db   $00, $30, $03, $03, $60, $12, $32, $10        ;; 05:60af ????????
    db   $28, $03, $02, $01, $12, $1e, $01, $00        ;; 05:60b7 ????????
    db   $00, $04, $04, $01, $02, $03, $02, $04        ;; 05:60bf ????????
    db   $01, $00, $00, $02, $02, $01, $02, $05        ;; 05:60c7 ????????
    db   $01, $00, $00, $04, $04, $01, $02, $06        ;; 05:60cf ????????
    db   $02, $07, $14, $01, $00, $08, $04, $04        ;; 05:60d7 ????????
    db   $01, $12, $0a, $09, $13, $12, $0a, $02        ;; 05:60df ????????
    db   $08, $14, $09, $0d, $01, $00, $00, $08        ;; 05:60e7 ????????
    db   $04, $01, $12, $0a, $10, $08, $03, $02        ;; 05:60ef ????????
    db   $01, $02, $09, $02, $0a, $02, $0b, $02        ;; 05:60f7 ????????
    db   $0c, $02, $0d, $14, $12, $14, $02, $0e        ;; 05:60ff ????????
    db   $14, $06, $01, $0a, $00, $01, $00, $48        ;; 05:6107 ????????
    db   $00, $80, $11, $03, $9d, $00, $02, $00        ;; 05:610f ????????
    db   $48, $00, $70, $12, $03, $a4, $01, $02        ;; 05:6117 ????????
    db   $18, $03, $03, $01, $0c, $09, $06, $03        ;; 05:611f ????????
    db   $05, $10, $10, $01, $01, $02, $05, $0a        ;; 05:6127 ????????
    db   $10, $00, $13, $13, $02, $0c, $13, $01        ;; 05:612f ????????
    db   $01, $20, $03, $03, $01, $01, $02, $10        ;; 05:6137 ????????
    db   $03, $03, $01, $0e, $01, $01, $10, $01        ;; 05:613f ????????
    db   $01, $01, $0e, $01, $01, $18, $03, $03        ;; 05:6147 ????????
    db   $01, $0e, $01, $02, $00, $01, $01, $01        ;; 05:614f ????????
    db   $02, $0f, $01, $01, $00, $02, $02, $01        ;; 05:6157 ????????
    db   $02, $10, $02, $11, $14, $00, $03, $00        ;; 05:615f ????????
    db   $48, $00, $80, $1e, $03, $a4, $01, $03        ;; 05:6167 ????????
    db   $28, $03, $03, $01, $0e, $01, $03, $20        ;; 05:616f ????????
    db   $02, $02, $01, $0e, $01, $03, $00, $03        ;; 05:6177 ????????
    db   $03, $01, $02, $12, $14, $12, $32, $07        ;; 05:617f ????????
    db   $00, $1e, $12, $64, $08, $00, $7f, $00        ;; 05:6187 ????????
    db   $00, $11, $00, $78, $00, $60, $03, $00        ;; 05:618f ????????
    db   $00, $00, $6c, $00, $48, $11, $04, $9d        ;; 05:6197 ????????
    db   $00, $01, $00, $84, $00, $48, $12, $04        ;; 05:619f ????????
    db   $a4, $00, $02, $00, $10, $00, $58, $27        ;; 05:61a7 ????????
    db   $02, $9e, $00, $03, $00, $10, $00, $70        ;; 05:61af ????????
    db   $27, $02, $9e, $1b, $12, $0a, $01, $01        ;; 05:61b7 ????????
    db   $00, $02, $02, $01, $02, $13, $14, $10        ;; 05:61bf ????????
    db   $18, $04, $03, $01, $10, $30, $02, $01        ;; 05:61c7 ????????
    db   $01, $02, $14, $02, $15, $01, $00, $00        ;; 05:61cf ????????
    db   $02, $02, $01, $02, $16, $02, $17, $01        ;; 05:61d7 ????????
    db   $01, $00, $04, $04, $01, $02, $18, $14        ;; 05:61df ????????
    db   $12, $14, $08, $00, $c5, $00, $00, $11        ;; 05:61e7 ????????
    db   $00, $00, $00, $00, $03, $12, $32, $0c        ;; 05:61ef ????????
    db   $1d, $13, $01, $08, $00, $c3, $00, $00        ;; 05:61f7 ????????
    db   $11, $00, $00, $00, $00, $03, $0c, $06        ;; 05:61ff ????????
    db   $12, $32, $0c, $1b, $05, $1e, $08, $00        ;; 05:6207 ????????
    db   $7f, $00, $00, $11, $00, $78, $00, $60        ;; 05:620f ????????
    db   $03, $00, $00, $00, $54, $00, $48, $04        ;; 05:6217 ????????
    db   $02, $04, $00, $01, $00, $6c, $00, $48        ;; 05:621f ????????
    db   $11, $02, $9d, $00, $02, $00, $84, $00        ;; 05:6227 ????????
    db   $48, $12, $02, $a4, $00, $03, $00, $10        ;; 05:622f ????????
    db   $00, $58, $27, $02, $9e, $00, $04, $00        ;; 05:6237 ????????
    db   $10, $00, $70, $27, $02, $9e, $1b, $12        ;; 05:623f ????????
    db   $0a, $02, $19, $14, $10, $18, $04, $03        ;; 05:6247 ????????
    db   $01, $10, $30, $02, $01, $01, $02, $1a        ;; 05:624f ????????
    db   $02, $1b, $02, $1c, $14, $13, $01, $08        ;; 05:6257 ????????
    db   $00, $c4, $00, $00, $11, $00, $00, $00        ;; 05:625f ????????
    db   $00, $03, $12, $32, $08, $00, $7f, $00        ;; 05:6267 ????????
    db   $00, $11, $00, $50, $00, $78, $03, $00        ;; 05:626f ????????
    db   $00, $00, $54, $00, $48, $04, $02, $04        ;; 05:6277 ????????
    db   $00, $01, $00, $6c, $00, $48, $11, $02        ;; 05:627f ????????
    db   $9d, $00, $02, $00, $84, $00, $48, $12        ;; 05:6287 ????????
    db   $02, $a4, $00, $03, $00, $10, $00, $58        ;; 05:628f ????????
    db   $27, $02, $9e, $00, $04, $00, $10, $00        ;; 05:6297 ????????
    db   $70, $27, $02, $9e, $02, $1d, $02, $1e        ;; 05:629f ????????
    db   $01, $00, $00, $04, $04, $01, $02, $1f        ;; 05:62a7 ????????
    db   $01, $00, $00, $01, $01, $01, $02, $20        ;; 05:62af ????????
    db   $14, $12, $0a, $13, $01, $1e, $12, $64        ;; 05:62b7 ????????
    db   $08, $00, $83, $01, $00, $11, $00, $f0        ;; 05:62bf ????????
    db   $00, $a0, $02, $00, $00, $00, $20, $00        ;; 05:62c7 ????????
    db   $a0, $06, $01, $19, $00, $01, $00, $20        ;; 05:62cf ????????
    db   $00, $90, $05, $01, $68, $00, $02, $00        ;; 05:62d7 ????????
    db   $d8, $00, $a0, $26, $02, $a4, $10, $78        ;; 05:62df ????????
    db   $02, $01, $01, $01, $02, $78, $02, $02        ;; 05:62e7 ????????
    db   $01, $0c, $20, $02, $21, $14, $13, $01        ;; 05:62ef ????????
    db   $01, $02, $00, $07, $07, $01, $12, $0a        ;; 05:62f7 ????????
    db   $13, $00, $12, $0a, $03, $02, $01, $00        ;; 05:62ff ????????
    db   $28, $01, $01, $01, $01, $01, $28, $01        ;; 05:6307 ????????
    db   $01, $01, $02, $22, $02, $23, $02, $24        ;; 05:630f ????????
    db   $01, $00, $00, $03, $03, $01, $12, $14        ;; 05:6317 ????????
    db   $01, $00, $00, $01, $01, $01, $02, $25        ;; 05:631f ????????
    db   $01, $01, $00, $04, $04, $01, $12, $14        ;; 05:6327 ????????
    db   $01, $01, $00, $01, $01, $01, $02, $26        ;; 05:632f ????????
    db   $02, $27, $14, $12, $14, $08, $00, $7f        ;; 05:6337 ????????
    db   $00, $00, $11, $00, $d8, $00, $10, $11        ;; 05:633f ????????
    db   $00, $00, $00, $6c, $00, $48, $11, $02        ;; 05:6347 ????????
    db   $9d, $00, $01, $00, $84, $00, $48, $12        ;; 05:634f ????????
    db   $02, $a4, $04, $01, $32, $00, $00, $01        ;; 05:6357 ????????
    db   $12, $14, $04, $00, $32, $00, $00, $01        ;; 05:635f ????????
    db   $12, $01, $00, $02, $00, $d8, $00, $00        ;; 05:6367 ????????
    db   $05, $04, $68, $01, $02, $48, $04, $04        ;; 05:636f ????????
    db   $01, $0e, $01, $02, $18, $02, $02, $01        ;; 05:6377 ????????
    db   $04, $00, $00, $00, $08, $01, $12, $01        ;; 05:637f ????????
    db   $02, $28, $14, $01, $00, $00, $01, $01        ;; 05:6387 ????????
    db   $01, $01, $01, $00, $01, $01, $01, $04        ;; 05:638f ????????
    db   $00, $00, $01, $08, $01, $0f, $01, $10        ;; 05:6397 ????????
    db   $08, $04, $03, $01, $00, $03, $00, $d8        ;; 05:639f ????????
    db   $00, $00, $06, $04, $19, $10, $20, $04        ;; 05:63a7 ????????
    db   $03, $01, $01, $03, $20, $04, $04, $01        ;; 05:63af ????????
    db   $10, $08, $02, $01, $01, $01, $03, $08        ;; 05:63b7 ????????
    db   $04, $04, $01, $0e, $01, $03, $18, $02        ;; 05:63bf ????????
    db   $02, $01, $04, $00, $00, $00, $08, $01        ;; 05:63c7 ????????
    db   $02, $29, $02, $2a, $02, $2b, $02, $2c        ;; 05:63cf ????????
    db   $02, $2d, $02, $2e, $14, $0c, $20, $06        ;; 05:63d7 ????????
    db   $03, $0a, $01, $01, $14, $03, $03, $02        ;; 05:63df ????????
    db   $25, $01, $24, $01, $01, $01, $00, $10        ;; 05:63e7 ????????
    db   $01, $01, $01, $02, $2f, $14, $01, $03        ;; 05:63ef ????????
    db   $0c, $02, $02, $02, $0e, $01, $03, $10        ;; 05:63f7 ????????
    db   $04, $04, $02, $0c, $10, $06, $05, $0a        ;; 05:63ff ????????
    db   $01, $03, $00, $01, $01, $01, $0c, $10        ;; 05:6407 ????????
    db   $06, $05, $0a, $02, $30, $14, $12, $14        ;; 05:640f ????????
    db   $07, $00, $1e, $12, $64, $08, $00, $8c        ;; 05:6417 ????????
    db   $01, $01, $11, $00, $b8, $00, $58, $04        ;; 05:641f ????????
    db   $1a, $1b, $06, $01, $0a, $06, $01, $1e        ;; 05:6427 ????????
    db   $06, $01, $32, $01, $01, $10, $01, $01        ;; 05:642f ????????
    db   $01, $0e, $01, $01, $08, $03, $03, $01        ;; 05:6437 ????????
    db   $12, $14, $01, $01, $00, $02, $02, $01        ;; 05:643f ????????
    db   $04, $00, $00, $01, $08, $01, $02, $31        ;; 05:6447 ????????
    db   $14, $04, $00, $00, $00, $08, $01, $1c        ;; 05:644f ????????
    db   $01, $10, $01, $00, $00, $01, $01, $01        ;; 05:6457 ????????
    db   $10, $10, $04, $03, $01, $10, $08, $02        ;; 05:645f ????????
    db   $01, $01, $04, $00, $00, $00, $08, $01        ;; 05:6467 ????????
    db   $02, $32, $0c, $88, $02, $33, $02, $34        ;; 05:646f ????????
    db   $02, $35, $02, $36, $02, $37, $02, $38        ;; 05:6477 ????????
    db   $14, $12, $14, $0c, $0f, $07, $00, $1e        ;; 05:647f ????????
    db   $12, $64, $08, $00, $00, $01, $00, $11        ;; 05:6487 ????????
    db   $00, $20, $01, $28, $04, $00, $00, $00        ;; 05:648f ????????
    db   $30, $00, $d8, $04, $01, $04, $00, $01        ;; 05:6497 ????????
    db   $00, $a0, $01, $50, $00, $03, $01, $00        ;; 05:649f ????????
    db   $02, $00, $b0, $01, $50, $05, $03, $68        ;; 05:64a7 ????????
    db   $12, $32, $01, $00, $18, $04, $04, $01        ;; 05:64af ????????
    db   $0e, $01, $00, $10, $02, $02, $01, $0e        ;; 05:64b7 ????????
    db   $01, $00, $20, $04, $04, $01, $10, $00        ;; 05:64bf ????????
    db   $03, $01, $01, $02, $39, $14, $01, $00        ;; 05:64c7 ????????
    db   $20, $03, $03, $01, $0e, $01, $00, $10        ;; 05:64cf ????????
    db   $02, $02, $01, $0e, $01, $00, $08, $03        ;; 05:64d7 ????????
    db   $03, $01, $0e, $01, $00, $08, $03, $03        ;; 05:64df ????????
    db   $01, $03, $00, $01, $01, $80, $02, $02        ;; 05:64e7 ????????
    db   $01, $01, $02, $80, $02, $02, $01, $10        ;; 05:64ef ????????
    db   $08, $04, $03, $01, $01, $01, $00, $03        ;; 05:64f7 ????????
    db   $03, $01, $01, $02, $00, $03, $03, $01        ;; 05:64ff ????????
    db   $04, $00, $00, $00, $20, $01, $01, $01        ;; 05:6507 ????????
    db   $08, $03, $03, $01, $02, $3a, $01, $02        ;; 05:650f ????????
    db   $08, $03, $03, $01, $02, $3b, $02, $3c        ;; 05:6517 ????????
    db   $02, $3d, $14, $12, $0a, $04, $00, $00        ;; 05:651f ????????
    db   $01, $20, $01, $10, $40, $03, $02, $01        ;; 05:6527 ????????
    db   $10, $10, $02, $01, $01, $10, $08, $03        ;; 05:652f ????????
    db   $02, $01, $10, $08, $03, $02, $01, $10        ;; 05:6537 ????????
    db   $08, $02, $01, $01, $0d, $11, $00, $00        ;; 05:653f ????????
    db   $00, $00, $78, $00, $e0, $00, $03, $01        ;; 05:6547 ????????
    db   $00, $01, $00, $78, $00, $f0, $05, $03        ;; 05:654f ????????
    db   $68, $10, $50, $03, $02, $01, $01, $00        ;; 05:6557 ????????
    db   $58, $03, $03, $01, $01, $01, $58, $03        ;; 05:655f ????????
    db   $03, $01, $0e, $01, $00, $10, $02, $02        ;; 05:6567 ????????
    db   $01, $01, $01, $10, $03, $03, $01, $0e        ;; 05:656f ????????
    db   $01, $00, $00, $03, $03, $01, $01, $01        ;; 05:6577 ????????
    db   $10, $01, $01, $01, $0e, $01, $01, $00        ;; 05:657f ????????
    db   $03, $03, $01, $12, $1e, $10, $00, $02        ;; 05:6587 ????????
    db   $02, $01, $01, $00, $00, $02, $02, $01        ;; 05:658f ????????
    db   $01, $01, $00, $01, $01, $01, $12, $0a        ;; 05:6597 ????????
    db   $10, $00, $01, $01, $01, $01, $00, $00        ;; 05:659f ????????
    db   $01, $01, $01, $01, $01, $00, $02, $02        ;; 05:65a7 ????????
    db   $01, $12, $14, $10, $00, $02, $02, $01        ;; 05:65af ????????
    db   $01, $00, $00, $02, $02, $01, $01, $01        ;; 05:65b7 ????????
    db   $00, $01, $01, $01, $12, $14, $0c, $0f        ;; 05:65bf ????????
    db   $06, $03, $0a, $00, $02, $00, $78, $00        ;; 05:65c7 ????????
    db   $60, $14, $04, $80, $12, $14, $10, $00        ;; 05:65cf ????????
    db   $03, $02, $01, $01, $00, $00, $03, $03        ;; 05:65d7 ????????
    db   $01, $01, $01, $00, $03, $03, $01, $21        ;; 05:65df ????????
    db   $01, $22, $08, $02, $21, $00, $12, $1e        ;; 05:65e7 ????????
    db   $02, $00, $14, $09, $0e, $25, $02, $12        ;; 05:65ef ????????
    db   $14, $0c, $05, $24, $02, $01, $03, $02        ;; 05:65f7 ????????
    db   $12, $32, $10, $08, $04, $03, $01, $01        ;; 05:65ff ????????
    db   $00, $00, $01, $01, $01, $01, $01, $00        ;; 05:6607 ????????
    db   $02, $02, $01, $12, $14, $04, $00, $00        ;; 05:660f ????????
    db   $00, $08, $01, $02, $01, $02, $02, $02        ;; 05:6617 ????????
    db   $03, $14, $12, $14, $04, $00, $00, $01        ;; 05:661f ????????
    db   $08, $01, $10, $60, $04, $03, $01, $0d        ;; 05:6627 ????????
    db   $12, $00, $03, $00, $00, $00, $00, $60        ;; 05:662f ????????
    db   $00, $70, $18, $04, $23, $10, $10, $03        ;; 05:6637 ????????
    db   $02, $01, $00, $01, $00, $78, $00, $a8        ;; 05:663f ????????
    db   $00, $03, $01, $10, $20, $03, $02, $01        ;; 05:6647 ????????
    db   $01, $01, $20, $03, $03, $01, $10, $08        ;; 05:664f ????????
    db   $02, $01, $01, $01, $01, $08, $03, $03        ;; 05:6657 ????????
    db   $01, $0e, $01, $01, $18, $02, $02, $01        ;; 05:665f ????????
    db   $0e, $01, $01, $00, $03, $03, $01, $02        ;; 05:6667 ????????
    db   $00, $01, $00, $00, $01, $01, $01, $02        ;; 05:666f ????????
    db   $01, $14, $01, $00, $10, $02, $02, $01        ;; 05:6677 ????????
    db   $0e, $01, $00, $18, $03, $03, $01, $03        ;; 05:667f ????????
    db   $00, $12, $fa, $00, $02, $00, $50, $00        ;; 05:6687 ????????
    db   $58, $18, $04, $23, $01, $02, $18, $04        ;; 05:668f ????????
    db   $04, $01, $0e, $01, $02, $10, $01, $01        ;; 05:6697 ????????
    db   $01, $04, $00, $00, $00, $10, $01, $02        ;; 05:669f ????????
    db   $02, $14, $12, $1e, $02, $03, $01, $01        ;; 05:66a7 ????????
    db   $00, $01, $01, $01, $02, $04, $14, $04        ;; 05:66af ????????
    db   $00, $00, $01, $10, $01, $10, $08, $01        ;; 05:66b7 ????????
    db   $00, $01, $10, $38, $04, $03, $01, $0d        ;; 05:66bf ????????
    db   $13, $00, $10, $00, $02, $01, $01, $12        ;; 05:66c7 ????????
    db   $14, $10, $00, $01, $00, $01, $12, $14        ;; 05:66cf ????????
    db   $10, $00, $02, $01, $01, $12, $14, $10        ;; 05:66d7 ????????
    db   $00, $01, $00, $01, $12, $14, $10, $00        ;; 05:66df ????????
    db   $02, $01, $01, $12, $0a, $0b, $00, $00        ;; 05:66e7 ????????
    db   $05, $01, $48, $00, $c0, $05, $03, $68        ;; 05:66ef ????????
    db   $10, $08, $03, $02, $01, $01, $05, $48        ;; 05:66f7 ????????
    db   $03, $03, $01, $0e, $01, $05, $10, $02        ;; 05:66ff ????????
    db   $02, $01, $0e, $01, $05, $08, $03, $03        ;; 05:6707 ????????
    db   $01, $04, $00, $00, $00, $10, $01, $02        ;; 05:670f ????????
    db   $00, $02, $01, $02, $02, $02, $03, $02        ;; 05:6717 ????????
    db   $04, $14, $09, $0f, $02, $05, $14, $0b        ;; 05:671f ????????
    db   $01, $12, $01, $00, $06, $01, $48, $00        ;; 05:6727 ????????
    db   $d0, $00, $03, $01, $01, $06, $50, $03        ;; 05:672f ????????
    db   $03, $01, $10, $10, $04, $03, $01, $01        ;; 05:6737 ????????
    db   $05, $00, $01, $01, $01, $04, $00, $00        ;; 05:673f ????????
    db   $00, $10, $01, $02, $07, $02, $08, $14        ;; 05:6747 ????????
    db   $04, $00, $00, $01, $10, $01, $10, $78        ;; 05:674f ????????
    db   $03, $02, $01, $10, $08, $04, $03, $01        ;; 05:6757 ????????
    db   $0d, $14, $00, $10, $28, $03, $02, $01        ;; 05:675f ????????
    db   $10, $08, $02, $01, $01, $01, $00, $00        ;; 05:6767 ????????
    db   $01, $01, $01, $02, $00, $14, $01, $00        ;; 05:676f ????????
    db   $00, $02, $02, $01, $0e, $01, $00, $10        ;; 05:6777 ????????
    db   $02, $02, $01, $0e, $01, $00, $00, $03        ;; 05:677f ????????
    db   $03, $01, $0e, $01, $00, $18, $03, $03        ;; 05:6787 ????????
    db   $01, $03, $00, $12, $fa, $00, $01, $00        ;; 05:678f ????????
    db   $50, $00, $58, $18, $04, $23, $01, $01        ;; 05:6797 ????????
    db   $18, $04, $04, $01, $0e, $01, $01, $10        ;; 05:679f ????????
    db   $01, $01, $01, $02, $01, $14, $10, $08        ;; 05:67a7 ????????
    db   $01, $00, $01, $10, $30, $04, $03, $01        ;; 05:67af ????????
    db   $08, $00, $1d, $01, $00, $11, $00, $18        ;; 05:67b7 ????????
    db   $00, $78, $04, $00, $00, $00, $08, $00        ;; 05:67bf ????????
    db   $98, $00, $01, $01, $00, $01, $00, $18        ;; 05:67c7 ????????
    db   $00, $a8, $05, $03, $68, $00, $02, $00        ;; 05:67cf ????????
    db   $a0, $00, $f0, $01, $03, $02, $10, $10        ;; 05:67d7 ????????
    db   $04, $03, $01, $10, $10, $04, $03, $01        ;; 05:67df ????????
    db   $12, $01, $10, $08, $02, $01, $01, $02        ;; 05:67e7 ????????
    db   $02, $14, $12, $32, $02, $03, $14, $10        ;; 05:67ef ????????
    db   $00, $01, $00, $01, $01, $01, $00, $01        ;; 05:67f7 ????????
    db   $01, $01, $01, $02, $50, $03, $03, $01        ;; 05:67ff ????????
    db   $0e, $01, $02, $00, $02, $02, $01, $0e        ;; 05:6807 ????????
    db   $01, $02, $48, $02, $02, $01, $04, $00        ;; 05:680f ????????
    db   $00, $00, $10, $01, $02, $04, $14, $12        ;; 05:6817 ????????
    db   $0a, $13, $01, $1d, $01, $0c, $97, $08        ;; 05:681f ????????
    db   $00, $3e, $00, $00, $11, $03, $78, $03        ;; 05:6827 ????????
    db   $78, $04, $00, $00, $03, $c8, $03, $78        ;; 05:682f ????????
    db   $2f, $02, $a4, $01, $00, $a0, $02, $02        ;; 05:6837 ????????
    db   $01, $13, $01, $08, $00, $84, $01, $00        ;; 05:683f ????????
    db   $11, $00, $78, $00, $20, $02, $00, $00        ;; 05:6847 ????????
    db   $00, $78, $00, $40, $00, $02, $01, $00        ;; 05:684f ????????
    db   $01, $00, $60, $00, $30, $01, $02, $02        ;; 05:6857 ????????
    db   $00, $02, $00, $88, $00, $30, $05, $02        ;; 05:685f ????????
    db   $68, $12, $32, $02, $05, $01, $00, $00        ;; 05:6867 ????????
    db   $03, $03, $01, $02, $06, $01, $01, $00        ;; 05:686f ????????
    db   $01, $01, $01, $02, $07, $14, $01, $00        ;; 05:6877 ????????
    db   $00, $02, $02, $01, $01, $01, $00, $02        ;; 05:687f ????????
    db   $02, $01, $12, $64, $08, $00, $3e, $00        ;; 05:6887 ????????
    db   $00, $11, $03, $78, $03, $78, $04, $00        ;; 05:688f ????????
    db   $00, $03, $c8, $03, $78, $2f, $02, $a4        ;; 05:6897 ????????
    db   $01, $00, $a0, $02, $02, $01, $13, $01        ;; 05:689f ????????
    db   $1d, $00, $08, $00, $88, $01, $00, $11        ;; 05:68a7 ????????
    db   $01, $a0, $01, $b0, $03, $00, $00, $01        ;; 05:68af ????????
    db   $c0, $01, $b0, $00, $03, $01, $00, $01        ;; 05:68b7 ????????
    db   $01, $b0, $01, $a0, $01, $03, $02, $00        ;; 05:68bf ????????
    db   $02, $01, $b0, $01, $c0, $05, $03, $68        ;; 05:68c7 ????????
    db   $10, $10, $03, $02, $01, $01, $00, $10        ;; 05:68cf ????????
    db   $03, $03, $01, $01, $01, $10, $03, $03        ;; 05:68d7 ????????
    db   $01, $01, $02, $10, $03, $03, $01, $0e        ;; 05:68df ????????
    db   $01, $01, $00, $04, $04, $01, $02, $08        ;; 05:68e7 ????????
    db   $14, $08, $00, $88, $01, $00, $11, $00        ;; 05:68ef ????????
    db   $f0, $00, $40, $01, $00, $00, $00, $d0        ;; 05:68f7 ????????
    db   $00, $40, $00, $01, $01, $00, $01, $01        ;; 05:68ff ????????
    db   $10, $00, $40, $01, $01, $02, $00, $02        ;; 05:6907 ????????
    db   $00, $c0, $00, $40, $05, $01, $68, $00        ;; 05:690f ????????
    db   $03, $01, $b0, $00, $58, $0e, $02, $4f        ;; 05:6917 ????????
    db   $00, $04, $01, $50, $00, $40, $09, $02        ;; 05:691f ????????
    db   $3f, $10, $20, $01, $00, $01, $01, $00        ;; 05:6927 ????????
    db   $20, $01, $01, $01, $01, $01, $20, $01        ;; 05:692f ????????
    db   $01, $01, $01, $02, $20, $01, $01, $01        ;; 05:6937 ????????
    db   $04, $00, $24, $00, $00, $01, $02, $09        ;; 05:693f ????????
    db   $14, $04, $01, $24, $00, $00, $01, $12        ;; 05:6947 ????????
    db   $01, $10, $20, $01, $00, $01, $01, $00        ;; 05:694f ????????
    db   $20, $01, $01, $01, $01, $01, $20, $01        ;; 05:6957 ????????
    db   $01, $01, $01, $02, $20, $01, $01, $01        ;; 05:695f ????????
    db   $01, $04, $20, $04, $04, $01, $10, $10        ;; 05:6967 ????????
    db   $01, $00, $01, $01, $00, $10, $01, $01        ;; 05:696f ????????
    db   $01, $01, $01, $10, $04, $04, $01, $01        ;; 05:6977 ????????
    db   $02, $10, $01, $01, $01, $01, $04, $10        ;; 05:697f ????????
    db   $04, $04, $01, $10, $08, $01, $00, $01        ;; 05:6987 ????????
    db   $01, $00, $08, $01, $01, $01, $01, $01        ;; 05:698f ????????
    db   $08, $04, $04, $01, $01, $02, $08, $01        ;; 05:6997 ????????
    db   $01, $01, $01, $04, $00, $03, $03, $01        ;; 05:699f ????????
    db   $10, $18, $04, $03, $01, $01, $00, $18        ;; 05:69a7 ????????
    db   $01, $01, $01, $01, $01, $18, $01, $01        ;; 05:69af ????????
    db   $01, $01, $02, $18, $01, $01, $01, $10        ;; 05:69b7 ????????
    db   $08, $01, $00, $01, $01, $00, $08, $01        ;; 05:69bf ????????
    db   $01, $01, $01, $01, $08, $01, $01, $01        ;; 05:69c7 ????????
    db   $01, $02, $08, $01, $01, $01, $10, $10        ;; 05:69cf ????????
    db   $01, $00, $01, $01, $00, $10, $04, $04        ;; 05:69d7 ????????
    db   $01, $01, $01, $10, $03, $03, $01, $01        ;; 05:69df ????????
    db   $02, $10, $01, $01, $01, $10, $08, $01        ;; 05:69e7 ????????
    db   $00, $01, $01, $00, $08, $04, $04, $01        ;; 05:69ef ????????
    db   $01, $01, $08, $01, $01, $01, $01, $02        ;; 05:69f7 ????????
    db   $08, $01, $01, $01, $10, $08, $01, $00        ;; 05:69ff ????????
    db   $01, $01, $00, $08, $01, $01, $01, $01        ;; 05:6a07 ????????
    db   $01, $08, $01, $01, $01, $01, $02, $08        ;; 05:6a0f ????????
    db   $04, $04, $01, $04, $00, $24, $00, $00        ;; 05:6a17 ????????
    db   $01, $02, $0a, $14, $04, $01, $24, $00        ;; 05:6a1f ????????
    db   $00, $01, $10, $10, $04, $03, $01, $01        ;; 05:6a27 ????????
    db   $00, $10, $01, $01, $01, $01, $01, $10        ;; 05:6a2f ????????
    db   $01, $01, $01, $10, $10, $01, $00, $01        ;; 05:6a37 ????????
    db   $01, $00, $10, $01, $01, $01, $01, $01        ;; 05:6a3f ????????
    db   $10, $04, $04, $01, $10, $08, $04, $03        ;; 05:6a47 ????????
    db   $01, $01, $00, $00, $04, $04, $01, $0e        ;; 05:6a4f ????????
    db   $01, $02, $08, $04, $04, $01, $01, $04        ;; 05:6a57 ????????
    db   $08, $03, $03, $01, $0e, $01, $00, $00        ;; 05:6a5f ????????
    db   $04, $04, $01, $01, $02, $00, $01, $01        ;; 05:6a67 ????????
    db   $01, $01, $04, $00, $01, $01, $01, $12        ;; 05:6a6f ????????
    db   $14, $02, $0b, $02, $0c, $14, $12, $32        ;; 05:6a77 ????????
    db   $0c, $15, $06, $0a, $0a, $0c, $0f, $07        ;; 05:6a7f ????????
    db   $00, $1e, $12, $64, $08, $00, $7f, $01        ;; 05:6a87 ????????
    db   $00, $11, $00, $78, $00, $38, $04, $00        ;; 05:6a8f ????????
    db   $00, $00, $68, $00, $28, $00, $04, $01        ;; 05:6a97 ????????
    db   $00, $01, $00, $88, $00, $28, $01, $04        ;; 05:6a9f ????????
    db   $02, $00, $02, $00, $e8, $00, $30, $17        ;; 05:6aa7 ????????
    db   $04, $a0, $12, $14, $01, $00, $00, $01        ;; 05:6aaf ????????
    db   $01, $01, $01, $01, $00, $02, $02, $01        ;; 05:6ab7 ????????
    db   $10, $00, $03, $02, $01, $02, $0d, $02        ;; 05:6abf ????????
    db   $0e, $02, $0f, $14, $0c, $92, $10, $00        ;; 05:6ac7 ????????
    db   $01, $00, $01, $01, $01, $00, $01, $01        ;; 05:6acf ????????
    db   $01, $01, $02, $38, $02, $02, $01, $02        ;; 05:6ad7 ????????
    db   $10, $14, $10, $18, $01, $00, $01, $01        ;; 05:6adf ????????
    db   $02, $10, $02, $02, $01, $09, $10, $25        ;; 05:6ae7 ????????
    db   $02, $12, $0a, $0c, $05, $24, $02, $00        ;; 05:6aef ????????
    db   $03, $02, $01, $00, $10, $04, $04, $01        ;; 05:6af7 ????????
    db   $0e, $01, $00, $10, $01, $01, $01, $10        ;; 05:6aff ????????
    db   $00, $02, $0a, $01, $01, $01, $00, $04        ;; 05:6b07 ????????
    db   $04, $01, $02, $11, $14, $10, $48, $01        ;; 05:6b0f ????????
    db   $00, $01, $10, $38, $03, $02, $01, $0d        ;; 05:6b17 ????????
    db   $15, $00, $00, $00, $00, $48, $00, $20        ;; 05:6b1f ????????
    db   $11, $04, $9d, $10, $08, $03, $02, $01        ;; 05:6b27 ????????
    db   $00, $01, $00, $40, $00, $80, $00, $03        ;; 05:6b2f ????????
    db   $01, $00, $02, $00, $50, $00, $80, $01        ;; 05:6b37 ????????
    db   $03, $02, $10, $18, $02, $01, $01, $10        ;; 05:6b3f ????????
    db   $10, $02, $01, $01, $01, $01, $10, $03        ;; 05:6b47 ????????
    db   $03, $01, $01, $02, $10, $03, $03, $01        ;; 05:6b4f ????????
    db   $10, $18, $02, $01, $01, $01, $01, $18        ;; 05:6b57 ????????
    db   $02, $02, $01, $01, $02, $18, $02, $02        ;; 05:6b5f ????????
    db   $01, $10, $20, $03, $02, $01, $01, $01        ;; 05:6b67 ????????
    db   $20, $02, $02, $01, $01, $02, $20, $02        ;; 05:6b6f ????????
    db   $02, $01, $10, $10, $03, $02, $01, $01        ;; 05:6b77 ????????
    db   $01, $10, $03, $03, $01, $01, $02, $10        ;; 05:6b7f ????????
    db   $02, $02, $01, $10, $20, $01, $00, $01        ;; 05:6b87 ????????
    db   $01, $01, $20, $03, $03, $01, $01, $02        ;; 05:6b8f ????????
    db   $20, $03, $03, $01, $10, $10, $01, $00        ;; 05:6b97 ????????
    db   $01, $01, $01, $10, $01, $01, $01, $01        ;; 05:6b9f ????????
    db   $02, $10, $03, $03, $01, $10, $10, $01        ;; 05:6ba7 ????????
    db   $00, $01, $01, $01, $10, $01, $01, $01        ;; 05:6baf ????????
    db   $01, $02, $10, $01, $01, $01, $12, $01        ;; 05:6bb7 ????????
    db   $10, $00, $03, $02, $01, $01, $01, $10        ;; 05:6bbf ????????
    db   $01, $01, $01, $01, $02, $10, $01, $01        ;; 05:6bc7 ????????
    db   $01, $0e, $01, $01, $00, $03, $03, $01        ;; 05:6bcf ????????
    db   $01, $02, $10, $03, $03, $01, $0e, $01        ;; 05:6bd7 ????????
    db   $02, $00, $01, $01, $01, $12, $14, $02        ;; 05:6bdf ????????
    db   $00, $02, $01, $02, $02, $14, $12, $14        ;; 05:6be7 ????????
    db   $01, $00, $10, $04, $04, $01, $09, $11        ;; 05:6bef ????????
    db   $25, $00, $12, $14, $0c, $05, $24, $00        ;; 05:6bf7 ????????
    db   $01, $03, $00, $12, $14, $01, $01, $00        ;; 05:6bff ????????
    db   $01, $01, $01, $02, $03, $02, $04, $14        ;; 05:6c07 ????????
    db   $01, $01, $10, $03, $03, $01, $0e, $01        ;; 05:6c0f ????????
    db   $01, $30, $01, $01, $01, $0e, $01, $01        ;; 05:6c17 ????????
    db   $10, $03, $03, $01, $0e, $01, $01, $20        ;; 05:6c1f ????????
    db   $01, $01, $01, $0e, $01, $01, $00, $02        ;; 05:6c27 ????????
    db   $02, $01, $02, $05, $10, $00, $01, $00        ;; 05:6c2f ????????
    db   $01, $02, $06, $14, $10, $10, $01, $00        ;; 05:6c37 ????????
    db   $01, $01, $01, $10, $03, $03, $01, $10        ;; 05:6c3f ????????
    db   $08, $01, $00, $01, $01, $01, $08, $03        ;; 05:6c47 ????????
    db   $03, $01, $03, $01, $10, $20, $03, $02        ;; 05:6c4f ????????
    db   $01, $10, $30, $01, $00, $01, $10, $10        ;; 05:6c57 ????????
    db   $03, $02, $01, $10, $08, $03, $02, $01        ;; 05:6c5f ????????
    db   $0d, $16, $00, $12, $32, $10, $10, $03        ;; 05:6c67 ????????
    db   $02, $01, $01, $00, $00, $04, $04, $01        ;; 05:6c6f ????????
    db   $01, $01, $10, $03, $03, $01, $01, $02        ;; 05:6c77 ????????
    db   $10, $03, $03, $01, $0e, $01, $00, $10        ;; 05:6c7f ????????
    db   $04, $04, $01, $0e, $10, $00, $01, $00        ;; 05:6c87 ????????
    db   $01, $01, $00, $20, $02, $02, $01, $01        ;; 05:6c8f ????????
    db   $02, $00, $01, $01, $01, $02, $00, $15        ;; 05:6c97 ????????
    db   $04, $0c, $07, $02, $01, $01, $00, $00        ;; 05:6c9f ????????
    db   $04, $04, $01, $02, $02, $02, $03, $02        ;; 05:6ca7 ????????
    db   $04, $14, $10, $00, $03, $02, $01, $01        ;; 05:6caf ????????
    db   $00, $a0, $03, $03, $01, $03, $00, $12        ;; 05:6cb7 ????????
    db   $14, $10, $00, $04, $03, $01, $01, $01        ;; 05:6cbf ????????
    db   $00, $02, $02, $01, $02, $05, $02, $06        ;; 05:6cc7 ????????
    db   $14, $10, $80, $03, $02, $01, $01, $01        ;; 05:6ccf ????????
    db   $80, $03, $03, $01, $01, $02, $80, $03        ;; 05:6cd7 ????????
    db   $03, $01, $0c, $0f, $08, $00, $b8, $01        ;; 05:6cdf ????????
    db   $00, $11, $00, $58, $01, $e0, $03, $0d        ;; 05:6ce7 ????????
    db   $17, $00, $12, $14, $10, $20, $03, $02        ;; 05:6cef ????????
    db   $01, $01, $01, $20, $03, $03, $01, $01        ;; 05:6cf7 ????????
    db   $02, $20, $03, $03, $01, $0e, $01, $00        ;; 05:6cff ????????
    db   $20, $04, $04, $01, $12, $1e, $02, $00        ;; 05:6d07 ????????
    db   $14, $0c, $07, $15, $05, $12, $1e, $01        ;; 05:6d0f ????????
    db   $00, $20, $01, $01, $01, $10, $20, $03        ;; 05:6d17 ????????
    db   $02, $01, $01, $00, $00, $02, $02, $01        ;; 05:6d1f ????????
    db   $01, $01, $20, $03, $03, $01, $01, $02        ;; 05:6d27 ????????
    db   $20, $03, $03, $01, $12, $14, $10, $00        ;; 05:6d2f ????????
    db   $02, $01, $01, $02, $01, $14, $01, $00        ;; 05:6d37 ????????
    db   $00, $02, $02, $01, $10, $00, $04, $04        ;; 05:6d3f ????????
    db   $01, $12, $14, $10, $00, $01, $01, $01        ;; 05:6d47 ????????
    db   $12, $14, $10, $00, $04, $04, $01, $12        ;; 05:6d4f ????????
    db   $1e, $10, $38, $03, $02, $01, $0d, $18        ;; 05:6d57 ????????
    db   $00, $10, $18, $02, $01, $01, $10, $58        ;; 05:6d5f ????????
    db   $03, $02, $01, $12, $14, $02, $00, $14        ;; 05:6d67 ????????
    db   $09, $12, $0c, $1b, $05, $32, $02, $01        ;; 05:6d6f ????????
    db   $14, $0c, $1b, $05, $64, $08, $00, $c1        ;; 05:6d77 ????????
    db   $00, $00, $11, $00, $78, $00, $50, $03        ;; 05:6d7f ????????
    db   $00, $00, $00, $88, $00, $50, $00, $03        ;; 05:6d87 ????????
    db   $01, $00, $01, $00, $68, $00, $50, $01        ;; 05:6d8f ????????
    db   $03, $02, $0c, $1b, $05, $32, $01, $01        ;; 05:6d97 ????????
    db   $00, $01, $01, $01, $02, $02, $02, $03        ;; 05:6d9f ????????
    db   $14, $01, $01, $00, $02, $02, $01, $12        ;; 05:6da7 ????????
    db   $1e, $01, $01, $00, $01, $01, $01, $12        ;; 05:6daf ????????
    db   $1e, $01, $01, $00, $02, $02, $01, $02        ;; 05:6db7 ????????
    db   $04, $14, $01, $01, $00, $03, $03, $01        ;; 05:6dbf ????????
    db   $0c, $1b, $05, $64, $08, $00, $c2, $00        ;; 05:6dc7 ????????
    db   $00, $11, $00, $50, $00, $90, $03, $00        ;; 05:6dcf ????????
    db   $00, $00, $30, $00, $90, $04, $03, $04        ;; 05:6dd7 ????????
    db   $0c, $88, $0c, $1b, $05, $32, $01, $00        ;; 05:6ddf ????????
    db   $00, $02, $02, $01, $12, $1e, $01, $00        ;; 05:6de7 ????????
    db   $00, $01, $01, $01, $12, $1e, $01, $00        ;; 05:6def ????????
    db   $00, $02, $02, $01, $12, $1e, $01, $00        ;; 05:6df7 ????????
    db   $00, $01, $01, $01, $12, $1e, $01, $00        ;; 05:6dff ????????
    db   $00, $02, $02, $01, $12, $1e, $01, $00        ;; 05:6e07 ????????
    db   $00, $03, $03, $01, $02, $05, $14, $0c        ;; 05:6e0f ????????
    db   $1b, $05, $32, $08, $00, $c4, $00, $00        ;; 05:6e17 ????????
    db   $11, $00, $00, $00, $00, $03, $0c, $1b        ;; 05:6e1f ????????
    db   $05, $64, $13, $01, $12, $64, $08, $00        ;; 05:6e27 ????????
    db   $cf, $00, $00, $11, $00, $00, $00, $58        ;; 05:6e2f ????????
    db   $03, $00, $00, $00, $18, $00, $00, $00        ;; 05:6e37 ????????
    db   $08, $01, $00, $01, $00, $70, $00, $08        ;; 05:6e3f ????????
    db   $01, $08, $02, $02, $06, $02, $07, $0c        ;; 05:6e47 ????????
    db   $1c, $10, $05, $04, $03, $02, $01, $01        ;; 05:6e4f ????????
    db   $05, $08, $04, $04, $10, $32, $04, $03        ;; 05:6e57 ????????
    db   $02, $01, $00, $32, $08, $04, $02, $01        ;; 05:6e5f ????????
    db   $01, $32, $08, $04, $04, $14, $10, $0f        ;; 05:6e67 ????????
    db   $04, $03, $02, $01, $00, $3c, $08, $04        ;; 05:6e6f ????????
    db   $04, $01, $01, $3c, $08, $04, $04, $03        ;; 05:6e77 ????????
    db   $00, $03, $01, $12, $64, $07, $00, $1e        ;; 05:6e7f ????????
    db   $12, $64, $0c, $95, $08, $00, $c6, $01        ;; 05:6e87 ????????
    db   $00, $11, $00, $48, $00, $d8, $18, $00        ;; 05:6e8f ????????
    db   $00, $00, $18, $00, $98, $00, $07, $01        ;; 05:6e97 ????????
    db   $00, $01, $00, $70, $00, $b0, $01, $07        ;; 05:6e9f ????????
    db   $02, $00, $02, $00, $b8, $00, $b0, $0d        ;; 05:6ea7 ????????
    db   $03, $5e, $12, $32, $06, $01, $0a, $06        ;; 05:6eaf ????????
    db   $01, $1e, $06, $01, $32, $01, $01, $00        ;; 05:6eb7 ????????
    db   $02, $02, $12, $14, $01, $01, $00, $01        ;; 05:6ebf ????????
    db   $01, $01, $12, $14, $01, $01, $00, $02        ;; 05:6ec7 ????????
    db   $02, $01, $02, $08, $14, $01, $02, $38        ;; 05:6ecf ????????
    db   $02, $02, $01, $01, $01, $00, $01, $01        ;; 05:6ed7 ????????
    db   $01, $02, $09, $14, $06, $02, $0a, $03        ;; 05:6edf ????????
    db   $02, $01, $00, $00, $02, $02, $01, $12        ;; 05:6ee7 ????????
    db   $14, $01, $00, $00, $01, $01, $01, $12        ;; 05:6eef ????????
    db   $14, $01, $00, $00, $02, $02, $01, $00        ;; 05:6ef7 ????????
    db   $03, $00, $60, $01, $10, $09, $03, $3f        ;; 05:6eff ????????
    db   $00, $04, $00, $28, $01, $10, $05, $03        ;; 05:6f07 ????????
    db   $68, $01, $00, $38, $04, $04, $01, $01        ;; 05:6f0f ????????
    db   $01, $20, $04, $04, $01, $01, $03, $30        ;; 05:6f17 ????????
    db   $03, $03, $01, $01, $04, $30, $03, $03        ;; 05:6f1f ????????
    db   $01, $0e, $01, $00, $18, $01, $01, $01        ;; 05:6f27 ????????
    db   $01, $01, $10, $02, $02, $01, $01, $03        ;; 05:6f2f ????????
    db   $00, $02, $02, $01, $01, $04, $00, $01        ;; 05:6f37 ????????
    db   $01, $01, $02, $0a, $02, $0b, $02, $0c        ;; 05:6f3f ????????
    db   $14, $10, $00, $02, $01, $01, $12, $0a        ;; 05:6f47 ????????
    db   $10, $00, $01, $00, $01, $12, $0a, $10        ;; 05:6f4f ????????
    db   $00, $02, $01, $01, $12, $1e, $10, $08        ;; 05:6f57 ????????
    db   $03, $02, $01, $01, $00, $08, $01, $01        ;; 05:6f5f ????????
    db   $01, $01, $01, $08, $02, $02, $01, $10        ;; 05:6f67 ????????
    db   $60, $03, $02, $01, $01, $00, $60, $03        ;; 05:6f6f ????????
    db   $03, $01, $01, $01, $60, $03, $03, $01        ;; 05:6f77 ????????
    db   $01, $03, $60, $03, $03, $01, $01, $04        ;; 05:6f7f ????????
    db   $60, $03, $03, $01, $10, $10, $03, $02        ;; 05:6f87 ????????
    db   $01, $12, $0a, $04, $00, $00, $01, $20        ;; 05:6f8f ????????
    db   $01, $12, $32, $02, $0d, $14, $12, $96        ;; 05:6f97 ????????
    db   $13, $01, $12, $32, $1e, $12, $64, $0c        ;; 05:6f9f ????????
    db   $8c, $1d, $01, $20, $01, $12, $32, $08        ;; 05:6fa7 ????????
    db   $00, $43, $00, $00, $11, $00, $60, $00        ;; 05:6faf ????????
    db   $00, $03, $00, $00, $01, $20, $00, $38        ;; 05:6fb7 ????????
    db   $30, $02, $3f, $1b, $10, $50, $03, $03        ;; 05:6fbf ????????
    db   $01, $10, $58, $00, $00, $01, $0e, $01        ;; 05:6fc7 ????????
    db   $00, $c8, $02, $02, $01, $12, $14, $02        ;; 05:6fcf ????????
    db   $0e, $08, $00, $65, $00, $00, $11, $01        ;; 05:6fd7 ????????
    db   $20, $01, $00, $03, $00, $00, $01, $10        ;; 05:6fdf ????????
    db   $00, $28, $1b, $04, $a4, $00, $01, $01        ;; 05:6fe7 ????????
    db   $30, $00, $28, $1a, $02, $a4, $1b, $10        ;; 05:6fef ????????
    db   $78, $02, $02, $01, $10, $20, $02, $02        ;; 05:6ff7 ????????
    db   $01, $01, $00, $20, $04, $04, $01, $01        ;; 05:6fff ????????
    db   $01, $20, $02, $02, $01, $10, $10, $02        ;; 05:7007 ????????
    db   $02, $01, $01, $00, $20, $01, $01, $01        ;; 05:700f ????????
    db   $01, $01, $20, $04, $04, $01, $0e, $01        ;; 05:7017 ????????
    db   $00, $20, $03, $03, $01, $01, $01, $20        ;; 05:701f ????????
    db   $01, $01, $01, $0e, $01, $00, $20, $02        ;; 05:7027 ????????
    db   $02, $01, $01, $01, $20, $03, $03, $01        ;; 05:702f ????????
    db   $0e, $01, $00, $20, $04, $04, $01, $01        ;; 05:7037 ????????
    db   $01, $20, $02, $02, $01, $0e, $01, $00        ;; 05:703f ????????
    db   $20, $01, $01, $01, $01, $01, $20, $04        ;; 05:7047 ????????
    db   $04, $01, $0e, $01, $00, $20, $03, $03        ;; 05:704f ????????
    db   $01, $01, $01, $20, $01, $01, $01, $0e        ;; 05:7057 ????????
    db   $01, $00, $20, $02, $02, $01, $01, $01        ;; 05:705f ????????
    db   $20, $03, $03, $01, $0e, $01, $00, $20        ;; 05:7067 ????????
    db   $04, $04, $01, $01, $01, $20, $02, $02        ;; 05:706f ????????
    db   $01, $0e, $02, $0f, $08, $00, $a8, $00        ;; 05:7077 ????????
    db   $00, $11, $00, $80, $00, $70, $03, $1b        ;; 05:707f ????????
    db   $12, $14, $00, $00, $00, $98, $00, $50        ;; 05:7087 ????????
    db   $18, $04, $a4, $01, $00, $20, $04, $04        ;; 05:708f ????????
    db   $01, $0e, $01, $00, $20, $02, $02, $01        ;; 05:7097 ????????
    db   $00, $01, $00, $98, $00, $50, $1d, $04        ;; 05:709f ????????
    db   $a4, $01, $01, $10, $04, $04, $01, $0e        ;; 05:70a7 ????????
    db   $01, $01, $20, $02, $02, $01, $00, $02        ;; 05:70af ????????
    db   $00, $78, $00, $00, $1e, $04, $a4, $01        ;; 05:70b7 ????????
    db   $02, $10, $04, $04, $01, $12, $0a, $01        ;; 05:70bf ????????
    db   $02, $20, $04, $04, $01, $0e, $01, $00        ;; 05:70c7 ????????
    db   $00, $03, $03, $01, $01, $01, $00, $03        ;; 05:70cf ????????
    db   $03, $01, $12, $14, $01, $01, $10, $03        ;; 05:70d7 ????????
    db   $03, $01, $01, $02, $10, $04, $04, $01        ;; 05:70df ????????
    db   $00, $03, $00, $e0, $00, $68, $21, $04        ;; 05:70e7 ????????
    db   $a4, $00, $04, $00, $78, $00, $c0, $19        ;; 05:70ef ????????
    db   $04, $a4, $01, $03, $20, $02, $02, $01        ;; 05:70f7 ????????
    db   $01, $04, $20, $03, $03, $01, $01, $00        ;; 05:70ff ????????
    db   $00, $01, $01, $01, $12, $0a, $01, $00        ;; 05:7107 ????????
    db   $00, $04, $04, $01, $12, $0a, $01, $00        ;; 05:710f ????????
    db   $00, $01, $01, $01, $12, $14, $02, $10        ;; 05:7117 ????????
    db   $08, $00, $ac, $00, $00, $11, $00, $f8        ;; 05:711f ????????
    db   $01, $d8, $03, $00, $00, $00, $f8, $01        ;; 05:7127 ????????
    db   $f0, $05, $03, $68, $1b, $10, $c8, $03        ;; 05:712f ????????
    db   $02, $01, $01, $00, $e0, $03, $03, $01        ;; 05:7137 ????????
    db   $12, $0a, $00, $01, $01, $28, $01, $00        ;; 05:713f ????????
    db   $18, $04, $a4, $01, $01, $10, $04, $04        ;; 05:7147 ????????
    db   $01, $0e, $01, $01, $10, $02, $02, $01        ;; 05:714f ????????
    db   $0e, $01, $00, $00, $01, $01, $01, $00        ;; 05:7157 ????????
    db   $02, $00, $f8, $00, $b8, $19, $04, $a4        ;; 05:715f ????????
    db   $00, $03, $00, $e0, $00, $b8, $1c, $04        ;; 05:7167 ????????
    db   $a4, $00, $04, $00, $a0, $00, $e8, $24        ;; 05:716f ????????
    db   $01, $a4, $00, $05, $01, $10, $01, $60        ;; 05:7177 ????????
    db   $21, $03, $a4, $00, $06, $00, $e0, $01        ;; 05:717f ????????
    db   $60, $22, $03, $a4, $01, $02, $28, $04        ;; 05:7187 ????????
    db   $04, $01, $01, $03, $28, $04, $04, $01        ;; 05:718f ????????
    db   $01, $04, $28, $01, $01, $01, $01, $05        ;; 05:7197 ????????
    db   $28, $03, $03, $01, $01, $06, $28, $03        ;; 05:719f ????????
    db   $03, $01, $0e, $01, $02, $10, $04, $04        ;; 05:71a7 ????????
    db   $01, $01, $03, $10, $04, $04, $01, $01        ;; 05:71af ????????
    db   $04, $20, $04, $04, $01, $01, $05, $10        ;; 05:71b7 ????????
    db   $03, $03, $01, $01, $06, $10, $03, $03        ;; 05:71bf ????????
    db   $01, $0e, $01, $04, $10, $01, $01, $01        ;; 05:71c7 ????????
    db   $12, $0a, $01, $00, $00, $02, $02, $01        ;; 05:71cf ????????
    db   $12, $0a, $01, $00, $00, $03, $03, $01        ;; 05:71d7 ????????
    db   $12, $0a, $01, $00, $00, $04, $04, $01        ;; 05:71df ????????
    db   $12, $0a, $01, $00, $00, $01, $01, $01        ;; 05:71e7 ????????
    db   $12, $14, $02, $11, $02, $12, $02, $13        ;; 05:71ef ????????
    db   $02, $14, $08, $00, $3e, $00, $00, $11        ;; 05:71f7 ????????
    db   $03, $78, $03, $78, $04, $00, $00, $03        ;; 05:71ff ????????
    db   $c8, $03, $78, $2e, $02, $a4, $01, $00        ;; 05:7207 ????????
    db   $50, $02, $02, $01, $0e, $01, $00, $60        ;; 05:720f ????????
    db   $03, $03, $01, $08, $00, $88, $00, $00        ;; 05:7217 ????????
    db   $11, $01, $d0, $01, $c8, $03, $00, $00        ;; 05:721f ????????
    db   $01, $d0, $01, $f0, $01, $03, $01, $00        ;; 05:7227 ????????
    db   $01, $01, $d0, $01, $d0, $09, $03, $02        ;; 05:722f ????????
    db   $1b, $01, $00, $10, $03, $03, $01, $01        ;; 05:7237 ????????
    db   $01, $10, $03, $03, $01, $0e, $01, $01        ;; 05:723f ????????
    db   $00, $04, $04, $01, $12, $32, $01, $00        ;; 05:7247 ????????
    db   $20, $04, $04, $01, $03, $00, $10, $38        ;; 05:724f ????????
    db   $02, $01, $01, $01, $01, $38, $02, $02        ;; 05:7257 ????????
    db   $01, $0e, $01, $01, $00, $04, $04, $01        ;; 05:725f ????????
    db   $12, $32, $00, $02, $01, $38, $01, $c0        ;; 05:7267 ????????
    db   $31, $01, $02, $01, $02, $28, $01, $01        ;; 05:726f ????????
    db   $01, $0e, $01, $01, $00, $02, $02, $01        ;; 05:7277 ????????
    db   $12, $14, $10, $18, $02, $01, $01, $01        ;; 05:727f ????????
    db   $01, $18, $02, $02, $01, $12, $32, $02        ;; 05:7287 ????????
    db   $15, $08, $00, $3e, $00, $00, $11, $03        ;; 05:728f ????????
    db   $78, $03, $78, $04, $00, $00, $03, $c8        ;; 05:7297 ????????
    db   $03, $78, $2e, $02, $a4, $01, $00, $a0        ;; 05:729f ????????
    db   $02, $02, $01, $08, $00, $84, $00, $00        ;; 05:72a7 ????????
    db   $11, $00, $c8, $00, $28, $04, $00, $00        ;; 05:72af ????????
    db   $00, $38, $00, $28, $01, $02, $02, $1b        ;; 05:72b7 ????????
    db   $10, $80, $02, $01, $01, $12, $32, $02        ;; 05:72bf ????????
    db   $16, $08, $00, $5a, $00, $00, $11, $00        ;; 05:72c7 ????????
    db   $d8, $01, $30, $04, $00, $00, $00, $d8        ;; 05:72cf ????????
    db   $01, $20, $37, $04, $4f, $01, $00, $00        ;; 05:72d7 ????????
    db   $05, $05, $01, $12, $32, $00, $01, $00        ;; 05:72df ????????
    db   $78, $01, $10, $18, $04, $a4, $00, $02        ;; 05:72e7 ????????
    db   $01, $38, $01, $10, $1b, $04, $a4, $00        ;; 05:72ef ????????
    db   $03, $00, $d8, $00, $c0, $1e, $04, $a4        ;; 05:72f7 ????????
    db   $00, $04, $00, $d8, $00, $d0, $24, $04        ;; 05:72ff ????????
    db   $a4, $01, $01, $20, $01, $01, $01, $01        ;; 05:7307 ????????
    db   $02, $20, $02, $02, $01, $01, $03, $20        ;; 05:730f ????????
    db   $04, $04, $01, $01, $04, $20, $04, $04        ;; 05:7317 ????????
    db   $01, $0e, $01, $01, $20, $01, $01, $01        ;; 05:731f ????????
    db   $01, $02, $20, $02, $02, $01, $01, $03        ;; 05:7327 ????????
    db   $20, $01, $01, $01, $01, $04, $20, $02        ;; 05:732f ????????
    db   $02, $01, $0e, $01, $01, $20, $04, $04        ;; 05:7337 ????????
    db   $01, $01, $02, $20, $04, $04, $01, $01        ;; 05:733f ????????
    db   $03, $40, $04, $04, $01, $01, $04, $30        ;; 05:7347 ????????
    db   $04, $04, $01, $0e, $01, $01, $00, $01        ;; 05:734f ????????
    db   $01, $01, $01, $02, $00, $02, $02, $01        ;; 05:7357 ????????
    db   $01, $03, $00, $02, $02, $01, $01, $04        ;; 05:735f ????????
    db   $00, $01, $01, $01, $12, $14, $01, $00        ;; 05:7367 ????????
    db   $00, $01, $01, $01, $12, $14, $01, $00        ;; 05:736f ????????
    db   $00, $02, $02, $01, $12, $14, $01, $00        ;; 05:7377 ????????
    db   $00, $01, $01, $01, $12, $14, $01, $00        ;; 05:737f ????????
    db   $00, $02, $02, $01, $12, $14, $01, $00        ;; 05:7387 ????????
    db   $00, $04, $04, $01, $12, $14, $01, $00        ;; 05:738f ????????
    db   $00, $05, $05, $01, $12, $c8, $02, $17        ;; 05:7397 ????????
    db   $02, $18, $02, $19, $08, $00, $5a, $00        ;; 05:739f ????????
    db   $00, $11, $00, $d8, $01, $a0, $04, $00        ;; 05:73a7 ????????
    db   $00, $00, $d8, $01, $20, $37, $05, $4f        ;; 05:73af ????????
    db   $00, $01, $00, $d8, $01, $f0, $38, $03        ;; 05:73b7 ????????
    db   $4f, $01, $01, $38, $03, $03, $01, $10        ;; 05:73bf ????????
    db   $78, $03, $02, $01, $01, $01, $78, $03        ;; 05:73c7 ????????
    db   $03, $01, $12, $14, $01, $01, $10, $01        ;; 05:73cf ????????
    db   $01, $01, $0e, $01, $01, $20, $03, $03        ;; 05:73d7 ????????
    db   $01, $0e, $01, $00, $00, $01, $01, $00        ;; 05:73df ????????
    db   $01, $01, $00, $02, $02, $00, $12, $32        ;; 05:73e7 ????????
    db   $10, $10, $01, $00, $01, $01, $01, $10        ;; 05:73ef ????????
    db   $01, $01, $01, $0e, $01, $01, $00, $05        ;; 05:73f7 ????????
    db   $05, $01, $12, $c8, $01, $00, $00, $01        ;; 05:73ff ????????
    db   $01, $00, $01, $01, $00, $02, $02, $00        ;; 05:7407 ????????
    db   $12, $32, $01, $00, $00, $05, $05, $01        ;; 05:740f ????????
    db   $01, $01, $00, $05, $05, $01, $12, $c8        ;; 05:7417 ????????
    db   $02, $1a, $02, $1b, $02, $1c, $08, $00        ;; 05:741f ????????
    db   $1d, $00, $00, $11, $01, $a0, $00, $78        ;; 05:7427 ????????
    db   $04, $00, $00, $01, $a0, $00, $60, $00        ;; 05:742f ????????
    db   $03, $01, $10, $38, $03, $02, $01, $01        ;; 05:7437 ????????
    db   $00, $38, $03, $03, $01, $08, $00, $28        ;; 05:743f ????????
    db   $00, $01, $11, $00, $f8, $01, $a8, $04        ;; 05:7447 ????????
    db   $0e, $00, $02, $00, $f8, $01, $c0, $00        ;; 05:744f ????????
    db   $03, $01, $10, $30, $03, $02, $01, $01        ;; 05:7457 ????????
    db   $02, $38, $03, $03, $01, $0e, $01, $00        ;; 05:745f ????????
    db   $00, $01, $01, $01, $01, $01, $00, $02        ;; 05:7467 ????????
    db   $02, $01, $12, $14, $01, $01, $4c, $03        ;; 05:746f ????????
    db   $03, $02, $00, $03, $00, $f8, $00, $f0        ;; 05:7477 ????????
    db   $08, $03, $a4, $00, $04, $00, $e0, $00        ;; 05:747f ????????
    db   $f0, $22, $03, $a4, $01, $01, $30, $04        ;; 05:7487 ????????
    db   $04, $02, $01, $03, $30, $04, $04, $02        ;; 05:748f ????????
    db   $01, $04, $30, $04, $04, $02, $12, $1e        ;; 05:7497 ????????
    db   $01, $02, $10, $03, $03, $01, $01, $03        ;; 05:749f ????????
    db   $10, $04, $04, $01, $12, $1e, $02, $1d        ;; 05:74a7 ????????
    db   $08, $00, $00, $01, $00, $11, $00, $10        ;; 05:74af ????????
    db   $00, $f0, $04, $00, $00, $00, $b8, $00        ;; 05:74b7 ????????
    db   $28, $07, $04, $a4, $0e, $00, $01, $00        ;; 05:74bf ????????
    db   $a8, $00, $28, $1f, $04, $a4, $00, $02        ;; 05:74c7 ????????
    db   $00, $c8, $00, $28, $1f, $04, $a4, $00        ;; 05:74cf ????????
    db   $03, $01, $10, $00, $f0, $1b, $03, $a4        ;; 05:74d7 ????????
    db   $00, $04, $00, $a0, $01, $50, $1c, $03        ;; 05:74df ????????
    db   $a4, $00, $05, $00, $b8, $01, $50, $22        ;; 05:74e7 ????????
    db   $03, $a4, $00, $06, $00, $30, $00, $a0        ;; 05:74ef ????????
    db   $18, $04, $a4, $10, $20, $01, $00, $01        ;; 05:74f7 ????????
    db   $0e, $10, $00, $03, $02, $01, $01, $06        ;; 05:74ff ????????
    db   $28, $04, $04, $01, $10, $10, $03, $02        ;; 05:7507 ????????
    db   $01, $12, $1e, $10, $80, $01, $00, $01        ;; 05:750f ????????
    db   $0e, $10, $08, $04, $03, $00, $12, $01        ;; 05:7517 ????????
    db   $01, $04, $40, $03, $03, $01, $01, $05        ;; 05:751f ????????
    db   $40, $03, $03, $01, $10, $10, $04, $03        ;; 05:7527 ????????
    db   $01, $12, $1e, $10, $08, $01, $00, $00        ;; 05:752f ????????
    db   $12, $01, $01, $03, $38, $02, $02, $01        ;; 05:7537 ????????
    db   $10, $08, $01, $00, $01, $12, $1e, $10        ;; 05:753f ????????
    db   $a8, $03, $02, $01, $12, $1e, $02, $1e        ;; 05:7547 ????????
    db   $08, $00, $c6, $00, $00, $11, $00, $48        ;; 05:754f ????????
    db   $00, $38, $04, $00, $00, $00, $48, $00        ;; 05:7557 ????????
    db   $60, $04, $03, $a4, $1b, $12, $64, $01        ;; 05:755f ????????
    db   $00, $00, $04, $04, $01, $12, $1e, $10        ;; 05:7567 ????????
    db   $50, $04, $03, $01, $01, $00, $50, $04        ;; 05:756f ????????
    db   $04, $01, $0e, $01, $00, $50, $04, $04        ;; 05:7577 ????????
    db   $01, $12, $64, $08, $00, $c3, $00, $00        ;; 05:757f ????????
    db   $11, $00, $48, $00, $28, $04, $12, $c8        ;; 05:7587 ????????
    db   $00, $00, $00, $b0, $00, $28, $30, $02        ;; 05:758f ????????
    db   $a4, $00, $01, $00, $a8, $00, $40, $30        ;; 05:7597 ????????
    db   $02, $a4, $01, $00, $50, $02, $02, $01        ;; 05:759f ????????
    db   $01, $01, $50, $02, $02, $01, $17, $00        ;; 05:75a7 ????????
    db   $01, $20, $01, $20, $17, $00, $01, $20        ;; 05:75af ????????
    db   $00, $00, $17, $00, $01, $20, $00, $00        ;; 05:75b7 ????????
    db   $17, $01, $01, $20, $01, $20, $17, $01        ;; 05:75bf ????????
    db   $01, $20, $00, $00, $17, $01, $01, $20        ;; 05:75c7 ????????
    db   $00, $00, $03, $01, $03, $00, $12, $32        ;; 05:75cf ????????
    db   $23, $12, $32, $1f, $12, $fa, $12, $fa        ;; 05:75d7 ????????
    db   $12, $6e, $1d, $00, $1e, $12, $c8, $20        ;; 05:75df ????????
    db   $00, $16                                      ;; 05:75e7 ??

data_05_75e9:
    db   $75, $ed, $76, $75, $0c, $1b, $05, $1e        ;; 05:75e9 ????????
    db   $00, $00, $01, $68, $00, $50, $34, $01        ;; 05:75f1 ????????
    db   $a5, $0c, $1f, $05, $1e, $00, $01, $01        ;; 05:75f9 ????????
    db   $68, $00, $48, $32, $01, $a5, $00, $02        ;; 05:7601 ????????
    db   $01, $68, $00, $50, $33, $01, $a5, $00        ;; 05:7609 ????????
    db   $03, $01, $68, $00, $50, $33, $01, $a5        ;; 05:7611 ????????
    db   $00, $04, $01, $68, $00, $50, $33, $01        ;; 05:7619 ????????
    db   $a5, $17, $01, $01, $08, $01, $08, $0e        ;; 05:7621 ????????
    db   $17, $01, $01, $10, $01, $10, $17, $01        ;; 05:7629 ????????
    db   $00, $00, $01, $10, $17, $02, $01, $10        ;; 05:7631 ????????
    db   $01, $10, $17, $02, $00, $00, $01, $08        ;; 05:7639 ????????
    db   $17, $03, $01, $08, $01, $08, $0e, $17        ;; 05:7641 ????????
    db   $01, $01, $08, $00, $08, $17, $02, $00        ;; 05:7649 ????????
    db   $00, $01, $08, $17, $03, $00, $00, $01        ;; 05:7651 ????????
    db   $08, $0e, $17, $01, $01, $08, $00, $08        ;; 05:7659 ????????
    db   $17, $02, $01, $08, $01, $08, $17, $03        ;; 05:7661 ????????
    db   $01, $08, $01, $08, $17, $04, $01, $08        ;; 05:7669 ????????
    db   $01, $08, $0b, $02, $17, $01, $00, $08        ;; 05:7671 ????????
    db   $01, $08, $17, $02, $00, $08, $00, $08        ;; 05:7679 ????????
    db   $17, $03, $00, $08, $00, $08, $17, $04        ;; 05:7681 ????????
    db   $00, $08, $00, $08, $0e, $17, $01, $00        ;; 05:7689 ????????
    db   $08, $01, $08, $17, $02, $00, $00, $00        ;; 05:7691 ????????
    db   $08, $17, $03, $00, $00, $00, $08, $0e        ;; 05:7699 ????????
    db   $17, $01, $00, $10, $00, $10, $17, $01        ;; 05:76a1 ????????
    db   $00, $00, $00, $10, $17, $02, $00, $10        ;; 05:76a9 ????????
    db   $00, $10, $17, $02, $00, $00, $00, $08        ;; 05:76b1 ????????
    db   $17, $03, $00, $08, $00, $08, $0e, $17        ;; 05:76b9 ????????
    db   $01, $00, $08, $00, $08, $03, $01, $03        ;; 05:76c1 ????????
    db   $02, $03, $03, $03, $04, $0c, $1f, $05        ;; 05:76c9 ????????
    db   $1e, $03, $00, $0c, $1b, $05, $1e, $0b        ;; 05:76d1 ????????
    db   $02, $14, $08, $00, $3b, $01, $01, $11        ;; 05:76d9 ????????
    db   $01, $10, $05, $a8, $04, $10, $08, $04        ;; 05:76e1 ????????
    db   $03, $01, $10, $08, $02, $01, $01, $0f        ;; 05:76e9 ????????
    db   $00, $00, $01, $01, $10, $05, $a8, $25        ;; 05:76f1 ????????
    db   $04, $3e, $12, $0a, $01, $01, $08, $04        ;; 05:76f9 ????????
    db   $04, $01, $0e, $01, $01, $08, $02, $02        ;; 05:7701 ????????
    db   $01, $03, $01, $0c, $97, $10, $10, $02        ;; 05:7709 ????????
    db   $01, $01, $0f, $00, $01, $00, $20, $02        ;; 05:7711 ????????
    db   $02, $01, $0e, $01, $00, $10, $03, $03        ;; 05:7719 ????????
    db   $01, $0e, $01, $00, $20, $02, $02, $01        ;; 05:7721 ????????
    db   $08, $00, $3e, $00, $00, $11, $03, $78        ;; 05:7729 ????????
    db   $03, $78, $04, $00, $00, $03, $c8, $03        ;; 05:7731 ????????
    db   $78, $2e, $02, $a4, $01, $00, $a0, $02        ;; 05:7739 ????????
    db   $02, $01, $13, $01, $08, $00, $3e, $00        ;; 05:7741 ????????
    db   $00, $11, $03, $78, $03, $78, $04, $00        ;; 05:7749 ????????
    db   $00, $03, $c8, $03, $78, $2e, $02, $a4        ;; 05:7751 ????????
    db   $01, $00, $a0, $02, $02, $01, $08, $00        ;; 05:7759 ????????
    db   $3e, $00, $00, $11, $03, $c8, $01, $98        ;; 05:7761 ????????
    db   $02, $00, $00, $03, $f0, $01, $f0, $2e        ;; 05:7769 ????????
    db   $03, $a4, $01, $00, $20, $03, $03, $01        ;; 05:7771 ????????
    db   $0e, $01, $00, $18, $02, $02, $01, $0e        ;; 05:7779 ????????
    db   $01, $00, $38, $03, $03, $01, $12, $0a        ;; 05:7781 ????????
    db   $0c, $81, $0f, $01, $19, $1a, $0d, $00        ;; 05:7789 ????????
    db   $00, $14, $08, $00, $3e, $01, $01, $11        ;; 05:7791 ????????
    db   $03, $c0, $01, $80, $04, $10, $18, $04        ;; 05:7799 ????????
    db   $03, $01, $10, $08, $01, $00, $01, $0f        ;; 05:77a1 ????????
    db   $00, $00, $01, $03, $c0, $01, $80, $25        ;; 05:77a9 ????????
    db   $04, $3e, $12, $0a, $01, $01, $18, $04        ;; 05:77b1 ????????
    db   $04, $01, $0e, $01, $01, $08, $01, $01        ;; 05:77b9 ????????
    db   $01, $03, $01, $0c, $97, $01, $00, $20        ;; 05:77c1 ????????
    db   $01, $01, $01, $08, $00, $3e, $00, $00        ;; 05:77c9 ????????
    db   $11, $03, $78, $03, $78, $04, $00, $00        ;; 05:77d1 ????????
    db   $03, $20, $03, $78, $2e, $01, $a4, $01        ;; 05:77d9 ????????
    db   $00, $58, $01, $01, $01, $0e, $01, $00        ;; 05:77e1 ????????
    db   $50, $03, $03, $01, $08, $00, $3e, $00        ;; 05:77e9 ????????
    db   $00, $11, $03, $78, $03, $78, $04, $00        ;; 05:77f1 ????????
    db   $00, $03, $80, $03, $c8, $2e, $03, $a4        ;; 05:77f9 ????????
    db   $01, $00, $50, $03, $03, $01, $0e, $01        ;; 05:7801 ????????
    db   $00, $58, $02, $02, $01, $08, $00, $9f        ;; 05:7809 ????????
    db   $00, $00, $11, $00, $68, $00, $50, $04        ;; 05:7811 ????????
    db   $00, $00, $00, $c8, $00, $20, $2e, $02        ;; 05:7819 ????????
    db   $a4, $01, $00, $38, $02, $02, $01, $0e        ;; 05:7821 ????????
    db   $01, $00, $10, $04, $04, $01, $0e, $01        ;; 05:7829 ????????
    db   $00, $28, $02, $02, $01, $0e, $01, $00        ;; 05:7831 ????????
    db   $10, $04, $04, $01, $0c, $81, $0f, $01        ;; 05:7839 ????????
    db   $19, $1b, $0d, $00, $00, $14, $08, $00        ;; 05:7841 ????????
    db   $9f, $01, $01, $11, $00, $60, $00, $58        ;; 05:7849 ????????
    db   $01, $10, $08, $01, $00, $01, $10, $08        ;; 05:7851 ????????
    db   $03, $02, $01, $0f, $00, $00, $01, $00        ;; 05:7859 ????????
    db   $60, $00, $58, $25, $01, $3e, $12, $0a        ;; 05:7861 ????????
    db   $01, $01, $08, $01, $01, $01, $0e, $01        ;; 05:7869 ????????
    db   $01, $08, $03, $03, $01, $03, $01, $0c        ;; 05:7871 ????????
    db   $97, $01, $00, $10, $03, $03, $01, $0e        ;; 05:7879 ????????
    db   $01, $00, $30, $01, $01, $01, $0e, $01        ;; 05:7881 ????????
    db   $00, $10, $03, $03, $01, $0e, $01, $00        ;; 05:7889 ????????
    db   $20, $01, $01, $01, $08, $00, $3e, $00        ;; 05:7891 ????????
    db   $00, $11, $03, $78, $03, $78, $04, $00        ;; 05:7899 ????????
    db   $00, $03, $20, $03, $78, $2e, $01, $a4        ;; 05:78a1 ????????
    db   $01, $00, $a8, $01, $01, $01, $08, $00        ;; 05:78a9 ????????
    db   $3e, $00, $00, $11, $03, $78, $03, $78        ;; 05:78b1 ????????
    db   $04, $00, $00, $03, $20, $03, $78, $2e        ;; 05:78b9 ????????
    db   $01, $a4, $01, $00, $60, $01, $01, $01        ;; 05:78c1 ????????
    db   $0e, $01, $00, $48, $04, $04, $01, $08        ;; 05:78c9 ????????
    db   $00, $3b, $00, $00, $11, $00, $28, $05        ;; 05:78d1 ????????
    db   $78, $04, $00, $00, $00, $50, $05, $38        ;; 05:78d9 ????????
    db   $2e, $04, $a4, $01, $00, $50, $04, $04        ;; 05:78e1 ????????
    db   $01, $0e, $01, $00, $50, $01, $01, $01        ;; 05:78e9 ????????
    db   $08, $00, $3b, $00, $00, $11, $01, $08        ;; 05:78f1 ????????
    db   $05, $b0, $01, $00, $00, $00, $a0, $05        ;; 05:78f9 ????????
    db   $a0, $2e, $01, $a4, $01, $00, $38, $01        ;; 05:7901 ????????
    db   $01, $01, $0e, $01, $00, $10, $04, $04        ;; 05:7909 ????????
    db   $01, $0e, $01, $00, $20, $01, $01, $01        ;; 05:7911 ????????
    db   $0c, $81, $0f, $01, $19, $1c, $0d, $00        ;; 05:7919 ????????
    db   $00                                           ;; 05:7921 ?

;@data format=P amount=30
data_05_7922:
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

;@data format=WWWW amount=10
data_05_795e:
    data_WWWW $4000, $403b, $4059, $4083               ;; 05:795e PpPpPpPp $00
    data_WWWW $40d5, $40ff, $413d, $41ac               ;; 05:7966 PpPpPpPp $01
    data_WWWW $41c0, $423a, $434f, $43ae               ;; 05:796e PpPpPpPp $02
    data_WWWW $441c, $443c, $4488, $454c               ;; 05:7976 PpPpPpPp $03
    data_WWWW $4572, $4679, $468c, $4756               ;; 05:797e PpPp???? $04

data_05_7986:
    data_WWWW $479e, $47b9, $4831, $486e               ;; 05:7986 ???????? $05
    data_WWWW $4896, $4a1d, $4a6a, $4ac5               ;; 05:798e ???????? $06
    data_WWWW $4b2c, $4bb3, $4bf5, $4c73               ;; 05:7996 ???????? $07
    data_WWWW $4cab, $4cd7, $4d14, $4d83               ;; 05:799e ???????? $08
    data_WWWW $4dc6, $4e0a, $4e25, $4e93               ;; 05:79a6 ???????? $09
    db   $4e, $bb, $4f, $17, $4f, $42, $4f, $86        ;; 05:79ae ????????
    db   $4f, $9a, $4f, $aa, $50, $30, $50, $59        ;; 05:79b6 ????????

data_05_79be:
    db   $51, $5b, $52, $6f, $52, $b7, $52, $d5        ;; 05:79be ????????

data_05_79c6:
    db   $53, $21, $53, $6d, $53, $c3, $54, $72        ;; 05:79c6 ????????
    db   $54, $b1, $54, $ef, $55, $2b, $55, $74        ;; 05:79ce ????????
    db   $55, $8b                                      ;; 05:79d6 ??

data_05_79d8:
    db   $7c, $3c, $55, $c4, $56, $89, $56, $a7        ;; 05:79d8 ????????
    db   $7c, $dc, $56, $f5                            ;; 05:79e0 ????

data_05_79e4:
    db   $58, $06, $58, $32, $58, $46, $58, $8f        ;; 05:79e4 ????????
    db   $58, $a5, $59, $17, $59, $37, $59, $b3        ;; 05:79ec ????????
    db   $59, $ce, $59, $f1, $5a, $6d, $5a, $db        ;; 05:79f4 ????????
    db   $5b, $4f, $5b, $f7, $5c, $46, $5c, $5e        ;; 05:79fc ????????
    db   $5c, $c5                                      ;; 05:7a04 ??

data_05_7a06:
    db   $5d, $01, $5d, $a3, $5e, $47                  ;; 05:7a06 ??????

data_05_7a0c:
    db   $5f, $02, $5f, $ac                            ;; 05:7a0c ????

data_05_7a10:
    db   $60, $96, $61, $55, $61, $fd, $62, $48        ;; 05:7a10 ????????
    db   $62, $dd, $63, $ad, $63, $f2, $64, $fc        ;; 05:7a18 ????????
    db   $66, $08, $67, $35, $67, $62, $67, $dd        ;; 05:7a20 ????????
    db   $67, $fa                                      ;; 05:7a28 ??

data_05_7a2a:
    db   $68, $38, $68, $60, $68, $ff, $69, $4e        ;; 05:7a2a ????????
    db   $69, $e7, $6a, $3e, $6a, $a3, $6a, $ee        ;; 05:7a32 ????????
    db   $6b, $5b, $6c, $11, $6c, $2f, $6c, $88        ;; 05:7a3a ????????
    db   $6c, $b5                                      ;; 05:7a42 ??

data_05_7a44:
    db   $6c, $f7, $6d, $c6                            ;; 05:7a44 ????

data_05_7a48:
    db   $6e, $2b, $6e, $c2, $6f, $93, $70, $02        ;; 05:7a48 ????????
    db   $70, $20, $70, $67, $70, $cc, $71, $4b        ;; 05:7a50 ????????
    db   $71, $9d, $73, $7c, $73, $ca                  ;; 05:7a58 ??????

data_05_7a5e:
    db   $73, $f7, $75, $4d                            ;; 05:7a5e ????

data_05_7a62:
    db   $75, $b0                                      ;; 05:7a62 ??

data_05_7a64:
    db   $40, $00, $40, $bc, $40, $d5, $41, $1a        ;; 05:7a64 ????????
    db   $41, $8d, $41, $ee, $42, $35, $42, $48        ;; 05:7a6c ????????
    db   $42, $8b, $42, $df, $43, $00, $44, $3d        ;; 05:7a74 ????????
    db   $44, $65, $45, $a9, $45, $be, $45, $d6        ;; 05:7a7c ????????
    db   $46, $06, $46, $21, $46, $37, $46, $5b        ;; 05:7a84 ????????
    db   $46, $ad, $46, $f5, $47, $18, $47, $d3        ;; 05:7a8c ????????
    db   $47, $e6, $47, $fa, $48, $4a, $48, $65        ;; 05:7a94 ????????
    db   $48, $87, $48, $b0, $48, $dd, $49, $0d        ;; 05:7a9c ????????
    db   $49, $26, $49, $4c, $49, $64, $49, $a4        ;; 05:7aa4 ????????
    db   $49, $b6, $49, $fe, $4a, $1c, $4a, $5e        ;; 05:7aac ????????
    db   $4a, $a8, $4a, $e9, $4b, $58, $4b, $aa        ;; 05:7ab4 ????????
    db   $4b, $d1, $4c, $25, $4c, $60, $4c, $7b        ;; 05:7abc ????????
    db   $4c, $b9, $4d, $05, $4d, $2a, $4d, $72        ;; 05:7ac4 ????????
    db   $4d, $87, $4f, $35, $4f, $79, $51, $48        ;; 05:7acc ????????
    db   $51, $85, $52, $bb, $54, $00, $54, $51        ;; 05:7ad4 ????????
    db   $54, $97, $55, $02                            ;; 05:7adc ????

data_05_7ae0:
    db   $55, $51, $55, $ee, $56, $2d, $56, $70        ;; 05:7ae0 ????????

data_05_7ae8:
    db   $56, $b4, $56, $f8, $57, $2f, $57, $a8        ;; 05:7ae8 ????????
    db   $57, $d2                                      ;; 05:7af0 ??

data_05_7af2:
    db   $58, $09, $58, $55, $58, $ac, $59, $39        ;; 05:7af2 ????????
    db   $59, $87, $59, $e4, $5a, $4e, $5a, $ef        ;; 05:7afa ????????
    db   $5b, $0f                                      ;; 05:7b02 ??

data_05_7b04:
    db   $5b, $38, $5b, $82, $5b, $a1, $5b, $e3        ;; 05:7b04 ????????
    db   $5c, $49, $5c, $bb, $5c, $d8, $5d, $22        ;; 05:7b0c ????????
    db   $5d, $95, $5d, $e9, $5e, $13, $5f, $0c        ;; 05:7b14 ????????
    db   $5f, $2f, $5f, $52, $5f, $88, $5f, $a2        ;; 05:7b1c ????????
    db   $5f, $e4, $60, $7e                            ;; 05:7b24 ????

data_05_7b28:
    db   $60, $bc, $61, $57, $61, $8f, $62, $43        ;; 05:7b28 ????????
    db   $62, $64, $62, $e1, $63, $18                  ;; 05:7b30 ??????

data_05_7b36:
    db   $63, $54, $65, $7c, $65, $d3, $66, $10        ;; 05:7b36 ????????
    db   $66, $54, $67, $ee, $68, $2e                  ;; 05:7b3e ??????

data_05_7b44:
    db   $68, $6b, $69, $3d                            ;; 05:7b44 ????

data_05_7b48:
    db   $6a, $e0, $6c, $46, $6d, $18, $6d, $32        ;; 05:7b48 ????????
    db   $6d, $4f, $6d, $9a, $6f, $53, $6f, $6d        ;; 05:7b50 ????????

data_05_7b58:
    db   $6f, $84, $6f, $af, $70, $27, $70, $48        ;; 05:7b58 ????????
    db   $70, $8c, $70, $c7, $71, $b5, $71, $cf        ;; 05:7b60 ????????
    db   $72, $00, $72, $24, $72, $46, $72, $60        ;; 05:7b68 ????????
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
