;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank06", ROMX[$4000], BANK[$06]

call_06_4000:
    ld   A, [wD376]                                    ;; 06:4000 $fa $76 $d3
    cp   A, $00                                        ;; 06:4003 $fe $00
    jr   Z, .jr_06_401c                                ;; 06:4005 $28 $15
    cp   A, $01                                        ;; 06:4007 $fe $01
    jp   Z, jp_06_4110                                 ;; 06:4009 $ca $10 $41
    cp   A, $02                                        ;; 06:400c $fe $02
    jp   Z, jp_06_4437                                 ;; 06:400e $ca $37 $44
    cp   A, $03                                        ;; 06:4011 $fe $03
    jp   Z, jp_06_452f                                 ;; 06:4013 $ca $2f $45
    cp   A, $04                                        ;; 06:4016 $fe $04
    jp   Z, jp_06_4817                                 ;; 06:4018 $ca $17 $48
    ret                                                ;; 06:401b $c9
.jr_06_401c:
    ld   A, [wD377]                                    ;; 06:401c $fa $77 $d3
    and  A, A                                          ;; 06:401f $a7
    jr   Z, .jr_06_403b                                ;; 06:4020 $28 $19
    call call_06_4a86                                  ;; 06:4022 $cd $86 $4a
    xor  A, A                                          ;; 06:4025 $af
    ld   [wD377], A                                    ;; 06:4026 $ea $77 $d3
    ld   [wD37B], A                                    ;; 06:4029 $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:402c $ea $7c $d3
    ld   [wD464], A                                    ;; 06:402f $ea $64 $d4
    ld   [wD395], A                                    ;; 06:4032 $ea $95 $d3
    ld   A, $14                                        ;; 06:4035 $3e $14
    ld   [wD37A], A                                    ;; 06:4037 $ea $7a $d3
    ret                                                ;; 06:403a $c9
.jr_06_403b:
    call call_06_49c2                                  ;; 06:403b $cd $c2 $49
    ld   A, [wD378]                                    ;; 06:403e $fa $78 $d3
    cp   A, $01                                        ;; 06:4041 $fe $01
    jr   Z, jr_06_407a                                 ;; 06:4043 $28 $35
    cp   A, $02                                        ;; 06:4045 $fe $02
    jr   Z, jp_06_4099                                 ;; 06:4047 $28 $50
    cp   A, $03                                        ;; 06:4049 $fe $03
    jr   Z, jr_06_40b8                                 ;; 06:404b $28 $6b
    cp   A, $04                                        ;; 06:404d $fe $04
    jr   Z, jr_06_40cc                                 ;; 06:404f $28 $7b
    cp   A, $05                                        ;; 06:4051 $fe $05
    jp   Z, jp_06_40e0                                 ;; 06:4053 $ca $e0 $40
    cp   A, $06                                        ;; 06:4056 $fe $06
    jp   Z, jp_06_40f8                                 ;; 06:4058 $ca $f8 $40
    cp   A, $07                                        ;; 06:405b $fe $07
    jr   Z, jp_06_4099                                 ;; 06:405d $28 $3a
    ret                                                ;; 06:405f $c9

jp_06_4060:
    ld   HL, data_06_5917                              ;; 06:4060 $21 $17 $59
    ld   A, [wD37E]                                    ;; 06:4063 $fa $7e $d3
    ld   C, A                                          ;; 06:4066 $4f
    sla  C                                             ;; 06:4067 $cb $21
    ld   B, $00                                        ;; 06:4069 $06 $00
    add  HL, BC                                        ;; 06:406b $09
    ld   A, [HL+]                                      ;; 06:406c $2a
    ld   [wShadowOAM.01], A                            ;; 06:406d $ea $01 $c0
    ld   A, [HL]                                       ;; 06:4070 $7e
    ld   [wShadowOAM], A                               ;; 06:4071 $ea $00 $c0
    ld   A, $02                                        ;; 06:4074 $3e $02
    call call_00_11a8                                  ;; 06:4076 $cd $a8 $11
    ret                                                ;; 06:4079 $c9

jr_06_407a:
    ld   A, [wD37E]                                    ;; 06:407a $fa $7e $d3
    inc  A                                             ;; 06:407d $3c
    ld   [wD376], A                                    ;; 06:407e $ea $76 $d3
    xor  A, A                                          ;; 06:4081 $af
    ld   [wD379], A                                    ;; 06:4082 $ea $79 $d3
    ld   [wD384], A                                    ;; 06:4085 $ea $84 $d3
    ld   [wD393], A                                    ;; 06:4088 $ea $93 $d3
    ld   [wD382], A                                    ;; 06:408b $ea $82 $d3
    ld   A, $01                                        ;; 06:408e $3e $01
    ld   [wD377], A                                    ;; 06:4090 $ea $77 $d3
    ld   A, $01                                        ;; 06:4093 $3e $01
    call call_00_11a8                                  ;; 06:4095 $cd $a8 $11
    ret                                                ;; 06:4098 $c9

jp_06_4099:
    ld   A, $01                                        ;; 06:4099 $3e $01
    ld   [wD5C4], A                                    ;; 06:409b $ea $c4 $d5
    ld   A, $01                                        ;; 06:409e $3e $01
    ld   [wD586], A                                    ;; 06:40a0 $ea $86 $d5
    ld   [wD58D], A                                    ;; 06:40a3 $ea $8d $d5
    ld   A, $8f                                        ;; 06:40a6 $3e $8f
    ld   [wD5D2], A                                    ;; 06:40a8 $ea $d2 $d5
    xor  A, A                                          ;; 06:40ab $af
    ld   [wD58B], A                                    ;; 06:40ac $ea $8b $d5
    ld   [wD58C], A                                    ;; 06:40af $ea $8c $d5
    ld   A, $03                                        ;; 06:40b2 $3e $03
    call call_00_11a8                                  ;; 06:40b4 $cd $a8 $11
    ret                                                ;; 06:40b7 $c9

jr_06_40b8:
    ld   A, [wD37E]                                    ;; 06:40b8 $fa $7e $d3
    inc  A                                             ;; 06:40bb $3c
    ld   [wD37E], A                                    ;; 06:40bc $ea $7e $d3
    and  A, $01                                        ;; 06:40bf $e6 $01
    jr   NZ, jp_06_4060                                ;; 06:40c1 $20 $9d
    ld   A, [wD37E]                                    ;; 06:40c3 $fa $7e $d3
    dec  A                                             ;; 06:40c6 $3d
    ld   [wD37E], A                                    ;; 06:40c7 $ea $7e $d3
    jr   jp_06_4060                                    ;; 06:40ca $18 $94

jr_06_40cc:
    ld   A, [wD37E]                                    ;; 06:40cc $fa $7e $d3
    dec  A                                             ;; 06:40cf $3d
    ld   [wD37E], A                                    ;; 06:40d0 $ea $7e $d3
    and  A, $01                                        ;; 06:40d3 $e6 $01
    jr   Z, jp_06_4060                                 ;; 06:40d5 $28 $89
    ld   A, [wD37E]                                    ;; 06:40d7 $fa $7e $d3
    inc  A                                             ;; 06:40da $3c
    ld   [wD37E], A                                    ;; 06:40db $ea $7e $d3
    jr   jp_06_4060                                    ;; 06:40de $18 $80

jp_06_40e0:
    ld   A, [wD37E]                                    ;; 06:40e0 $fa $7e $d3
    dec  A                                             ;; 06:40e3 $3d
    dec  A                                             ;; 06:40e4 $3d
    ld   [wD37E], A                                    ;; 06:40e5 $ea $7e $d3
    and  A, $80                                        ;; 06:40e8 $e6 $80
    jp   Z, jp_06_4060                                 ;; 06:40ea $ca $60 $40
    ld   A, [wD37E]                                    ;; 06:40ed $fa $7e $d3
    inc  A                                             ;; 06:40f0 $3c
    inc  A                                             ;; 06:40f1 $3c
    ld   [wD37E], A                                    ;; 06:40f2 $ea $7e $d3
    jp   jp_06_4060                                    ;; 06:40f5 $c3 $60 $40

jp_06_40f8:
    ld   A, [wD37E]                                    ;; 06:40f8 $fa $7e $d3
    inc  A                                             ;; 06:40fb $3c
    inc  A                                             ;; 06:40fc $3c
    ld   [wD37E], A                                    ;; 06:40fd $ea $7e $d3
    cp   A, $04                                        ;; 06:4100 $fe $04
    jp   C, jp_06_4060                                 ;; 06:4102 $da $60 $40
    ld   A, [wD37E]                                    ;; 06:4105 $fa $7e $d3
    dec  A                                             ;; 06:4108 $3d
    dec  A                                             ;; 06:4109 $3d
    ld   [wD37E], A                                    ;; 06:410a $ea $7e $d3
    jp   jp_06_4060                                    ;; 06:410d $c3 $60 $40

jp_06_4110:
    ld   A, [wD377]                                    ;; 06:4110 $fa $77 $d3
    and  A, A                                          ;; 06:4113 $a7
    jr   Z, .jr_06_4126                                ;; 06:4114 $28 $10
    call call_06_4c65                                  ;; 06:4116 $cd $65 $4c
    xor  A, A                                          ;; 06:4119 $af
    ld   [wD377], A                                    ;; 06:411a $ea $77 $d3
    ld   [wD37F], A                                    ;; 06:411d $ea $7f $d3
    ld   [wD37B], A                                    ;; 06:4120 $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4123 $ea $7c $d3
.jr_06_4126:
    ld   A, [wD395]                                    ;; 06:4126 $fa $95 $d3
    and  A, A                                          ;; 06:4129 $a7
    ret  NZ                                            ;; 06:412a $c0
    call call_06_49c2                                  ;; 06:412b $cd $c2 $49
    ld   A, [wD378]                                    ;; 06:412e $fa $78 $d3
    cp   A, $01                                        ;; 06:4131 $fe $01
    jp   Z, .jp_06_4169                                ;; 06:4133 $ca $69 $41
    cp   A, $02                                        ;; 06:4136 $fe $02
    jp   Z, .jp_06_4200                                ;; 06:4138 $ca $00 $42
    cp   A, $03                                        ;; 06:413b $fe $03
    jp   Z, .jp_06_4230                                ;; 06:413d $ca $30 $42
    cp   A, $04                                        ;; 06:4140 $fe $04
    jp   Z, .jp_06_424d                                ;; 06:4142 $ca $4d $42
    cp   A, $05                                        ;; 06:4145 $fe $05
    jp   Z, .jp_06_4269                                ;; 06:4147 $ca $69 $42
    cp   A, $06                                        ;; 06:414a $fe $06
    jp   Z, .jp_06_4294                                ;; 06:414c $ca $94 $42
    cp   A, $07                                        ;; 06:414f $fe $07
    jp   Z, jp_06_4099                                 ;; 06:4151 $ca $99 $40
    ret                                                ;; 06:4154 $c9
.jp_06_4155:
    ld   HL, data_06_591f                              ;; 06:4155 $21 $1f $59
    ld   A, [wD379]                                    ;; 06:4158 $fa $79 $d3
    ld   C, A                                          ;; 06:415b $4f
    ld   B, $00                                        ;; 06:415c $06 $00
    add  HL, BC                                        ;; 06:415e $09
    ld   A, [HL]                                       ;; 06:415f $7e
    ld   [wShadowOAM], A                               ;; 06:4160 $ea $00 $c0
    ld   A, $02                                        ;; 06:4163 $3e $02
    call call_00_11a8                                  ;; 06:4165 $cd $a8 $11
    ret                                                ;; 06:4168 $c9
.jp_06_4169:
    ld   A, [wD37F]                                    ;; 06:4169 $fa $7f $d3
    and  A, A                                          ;; 06:416c $a7
    jr   Z, .jr_06_418a                                ;; 06:416d $28 $1b
    ld   A, [wD465]                                    ;; 06:416f $fa $65 $d4
    cp   A, $01                                        ;; 06:4172 $fe $01
    jp   NZ, .jp_06_420e                               ;; 06:4174 $c2 $0e $42
    ld   A, [wD380]                                    ;; 06:4177 $fa $80 $d3
    cp   A, $01                                        ;; 06:417a $fe $01
    jp   Z, .jp_06_420e                                ;; 06:417c $ca $0e $42
    ld   A, $02                                        ;; 06:417f $3e $02
    ld   [wD465], A                                    ;; 06:4181 $ea $65 $d4
    call call_06_42be                                  ;; 06:4184 $cd $be $42
    jp   jp_06_5243                                    ;; 06:4187 $c3 $43 $52
.jr_06_418a:
    ld   A, [wD393]                                    ;; 06:418a $fa $93 $d3
    ld   B, A                                          ;; 06:418d $47
    ld   A, [wD379]                                    ;; 06:418e $fa $79 $d3
    add  A, B                                          ;; 06:4191 $80
    ld   E, A                                          ;; 06:4192 $5f
    ld   D, $00                                        ;; 06:4193 $16 $00
    ld   HL, wC113                                     ;; 06:4195 $21 $13 $c1
    add  HL, DE                                        ;; 06:4198 $19
    ld   A, [HL]                                       ;; 06:4199 $7e
    and  A, A                                          ;; 06:419a $a7
    jr   Z, .jr_06_41fa                                ;; 06:419b $28 $5d
    ld   A, $01                                        ;; 06:419d $3e $01
    ld   [wD37F], A                                    ;; 06:419f $ea $7f $d3
    ld   HL, $9865                                     ;; 06:41a2 $21 $65 $98
    ld   A, H                                          ;; 06:41a5 $7c
    ld   [wD467], A                                    ;; 06:41a6 $ea $67 $d4
    ld   A, L                                          ;; 06:41a9 $7d
    ld   [wD468], A                                    ;; 06:41aa $ea $68 $d4
    ld   A, $09                                        ;; 06:41ad $3e $09
    ld   [wD38D], A                                    ;; 06:41af $ea $8d $d3
    ld   A, $04                                        ;; 06:41b2 $3e $04
    ld   [wD38E], A                                    ;; 06:41b4 $ea $8e $d3
    call call_06_56ca                                  ;; 06:41b7 $cd $ca $56
    ld   A, [wD393]                                    ;; 06:41ba $fa $93 $d3
    ld   B, A                                          ;; 06:41bd $47
    ld   A, [wD379]                                    ;; 06:41be $fa $79 $d3
    add  A, B                                          ;; 06:41c1 $80
    ld   E, A                                          ;; 06:41c2 $5f
    ld   D, $00                                        ;; 06:41c3 $16 $00
    ld   HL, wC113                                     ;; 06:41c5 $21 $13 $c1
    add  HL, DE                                        ;; 06:41c8 $19
    ld   A, [HL]                                       ;; 06:41c9 $7e
    ld   [wD466], A                                    ;; 06:41ca $ea $66 $d4
    cp   A, $0a                                        ;; 06:41cd $fe $0a
    jr   C, .jr_06_41de                                ;; 06:41cf $38 $0d
    ld   A, $03                                        ;; 06:41d1 $3e $03
    ld   [wD465], A                                    ;; 06:41d3 $ea $65 $d4
    ld   A, $16                                        ;; 06:41d6 $3e $16
    call call_00_11a8                                  ;; 06:41d8 $cd $a8 $11
    jp   jp_06_5243                                    ;; 06:41db $c3 $43 $52
.jr_06_41de:
    ld   A, $01                                        ;; 06:41de $3e $01
    ld   [wD465], A                                    ;; 06:41e0 $ea $65 $d4
    xor  A, A                                          ;; 06:41e3 $af
    ld   [wD380], A                                    ;; 06:41e4 $ea $80 $d3
    ld   A, $48                                        ;; 06:41e7 $3e $48
    ld   [wShadowOAM.04], A                            ;; 06:41e9 $ea $04 $c0
    ld   A, $38                                        ;; 06:41ec $3e $38
    ld   [wShadowOAM.05], A                            ;; 06:41ee $ea $05 $c0
    ld   A, $01                                        ;; 06:41f1 $3e $01
    call call_00_11a8                                  ;; 06:41f3 $cd $a8 $11
    jp   jp_06_5243                                    ;; 06:41f6 $c3 $43 $52
    db   $c9                                           ;; 06:41f9 ?
.jr_06_41fa:
    ld   A, $16                                        ;; 06:41fa $3e $16
    call call_00_11a8                                  ;; 06:41fc $cd $a8 $11
    ret                                                ;; 06:41ff $c9
.jp_06_4200:
    ld   A, [wD37F]                                    ;; 06:4200 $fa $7f $d3
    and  A, A                                          ;; 06:4203 $a7
    jr   NZ, .jp_06_420e                               ;; 06:4204 $20 $08
    ld   A, $03                                        ;; 06:4206 $3e $03
    call call_00_11a8                                  ;; 06:4208 $cd $a8 $11
    jp   jp_06_49b3                                    ;; 06:420b $c3 $b3 $49
.jp_06_420e:
    xor  A, A                                          ;; 06:420e $af
    ld   [wD37F], A                                    ;; 06:420f $ea $7f $d3
    ld   A, $01                                        ;; 06:4212 $3e $01
    ld   [wD377], A                                    ;; 06:4214 $ea $77 $d3
    xor  A, A                                          ;; 06:4217 $af
    ld   [wShadowOAM.04], A                            ;; 06:4218 $ea $04 $c0
    ld   [wShadowOAM.05], A                            ;; 06:421b $ea $05 $c0
    ld   A, [wD465]                                    ;; 06:421e $fa $65 $d4
    cp   A, $03                                        ;; 06:4221 $fe $03
    jp   Z, .jp_06_422b                                ;; 06:4223 $ca $2b $42
    ld   A, $03                                        ;; 06:4226 $3e $03
    call call_00_11a8                                  ;; 06:4228 $cd $a8 $11
.jp_06_422b:
    xor  A, A                                          ;; 06:422b $af
    ld   [wD465], A                                    ;; 06:422c $ea $65 $d4
    ret                                                ;; 06:422f $c9
.jp_06_4230:
    ld   A, [wD37F]                                    ;; 06:4230 $fa $7f $d3
    and  A, A                                          ;; 06:4233 $a7
    jr   NZ, .jr_06_4237                               ;; 06:4234 $20 $01
    ret                                                ;; 06:4236 $c9
.jr_06_4237:
    ld   A, [wD465]                                    ;; 06:4237 $fa $65 $d4
    cp   A, $01                                        ;; 06:423a $fe $01
    ret  NZ                                            ;; 06:423c $c0
    ld   A, $01                                        ;; 06:423d $3e $01
    ld   [wD380], A                                    ;; 06:423f $ea $80 $d3
    ld   A, $58                                        ;; 06:4242 $3e $58
    ld   [wShadowOAM.05], A                            ;; 06:4244 $ea $05 $c0
    ld   A, $02                                        ;; 06:4247 $3e $02
    call call_00_11a8                                  ;; 06:4249 $cd $a8 $11
    ret                                                ;; 06:424c $c9
.jp_06_424d:
    ld   A, [wD37F]                                    ;; 06:424d $fa $7f $d3
    and  A, A                                          ;; 06:4250 $a7
    jr   NZ, .jr_06_4254                               ;; 06:4251 $20 $01
    ret                                                ;; 06:4253 $c9
.jr_06_4254:
    ld   A, [wD465]                                    ;; 06:4254 $fa $65 $d4
    cp   A, $01                                        ;; 06:4257 $fe $01
    ret  NZ                                            ;; 06:4259 $c0
    xor  A, A                                          ;; 06:425a $af
    ld   [wD380], A                                    ;; 06:425b $ea $80 $d3
    ld   A, $38                                        ;; 06:425e $3e $38
    ld   [wShadowOAM.05], A                            ;; 06:4260 $ea $05 $c0
    ld   A, $02                                        ;; 06:4263 $3e $02
    call call_00_11a8                                  ;; 06:4265 $cd $a8 $11
    ret                                                ;; 06:4268 $c9
.jp_06_4269:
    ld   A, [wD37F]                                    ;; 06:4269 $fa $7f $d3
    and  A, A                                          ;; 06:426c $a7
    jr   Z, .jr_06_4270                                ;; 06:426d $28 $01
    ret                                                ;; 06:426f $c9
.jr_06_4270:
    ld   A, [wD379]                                    ;; 06:4270 $fa $79 $d3
    dec  A                                             ;; 06:4273 $3d
    ld   [wD379], A                                    ;; 06:4274 $ea $79 $d3
    and  A, $80                                        ;; 06:4277 $e6 $80
    jp   Z, .jp_06_4155                                ;; 06:4279 $ca $55 $41
    xor  A, A                                          ;; 06:427c $af
    ld   [wD379], A                                    ;; 06:427d $ea $79 $d3
    ld   A, [wD393]                                    ;; 06:4280 $fa $93 $d3
    dec  A                                             ;; 06:4283 $3d
    ld   B, A                                          ;; 06:4284 $47
    and  A, $80                                        ;; 06:4285 $e6 $80
    jp   NZ, .jp_06_4155                               ;; 06:4287 $c2 $55 $41
    ld   A, B                                          ;; 06:428a $78
    ld   [wD393], A                                    ;; 06:428b $ea $93 $d3
    call call_06_51d4                                  ;; 06:428e $cd $d4 $51
    jp   .jp_06_4155                                   ;; 06:4291 $c3 $55 $41
.jp_06_4294:
    ld   A, [wD37F]                                    ;; 06:4294 $fa $7f $d3
    and  A, A                                          ;; 06:4297 $a7
    jr   Z, .jr_06_429b                                ;; 06:4298 $28 $01
    ret                                                ;; 06:429a $c9
.jr_06_429b:
    ld   A, [wD379]                                    ;; 06:429b $fa $79 $d3
    inc  A                                             ;; 06:429e $3c
    ld   [wD379], A                                    ;; 06:429f $ea $79 $d3
    cp   A, $06                                        ;; 06:42a2 $fe $06
    jp   C, .jp_06_4155                                ;; 06:42a4 $da $55 $41
    ld   A, $05                                        ;; 06:42a7 $3e $05
    ld   [wD379], A                                    ;; 06:42a9 $ea $79 $d3
    ld   A, [wD393]                                    ;; 06:42ac $fa $93 $d3
    inc  A                                             ;; 06:42af $3c
    cp   A, $0f                                        ;; 06:42b0 $fe $0f
    jp   NC, .jp_06_4155                               ;; 06:42b2 $d2 $55 $41
    ld   [wD393], A                                    ;; 06:42b5 $ea $93 $d3
    call call_06_51d4                                  ;; 06:42b8 $cd $d4 $51
    jp   .jp_06_4155                                   ;; 06:42bb $c3 $55 $41

call_06_42be:
    ld   A, [wD466]                                    ;; 06:42be $fa $66 $d4
    cp   A, $09                                        ;; 06:42c1 $fe $09
    jp   Z, .jp_06_43a3                                ;; 06:42c3 $ca $a3 $43
    cp   A, $05                                        ;; 06:42c6 $fe $05
    jr   NC, .jr_06_4338                               ;; 06:42c8 $30 $6e
    ld   HL, wC104                                     ;; 06:42ca $21 $04 $c1
    call call_06_50dc                                  ;; 06:42cd $cd $dc $50
    call call_06_50e0                                  ;; 06:42d0 $cd $e0 $50
    ld   HL, wC106                                     ;; 06:42d3 $21 $06 $c1
    call call_06_50dc                                  ;; 06:42d6 $cd $dc $50
    ld   A, L                                          ;; 06:42d9 $7d
    sub  A, E                                          ;; 06:42da $93
    ld   A, H                                          ;; 06:42db $7c
    sbc  A, D                                          ;; 06:42dc $9a
    jr   NZ, .jr_06_42e1                               ;; 06:42dd $20 $02
    ld   A, L                                          ;; 06:42df $7d
    xor  A, E                                          ;; 06:42e0 $ab
.jr_06_42e1:
    jp   Z, .jp_06_442c                                ;; 06:42e1 $ca $2c $44
    ld   A, [wD466]                                    ;; 06:42e4 $fa $66 $d4
    dec  A                                             ;; 06:42e7 $3d
    cp   A, $01                                        ;; 06:42e8 $fe $01
    jr   C, .jr_06_42f8                                ;; 06:42ea $38 $0c
    jr   Z, .jr_06_4301                                ;; 06:42ec $28 $13
    cp   A, $02                                        ;; 06:42ee $fe $02
    jr   Z, .jr_06_4307                                ;; 06:42f0 $28 $15
    ld   DE, $12c                                      ;; 06:42f2 $11 $2c $01
    add  HL, DE                                        ;; 06:42f5 $19
    jr   .jp_06_430b                                   ;; 06:42f6 $18 $13
.jr_06_42f8:
    ld   HL, wC104                                     ;; 06:42f8 $21 $04 $c1
    call call_06_50dc                                  ;; 06:42fb $cd $dc $50
    jp   .jp_06_430b                                   ;; 06:42fe $c3 $0b $43
.jr_06_4301:
    ld   DE, $32                                       ;; 06:4301 $11 $32 $00
    add  HL, DE                                        ;; 06:4304 $19
    jr   .jp_06_430b                                   ;; 06:4305 $18 $04
.jr_06_4307:
    ld   DE, $64                                       ;; 06:4307 $11 $64 $00
    add  HL, DE                                        ;; 06:430a $19
.jp_06_430b:
    ld   A, H                                          ;; 06:430b $7c
    ld   [wC106], A                                    ;; 06:430c $ea $06 $c1
    ld   A, L                                          ;; 06:430f $7d
    ld   [wC107], A                                    ;; 06:4310 $ea $07 $c1
    call call_06_50e0                                  ;; 06:4313 $cd $e0 $50
    ld   HL, wC104                                     ;; 06:4316 $21 $04 $c1
    call call_06_50dc                                  ;; 06:4319 $cd $dc $50
    ld   A, L                                          ;; 06:431c $7d
    sub  A, E                                          ;; 06:431d $93
    ld   A, H                                          ;; 06:431e $7c
    sbc  A, D                                          ;; 06:431f $9a
    jr   NZ, .jr_06_4324                               ;; 06:4320 $20 $02
    ld   A, L                                          ;; 06:4322 $7d
    xor  A, E                                          ;; 06:4323 $ab
.jr_06_4324:
    jp   NC, .jp_06_43f2                               ;; 06:4324 $d2 $f2 $43
    ld   HL, wC104                                     ;; 06:4327 $21 $04 $c1
    call call_06_50dc                                  ;; 06:432a $cd $dc $50
    ld   A, H                                          ;; 06:432d $7c
    ld   [wC106], A                                    ;; 06:432e $ea $06 $c1
    ld   A, L                                          ;; 06:4331 $7d
    ld   [wC107], A                                    ;; 06:4332 $ea $07 $c1
    jp   .jp_06_43f2                                   ;; 06:4335 $c3 $f2 $43
.jr_06_4338:
    ld   HL, wC100                                     ;; 06:4338 $21 $00 $c1
    call call_06_50dc                                  ;; 06:433b $cd $dc $50
    call call_06_50e0                                  ;; 06:433e $cd $e0 $50
    ld   HL, wC102                                     ;; 06:4341 $21 $02 $c1
    call call_06_50dc                                  ;; 06:4344 $cd $dc $50
    ld   A, L                                          ;; 06:4347 $7d
    sub  A, E                                          ;; 06:4348 $93
    ld   A, H                                          ;; 06:4349 $7c
    sbc  A, D                                          ;; 06:434a $9a
    jr   NZ, .jr_06_434f                               ;; 06:434b $20 $02
    ld   A, L                                          ;; 06:434d $7d
    xor  A, E                                          ;; 06:434e $ab
.jr_06_434f:
    jp   Z, .jp_06_442c                                ;; 06:434f $ca $2c $44
    ld   A, [wD466]                                    ;; 06:4352 $fa $66 $d4
    dec  A                                             ;; 06:4355 $3d
    cp   A, $05                                        ;; 06:4356 $fe $05
    jr   C, .jr_06_4366                                ;; 06:4358 $38 $0c
    jr   Z, .jr_06_436e                                ;; 06:435a $28 $12
    cp   A, $06                                        ;; 06:435c $fe $06
    jr   Z, .jr_06_4374                                ;; 06:435e $28 $14
    ld   DE, $12c                                      ;; 06:4360 $11 $2c $01
    add  HL, DE                                        ;; 06:4363 $19
    jr   .jr_06_4378                                   ;; 06:4364 $18 $12
.jr_06_4366:
    ld   HL, wC100                                     ;; 06:4366 $21 $00 $c1
    call call_06_50dc                                  ;; 06:4369 $cd $dc $50
    jr   .jr_06_4378                                   ;; 06:436c $18 $0a
.jr_06_436e:
    ld   DE, $32                                       ;; 06:436e $11 $32 $00
    add  HL, DE                                        ;; 06:4371 $19
    jr   .jr_06_4378                                   ;; 06:4372 $18 $04
.jr_06_4374:
    ld   DE, $64                                       ;; 06:4374 $11 $64 $00
    add  HL, DE                                        ;; 06:4377 $19
.jr_06_4378:
    ld   A, H                                          ;; 06:4378 $7c
    ld   [wC102], A                                    ;; 06:4379 $ea $02 $c1
    ld   A, L                                          ;; 06:437c $7d
    ld   [wC103], A                                    ;; 06:437d $ea $03 $c1
    call call_06_50e0                                  ;; 06:4380 $cd $e0 $50
    ld   HL, wC100                                     ;; 06:4383 $21 $00 $c1
    call call_06_50dc                                  ;; 06:4386 $cd $dc $50
    ld   A, L                                          ;; 06:4389 $7d
    sub  A, E                                          ;; 06:438a $93
    ld   A, H                                          ;; 06:438b $7c
    sbc  A, D                                          ;; 06:438c $9a
    jr   NZ, .jr_06_4391                               ;; 06:438d $20 $02
    ld   A, L                                          ;; 06:438f $7d
    xor  A, E                                          ;; 06:4390 $ab
.jr_06_4391:
    jr   NC, .jp_06_43f2                               ;; 06:4391 $30 $5f
    ld   HL, wC100                                     ;; 06:4393 $21 $00 $c1
    call call_06_50dc                                  ;; 06:4396 $cd $dc $50
    ld   A, H                                          ;; 06:4399 $7c
    ld   [wC102], A                                    ;; 06:439a $ea $02 $c1
    ld   A, L                                          ;; 06:439d $7d
    ld   [wC103], A                                    ;; 06:439e $ea $03 $c1
    jr   .jp_06_43f2                                   ;; 06:43a1 $18 $4f
.jp_06_43a3:
    ld   HL, wC104                                     ;; 06:43a3 $21 $04 $c1
    call call_06_50dc                                  ;; 06:43a6 $cd $dc $50
    call call_06_50e0                                  ;; 06:43a9 $cd $e0 $50
    ld   HL, wC106                                     ;; 06:43ac $21 $06 $c1
    call call_06_50dc                                  ;; 06:43af $cd $dc $50
    ld   A, L                                          ;; 06:43b2 $7d
    sub  A, E                                          ;; 06:43b3 $93
    ld   A, H                                          ;; 06:43b4 $7c
    sbc  A, D                                          ;; 06:43b5 $9a
    jr   NZ, .jr_06_43ba                               ;; 06:43b6 $20 $02
    ld   A, L                                          ;; 06:43b8 $7d
    xor  A, E                                          ;; 06:43b9 $ab
.jr_06_43ba:
    jp   C, .jp_06_43d6                                ;; 06:43ba $da $d6 $43
    ld   HL, wC100                                     ;; 06:43bd $21 $00 $c1
    call call_06_50dc                                  ;; 06:43c0 $cd $dc $50
    call call_06_50e0                                  ;; 06:43c3 $cd $e0 $50
    ld   HL, wC102                                     ;; 06:43c6 $21 $02 $c1
    call call_06_50dc                                  ;; 06:43c9 $cd $dc $50
    ld   A, L                                          ;; 06:43cc $7d
    sub  A, E                                          ;; 06:43cd $93
    ld   A, H                                          ;; 06:43ce $7c
    sbc  A, D                                          ;; 06:43cf $9a
    jr   NZ, .jr_06_43d4                               ;; 06:43d0 $20 $02
    ld   A, L                                          ;; 06:43d2 $7d
    xor  A, E                                          ;; 06:43d3 $ab
.jr_06_43d4:
    jr   Z, .jp_06_442c                                ;; 06:43d4 $28 $56
.jp_06_43d6:
    ld   HL, wC104                                     ;; 06:43d6 $21 $04 $c1
    call call_06_50dc                                  ;; 06:43d9 $cd $dc $50
    ld   A, H                                          ;; 06:43dc $7c
    ld   [wC106], A                                    ;; 06:43dd $ea $06 $c1
    ld   A, L                                          ;; 06:43e0 $7d
    ld   [wC107], A                                    ;; 06:43e1 $ea $07 $c1
    ld   HL, wC100                                     ;; 06:43e4 $21 $00 $c1
    call call_06_50dc                                  ;; 06:43e7 $cd $dc $50
    ld   A, H                                          ;; 06:43ea $7c
    ld   [wC102], A                                    ;; 06:43eb $ea $02 $c1
    ld   A, L                                          ;; 06:43ee $7d
    ld   [wC103], A                                    ;; 06:43ef $ea $03 $c1
.jp_06_43f2:
    ld   A, [wD393]                                    ;; 06:43f2 $fa $93 $d3
    ld   B, A                                          ;; 06:43f5 $47
    ld   A, [wD379]                                    ;; 06:43f6 $fa $79 $d3
    add  A, B                                          ;; 06:43f9 $80
    ld   C, A                                          ;; 06:43fa $4f
    ld   B, $00                                        ;; 06:43fb $06 $00
    ld   HL, wC113                                     ;; 06:43fd $21 $13 $c1
    add  HL, BC                                        ;; 06:4400 $09
    call call_06_50e0                                  ;; 06:4401 $cd $e0 $50
    ld   A, $13                                        ;; 06:4404 $3e $13
    cp   A, C                                          ;; 06:4406 $b9
    jr   Z, .jr_06_4413                                ;; 06:4407 $28 $0a
    inc  HL                                            ;; 06:4409 $23
.jr_06_440a:
    ld   A, [HL+]                                      ;; 06:440a $2a
    ld   [DE], A                                       ;; 06:440b $12
    inc  DE                                            ;; 06:440c $13
    inc  C                                             ;; 06:440d $0c
    ld   A, C                                          ;; 06:440e $79
    cp   A, $13                                        ;; 06:440f $fe $13
    jr   NZ, .jr_06_440a                               ;; 06:4411 $20 $f7
.jr_06_4413:
    xor  A, A                                          ;; 06:4413 $af
    ld   [DE], A                                       ;; 06:4414 $12
    ld   A, $00                                        ;; 06:4415 $3e $00
    ld   [wShadowOAM.04], A                            ;; 06:4417 $ea $04 $c0
    ld   A, $00                                        ;; 06:441a $3e $00
    ld   [wShadowOAM.05], A                            ;; 06:441c $ea $05 $c0
    ld   A, [wC112]                                    ;; 06:441f $fa $12 $c1
    dec  A                                             ;; 06:4422 $3d
    ld   [wC112], A                                    ;; 06:4423 $ea $12 $c1
    ld   A, $1a                                        ;; 06:4426 $3e $1a
    call call_00_11a8                                  ;; 06:4428 $cd $a8 $11
    ret                                                ;; 06:442b $c9
.jp_06_442c:
    ld   A, $01                                        ;; 06:442c $3e $01
    ld   [wD465], A                                    ;; 06:442e $ea $65 $d4
    ld   A, $16                                        ;; 06:4431 $3e $16
    call call_00_11a8                                  ;; 06:4433 $cd $a8 $11
    ret                                                ;; 06:4436 $c9

jp_06_4437:
    ld   A, [wD377]                                    ;; 06:4437 $fa $77 $d3
    and  A, A                                          ;; 06:443a $a7
    jr   Z, .jr_06_444a                                ;; 06:443b $28 $0d
    call call_06_4cff                                  ;; 06:443d $cd $ff $4c
    xor  A, A                                          ;; 06:4440 $af
    ld   [wD377], A                                    ;; 06:4441 $ea $77 $d3
    ld   [wD37B], A                                    ;; 06:4444 $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4447 $ea $7c $d3
.jr_06_444a:
    call call_06_49c2                                  ;; 06:444a $cd $c2 $49
    ld   A, [wD378]                                    ;; 06:444d $fa $78 $d3
    cp   A, $01                                        ;; 06:4450 $fe $01
    jp   Z, .jp_06_448c                                ;; 06:4452 $ca $8c $44
    cp   A, $02                                        ;; 06:4455 $fe $02
    jp   Z, jp_06_49b3                                 ;; 06:4457 $ca $b3 $49
    cp   A, $03                                        ;; 06:445a $fe $03
    jp   Z, .jp_06_44ed                                ;; 06:445c $ca $ed $44
    cp   A, $04                                        ;; 06:445f $fe $04
    jp   Z, .jp_06_450f                                ;; 06:4461 $ca $0f $45
    cp   A, $07                                        ;; 06:4464 $fe $07
    jp   Z, jp_06_4099                                 ;; 06:4466 $ca $99 $40
    ret                                                ;; 06:4469 $c9
.jp_06_446a:
    ld   HL, data_06_5925                              ;; 06:446a $21 $25 $59
    ld   A, [wD379]                                    ;; 06:446d $fa $79 $d3
    ld   C, A                                          ;; 06:4470 $4f
    ld   B, $00                                        ;; 06:4471 $06 $00
    add  HL, BC                                        ;; 06:4473 $09
    ld   A, [HL]                                       ;; 06:4474 $7e
    ld   [wShadowOAM.05], A                            ;; 06:4475 $ea $05 $c0
    ld   [wShadowOAM.0D], A                            ;; 06:4478 $ea $0d $c0
    add  A, $08                                        ;; 06:447b $c6 $08
    ld   [wShadowOAM.09], A                            ;; 06:447d $ea $09 $c0
    ld   [wShadowOAM.11], A                            ;; 06:4480 $ea $11 $c0
    call call_06_52cc                                  ;; 06:4483 $cd $cc $52
    ld   A, $02                                        ;; 06:4486 $3e $02
    call call_00_11a8                                  ;; 06:4488 $cd $a8 $11
    ret                                                ;; 06:448b $c9
.jp_06_448c:
    ld   A, [wD464]                                    ;; 06:448c $fa $64 $d4
    and  A, A                                          ;; 06:448f $a7
    jr   NZ, .jr_06_44e7                               ;; 06:4490 $20 $55
    ld   A, [wD5B3]                                    ;; 06:4492 $fa $b3 $d5
    cp   A, $02                                        ;; 06:4495 $fe $02
    jr   NC, .jr_06_44e7                               ;; 06:4497 $30 $4e
    ld   HL, wC127                                     ;; 06:4499 $21 $27 $c1
    ld   A, [wD379]                                    ;; 06:449c $fa $79 $d3
    ld   E, A                                          ;; 06:449f $5f
    ld   D, $00                                        ;; 06:44a0 $16 $00
    add  HL, DE                                        ;; 06:44a2 $19
    xor  A, A                                          ;; 06:44a3 $af
    ld   [HL], A                                       ;; 06:44a4 $77
    ld   HL, data_06_592b                              ;; 06:44a5 $21 $2b $59
    sla  E                                             ;; 06:44a8 $cb $23
    rl   D                                             ;; 06:44aa $cb $12
    add  HL, DE                                        ;; 06:44ac $19
    ld   A, [HL+]                                      ;; 06:44ad $2a
    ld   L, [HL]                                       ;; 06:44ae $6e
    ld   H, A                                          ;; 06:44af $67
    ld   A, [HL+]                                      ;; 06:44b0 $2a
    ld   [wC143], A                                    ;; 06:44b1 $ea $43 $c1
    ld   A, [HL+]                                      ;; 06:44b4 $2a
    ld   [wC144], A                                    ;; 06:44b5 $ea $44 $c1
    ld   A, [HL+]                                      ;; 06:44b8 $2a
    ld   [wC145], A                                    ;; 06:44b9 $ea $45 $c1
    ld   A, [HL+]                                      ;; 06:44bc $2a
    ld   [wC146], A                                    ;; 06:44bd $ea $46 $c1
    ld   A, [HL+]                                      ;; 06:44c0 $2a
    ld   [wC147], A                                    ;; 06:44c1 $ea $47 $c1
    ld   A, [HL+]                                      ;; 06:44c4 $2a
    ld   [wC148], A                                    ;; 06:44c5 $ea $48 $c1
    ld   A, $00                                        ;; 06:44c8 $3e $00
    ld   [wC45B], A                                    ;; 06:44ca $ea $5b $c4
    ld   A, $01                                        ;; 06:44cd $3e $01
    ld   [wD586], A                                    ;; 06:44cf $ea $86 $d5
    ld   [wD58D], A                                    ;; 06:44d2 $ea $8d $d5
    ld   A, $8f                                        ;; 06:44d5 $3e $8f
    ld   [wD5D2], A                                    ;; 06:44d7 $ea $d2 $d5
    xor  A, A                                          ;; 06:44da $af
    ld   [wD58B], A                                    ;; 06:44db $ea $8b $d5
    ld   [wD58C], A                                    ;; 06:44de $ea $8c $d5
    ld   A, $0f                                        ;; 06:44e1 $3e $0f
    call call_00_11a8                                  ;; 06:44e3 $cd $a8 $11
    ret                                                ;; 06:44e6 $c9
.jr_06_44e7:
    ld   A, $16                                        ;; 06:44e7 $3e $16
    call call_00_11a8                                  ;; 06:44e9 $cd $a8 $11
    ret                                                ;; 06:44ec $c9
.jp_06_44ed:
    ld   A, [wD379]                                    ;; 06:44ed $fa $79 $d3
    inc  A                                             ;; 06:44f0 $3c
    cp   A, $06                                        ;; 06:44f1 $fe $06
    ret  Z                                             ;; 06:44f3 $c8
    ld   C, A                                          ;; 06:44f4 $4f
    ld   B, $00                                        ;; 06:44f5 $06 $00
    ld   HL, wC127                                     ;; 06:44f7 $21 $27 $c1
    add  HL, BC                                        ;; 06:44fa $09
.jr_06_44fb:
    ld   A, [HL+]                                      ;; 06:44fb $2a
    and  A, A                                          ;; 06:44fc $a7
    jr   NZ, .jr_06_4506                               ;; 06:44fd $20 $07
    inc  C                                             ;; 06:44ff $0c
    ld   A, C                                          ;; 06:4500 $79
    cp   A, $06                                        ;; 06:4501 $fe $06
    jr   NZ, .jr_06_44fb                               ;; 06:4503 $20 $f6
    ret                                                ;; 06:4505 $c9
.jr_06_4506:
    ld   A, C                                          ;; 06:4506 $79
    ld   [wD379], A                                    ;; 06:4507 $ea $79 $d3
    cp   A, $06                                        ;; 06:450a $fe $06
    jp   C, .jp_06_446a                                ;; 06:450c $da $6a $44
.jp_06_450f:
    ld   A, [wD379]                                    ;; 06:450f $fa $79 $d3
    dec  A                                             ;; 06:4512 $3d
    ld   C, A                                          ;; 06:4513 $4f
    ld   B, $00                                        ;; 06:4514 $06 $00
    and  A, $80                                        ;; 06:4516 $e6 $80
    ret  NZ                                            ;; 06:4518 $c0
    ld   HL, wC127                                     ;; 06:4519 $21 $27 $c1
    add  HL, BC                                        ;; 06:451c $09
.jr_06_451d:
    ld   A, [HL-]                                      ;; 06:451d $3a
    and  A, A                                          ;; 06:451e $a7
    jr   NZ, .jr_06_4528                               ;; 06:451f $20 $07
    dec  C                                             ;; 06:4521 $0d
    ld   A, C                                          ;; 06:4522 $79
    and  A, $80                                        ;; 06:4523 $e6 $80
    jr   Z, .jr_06_451d                                ;; 06:4525 $28 $f6
    ret                                                ;; 06:4527 $c9
.jr_06_4528:
    ld   A, C                                          ;; 06:4528 $79
    ld   [wD379], A                                    ;; 06:4529 $ea $79 $d3
    jp   .jp_06_446a                                   ;; 06:452c $c3 $6a $44

jp_06_452f:
    ld   A, [wD377]                                    ;; 06:452f $fa $77 $d3
    and  A, A                                          ;; 06:4532 $a7
    jr   Z, .jr_06_4545                                ;; 06:4533 $28 $10
    call call_06_4f6f                                  ;; 06:4535 $cd $6f $4f
    xor  A, A                                          ;; 06:4538 $af
    ld   [wD377], A                                    ;; 06:4539 $ea $77 $d3
    ld   [wD37F], A                                    ;; 06:453c $ea $7f $d3
    ld   [wD37B], A                                    ;; 06:453f $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4542 $ea $7c $d3
.jr_06_4545:
    ld   A, [wD395]                                    ;; 06:4545 $fa $95 $d3
    and  A, A                                          ;; 06:4548 $a7
    ret  NZ                                            ;; 06:4549 $c0
    call call_06_49c2                                  ;; 06:454a $cd $c2 $49
    ld   A, [wD378]                                    ;; 06:454d $fa $78 $d3
    cp   A, $01                                        ;; 06:4550 $fe $01
    jp   Z, jp_06_4588                                 ;; 06:4552 $ca $88 $45
    cp   A, $02                                        ;; 06:4555 $fe $02
    jp   Z, jp_06_45da                                 ;; 06:4557 $ca $da $45
    cp   A, $03                                        ;; 06:455a $fe $03
    jp   Z, jp_06_45f9                                 ;; 06:455c $ca $f9 $45
    cp   A, $04                                        ;; 06:455f $fe $04
    jp   Z, jp_06_4610                                 ;; 06:4561 $ca $10 $46
    cp   A, $05                                        ;; 06:4564 $fe $05
    jp   Z, jp_06_4626                                 ;; 06:4566 $ca $26 $46
    cp   A, $06                                        ;; 06:4569 $fe $06
    jp   Z, jp_06_463f                                 ;; 06:456b $ca $3f $46
    cp   A, $07                                        ;; 06:456e $fe $07
    jp   Z, jp_06_4099                                 ;; 06:4570 $ca $99 $40
    ret                                                ;; 06:4573 $c9

jp_06_4574:
    ld   HL, data_06_595b                              ;; 06:4574 $21 $5b $59
    ld   A, [wD379]                                    ;; 06:4577 $fa $79 $d3
    ld   C, A                                          ;; 06:457a $4f
    ld   B, $00                                        ;; 06:457b $06 $00
    add  HL, BC                                        ;; 06:457d $09
    ld   A, [HL]                                       ;; 06:457e $7e
    ld   [wShadowOAM], A                               ;; 06:457f $ea $00 $c0
    ld   A, $02                                        ;; 06:4582 $3e $02
    call call_00_11a8                                  ;; 06:4584 $cd $a8 $11
    ret                                                ;; 06:4587 $c9

jp_06_4588:
    ld   A, [wD37F]                                    ;; 06:4588 $fa $7f $d3
    and  A, A                                          ;; 06:458b $a7
    jr   Z, .jr_06_45a6                                ;; 06:458c $28 $18
    ld   A, [wD380]                                    ;; 06:458e $fa $80 $d3
    and  A, A                                          ;; 06:4591 $a7
    jr   NZ, jr_06_45e3                                ;; 06:4592 $20 $4f
    ld   A, [wD379]                                    ;; 06:4594 $fa $79 $d3
    ld   C, A                                          ;; 06:4597 $4f
    call call_00_3c65                                  ;; 06:4598 $cd $65 $3c
    ld   A, $01                                        ;; 06:459b $3e $01
    ld   [wD377], A                                    ;; 06:459d $ea $77 $d3
    ld   A, $21                                        ;; 06:45a0 $3e $21
    call call_00_11a8                                  ;; 06:45a2 $cd $a8 $11
    ret                                                ;; 06:45a5 $c9
.jr_06_45a6:
    ld   A, $01                                        ;; 06:45a6 $3e $01
    ld   [wD37F], A                                    ;; 06:45a8 $ea $7f $d3
    ld   HL, $98a2                                     ;; 06:45ab $21 $a2 $98
    ld   A, H                                          ;; 06:45ae $7c
    ld   [wD467], A                                    ;; 06:45af $ea $67 $d4
    ld   A, L                                          ;; 06:45b2 $7d
    ld   [wD468], A                                    ;; 06:45b3 $ea $68 $d4
    ld   A, $0e                                        ;; 06:45b6 $3e $0e
    ld   [wD38D], A                                    ;; 06:45b8 $ea $8d $d3
    ld   A, $06                                        ;; 06:45bb $3e $06
    ld   [wD38E], A                                    ;; 06:45bd $ea $8e $d3
    call call_06_56ca                                  ;; 06:45c0 $cd $ca $56
    xor  A, A                                          ;; 06:45c3 $af
    ld   [wD380], A                                    ;; 06:45c4 $ea $80 $d3
    call call_06_53df                                  ;; 06:45c7 $cd $df $53
    ld   A, $68                                        ;; 06:45ca $3e $68
    ld   [wShadowOAM.04], A                            ;; 06:45cc $ea $04 $c0
    ld   A, $2d                                        ;; 06:45cf $3e $2d
    ld   [wShadowOAM.05], A                            ;; 06:45d1 $ea $05 $c0
    ld   A, $01                                        ;; 06:45d4 $3e $01
    call call_00_11a8                                  ;; 06:45d6 $cd $a8 $11
    ret                                                ;; 06:45d9 $c9

jp_06_45da:
    ld   A, [wD37F]                                    ;; 06:45da $fa $7f $d3
    and  A, A                                          ;; 06:45dd $a7
    jr   NZ, jr_06_45e3                                ;; 06:45de $20 $03
    jp   jp_06_49b3                                    ;; 06:45e0 $c3 $b3 $49

jr_06_45e3:
    xor  A, A                                          ;; 06:45e3 $af
    ld   [wD37F], A                                    ;; 06:45e4 $ea $7f $d3
    ld   A, $01                                        ;; 06:45e7 $3e $01
    ld   [wD377], A                                    ;; 06:45e9 $ea $77 $d3
    xor  A, A                                          ;; 06:45ec $af
    ld   [wShadowOAM.04], A                            ;; 06:45ed $ea $04 $c0
    ld   [wShadowOAM.05], A                            ;; 06:45f0 $ea $05 $c0
    ld   A, $03                                        ;; 06:45f3 $3e $03
    call call_00_11a8                                  ;; 06:45f5 $cd $a8 $11
    ret                                                ;; 06:45f8 $c9

jp_06_45f9:
    ld   A, [wD37F]                                    ;; 06:45f9 $fa $7f $d3
    and  A, A                                          ;; 06:45fc $a7
    jr   NZ, .jr_06_4600                               ;; 06:45fd $20 $01
    ret                                                ;; 06:45ff $c9
.jr_06_4600:
    ld   A, $01                                        ;; 06:4600 $3e $01
    ld   [wD380], A                                    ;; 06:4602 $ea $80 $d3
    ld   A, $55                                        ;; 06:4605 $3e $55
    ld   [wShadowOAM.05], A                            ;; 06:4607 $ea $05 $c0
    ld   A, $02                                        ;; 06:460a $3e $02
    call call_00_11a8                                  ;; 06:460c $cd $a8 $11
    ret                                                ;; 06:460f $c9

jp_06_4610:
    ld   A, [wD37F]                                    ;; 06:4610 $fa $7f $d3
    and  A, A                                          ;; 06:4613 $a7
    jr   NZ, .jr_06_4617                               ;; 06:4614 $20 $01
    ret                                                ;; 06:4616 $c9
.jr_06_4617:
    xor  A, A                                          ;; 06:4617 $af
    ld   [wD380], A                                    ;; 06:4618 $ea $80 $d3
    ld   A, $2d                                        ;; 06:461b $3e $2d
    ld   [wShadowOAM.05], A                            ;; 06:461d $ea $05 $c0
    ld   A, $02                                        ;; 06:4620 $3e $02
    call call_00_11a8                                  ;; 06:4622 $cd $a8 $11
    ret                                                ;; 06:4625 $c9

jp_06_4626:
    ld   A, [wD37F]                                    ;; 06:4626 $fa $7f $d3
    and  A, A                                          ;; 06:4629 $a7
    ret  NZ                                            ;; 06:462a $c0
    ld   A, [wD379]                                    ;; 06:462b $fa $79 $d3
    dec  A                                             ;; 06:462e $3d
    ld   [wD379], A                                    ;; 06:462f $ea $79 $d3
    and  A, $80                                        ;; 06:4632 $e6 $80
    jp   Z, jp_06_4574                                 ;; 06:4634 $ca $74 $45
    ld   A, $02                                        ;; 06:4637 $3e $02
    ld   [wD379], A                                    ;; 06:4639 $ea $79 $d3
    jp   jp_06_4574                                    ;; 06:463c $c3 $74 $45

jp_06_463f:
    ld   A, [wD37F]                                    ;; 06:463f $fa $7f $d3
    and  A, A                                          ;; 06:4642 $a7
    ret  NZ                                            ;; 06:4643 $c0
    ld   A, [wD379]                                    ;; 06:4644 $fa $79 $d3
    inc  A                                             ;; 06:4647 $3c
    ld   [wD379], A                                    ;; 06:4648 $ea $79 $d3
    cp   A, $03                                        ;; 06:464b $fe $03
    jp   C, jp_06_4574                                 ;; 06:464d $da $74 $45
    xor  A, A                                          ;; 06:4650 $af
    ld   [wD379], A                                    ;; 06:4651 $ea $79 $d3
    jp   jp_06_4574                                    ;; 06:4654 $c3 $74 $45
    db   $3e, $0a, $ea, $00, $00, $0e, $00, $06        ;; 06:4657 ????????
    db   $00, $11, $58, $03, $cd, $55, $05, $11        ;; 06:465f ????????
    db   $00, $a0, $19, $01, $56, $03, $1e, $00        ;; 06:4667 ????????
    db   $cd, $57, $04, $3e, $28, $22, $22, $0e        ;; 06:466f ????????
    db   $01, $06, $00, $11, $58, $03, $cd, $55        ;; 06:4677 ????????
    db   $05, $11, $00, $a0, $19, $01, $56, $03        ;; 06:467f ????????
    db   $1e, $00, $cd, $57, $04, $3e, $28, $22        ;; 06:4687 ????????
    db   $22, $0e, $02, $06, $00, $11, $58, $03        ;; 06:468f ????????
    db   $cd, $55, $05, $11, $00, $a0, $19, $01        ;; 06:4697 ????????
    db   $56, $03, $1e, $00, $cd, $57, $04, $3e        ;; 06:469f ????????
    db   $28, $22, $22, $af, $ea, $00, $00, $3e        ;; 06:46a7 ????????
    db   $13, $cd, $a8, $11, $c3, $99, $40, $fa        ;; 06:46af ????????
    db   $77, $d3, $a7, $28, $10, $cd, $77, $4e        ;; 06:46b7 ????????
    db   $af, $ea, $77, $d3, $ea, $7b, $d3, $ea        ;; 06:46bf ????????
    db   $7c, $d3, $ea, $6b, $d4, $fa, $95, $d3        ;; 06:46c7 ????????
    db   $a7, $c0, $cd, $c2, $49, $fa, $78, $d3        ;; 06:46cf ????????
    db   $fe, $01, $28, $36, $fe, $02, $ca, $51        ;; 06:46d7 ????????
    db   $47, $fe, $03, $ca, $77, $47, $fe, $04        ;; 06:46df ????????
    db   $ca, $95, $47, $fe, $05, $ca, $b3, $47        ;; 06:46e7 ????????
    db   $fe, $06, $ca, $db, $47, $fe, $07, $ca        ;; 06:46ef ????????
    db   $04, $48, $c9, $21, $5e, $59, $fa, $79        ;; 06:46f7 ????????
    db   $d3, $4f, $06, $00, $09, $7e, $ea, $00        ;; 06:46ff ????????
    db   $c0, $cd, $33, $54, $3e, $02, $cd, $a8        ;; 06:4707 ????????
    db   $11, $c9, $fa, $6b, $d4, $a7, $c2, $bb        ;; 06:470f ????????
    db   $56, $fa, $84, $d3, $47, $fa, $79, $d3        ;; 06:4717 ????????
    db   $80, $fe, $09, $20, $27, $4f, $06, $00        ;; 06:471f ????????
    db   $21, $2d, $c1, $09, $7e, $a7, $28, $1c        ;; 06:4727 ????????
    db   $3e, $01, $ea, $6b, $d4, $af, $ea, $6a        ;; 06:472f ????????
    db   $d4, $cd, $61, $56, $3e, $90, $ea, $00        ;; 06:4737 ????????
    db   $c0, $3e, $25, $ea, $01, $c0, $3e, $21        ;; 06:473f ????????
    db   $cd, $a8, $11, $c9, $3e, $16, $cd, $a8        ;; 06:4747 ????????
    db   $11, $c9, $fa, $6b, $d4, $a7, $20, $03        ;; 06:474f ????????
    db   $c3, $b3, $49, $af, $ea, $6b, $d4, $fa        ;; 06:4757 ????????
    db   $e9, $d1, $cd, $a8, $11, $cd, $33, $54        ;; 06:475f ????????
    db   $3e, $60, $ea, $00, $c0, $3e, $15, $ea        ;; 06:4767 ????????
    db   $01, $c0, $3e, $03, $cd, $a8, $11, $c9        ;; 06:476f ????????
    db   $fa, $6b, $d4, $a7, $c8, $fa, $6a, $d4        ;; 06:4777 ????????
    db   $3c, $ea, $6a, $d4, $fe, $17, $38, $05        ;; 06:477f ????????
    db   $3e, $00, $ea, $6a, $d4, $cd, $61, $56        ;; 06:4787 ????????
    db   $3e, $02, $cd, $a8, $11, $c9, $fa, $6b        ;; 06:478f ????????
    db   $d4, $a7, $c8, $fa, $6a, $d4, $3d, $ea        ;; 06:4797 ????????
    db   $6a, $d4, $e6, $40, $28, $05, $3e, $16        ;; 06:479f ????????
    db   $ea, $6a, $d4, $cd, $61, $56, $3e, $02        ;; 06:47a7 ????????
    db   $cd, $a8, $11, $c9, $fa, $6b, $d4, $a7        ;; 06:47af ????????
    db   $c0, $fa, $79, $d3, $3d, $ea, $79, $d3        ;; 06:47b7 ????????
    db   $e6, $80, $ca, $fa, $46, $af, $ea, $79        ;; 06:47bf ????????
    db   $d3, $fa, $84, $d3, $3d, $4f, $e6, $80        ;; 06:47c7 ????????
    db   $28, $03, $3e, $00, $4f, $79, $ea, $84        ;; 06:47cf ????????
    db   $d3, $c3, $fa, $46, $fa, $6b, $d4, $a7        ;; 06:47d7 ????????
    db   $c0, $fa, $79, $d3, $3c, $ea, $79, $d3        ;; 06:47df ????????
    db   $fe, $03, $da, $fa, $46, $3e, $02, $ea        ;; 06:47e7 ????????
    db   $79, $d3, $fa, $84, $d3, $3c, $4f, $fe        ;; 06:47ef ????????
    db   $08, $38, $03, $3e, $07, $4f, $79, $ea        ;; 06:47f7 ????????
    db   $84, $d3, $c3, $fa, $46                       ;; 06:47ff ?????

jp_06_4804:
    ld   A, [wD46B]                                    ;; 06:4804 $fa $6b $d4
    and  A, A                                          ;; 06:4807 $a7
    jr   Z, .jr_06_4814                                ;; 06:4808 $28 $0a
    xor  A, A                                          ;; 06:480a $af
    ld   [wD46B], A                                    ;; 06:480b $ea $6b $d4
    ld   A, [wD1E9]                                    ;; 06:480e $fa $e9 $d1
    call call_00_11a8                                  ;; 06:4811 $cd $a8 $11
.jr_06_4814:
    jp   jp_06_4099                                    ;; 06:4814 $c3 $99 $40

jp_06_4817:
    ld   A, [wD377]                                    ;; 06:4817 $fa $77 $d3
    and  A, A                                          ;; 06:481a $a7
    jr   Z, .jr_06_4830                                ;; 06:481b $28 $13
    call call_06_4ef3                                  ;; 06:481d $cd $f3 $4e
    xor  A, A                                          ;; 06:4820 $af
    ld   [wD377], A                                    ;; 06:4821 $ea $77 $d3
    ld   [wD37B], A                                    ;; 06:4824 $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4827 $ea $7c $d3
    ld   [wD46B], A                                    ;; 06:482a $ea $6b $d4
    ld   [wD37F], A                                    ;; 06:482d $ea $7f $d3
.jr_06_4830:
    call call_06_49c2                                  ;; 06:4830 $cd $c2 $49
    ld   A, [wD378]                                    ;; 06:4833 $fa $78 $d3
    cp   A, $01                                        ;; 06:4836 $fe $01
    jr   Z, .jr_06_4870                                ;; 06:4838 $28 $36
    cp   A, $02                                        ;; 06:483a $fe $02
    jp   Z, .jp_06_48b7                                ;; 06:483c $ca $b7 $48
    cp   A, $03                                        ;; 06:483f $fe $03
    jp   Z, .jp_06_48ea                                ;; 06:4841 $ca $ea $48
    cp   A, $04                                        ;; 06:4844 $fe $04
    jp   Z, .jp_06_4908                                ;; 06:4846 $ca $08 $49
    cp   A, $05                                        ;; 06:4849 $fe $05
    jp   Z, .jp_06_4926                                ;; 06:484b $ca $26 $49
    cp   A, $06                                        ;; 06:484e $fe $06
    jp   Z, .jp_06_4953                                ;; 06:4850 $ca $53 $49
    cp   A, $07                                        ;; 06:4853 $fe $07
    jp   Z, jp_06_4804                                 ;; 06:4855 $ca $04 $48
    ret                                                ;; 06:4858 $c9
.jp_06_4859:
    ld   HL, data_06_591f                              ;; 06:4859 $21 $1f $59
    ld   A, [wD379]                                    ;; 06:485c $fa $79 $d3
    ld   C, A                                          ;; 06:485f $4f
    ld   B, $00                                        ;; 06:4860 $06 $00
    add  HL, BC                                        ;; 06:4862 $09
    ld   A, [HL]                                       ;; 06:4863 $7e
    ld   [wShadowOAM], A                               ;; 06:4864 $ea $00 $c0
    call call_06_5548                                  ;; 06:4867 $cd $48 $55
    ld   A, $02                                        ;; 06:486a $3e $02
    call call_00_11a8                                  ;; 06:486c $cd $a8 $11
    ret                                                ;; 06:486f $c9
.jr_06_4870:
    ld   A, [wD37F]                                    ;; 06:4870 $fa $7f $d3
    and  A, A                                          ;; 06:4873 $a7
    jp   Z, .jp_06_4981                                ;; 06:4874 $ca $81 $49
    ld   A, [wD46B]                                    ;; 06:4877 $fa $6b $d4
    and  A, A                                          ;; 06:487a $a7
    jp   NZ, jp_06_56bb                                ;; 06:487b $c2 $bb $56
    ld   A, [wD384]                                    ;; 06:487e $fa $84 $d3
    ld   B, A                                          ;; 06:4881 $47
    ld   A, [wD379]                                    ;; 06:4882 $fa $79 $d3
    add  A, B                                          ;; 06:4885 $80
    cp   A, $09                                        ;; 06:4886 $fe $09
    jr   NZ, .jr_06_48b1                               ;; 06:4888 $20 $27
    ld   C, A                                          ;; 06:488a $4f
    ld   B, $00                                        ;; 06:488b $06 $00
    ld   HL, wC12D                                     ;; 06:488d $21 $2d $c1
    add  HL, BC                                        ;; 06:4890 $09
    ld   A, [HL]                                       ;; 06:4891 $7e
    and  A, A                                          ;; 06:4892 $a7
    jr   Z, .jr_06_48b1                                ;; 06:4893 $28 $1c
    ld   A, $01                                        ;; 06:4895 $3e $01
    ld   [wD46B], A                                    ;; 06:4897 $ea $6b $d4
    xor  A, A                                          ;; 06:489a $af
    ld   [wD46A], A                                    ;; 06:489b $ea $6a $d4
    call call_06_5661                                  ;; 06:489e $cd $61 $56
    ld   A, $90                                        ;; 06:48a1 $3e $90
    ld   [wShadowOAM], A                               ;; 06:48a3 $ea $00 $c0
    ld   A, $25                                        ;; 06:48a6 $3e $25
    ld   [wShadowOAM.01], A                            ;; 06:48a8 $ea $01 $c0
    ld   A, $21                                        ;; 06:48ab $3e $21
    call call_00_11a8                                  ;; 06:48ad $cd $a8 $11
    ret                                                ;; 06:48b0 $c9
.jr_06_48b1:
    ld   A, $16                                        ;; 06:48b1 $3e $16
    call call_00_11a8                                  ;; 06:48b3 $cd $a8 $11
    ret                                                ;; 06:48b6 $c9
.jp_06_48b7:
    ld   A, [wD46B]                                    ;; 06:48b7 $fa $6b $d4
    and  A, A                                          ;; 06:48ba $a7
    jr   NZ, .jr_06_48c6                               ;; 06:48bb $20 $09
    ld   A, [wD37F]                                    ;; 06:48bd $fa $7f $d3
    and  A, A                                          ;; 06:48c0 $a7
    jr   NZ, .jr_06_48de                               ;; 06:48c1 $20 $1b
    jp   jp_06_49b3                                    ;; 06:48c3 $c3 $b3 $49
.jr_06_48c6:
    xor  A, A                                          ;; 06:48c6 $af
    ld   [wD46B], A                                    ;; 06:48c7 $ea $6b $d4
    ld   A, [wD1E9]                                    ;; 06:48ca $fa $e9 $d1
    call call_00_11a8                                  ;; 06:48cd $cd $a8 $11
    ld   A, $00                                        ;; 06:48d0 $3e $00
    ld   [wShadowOAM], A                               ;; 06:48d2 $ea $00 $c0
    ld   A, $00                                        ;; 06:48d5 $3e $00
    ld   [wShadowOAM.01], A                            ;; 06:48d7 $ea $01 $c0
    call call_06_5609                                  ;; 06:48da $cd $09 $56
    ret                                                ;; 06:48dd $c9
.jr_06_48de:
    xor  A, A                                          ;; 06:48de $af
    ld   [wD37F], A                                    ;; 06:48df $ea $7f $d3
    ld   A, $15                                        ;; 06:48e2 $3e $15
    ld   [wShadowOAM.01], A                            ;; 06:48e4 $ea $01 $c0
    jp   .jp_06_4859                                   ;; 06:48e7 $c3 $59 $48
.jp_06_48ea:
    ld   A, [wD46B]                                    ;; 06:48ea $fa $6b $d4
    and  A, A                                          ;; 06:48ed $a7
    ret  Z                                             ;; 06:48ee $c8
    ld   A, [wD46A]                                    ;; 06:48ef $fa $6a $d4
    inc  A                                             ;; 06:48f2 $3c
    ld   [wD46A], A                                    ;; 06:48f3 $ea $6a $d4
    cp   A, $17                                        ;; 06:48f6 $fe $17
    jr   C, .jr_06_48ff                                ;; 06:48f8 $38 $05
    ld   A, $00                                        ;; 06:48fa $3e $00
    ld   [wD46A], A                                    ;; 06:48fc $ea $6a $d4
.jr_06_48ff:
    call call_06_5661                                  ;; 06:48ff $cd $61 $56
    ld   A, $02                                        ;; 06:4902 $3e $02
    call call_00_11a8                                  ;; 06:4904 $cd $a8 $11
    ret                                                ;; 06:4907 $c9
.jp_06_4908:
    ld   A, [wD46B]                                    ;; 06:4908 $fa $6b $d4
    and  A, A                                          ;; 06:490b $a7
    ret  Z                                             ;; 06:490c $c8
    ld   A, [wD46A]                                    ;; 06:490d $fa $6a $d4
    dec  A                                             ;; 06:4910 $3d
    ld   [wD46A], A                                    ;; 06:4911 $ea $6a $d4
    and  A, $40                                        ;; 06:4914 $e6 $40
    jr   Z, .jr_06_491d                                ;; 06:4916 $28 $05
    ld   A, $16                                        ;; 06:4918 $3e $16
    ld   [wD46A], A                                    ;; 06:491a $ea $6a $d4
.jr_06_491d:
    call call_06_5661                                  ;; 06:491d $cd $61 $56
    ld   A, $02                                        ;; 06:4920 $3e $02
    call call_00_11a8                                  ;; 06:4922 $cd $a8 $11
    ret                                                ;; 06:4925 $c9
.jp_06_4926:
    ld   A, [wD37F]                                    ;; 06:4926 $fa $7f $d3
    and  A, A                                          ;; 06:4929 $a7
    ret  NZ                                            ;; 06:492a $c0
    ld   A, [wD46B]                                    ;; 06:492b $fa $6b $d4
    and  A, A                                          ;; 06:492e $a7
    ret  NZ                                            ;; 06:492f $c0
    ld   A, [wD379]                                    ;; 06:4930 $fa $79 $d3
    dec  A                                             ;; 06:4933 $3d
    ld   [wD379], A                                    ;; 06:4934 $ea $79 $d3
    and  A, $80                                        ;; 06:4937 $e6 $80
    jp   Z, .jp_06_4859                                ;; 06:4939 $ca $59 $48
    xor  A, A                                          ;; 06:493c $af
    ld   [wD379], A                                    ;; 06:493d $ea $79 $d3
    ld   A, [wD384]                                    ;; 06:4940 $fa $84 $d3
    dec  A                                             ;; 06:4943 $3d
    ld   C, A                                          ;; 06:4944 $4f
    and  A, $80                                        ;; 06:4945 $e6 $80
    jr   Z, .jr_06_494c                                ;; 06:4947 $28 $03
    ld   A, $00                                        ;; 06:4949 $3e $00
    ld   C, A                                          ;; 06:494b $4f
.jr_06_494c:
    ld   A, C                                          ;; 06:494c $79
    ld   [wD384], A                                    ;; 06:494d $ea $84 $d3
    jp   .jp_06_4859                                   ;; 06:4950 $c3 $59 $48
.jp_06_4953:
    ld   A, [wD37F]                                    ;; 06:4953 $fa $7f $d3
    and  A, A                                          ;; 06:4956 $a7
    ret  NZ                                            ;; 06:4957 $c0
    ld   A, [wD46B]                                    ;; 06:4958 $fa $6b $d4
    and  A, A                                          ;; 06:495b $a7
    ret  NZ                                            ;; 06:495c $c0
    ld   A, [wD379]                                    ;; 06:495d $fa $79 $d3
    inc  A                                             ;; 06:4960 $3c
    ld   [wD379], A                                    ;; 06:4961 $ea $79 $d3
    cp   A, $06                                        ;; 06:4964 $fe $06
    jp   C, .jp_06_4859                                ;; 06:4966 $da $59 $48
    ld   A, $05                                        ;; 06:4969 $3e $05
    ld   [wD379], A                                    ;; 06:496b $ea $79 $d3
    ld   A, [wD384]                                    ;; 06:496e $fa $84 $d3
    inc  A                                             ;; 06:4971 $3c
    ld   C, A                                          ;; 06:4972 $4f
    cp   A, $05                                        ;; 06:4973 $fe $05
    jr   C, .jr_06_497a                                ;; 06:4975 $38 $03
    ld   A, $04                                        ;; 06:4977 $3e $04
    ld   C, A                                          ;; 06:4979 $4f
.jr_06_497a:
    ld   A, C                                          ;; 06:497a $79
    ld   [wD384], A                                    ;; 06:497b $ea $84 $d3
    jp   .jp_06_4859                                   ;; 06:497e $c3 $59 $48
.jp_06_4981:
    ld   A, [wD384]                                    ;; 06:4981 $fa $84 $d3
    ld   B, A                                          ;; 06:4984 $47
    ld   A, [wD379]                                    ;; 06:4985 $fa $79 $d3
    add  A, B                                          ;; 06:4988 $80
    ld   C, A                                          ;; 06:4989 $4f
    ld   B, $00                                        ;; 06:498a $06 $00
    ld   HL, wC12D                                     ;; 06:498c $21 $2d $c1
    add  HL, BC                                        ;; 06:498f $09
    ld   A, [HL]                                       ;; 06:4990 $7e
    and  A, A                                          ;; 06:4991 $a7
    jr   NZ, .jr_06_499a                               ;; 06:4992 $20 $06
    ld   A, $16                                        ;; 06:4994 $3e $16
    call call_00_11a8                                  ;; 06:4996 $cd $a8 $11
    ret                                                ;; 06:4999 $c9
.jr_06_499a:
    ld   A, $01                                        ;; 06:499a $3e $01
    ld   [wD37F], A                                    ;; 06:499c $ea $7f $d3
    ld   A, $00                                        ;; 06:499f $3e $00
    ld   [wShadowOAM], A                               ;; 06:49a1 $ea $00 $c0
    ld   A, $00                                        ;; 06:49a4 $3e $00
    ld   [wShadowOAM.01], A                            ;; 06:49a6 $ea $01 $c0
    call call_06_5609                                  ;; 06:49a9 $cd $09 $56
    ld   A, $21                                        ;; 06:49ac $3e $21
    call call_00_11a8                                  ;; 06:49ae $cd $a8 $11
    ret                                                ;; 06:49b1 $c9
    db   $c9                                           ;; 06:49b2 ?

jp_06_49b3:
    xor  A, A                                          ;; 06:49b3 $af
    ld   [wD376], A                                    ;; 06:49b4 $ea $76 $d3
    ld   A, $01                                        ;; 06:49b7 $3e $01
    ld   [wD377], A                                    ;; 06:49b9 $ea $77 $d3
    ld   A, $03                                        ;; 06:49bc $3e $03
    call call_00_11a8                                  ;; 06:49be $cd $a8 $11
    ret                                                ;; 06:49c1 $c9

call_06_49c2:
    ld   A, [wJoypadDown]                              ;; 06:49c2 $fa $7e $d5
    cp   A, $0f                                        ;; 06:49c5 $fe $0f
    jp   Z, jp_00_015d                                 ;; 06:49c7 $ca $5d $01
    xor  A, A                                          ;; 06:49ca $af
    ld   [wD378], A                                    ;; 06:49cb $ea $78 $d3
    ld   A, [wJoypadPressed]                           ;; 06:49ce $fa $7f $d5
    bit  0, A                                          ;; 06:49d1 $cb $47
    jr   NZ, .jr_06_4a0d                               ;; 06:49d3 $20 $38
    bit  1, A                                          ;; 06:49d5 $cb $4f
    jr   NZ, .jr_06_4a13                               ;; 06:49d7 $20 $3a
    bit  3, A                                          ;; 06:49d9 $cb $5f
    jp   NZ, .jp_06_4a6a                               ;; 06:49db $c2 $6a $4a
    bit  2, A                                          ;; 06:49de $cb $57
    jr   NZ, .jr_06_4a05                               ;; 06:49e0 $20 $23
    ld   A, [wD37A]                                    ;; 06:49e2 $fa $7a $d3
    cp   A, $00                                        ;; 06:49e5 $fe $00
    jr   Z, .jr_06_49ee                                ;; 06:49e7 $28 $05
    dec  A                                             ;; 06:49e9 $3d
    ld   [wD37A], A                                    ;; 06:49ea $ea $7a $d3
    ret                                                ;; 06:49ed $c9
.jr_06_49ee:
    xor  A, A                                          ;; 06:49ee $af
    ld   [wD37A], A                                    ;; 06:49ef $ea $7a $d3
    ld   A, [wJoypadDown]                              ;; 06:49f2 $fa $7e $d5
    bit  4, A                                          ;; 06:49f5 $cb $67
    jr   NZ, .jr_06_4a19                               ;; 06:49f7 $20 $20
    bit  5, A                                          ;; 06:49f9 $cb $6f
    jr   NZ, .jr_06_4a27                               ;; 06:49fb $20 $2a
    bit  6, A                                          ;; 06:49fd $cb $77
    jr   NZ, .jr_06_4a34                               ;; 06:49ff $20 $33
    bit  7, A                                          ;; 06:4a01 $cb $7f
    jr   NZ, .jr_06_4a4f                               ;; 06:4a03 $20 $4a
.jr_06_4a05:
    xor  A, A                                          ;; 06:4a05 $af
    ld   [wD37B], A                                    ;; 06:4a06 $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4a09 $ea $7c $d3
    ret                                                ;; 06:4a0c $c9
.jr_06_4a0d:
    ld   A, $01                                        ;; 06:4a0d $3e $01
    ld   [wD378], A                                    ;; 06:4a0f $ea $78 $d3
    ret                                                ;; 06:4a12 $c9
.jr_06_4a13:
    ld   A, $02                                        ;; 06:4a13 $3e $02
    ld   [wD378], A                                    ;; 06:4a15 $ea $78 $d3
    ret                                                ;; 06:4a18 $c9
.jr_06_4a19:
    ld   A, $03                                        ;; 06:4a19 $3e $03
    ld   [wD378], A                                    ;; 06:4a1b $ea $78 $d3
    xor  A, A                                          ;; 06:4a1e $af
    ld   [wD37B], A                                    ;; 06:4a1f $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4a22 $ea $7c $d3
    jr   .jr_06_4a70                                   ;; 06:4a25 $18 $49
.jr_06_4a27:
    ld   A, $04                                        ;; 06:4a27 $3e $04
    ld   [wD378], A                                    ;; 06:4a29 $ea $78 $d3
    ld   [wD37B], A                                    ;; 06:4a2c $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:4a2f $ea $7c $d3
    jr   .jr_06_4a70                                   ;; 06:4a32 $18 $3c
.jr_06_4a34:
    ld   A, $05                                        ;; 06:4a34 $3e $05
    ld   [wD378], A                                    ;; 06:4a36 $ea $78 $d3
    xor  A, A                                          ;; 06:4a39 $af
    ld   [wD37C], A                                    ;; 06:4a3a $ea $7c $d3
    ld   A, [wD37B]                                    ;; 06:4a3d $fa $7b $d3
    inc  A                                             ;; 06:4a40 $3c
    ld   [wD37B], A                                    ;; 06:4a41 $ea $7b $d3
    cp   A, $03                                        ;; 06:4a44 $fe $03
    jr   C, .jr_06_4a70                                ;; 06:4a46 $38 $28
    ld   A, $01                                        ;; 06:4a48 $3e $01
    ld   [wD37D], A                                    ;; 06:4a4a $ea $7d $d3
    jr   .jr_06_4a70                                   ;; 06:4a4d $18 $21
.jr_06_4a4f:
    ld   A, $06                                        ;; 06:4a4f $3e $06
    ld   [wD378], A                                    ;; 06:4a51 $ea $78 $d3
    xor  A, A                                          ;; 06:4a54 $af
    ld   [wD37B], A                                    ;; 06:4a55 $ea $7b $d3
    ld   A, [wD37C]                                    ;; 06:4a58 $fa $7c $d3
    inc  A                                             ;; 06:4a5b $3c
    ld   [wD37C], A                                    ;; 06:4a5c $ea $7c $d3
    cp   A, $03                                        ;; 06:4a5f $fe $03
    jr   C, .jr_06_4a70                                ;; 06:4a61 $38 $0d
    ld   A, $01                                        ;; 06:4a63 $3e $01
    ld   [wD37D], A                                    ;; 06:4a65 $ea $7d $d3
    jr   .jr_06_4a70                                   ;; 06:4a68 $18 $06
.jp_06_4a6a:
    ld   A, $07                                        ;; 06:4a6a $3e $07
    ld   [wD378], A                                    ;; 06:4a6c $ea $78 $d3
    ret                                                ;; 06:4a6f $c9
.jr_06_4a70:
    ld   A, [wD37D]                                    ;; 06:4a70 $fa $7d $d3
    and  A, A                                          ;; 06:4a73 $a7
    jr   Z, .jr_06_4a80                                ;; 06:4a74 $28 $0a
    ld   A, $05                                        ;; 06:4a76 $3e $05
    ld   [wD37A], A                                    ;; 06:4a78 $ea $7a $d3
    xor  A, A                                          ;; 06:4a7b $af
    ld   [wD37D], A                                    ;; 06:4a7c $ea $7d $d3
    ret                                                ;; 06:4a7f $c9
.jr_06_4a80:
    ld   A, $14                                        ;; 06:4a80 $3e $14
    ld   [wD37A], A                                    ;; 06:4a82 $ea $7a $d3
    ret                                                ;; 06:4a85 $c9

call_06_4a86:
    call call_00_0f39                                  ;; 06:4a86 $cd $39 $0f
    call disableLCD                                    ;; 06:4a89 $cd $23 $04
    ld   HL, data_06_5a16                              ;; 06:4a8c $21 $16 $5a
    ld   DE, $8000                                     ;; 06:4a8f $11 $00 $80
    ld   BC, $c0                                       ;; 06:4a92 $01 $c0 $00
    call memcopy                                       ;; 06:4a95 $cd $4e $04
    ld   HL, data_06_5ad6                              ;; 06:4a98 $21 $d6 $5a
    ld   DE, $8800                                     ;; 06:4a9b $11 $00 $88
    ld   BC, $1000                                     ;; 06:4a9e $01 $00 $10
    call memcopy                                       ;; 06:4aa1 $cd $4e $04
    ld   A, $01                                        ;; 06:4aa4 $3e $01
    ldh  [rVBK], A                                     ;; 06:4aa6 $e0 $4f
    ld   HL, data_06_6ad6                              ;; 06:4aa8 $21 $d6 $6a
    ld   DE, $168                                      ;; 06:4aab $11 $68 $01
    add  HL, DE                                        ;; 06:4aae $19
    ld   D, H                                          ;; 06:4aaf $54
    ld   E, L                                          ;; 06:4ab0 $5d
    ld   HL, $9800                                     ;; 06:4ab1 $21 $00 $98
    ld   A, $14                                        ;; 06:4ab4 $3e $14
    ld   [wD4F6], A                                    ;; 06:4ab6 $ea $f6 $d4
    ld   C, $12                                        ;; 06:4ab9 $0e $12
    call call_06_5086                                  ;; 06:4abb $cd $86 $50
    xor  A, A                                          ;; 06:4abe $af
    ldh  [rVBK], A                                     ;; 06:4abf $e0 $4f
    ld   DE, data_06_6ad6                              ;; 06:4ac1 $11 $d6 $6a
    ld   HL, $9800                                     ;; 06:4ac4 $21 $00 $98
    ld   A, $14                                        ;; 06:4ac7 $3e $14
    ld   [wD4F6], A                                    ;; 06:4ac9 $ea $f6 $d4
    ld   C, $12                                        ;; 06:4acc $0e $12
    call call_06_5086                                  ;; 06:4ace $cd $86 $50
    ld   HL, data_06_7956                              ;; 06:4ad1 $21 $56 $79
    ld   DE, wCDA5                                     ;; 06:4ad4 $11 $a5 $cd
    ld   B, $40                                        ;; 06:4ad7 $06 $40
    call memcopySmall                                  ;; 06:4ad9 $cd $91 $05
    ld   HL, data_06_7956                              ;; 06:4adc $21 $56 $79
    ld   DE, wCDE5                                     ;; 06:4adf $11 $e5 $cd
    ld   B, $40                                        ;; 06:4ae2 $06 $40
    call memcopySmall                                  ;; 06:4ae4 $cd $91 $05
    ld   HL, data_06_7956                              ;; 06:4ae7 $21 $56 $79
    ld   DE, wCE25                                     ;; 06:4aea $11 $25 $ce
    ld   B, $40                                        ;; 06:4aed $06 $40
    call memcopySmall                                  ;; 06:4aef $cd $91 $05
    ld   HL, data_06_7956                              ;; 06:4af2 $21 $56 $79
    ld   DE, wCE65                                     ;; 06:4af5 $11 $65 $ce
    ld   B, $40                                        ;; 06:4af8 $06 $40
    call memcopySmall                                  ;; 06:4afa $cd $91 $05
    ld   HL, wCE25                                     ;; 06:4afd $21 $25 $ce
    call setBackgroundPaletteData                      ;; 06:4b00 $cd $9f $04
    ld   HL, wCE65                                     ;; 06:4b03 $21 $65 $ce
    call setSpritePaletteData                          ;; 06:4b06 $cd $ad $04
    ld   A, $d2                                        ;; 06:4b09 $3e $d2
    ldh  [rOBP0], A                                    ;; 06:4b0b $e0 $48
    ld   [wOBP0], A                                    ;; 06:4b0d $ea $d5 $d5
    ld   A, $e4                                        ;; 06:4b10 $3e $e4
    ldh  [rBGP], A                                     ;; 06:4b12 $e0 $47
    ld   [wBGP], A                                     ;; 06:4b14 $ea $d4 $d5
    xor  A, A                                          ;; 06:4b17 $af
    ld   [wD5E2], A                                    ;; 06:4b18 $ea $e2 $d5
    ld   HL, $9906                                     ;; 06:4b1b $21 $06 $99
    call call_06_50ca                                  ;; 06:4b1e $cd $ca $50
    ld   HL, wC106                                     ;; 06:4b21 $21 $06 $c1
    call call_06_50b0                                  ;; 06:4b24 $cd $b0 $50
    inc  HL                                            ;; 06:4b27 $23
    call call_06_50ca                                  ;; 06:4b28 $cd $ca $50
    ld   HL, wC104                                     ;; 06:4b2b $21 $04 $c1
    call call_06_50b0                                  ;; 06:4b2e $cd $b0 $50
    inc  HL                                            ;; 06:4b31 $23
    call call_06_50ca                                  ;; 06:4b32 $cd $ca $50
    ld   A, [wC13A]                                    ;; 06:4b35 $fa $3a $c1
    call call_06_50a1                                  ;; 06:4b38 $cd $a1 $50
    ld   DE, $16                                       ;; 06:4b3b $11 $16 $00
    add  HL, DE                                        ;; 06:4b3e $19
    call call_06_50ca                                  ;; 06:4b3f $cd $ca $50
    ld   HL, wC102                                     ;; 06:4b42 $21 $02 $c1
    call call_06_50b0                                  ;; 06:4b45 $cd $b0 $50
    inc  HL                                            ;; 06:4b48 $23
    call call_06_50ca                                  ;; 06:4b49 $cd $ca $50
    ld   HL, wC100                                     ;; 06:4b4c $21 $00 $c1
    call call_06_50b0                                  ;; 06:4b4f $cd $b0 $50
    inc  HL                                            ;; 06:4b52 $23
    call call_06_50ca                                  ;; 06:4b53 $cd $ca $50
    ld   A, [wC13B]                                    ;; 06:4b56 $fa $3b $c1
    call call_06_50a1                                  ;; 06:4b59 $cd $a1 $50
    ld   DE, $16                                       ;; 06:4b5c $11 $16 $00
    add  HL, DE                                        ;; 06:4b5f $19
    call call_06_50ca                                  ;; 06:4b60 $cd $ca $50
    ld   HL, wC108                                     ;; 06:4b63 $21 $08 $c1
    call call_06_50b0                                  ;; 06:4b66 $cd $b0 $50
    ld   DE, $05                                       ;; 06:4b69 $11 $05 $00
    add  HL, DE                                        ;; 06:4b6c $19
    call call_06_50ca                                  ;; 06:4b6d $cd $ca $50
    ld   A, [wC13C]                                    ;; 06:4b70 $fa $3c $c1
    call call_06_50a1                                  ;; 06:4b73 $cd $a1 $50
    ld   DE, $16                                       ;; 06:4b76 $11 $16 $00
    add  HL, DE                                        ;; 06:4b79 $19
    call call_06_50ca                                  ;; 06:4b7a $cd $ca $50
    ld   HL, wC10A                                     ;; 06:4b7d $21 $0a $c1
    call call_06_50b0                                  ;; 06:4b80 $cd $b0 $50
    ld   DE, $05                                       ;; 06:4b83 $11 $05 $00
    add  HL, DE                                        ;; 06:4b86 $19
    call call_06_50ca                                  ;; 06:4b87 $cd $ca $50
    ld   A, [wC13D]                                    ;; 06:4b8a $fa $3d $c1
    call call_06_50a1                                  ;; 06:4b8d $cd $a1 $50
    ld   DE, $3d                                       ;; 06:4b90 $11 $3d $00
    add  HL, DE                                        ;; 06:4b93 $19
    call call_06_50ca                                  ;; 06:4b94 $cd $ca $50
    ld   A, [wC13E]                                    ;; 06:4b97 $fa $3e $c1
    call call_06_50a1                                  ;; 06:4b9a $cd $a1 $50
    ld   DE, $17                                       ;; 06:4b9d $11 $17 $00
    add  HL, DE                                        ;; 06:4ba0 $19
    call call_06_50ca                                  ;; 06:4ba1 $cd $ca $50
    ld   A, [wC10E]                                    ;; 06:4ba4 $fa $0e $c1
    call call_06_50a1                                  ;; 06:4ba7 $cd $a1 $50
    ld   DE, $06                                       ;; 06:4baa $11 $06 $00
    add  HL, DE                                        ;; 06:4bad $19
    call call_06_50ca                                  ;; 06:4bae $cd $ca $50
    ld   A, [wC110]                                    ;; 06:4bb1 $fa $10 $c1
    call call_06_50a1                                  ;; 06:4bb4 $cd $a1 $50
    ld   DE, $16                                       ;; 06:4bb7 $11 $16 $00
    add  HL, DE                                        ;; 06:4bba $19
    call call_06_50ca                                  ;; 06:4bbb $cd $ca $50
    ld   A, [wC10F]                                    ;; 06:4bbe $fa $0f $c1
    call call_06_50a1                                  ;; 06:4bc1 $cd $a1 $50
    ld   DE, $06                                       ;; 06:4bc4 $11 $06 $00
    add  HL, DE                                        ;; 06:4bc7 $19
    call call_06_50ca                                  ;; 06:4bc8 $cd $ca $50
    ld   A, [wC111]                                    ;; 06:4bcb $fa $11 $c1
    call call_06_50a1                                  ;; 06:4bce $cd $a1 $50
    ld   DE, $07                                       ;; 06:4bd1 $11 $07 $00
    add  HL, DE                                        ;; 06:4bd4 $19
    xor  A, A                                          ;; 06:4bd5 $af
    ldh  [rIF], A                                      ;; 06:4bd6 $e0 $0f
    ld   A, $01                                        ;; 06:4bd8 $3e $01
    ldh  [rIE], A                                      ;; 06:4bda $e0 $ff
    ld   A, $c3                                        ;; 06:4bdc $3e $c3
    ldh  [rLCDC], A                                    ;; 06:4bde $e0 $40
    xor  A, A                                          ;; 06:4be0 $af
    ld   [wSCX], A                                     ;; 06:4be1 $ea $88 $d5
    ld   [wSCY], A                                     ;; 06:4be4 $ea $87 $d5
    ld   HL, wShadowOAM                                ;; 06:4be7 $21 $00 $c0
    ld   B, $a0                                        ;; 06:4bea $06 $a0
    call memzeroSmall                                  ;; 06:4bec $cd $8b $05
    xor  A, A                                          ;; 06:4bef $af
    ld   [wShadowOAM.02], A                            ;; 06:4bf0 $ea $02 $c0
    ld   A, $01                                        ;; 06:4bf3 $3e $01
    ld   [wShadowOAM.03], A                            ;; 06:4bf5 $ea $03 $c0
    ld   HL, data_06_5917                              ;; 06:4bf8 $21 $17 $59
    ld   A, [wD37E]                                    ;; 06:4bfb $fa $7e $d3
    ld   C, A                                          ;; 06:4bfe $4f
    sla  C                                             ;; 06:4bff $cb $21
    ld   B, $00                                        ;; 06:4c01 $06 $00
    add  HL, BC                                        ;; 06:4c03 $09
    ld   A, [HL+]                                      ;; 06:4c04 $2a
    ld   [wShadowOAM.01], A                            ;; 06:4c05 $ea $01 $c0
    ld   A, [HL]                                       ;; 06:4c08 $7e
    ld   [wShadowOAM], A                               ;; 06:4c09 $ea $00 $c0
    ld   HL, wShadowOAM.04                             ;; 06:4c0c $21 $04 $c0
    ld   DE, data_06_5961                              ;; 06:4c0f $11 $61 $59
    ld   B, $02                                        ;; 06:4c12 $06 $02
    ld   C, $05                                        ;; 06:4c14 $0e $05
    ld   A, $10                                        ;; 06:4c16 $3e $10
    ld   [wD4F7], A                                    ;; 06:4c18 $ea $f7 $d4
    ld   A, $08                                        ;; 06:4c1b $3e $08
    ld   [wD4F8], A                                    ;; 06:4c1d $ea $f8 $d4
.jr_06_4c20:
    ld   A, [wD4F7]                                    ;; 06:4c20 $fa $f7 $d4
    ld   [HL+], A                                      ;; 06:4c23 $22
    ld   A, [wD4F8]                                    ;; 06:4c24 $fa $f8 $d4
    ld   [HL+], A                                      ;; 06:4c27 $22
    add  A, $08                                        ;; 06:4c28 $c6 $08
    ld   [wD4F8], A                                    ;; 06:4c2a $ea $f8 $d4
    ld   A, [DE]                                       ;; 06:4c2d $1a
    ld   [HL+], A                                      ;; 06:4c2e $22
    inc  DE                                            ;; 06:4c2f $13
    inc  HL                                            ;; 06:4c30 $23
    dec  C                                             ;; 06:4c31 $0d
    jr   NZ, .jr_06_4c20                               ;; 06:4c32 $20 $ec
    ld   A, $40                                        ;; 06:4c34 $3e $40
    ld   [wD4F7], A                                    ;; 06:4c36 $ea $f7 $d4
    ld   A, $08                                        ;; 06:4c39 $3e $08
    ld   [wD4F8], A                                    ;; 06:4c3b $ea $f8 $d4
    ld   C, $05                                        ;; 06:4c3e $0e $05
    dec  B                                             ;; 06:4c40 $05
    jr   NZ, .jr_06_4c20                               ;; 06:4c41 $20 $dd
    ld   B, $18                                        ;; 06:4c43 $06 $18
    ld   C, $05                                        ;; 06:4c45 $0e $05
.jr_06_4c47:
    ld   A, B                                          ;; 06:4c47 $78
    ld   [HL+], A                                      ;; 06:4c48 $22
    ld   A, $08                                        ;; 06:4c49 $3e $08
    ld   [HL+], A                                      ;; 06:4c4b $22
    ld   A, $0a                                        ;; 06:4c4c $3e $0a
    ld   [HL+], A                                      ;; 06:4c4e $22
    inc  HL                                            ;; 06:4c4f $23
    ld   A, B                                          ;; 06:4c50 $78
    ld   [HL+], A                                      ;; 06:4c51 $22
    ld   A, $28                                        ;; 06:4c52 $3e $28
    ld   [HL+], A                                      ;; 06:4c54 $22
    ld   A, $0b                                        ;; 06:4c55 $3e $0b
    ld   [HL+], A                                      ;; 06:4c57 $22
    inc  HL                                            ;; 06:4c58 $23
    ld   A, B                                          ;; 06:4c59 $78
    add  A, $08                                        ;; 06:4c5a $c6 $08
    ld   B, A                                          ;; 06:4c5c $47
    dec  C                                             ;; 06:4c5d $0d
    jr   NZ, .jr_06_4c47                               ;; 06:4c5e $20 $e7
    xor  A, A                                          ;; 06:4c60 $af
    ld   [wD378], A                                    ;; 06:4c61 $ea $78 $d3
    ret                                                ;; 06:4c64 $c9

call_06_4c65:
    call call_00_0f39                                  ;; 06:4c65 $cd $39 $0f
    call disableLCD                                    ;; 06:4c68 $cd $23 $04
    ld   A, $01                                        ;; 06:4c6b $3e $01
    ldh  [rVBK], A                                     ;; 06:4c6d $e0 $4f
    ld   HL, data_06_6da6                              ;; 06:4c6f $21 $a6 $6d
    ld   DE, $168                                      ;; 06:4c72 $11 $68 $01
    add  HL, DE                                        ;; 06:4c75 $19
    ld   D, H                                          ;; 06:4c76 $54
    ld   E, L                                          ;; 06:4c77 $5d
    ld   HL, $9800                                     ;; 06:4c78 $21 $00 $98
    ld   A, $14                                        ;; 06:4c7b $3e $14
    ld   [wD4F6], A                                    ;; 06:4c7d $ea $f6 $d4
    ld   C, $12                                        ;; 06:4c80 $0e $12
    call call_06_5086                                  ;; 06:4c82 $cd $86 $50
    xor  A, A                                          ;; 06:4c85 $af
    ldh  [rVBK], A                                     ;; 06:4c86 $e0 $4f
    ld   DE, data_06_6da6                              ;; 06:4c88 $11 $a6 $6d
    ld   HL, $9800                                     ;; 06:4c8b $21 $00 $98
    ld   A, $14                                        ;; 06:4c8e $3e $14
    ld   [wD4F6], A                                    ;; 06:4c90 $ea $f6 $d4
    ld   C, $12                                        ;; 06:4c93 $0e $12
    call call_06_5086                                  ;; 06:4c95 $cd $86 $50
    ld   HL, $9829                                     ;; 06:4c98 $21 $29 $98
    call call_06_50ca                                  ;; 06:4c9b $cd $ca $50
    ld   HL, wC106                                     ;; 06:4c9e $21 $06 $c1
    call call_06_50b0                                  ;; 06:4ca1 $cd $b0 $50
    inc  HL                                            ;; 06:4ca4 $23
    call call_06_50ca                                  ;; 06:4ca5 $cd $ca $50
    ld   HL, wC104                                     ;; 06:4ca8 $21 $04 $c1
    call call_06_50b0                                  ;; 06:4cab $cd $b0 $50
    ld   DE, $19                                       ;; 06:4cae $11 $19 $00
    add  HL, DE                                        ;; 06:4cb1 $19
    call call_06_50ca                                  ;; 06:4cb2 $cd $ca $50
    ld   HL, wC102                                     ;; 06:4cb5 $21 $02 $c1
    call call_06_50b0                                  ;; 06:4cb8 $cd $b0 $50
    inc  HL                                            ;; 06:4cbb $23
    call call_06_50ca                                  ;; 06:4cbc $cd $ca $50
    ld   HL, wC100                                     ;; 06:4cbf $21 $00 $c1
    call call_06_50b0                                  ;; 06:4cc2 $cd $b0 $50
    call call_06_51d4                                  ;; 06:4cc5 $cd $d4 $51
    xor  A, A                                          ;; 06:4cc8 $af
    ldh  [rIF], A                                      ;; 06:4cc9 $e0 $0f
    ld   A, $01                                        ;; 06:4ccb $3e $01
    ldh  [rIE], A                                      ;; 06:4ccd $e0 $ff
    ld   A, $c3                                        ;; 06:4ccf $3e $c3
    ldh  [rLCDC], A                                    ;; 06:4cd1 $e0 $40
    ld   HL, wShadowOAM                                ;; 06:4cd3 $21 $00 $c0
    ld   B, $a0                                        ;; 06:4cd6 $06 $a0
    call memzeroSmall                                  ;; 06:4cd8 $cd $8b $05
    xor  A, A                                          ;; 06:4cdb $af
    ld   [wShadowOAM.02], A                            ;; 06:4cdc $ea $02 $c0
    ld   A, $01                                        ;; 06:4cdf $3e $01
    ld   [wShadowOAM.03], A                            ;; 06:4ce1 $ea $03 $c0
    ld   [wShadowOAM.07], A                            ;; 06:4ce4 $ea $07 $c0
    ld   HL, data_06_591f                              ;; 06:4ce7 $21 $1f $59
    ld   A, [wD379]                                    ;; 06:4cea $fa $79 $d3
    ld   C, A                                          ;; 06:4ced $4f
    ld   B, $00                                        ;; 06:4cee $06 $00
    add  HL, BC                                        ;; 06:4cf0 $09
    ld   A, [HL]                                       ;; 06:4cf1 $7e
    ld   [wShadowOAM], A                               ;; 06:4cf2 $ea $00 $c0
    ld   A, $15                                        ;; 06:4cf5 $3e $15
    ld   [wShadowOAM.01], A                            ;; 06:4cf7 $ea $01 $c0
    xor  A, A                                          ;; 06:4cfa $af
    ld   [wD378], A                                    ;; 06:4cfb $ea $78 $d3
    ret                                                ;; 06:4cfe $c9

call_06_4cff:
    call call_00_0f39                                  ;; 06:4cff $cd $39 $0f
    call disableLCD                                    ;; 06:4d02 $cd $23 $04
    ld   A, $01                                        ;; 06:4d05 $3e $01
    ldh  [rVBK], A                                     ;; 06:4d07 $e0 $4f
    ld   HL, data_06_7076                              ;; 06:4d09 $21 $76 $70
    ld   DE, $168                                      ;; 06:4d0c $11 $68 $01
    add  HL, DE                                        ;; 06:4d0f $19
    ld   D, H                                          ;; 06:4d10 $54
    ld   E, L                                          ;; 06:4d11 $5d
    ld   HL, $9800                                     ;; 06:4d12 $21 $00 $98
    ld   A, $14                                        ;; 06:4d15 $3e $14
    ld   [wD4F6], A                                    ;; 06:4d17 $ea $f6 $d4
    ld   C, $12                                        ;; 06:4d1a $0e $12
    call call_06_5086                                  ;; 06:4d1c $cd $86 $50
    xor  A, A                                          ;; 06:4d1f $af
    ldh  [rVBK], A                                     ;; 06:4d20 $e0 $4f
    ld   DE, data_06_7076                              ;; 06:4d22 $11 $76 $70
    ld   HL, $9800                                     ;; 06:4d25 $21 $00 $98
    ld   A, $14                                        ;; 06:4d28 $3e $14
    ld   [wD4F6], A                                    ;; 06:4d2a $ea $f6 $d4
    ld   C, $12                                        ;; 06:4d2d $0e $12
    call call_06_5086                                  ;; 06:4d2f $cd $86 $50
    ld   A, $01                                        ;; 06:4d32 $3e $01
    ldh  [rVBK], A                                     ;; 06:4d34 $e0 $4f
    ld   DE, data_06_596b                              ;; 06:4d36 $11 $6b $59
    ld   C, $06                                        ;; 06:4d39 $0e $06
    ld   HL, $9901                                     ;; 06:4d3b $21 $01 $99
.jr_06_4d3e:
    ld   A, [DE]                                       ;; 06:4d3e $1a
    ld   [HL+], A                                      ;; 06:4d3f $22
    ld   [HL+], A                                      ;; 06:4d40 $22
    push DE                                            ;; 06:4d41 $d5
    push HL                                            ;; 06:4d42 $e5
    ld   DE, $1e                                       ;; 06:4d43 $11 $1e $00
    add  HL, DE                                        ;; 06:4d46 $19
    ld   [HL+], A                                      ;; 06:4d47 $22
    ld   [HL], A                                       ;; 06:4d48 $77
    pop  HL                                            ;; 06:4d49 $e1
    pop  DE                                            ;; 06:4d4a $d1
    inc  DE                                            ;; 06:4d4b $13
    inc  HL                                            ;; 06:4d4c $23
    dec  C                                             ;; 06:4d4d $0d
    jr   NZ, .jr_06_4d3e                               ;; 06:4d4e $20 $ee
    xor  A, A                                          ;; 06:4d50 $af
    ldh  [rVBK], A                                     ;; 06:4d51 $e0 $4f
    ld   DE, wC127                                     ;; 06:4d53 $11 $27 $c1
    ld   C, $06                                        ;; 06:4d56 $0e $06
    ld   B, $40                                        ;; 06:4d58 $06 $40
    ld   HL, $9901                                     ;; 06:4d5a $21 $01 $99
.jr_06_4d5d:
    ld   A, [DE]                                       ;; 06:4d5d $1a
    and  A, A                                          ;; 06:4d5e $a7
    jr   Z, .jr_06_4d74                                ;; 06:4d5f $28 $13
    ld   A, B                                          ;; 06:4d61 $78
    ld   [HL+], A                                      ;; 06:4d62 $22
    inc  A                                             ;; 06:4d63 $3c
    ld   [HL+], A                                      ;; 06:4d64 $22
    push DE                                            ;; 06:4d65 $d5
    push HL                                            ;; 06:4d66 $e5
    ld   DE, $1e                                       ;; 06:4d67 $11 $1e $00
    add  HL, DE                                        ;; 06:4d6a $19
    add  A, $0f                                        ;; 06:4d6b $c6 $0f
    ld   [HL+], A                                      ;; 06:4d6d $22
    inc  A                                             ;; 06:4d6e $3c
    ld   [HL], A                                       ;; 06:4d6f $77
    pop  HL                                            ;; 06:4d70 $e1
    pop  DE                                            ;; 06:4d71 $d1
    jr   .jr_06_4d82                                   ;; 06:4d72 $18 $0e
.jr_06_4d74:
    ld   A, $80                                        ;; 06:4d74 $3e $80
    ld   [HL+], A                                      ;; 06:4d76 $22
    ld   [HL+], A                                      ;; 06:4d77 $22
    push DE                                            ;; 06:4d78 $d5
    push HL                                            ;; 06:4d79 $e5
    ld   DE, $1e                                       ;; 06:4d7a $11 $1e $00
    add  HL, DE                                        ;; 06:4d7d $19
    ld   [HL+], A                                      ;; 06:4d7e $22
    ld   [HL], A                                       ;; 06:4d7f $77
    pop  HL                                            ;; 06:4d80 $e1
    pop  DE                                            ;; 06:4d81 $d1
.jr_06_4d82:
    inc  DE                                            ;; 06:4d82 $13
    inc  HL                                            ;; 06:4d83 $23
    ld   A, $02                                        ;; 06:4d84 $3e $02
    add  A, B                                          ;; 06:4d86 $80
    ld   B, A                                          ;; 06:4d87 $47
    dec  C                                             ;; 06:4d88 $0d
    jr   NZ, .jr_06_4d5d                               ;; 06:4d89 $20 $d2
    xor  A, A                                          ;; 06:4d8b $af
    ldh  [rIF], A                                      ;; 06:4d8c $e0 $0f
    ld   A, $01                                        ;; 06:4d8e $3e $01
    ldh  [rIE], A                                      ;; 06:4d90 $e0 $ff
    ld   A, $c3                                        ;; 06:4d92 $3e $c3
    ldh  [rLCDC], A                                    ;; 06:4d94 $e0 $40
    ld   HL, wShadowOAM                                ;; 06:4d96 $21 $00 $c0
    ld   B, $a0                                        ;; 06:4d99 $06 $a0
    call memzeroSmall                                  ;; 06:4d9b $cd $8b $05
    xor  A, A                                          ;; 06:4d9e $af
    ld   [wShadowOAM.02], A                            ;; 06:4d9f $ea $02 $c0
    ld   A, $01                                        ;; 06:4da2 $3e $01
    ld   [wShadowOAM.03], A                            ;; 06:4da4 $ea $03 $c0
    ld   A, $60                                        ;; 06:4da7 $3e $60
    ld   [wShadowOAM.01], A                            ;; 06:4da9 $ea $01 $c0
    ld   A, $20                                        ;; 06:4dac $3e $20
    ld   [wShadowOAM], A                               ;; 06:4dae $ea $00 $c0
    ld   HL, wC127                                     ;; 06:4db1 $21 $27 $c1
    ld   B, $00                                        ;; 06:4db4 $06 $00
.jr_06_4db6:
    ld   A, [HL+]                                      ;; 06:4db6 $2a
    and  A, A                                          ;; 06:4db7 $a7
    jr   NZ, .jr_06_4dc7                               ;; 06:4db8 $20 $0d
    inc  B                                             ;; 06:4dba $04
    ld   A, B                                          ;; 06:4dbb $78
    cp   A, $06                                        ;; 06:4dbc $fe $06
    jr   C, .jr_06_4db6                                ;; 06:4dbe $38 $f6
    ld   A, $01                                        ;; 06:4dc0 $3e $01
    ld   [wD464], A                                    ;; 06:4dc2 $ea $64 $d4
    jr   .jr_06_4e1e                                   ;; 06:4dc5 $18 $57
.jr_06_4dc7:
    ld   A, B                                          ;; 06:4dc7 $78
    ld   [wD379], A                                    ;; 06:4dc8 $ea $79 $d3
    ld   A, $02                                        ;; 06:4dcb $3e $02
    ld   [wShadowOAM.06], A                            ;; 06:4dcd $ea $06 $c0
    ld   A, $50                                        ;; 06:4dd0 $3e $50
    ld   [wShadowOAM.04], A                            ;; 06:4dd2 $ea $04 $c0
    ld   A, $20                                        ;; 06:4dd5 $3e $20
    ld   [wShadowOAM.0B], A                            ;; 06:4dd7 $ea $0b $c0
    ld   A, $02                                        ;; 06:4dda $3e $02
    ld   [wShadowOAM.0A], A                            ;; 06:4ddc $ea $0a $c0
    ld   A, $50                                        ;; 06:4ddf $3e $50
    ld   [wShadowOAM.08], A                            ;; 06:4de1 $ea $08 $c0
    ld   A, $40                                        ;; 06:4de4 $3e $40
    ld   [wShadowOAM.0F], A                            ;; 06:4de6 $ea $0f $c0
    ld   A, $02                                        ;; 06:4de9 $3e $02
    ld   [wShadowOAM.0E], A                            ;; 06:4deb $ea $0e $c0
    ld   A, $58                                        ;; 06:4dee $3e $58
    ld   [wShadowOAM.0C], A                            ;; 06:4df0 $ea $0c $c0
    ld   A, $60                                        ;; 06:4df3 $3e $60
    ld   [wShadowOAM.13], A                            ;; 06:4df5 $ea $13 $c0
    ld   A, $02                                        ;; 06:4df8 $3e $02
    ld   [wShadowOAM.12], A                            ;; 06:4dfa $ea $12 $c0
    ld   A, $58                                        ;; 06:4dfd $3e $58
    ld   [wShadowOAM.10], A                            ;; 06:4dff $ea $10 $c0
    ld   HL, data_06_5925                              ;; 06:4e02 $21 $25 $59
    ld   A, [wD379]                                    ;; 06:4e05 $fa $79 $d3
    ld   C, A                                          ;; 06:4e08 $4f
    ld   B, $00                                        ;; 06:4e09 $06 $00
    add  HL, BC                                        ;; 06:4e0b $09
    ld   A, [HL]                                       ;; 06:4e0c $7e
    ld   [wShadowOAM.05], A                            ;; 06:4e0d $ea $05 $c0
    ld   [wShadowOAM.0D], A                            ;; 06:4e10 $ea $0d $c0
    add  A, $08                                        ;; 06:4e13 $c6 $08
    ld   [wShadowOAM.09], A                            ;; 06:4e15 $ea $09 $c0
    ld   [wShadowOAM.11], A                            ;; 06:4e18 $ea $11 $c0
    call call_06_52cc                                  ;; 06:4e1b $cd $cc $52
.jr_06_4e1e:
    ld   HL, wShadowOAM.14                             ;; 06:4e1e $21 $14 $c0
    ld   DE, data_06_5961                              ;; 06:4e21 $11 $61 $59
    ld   B, $02                                        ;; 06:4e24 $06 $02
    ld   C, $05                                        ;; 06:4e26 $0e $05
    ld   A, $10                                        ;; 06:4e28 $3e $10
    ld   [wD4F7], A                                    ;; 06:4e2a $ea $f7 $d4
    ld   A, $08                                        ;; 06:4e2d $3e $08
    ld   [wD4F8], A                                    ;; 06:4e2f $ea $f8 $d4
.jr_06_4e32:
    ld   A, [wD4F7]                                    ;; 06:4e32 $fa $f7 $d4
    ld   [HL+], A                                      ;; 06:4e35 $22
    ld   A, [wD4F8]                                    ;; 06:4e36 $fa $f8 $d4
    ld   [HL+], A                                      ;; 06:4e39 $22
    add  A, $08                                        ;; 06:4e3a $c6 $08
    ld   [wD4F8], A                                    ;; 06:4e3c $ea $f8 $d4
    ld   A, [DE]                                       ;; 06:4e3f $1a
    ld   [HL+], A                                      ;; 06:4e40 $22
    inc  DE                                            ;; 06:4e41 $13
    inc  HL                                            ;; 06:4e42 $23
    dec  C                                             ;; 06:4e43 $0d
    jr   NZ, .jr_06_4e32                               ;; 06:4e44 $20 $ec
    ld   A, $40                                        ;; 06:4e46 $3e $40
    ld   [wD4F7], A                                    ;; 06:4e48 $ea $f7 $d4
    ld   A, $08                                        ;; 06:4e4b $3e $08
    ld   [wD4F8], A                                    ;; 06:4e4d $ea $f8 $d4
    ld   C, $05                                        ;; 06:4e50 $0e $05
    dec  B                                             ;; 06:4e52 $05
    jr   NZ, .jr_06_4e32                               ;; 06:4e53 $20 $dd
    ld   B, $18                                        ;; 06:4e55 $06 $18
    ld   C, $05                                        ;; 06:4e57 $0e $05
.jr_06_4e59:
    ld   A, B                                          ;; 06:4e59 $78
    ld   [HL+], A                                      ;; 06:4e5a $22
    ld   A, $08                                        ;; 06:4e5b $3e $08
    ld   [HL+], A                                      ;; 06:4e5d $22
    ld   A, $0a                                        ;; 06:4e5e $3e $0a
    ld   [HL+], A                                      ;; 06:4e60 $22
    inc  HL                                            ;; 06:4e61 $23
    ld   A, B                                          ;; 06:4e62 $78
    ld   [HL+], A                                      ;; 06:4e63 $22
    ld   A, $28                                        ;; 06:4e64 $3e $28
    ld   [HL+], A                                      ;; 06:4e66 $22
    ld   A, $0b                                        ;; 06:4e67 $3e $0b
    ld   [HL+], A                                      ;; 06:4e69 $22
    inc  HL                                            ;; 06:4e6a $23
    ld   A, B                                          ;; 06:4e6b $78
    add  A, $08                                        ;; 06:4e6c $c6 $08
    ld   B, A                                          ;; 06:4e6e $47
    dec  C                                             ;; 06:4e6f $0d
    jr   NZ, .jr_06_4e59                               ;; 06:4e70 $20 $e7
    xor  A, A                                          ;; 06:4e72 $af
    ld   [wD378], A                                    ;; 06:4e73 $ea $78 $d3
    ret                                                ;; 06:4e76 $c9
    db   $cd, $39, $0f, $cd, $23, $04, $3e, $01        ;; 06:4e77 ????????
    db   $e0, $4f, $21, $16, $76, $11, $68, $01        ;; 06:4e7f ????????
    db   $19, $54, $5d, $21, $00, $98, $3e, $14        ;; 06:4e87 ????????
    db   $ea, $f6, $d4, $0e, $12, $cd, $86, $50        ;; 06:4e8f ????????
    db   $af, $e0, $4f, $11, $16, $76, $21, $00        ;; 06:4e97 ????????
    db   $98, $3e, $14, $ea, $f6, $d4, $0e, $12        ;; 06:4e9f ????????
    db   $cd, $86, $50, $fa, $38, $c1, $ea, $f8        ;; 06:4ea7 ????????
    db   $d4, $af, $ea, $f7, $d4, $21, $4e, $98        ;; 06:4eaf ????????
    db   $cd, $ca, $50, $21, $f7, $d4, $cd, $b0        ;; 06:4eb7 ????????
    db   $50, $23, $cd, $33, $54, $af, $e0, $0f        ;; 06:4ebf ????????
    db   $3e, $01, $e0, $ff, $3e, $c3, $e0, $40        ;; 06:4ec7 ????????
    db   $af, $21, $00, $c0, $06, $a0, $cd, $8b        ;; 06:4ecf ????????
    db   $05, $af, $ea, $02, $c0, $3e, $01, $ea        ;; 06:4ed7 ????????
    db   $03, $c0, $ea, $07, $c0, $3e, $40, $ea        ;; 06:4edf ????????
    db   $00, $c0, $3e, $15, $ea, $01, $c0, $af        ;; 06:4ee7 ????????
    db   $ea, $78, $d3, $c9                            ;; 06:4eef ????

call_06_4ef3:
    call call_00_0f39                                  ;; 06:4ef3 $cd $39 $0f
    call disableLCD                                    ;; 06:4ef6 $cd $23 $04
    ld   A, $01                                        ;; 06:4ef9 $3e $01
    ldh  [rVBK], A                                     ;; 06:4efb $e0 $4f
    ld   HL, data_06_7616                              ;; 06:4efd $21 $16 $76
    ld   DE, $168                                      ;; 06:4f00 $11 $68 $01
    add  HL, DE                                        ;; 06:4f03 $19
    ld   D, H                                          ;; 06:4f04 $54
    ld   E, L                                          ;; 06:4f05 $5d
    ld   HL, $9800                                     ;; 06:4f06 $21 $00 $98
    ld   A, $14                                        ;; 06:4f09 $3e $14
    ld   [wD4F6], A                                    ;; 06:4f0b $ea $f6 $d4
    ld   C, $12                                        ;; 06:4f0e $0e $12
    call call_06_5086                                  ;; 06:4f10 $cd $86 $50
    xor  A, A                                          ;; 06:4f13 $af
    ldh  [rVBK], A                                     ;; 06:4f14 $e0 $4f
    ld   DE, data_06_7616                              ;; 06:4f16 $11 $16 $76
    ld   HL, $9800                                     ;; 06:4f19 $21 $00 $98
    ld   A, $14                                        ;; 06:4f1c $3e $14
    ld   [wD4F6], A                                    ;; 06:4f1e $ea $f6 $d4
    ld   C, $12                                        ;; 06:4f21 $0e $12
    call call_06_5086                                  ;; 06:4f23 $cd $86 $50
    ld   A, [wC138]                                    ;; 06:4f26 $fa $38 $c1
    ld   [wD4F8], A                                    ;; 06:4f29 $ea $f8 $d4
    xor  A, A                                          ;; 06:4f2c $af
    ld   [wD4F7], A                                    ;; 06:4f2d $ea $f7 $d4
    ld   HL, $984e                                     ;; 06:4f30 $21 $4e $98
    call call_06_50ca                                  ;; 06:4f33 $cd $ca $50
    ld   HL, wD4F7                                     ;; 06:4f36 $21 $f7 $d4
    call call_06_50b0                                  ;; 06:4f39 $cd $b0 $50
    inc  HL                                            ;; 06:4f3c $23
    call call_06_5548                                  ;; 06:4f3d $cd $48 $55
    xor  A, A                                          ;; 06:4f40 $af
    ldh  [rIF], A                                      ;; 06:4f41 $e0 $0f
    ld   A, $01                                        ;; 06:4f43 $3e $01
    ldh  [rIE], A                                      ;; 06:4f45 $e0 $ff
    ld   A, $c3                                        ;; 06:4f47 $3e $c3
    ldh  [rLCDC], A                                    ;; 06:4f49 $e0 $40
    xor  A, A                                          ;; 06:4f4b $af
    ld   HL, wShadowOAM                                ;; 06:4f4c $21 $00 $c0
    ld   B, $a0                                        ;; 06:4f4f $06 $a0
    call memzeroSmall                                  ;; 06:4f51 $cd $8b $05
    xor  A, A                                          ;; 06:4f54 $af
    ld   [wShadowOAM.02], A                            ;; 06:4f55 $ea $02 $c0
    ld   A, $01                                        ;; 06:4f58 $3e $01
    ld   [wShadowOAM.03], A                            ;; 06:4f5a $ea $03 $c0
    ld   [wShadowOAM.07], A                            ;; 06:4f5d $ea $07 $c0
    ld   A, $40                                        ;; 06:4f60 $3e $40
    ld   [wShadowOAM], A                               ;; 06:4f62 $ea $00 $c0
    ld   A, $15                                        ;; 06:4f65 $3e $15
    ld   [wShadowOAM.01], A                            ;; 06:4f67 $ea $01 $c0
    xor  A, A                                          ;; 06:4f6a $af
    ld   [wD378], A                                    ;; 06:4f6b $ea $78 $d3
    ret                                                ;; 06:4f6e $c9

call_06_4f6f:
    call call_00_0f39                                  ;; 06:4f6f $cd $39 $0f
    call disableLCD                                    ;; 06:4f72 $cd $23 $04
    ld   A, [wD4F9]                                    ;; 06:4f75 $fa $f9 $d4
    and  A, A                                          ;; 06:4f78 $a7
    jr   Z, .jr_06_4fb5                                ;; 06:4f79 $28 $3a
    ld   HL, data_06_5a16                              ;; 06:4f7b $21 $16 $5a
    ld   DE, $8000                                     ;; 06:4f7e $11 $00 $80
    ld   BC, $c0                                       ;; 06:4f81 $01 $c0 $00
    call memcopy                                       ;; 06:4f84 $cd $4e $04
    ld   HL, data_06_5ad6                              ;; 06:4f87 $21 $d6 $5a
    ld   DE, $8800                                     ;; 06:4f8a $11 $00 $88
    ld   BC, $1000                                     ;; 06:4f8d $01 $00 $10
    call memcopy                                       ;; 06:4f90 $cd $4e $04
    ld   HL, data_06_7956                              ;; 06:4f93 $21 $56 $79
    ld   DE, wCDA5                                     ;; 06:4f96 $11 $a5 $cd
    ld   B, $40                                        ;; 06:4f99 $06 $40
    call memcopySmall                                  ;; 06:4f9b $cd $91 $05
    ld   HL, data_06_7956                              ;; 06:4f9e $21 $56 $79
    ld   DE, wCDE5                                     ;; 06:4fa1 $11 $e5 $cd
    ld   B, $40                                        ;; 06:4fa4 $06 $40
    call memcopySmall                                  ;; 06:4fa6 $cd $91 $05
    ld   HL, wCDA5                                     ;; 06:4fa9 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 06:4fac $cd $9f $04
    ld   HL, wCDE5                                     ;; 06:4faf $21 $e5 $cd
    call setSpritePaletteData                          ;; 06:4fb2 $cd $ad $04
.jr_06_4fb5:
    ld   A, $01                                        ;; 06:4fb5 $3e $01
    ldh  [rVBK], A                                     ;; 06:4fb7 $e0 $4f
    ld   HL, data_06_7346                              ;; 06:4fb9 $21 $46 $73
    ld   DE, $168                                      ;; 06:4fbc $11 $68 $01
    add  HL, DE                                        ;; 06:4fbf $19
    ld   D, H                                          ;; 06:4fc0 $54
    ld   E, L                                          ;; 06:4fc1 $5d
    ld   HL, $9800                                     ;; 06:4fc2 $21 $00 $98
    ld   A, $14                                        ;; 06:4fc5 $3e $14
    ld   [wD4F6], A                                    ;; 06:4fc7 $ea $f6 $d4
    ld   C, $12                                        ;; 06:4fca $0e $12
    call call_06_5086                                  ;; 06:4fcc $cd $86 $50
    xor  A, A                                          ;; 06:4fcf $af
    ldh  [rVBK], A                                     ;; 06:4fd0 $e0 $4f
    ld   DE, data_06_7346                              ;; 06:4fd2 $11 $46 $73
    ld   HL, $9800                                     ;; 06:4fd5 $21 $00 $98
    ld   A, $14                                        ;; 06:4fd8 $3e $14
    ld   [wD4F6], A                                    ;; 06:4fda $ea $f6 $d4
    ld   C, $12                                        ;; 06:4fdd $0e $12
    call call_06_5086                                  ;; 06:4fdf $cd $86 $50
    call call_00_3bf7                                  ;; 06:4fe2 $cd $f7 $3b
    ld   C, $00                                        ;; 06:4fe5 $0e $00
    ld   HL, wC456                                     ;; 06:4fe7 $21 $56 $c4
.jr_06_4fea:
    ld   A, [HL+]                                      ;; 06:4fea $2a
    and  A, A                                          ;; 06:4feb $a7
    jr   Z, .jr_06_5033                                ;; 06:4fec $28 $45
    push HL                                            ;; 06:4fee $e5
    ld   B, $00                                        ;; 06:4fef $06 $00
    ld   A, C                                          ;; 06:4ff1 $79
    ld   [wD392], A                                    ;; 06:4ff2 $ea $92 $d3
    ld   A, $01                                        ;; 06:4ff5 $3e $01
    ldh  [rVBK], A                                     ;; 06:4ff7 $e0 $4f
    ld   DE, data_06_791e                              ;; 06:4ff9 $11 $1e $79
    ld   HL, data_06_5971                              ;; 06:4ffc $21 $71 $59
    sla  C                                             ;; 06:4fff $cb $21
    add  HL, BC                                        ;; 06:5001 $09
    call call_06_50dc                                  ;; 06:5002 $cd $dc $50
    ld   A, $0e                                        ;; 06:5005 $3e $0e
    ld   [wD4F6], A                                    ;; 06:5007 $ea $f6 $d4
    ld   C, $04                                        ;; 06:500a $0e $04
    call call_06_5086                                  ;; 06:500c $cd $86 $50
    ld   A, [wD392]                                    ;; 06:500f $fa $92 $d3
    ld   C, A                                          ;; 06:5012 $4f
    xor  A, A                                          ;; 06:5013 $af
    ldh  [rVBK], A                                     ;; 06:5014 $e0 $4f
    ld   DE, data_06_78e6                              ;; 06:5016 $11 $e6 $78
    ld   HL, data_06_5971                              ;; 06:5019 $21 $71 $59
    sla  C                                             ;; 06:501c $cb $21
    add  HL, BC                                        ;; 06:501e $09
    call call_06_50dc                                  ;; 06:501f $cd $dc $50
    ld   C, $04                                        ;; 06:5022 $0e $04
    call call_06_5086                                  ;; 06:5024 $cd $86 $50
    ld   A, [wD392]                                    ;; 06:5027 $fa $92 $d3
    ld   C, A                                          ;; 06:502a $4f
    call call_06_534f                                  ;; 06:502b $cd $4f $53
    ld   A, [wD392]                                    ;; 06:502e $fa $92 $d3
    ld   C, A                                          ;; 06:5031 $4f
    pop  HL                                            ;; 06:5032 $e1
.jr_06_5033:
    inc  C                                             ;; 06:5033 $0c
    ld   A, C                                          ;; 06:5034 $79
    cp   A, $03                                        ;; 06:5035 $fe $03
    jr   C, .jr_06_4fea                                ;; 06:5037 $38 $b1
    xor  A, A                                          ;; 06:5039 $af
    ldh  [rIF], A                                      ;; 06:503a $e0 $0f
    ld   A, $01                                        ;; 06:503c $3e $01
    ldh  [rIE], A                                      ;; 06:503e $e0 $ff
    ld   A, $c3                                        ;; 06:5040 $3e $c3
    ldh  [rLCDC], A                                    ;; 06:5042 $e0 $40
    xor  A, A                                          ;; 06:5044 $af
    ld   HL, wShadowOAM                                ;; 06:5045 $21 $00 $c0
    ld   B, $a0                                        ;; 06:5048 $06 $a0
    call memzeroSmall                                  ;; 06:504a $cd $8b $05
    xor  A, A                                          ;; 06:504d $af
    ld   [wShadowOAM.02], A                            ;; 06:504e $ea $02 $c0
    ld   A, $01                                        ;; 06:5051 $3e $01
    ld   [wShadowOAM.03], A                            ;; 06:5053 $ea $03 $c0
    ld   [wShadowOAM.07], A                            ;; 06:5056 $ea $07 $c0
    ld   HL, data_06_595b                              ;; 06:5059 $21 $5b $59
    ld   A, [wD379]                                    ;; 06:505c $fa $79 $d3
    ld   C, A                                          ;; 06:505f $4f
    ld   B, $00                                        ;; 06:5060 $06 $00
    add  HL, BC                                        ;; 06:5062 $09
    ld   A, [HL]                                       ;; 06:5063 $7e
    ld   [wShadowOAM], A                               ;; 06:5064 $ea $00 $c0
    ld   A, $10                                        ;; 06:5067 $3e $10
    ld   [wShadowOAM.01], A                            ;; 06:5069 $ea $01 $c0
    xor  A, A                                          ;; 06:506c $af
    ld   [wD378], A                                    ;; 06:506d $ea $78 $d3
    ld   [wD45A], A                                    ;; 06:5070 $ea $5a $d4
    ld   [wD45B], A                                    ;; 06:5073 $ea $5b $d4
    ld   [wD45C], A                                    ;; 06:5076 $ea $5c $d4
    ld   [wD45D], A                                    ;; 06:5079 $ea $5d $d4
    ld   [wD462], A                                    ;; 06:507c $ea $62 $d4
    ld   [wD463], A                                    ;; 06:507f $ea $63 $d4
    ld   [wD395], A                                    ;; 06:5082 $ea $95 $d3
    ret                                                ;; 06:5085 $c9

call_06_5086:
    ld   A, [wD4F6]                                    ;; 06:5086 $fa $f6 $d4
    ld   B, A                                          ;; 06:5089 $47
.jr_06_508a:
    ld   A, [DE]                                       ;; 06:508a $1a
    ld   [HL+], A                                      ;; 06:508b $22
    inc  DE                                            ;; 06:508c $13
    dec  B                                             ;; 06:508d $05
    jr   NZ, .jr_06_508a                               ;; 06:508e $20 $fa
    push DE                                            ;; 06:5090 $d5
    ld   A, [wD4F6]                                    ;; 06:5091 $fa $f6 $d4
    ld   E, A                                          ;; 06:5094 $5f
    ld   A, $20                                        ;; 06:5095 $3e $20
    sub  A, E                                          ;; 06:5097 $93
    ld   E, A                                          ;; 06:5098 $5f
    ld   D, $00                                        ;; 06:5099 $16 $00
    add  HL, DE                                        ;; 06:509b $19
    pop  DE                                            ;; 06:509c $d1
    dec  C                                             ;; 06:509d $0d
    jr   NZ, call_06_5086                              ;; 06:509e $20 $e6
    ret                                                ;; 06:50a0 $c9

call_06_50a1:
    call call_00_0fdb                                  ;; 06:50a1 $cd $db $0f
    call call_06_50d3                                  ;; 06:50a4 $cd $d3 $50
    ld   A, B                                          ;; 06:50a7 $78
    add  A, $04                                        ;; 06:50a8 $c6 $04
    ld   [HL+], A                                      ;; 06:50aa $22
    ld   A, C                                          ;; 06:50ab $79
    add  A, $04                                        ;; 06:50ac $c6 $04
    ld   [HL+], A                                      ;; 06:50ae $22
    ret                                                ;; 06:50af $c9

call_06_50b0:
    call call_06_50dc                                  ;; 06:50b0 $cd $dc $50
    ld   BC, wD386                                     ;; 06:50b3 $01 $86 $d3
    call call_00_0fe8                                  ;; 06:50b6 $cd $e8 $0f
    ld   B, $03                                        ;; 06:50b9 $06 $03
    ld   DE, wD388                                     ;; 06:50bb $11 $88 $d3
    call call_06_50d3                                  ;; 06:50be $cd $d3 $50
.jr_06_50c1:
    ld   A, [DE]                                       ;; 06:50c1 $1a
    add  A, $04                                        ;; 06:50c2 $c6 $04
    ld   [HL+], A                                      ;; 06:50c4 $22
    inc  DE                                            ;; 06:50c5 $13
    dec  B                                             ;; 06:50c6 $05
    jr   NZ, .jr_06_50c1                               ;; 06:50c7 $20 $f8
    ret                                                ;; 06:50c9 $c9

call_06_50ca:
    ld   A, H                                          ;; 06:50ca $7c
    ld   [wD38B], A                                    ;; 06:50cb $ea $8b $d3
    ld   A, L                                          ;; 06:50ce $7d
    ld   [wD38C], A                                    ;; 06:50cf $ea $8c $d3
    ret                                                ;; 06:50d2 $c9

call_06_50d3:
    ld   A, [wD38B]                                    ;; 06:50d3 $fa $8b $d3
    ld   H, A                                          ;; 06:50d6 $67
    ld   A, [wD38C]                                    ;; 06:50d7 $fa $8c $d3
    ld   L, A                                          ;; 06:50da $6f
    ret                                                ;; 06:50db $c9

call_06_50dc:
    ld   A, [HL+]                                      ;; 06:50dc $2a
    ld   L, [HL]                                       ;; 06:50dd $6e
    ld   H, A                                          ;; 06:50de $67
    ret                                                ;; 06:50df $c9

call_06_50e0:
    ld   A, H                                          ;; 06:50e0 $7c
    ld   D, A                                          ;; 06:50e1 $57
    ld   A, L                                          ;; 06:50e2 $7d
    ld   E, A                                          ;; 06:50e3 $5f
    ret                                                ;; 06:50e4 $c9

call_06_50e5:
    ld   A, [wD394]                                    ;; 06:50e5 $fa $94 $d3
    inc  A                                             ;; 06:50e8 $3c
    ld   B, A                                          ;; 06:50e9 $47
.jp_06_50ea:
    ld   A, [DE]                                       ;; 06:50ea $1a
    cp   A, $9b                                        ;; 06:50eb $fe $9b
    jr   C, .jr_06_5114                                ;; 06:50ed $38 $25
    cp   A, $aa                                        ;; 06:50ef $fe $aa
    jr   C, .jr_06_5119                                ;; 06:50f1 $38 $26
    cp   A, $af                                        ;; 06:50f3 $fe $af
    jr   C, .jr_06_511f                                ;; 06:50f5 $38 $28
    cp   A, $b4                                        ;; 06:50f7 $fe $b4
    jr   C, .jr_06_5125                                ;; 06:50f9 $38 $2a
    cp   A, $c3                                        ;; 06:50fb $fe $c3
    jr   C, .jr_06_512c                                ;; 06:50fd $38 $2d
    cp   A, $c8                                        ;; 06:50ff $fe $c8
    jr   C, .jr_06_5132                                ;; 06:5101 $38 $2f
    cp   A, $cd                                        ;; 06:5103 $fe $cd
    jr   C, .jr_06_5138                                ;; 06:5105 $38 $31
    jr   Z, .jr_06_513f                                ;; 06:5107 $28 $36
    cp   A, $e2                                        ;; 06:5109 $fe $e2
    jr   C, .jr_06_5112                                ;; 06:510b $38 $05
    cp   A, $fd                                        ;; 06:510d $fe $fd
    jr   Z, .jr_06_5170                                ;; 06:510f $28 $5f
    ret                                                ;; 06:5111 $c9
.jr_06_5112:
    sub  A, $33                                        ;; 06:5112 $d6 $33
.jr_06_5114:
    add  A, $81                                        ;; 06:5114 $c6 $81
    ld   [HL+], A                                      ;; 06:5116 $22
    jr   .jr_06_516a                                   ;; 06:5117 $18 $51
.jr_06_5119:
    sub  A, $15                                        ;; 06:5119 $d6 $15
    ld   [HL+], A                                      ;; 06:511b $22
    xor  A, A                                          ;; 06:511c $af
    jr   .jr_06_5144                                   ;; 06:511d $18 $25
.jr_06_511f:
    sub  A, $10                                        ;; 06:511f $d6 $10
    ld   [HL+], A                                      ;; 06:5121 $22
    xor  A, A                                          ;; 06:5122 $af
    jr   .jr_06_5144                                   ;; 06:5123 $18 $1f
.jr_06_5125:
    sub  A, $15                                        ;; 06:5125 $d6 $15
    ld   [HL+], A                                      ;; 06:5127 $22
    ld   A, $01                                        ;; 06:5128 $3e $01
    jr   .jr_06_5144                                   ;; 06:512a $18 $18
.jr_06_512c:
    add  A, $04                                        ;; 06:512c $c6 $04
    ld   [HL+], A                                      ;; 06:512e $22
    xor  A, A                                          ;; 06:512f $af
    jr   .jr_06_5144                                   ;; 06:5130 $18 $12
.jr_06_5132:
    add  A, $09                                        ;; 06:5132 $c6 $09
    ld   [HL+], A                                      ;; 06:5134 $22
    xor  A, A                                          ;; 06:5135 $af
    jr   .jr_06_5144                                   ;; 06:5136 $18 $0c
.jr_06_5138:
    add  A, $04                                        ;; 06:5138 $c6 $04
    ld   [HL+], A                                      ;; 06:513a $22
    ld   A, $01                                        ;; 06:513b $3e $01
    jr   .jr_06_5144                                   ;; 06:513d $18 $05
.jr_06_513f:
    ld   A, $36                                        ;; 06:513f $3e $36
    ld   [HL+], A                                      ;; 06:5141 $22
    ld   A, $00                                        ;; 06:5142 $3e $00
.jr_06_5144:
    and  A, A                                          ;; 06:5144 $a7
    jr   NZ, .jr_06_514b                               ;; 06:5145 $20 $04
    ld   A, $30                                        ;; 06:5147 $3e $30
    jr   .jr_06_514d                                   ;; 06:5149 $18 $02
.jr_06_514b:
    ld   A, $31                                        ;; 06:514b $3e $31
.jr_06_514d:
    push HL                                            ;; 06:514d $e5
    ld   [wD4F7], A                                    ;; 06:514e $ea $f7 $d4
    ld   A, C                                          ;; 06:5151 $79
    ld   [wD4F8], A                                    ;; 06:5152 $ea $f8 $d4
    ld   A, [wD394]                                    ;; 06:5155 $fa $94 $d3
    inc  A                                             ;; 06:5158 $3c
    ld   C, A                                          ;; 06:5159 $4f
    ld   A, L                                          ;; 06:515a $7d
    sub  A, C                                          ;; 06:515b $91
    ld   L, A                                          ;; 06:515c $6f
    ld   A, H                                          ;; 06:515d $7c
    sbc  A, $00                                        ;; 06:515e $de $00
    ld   H, A                                          ;; 06:5160 $67
    ld   A, [wD4F8]                                    ;; 06:5161 $fa $f8 $d4
    ld   C, A                                          ;; 06:5164 $4f
    ld   A, [wD4F7]                                    ;; 06:5165 $fa $f7 $d4
    ld   [HL], A                                       ;; 06:5168 $77
    pop  HL                                            ;; 06:5169 $e1
.jr_06_516a:
    inc  DE                                            ;; 06:516a $13
    dec  B                                             ;; 06:516b $05
    jp   NZ, .jp_06_50ea                               ;; 06:516c $c2 $ea $50
    ret                                                ;; 06:516f $c9
.jr_06_5170:
    ld   A, [wD394]                                    ;; 06:5170 $fa $94 $d3
    add  A, B                                          ;; 06:5173 $80
    dec  A                                             ;; 06:5174 $3d
    ld   C, A                                          ;; 06:5175 $4f
    ld   B, $00                                        ;; 06:5176 $06 $00
    add  HL, BC                                        ;; 06:5178 $09
    inc  DE                                            ;; 06:5179 $13
    jp   call_06_50e5                                  ;; 06:517a $c3 $e5 $50

call_06_517d:
    ld   A, [wD394]                                    ;; 06:517d $fa $94 $d3
    ld   B, A                                          ;; 06:5180 $47
    ld   A, $80                                        ;; 06:5181 $3e $80
.jr_06_5183:
    ld   [HL+], A                                      ;; 06:5183 $22
    dec  B                                             ;; 06:5184 $05
    jr   NZ, .jr_06_5183                               ;; 06:5185 $20 $fc
    dec  C                                             ;; 06:5187 $0d
    jr   NZ, call_06_517d                              ;; 06:5188 $20 $f3
    ret                                                ;; 06:518a $c9

call_06_518b:
    ld   [wD392], A                                    ;; 06:518b $ea $92 $d3
    ld   A, [HL+]                                      ;; 06:518e $2a
    and  A, A                                          ;; 06:518f $a7
    jr   Z, .jr_06_51d3                                ;; 06:5190 $28 $41
    dec  A                                             ;; 06:5192 $3d
    sla  A                                             ;; 06:5193 $cb $27
    ld   E, A                                          ;; 06:5195 $5f
    ld   D, $00                                        ;; 06:5196 $16 $00
    ld   A, H                                          ;; 06:5198 $7c
    ld   [wD390], A                                    ;; 06:5199 $ea $90 $d3
    ld   A, L                                          ;; 06:519c $7d
    ld   [wD391], A                                    ;; 06:519d $ea $91 $d3
    ld   A, [wD45C]                                    ;; 06:51a0 $fa $5c $d4
    ld   H, A                                          ;; 06:51a3 $67
    ld   A, [wD45D]                                    ;; 06:51a4 $fa $5d $d4
    ld   L, A                                          ;; 06:51a7 $6f
    add  HL, DE                                        ;; 06:51a8 $19
    ld   A, [HL+]                                      ;; 06:51a9 $2a
    ld   L, [HL]                                       ;; 06:51aa $6e
    ld   H, A                                          ;; 06:51ab $67
    ld   A, H                                          ;; 06:51ac $7c
    ld   D, A                                          ;; 06:51ad $57
    ld   A, L                                          ;; 06:51ae $7d
    ld   E, A                                          ;; 06:51af $5f
    call call_06_50d3                                  ;; 06:51b0 $cd $d3 $50
    call call_06_50e5                                  ;; 06:51b3 $cd $e5 $50
    call call_06_50d3                                  ;; 06:51b6 $cd $d3 $50
    ld   A, [wD394]                                    ;; 06:51b9 $fa $94 $d3
    sla  A                                             ;; 06:51bc $cb $27
    ld   E, A                                          ;; 06:51be $5f
    ld   D, $00                                        ;; 06:51bf $16 $00
    add  HL, DE                                        ;; 06:51c1 $19
    call call_06_50ca                                  ;; 06:51c2 $cd $ca $50
    ld   A, [wD390]                                    ;; 06:51c5 $fa $90 $d3
    ld   H, A                                          ;; 06:51c8 $67
    ld   A, [wD391]                                    ;; 06:51c9 $fa $91 $d3
    ld   L, A                                          ;; 06:51cc $6f
    ld   A, [wD392]                                    ;; 06:51cd $fa $92 $d3
    dec  A                                             ;; 06:51d0 $3d
    jr   NZ, call_06_518b                              ;; 06:51d1 $20 $b8
.jr_06_51d3:
    ret                                                ;; 06:51d3 $c9

call_06_51d4:
    ld   A, $10                                        ;; 06:51d4 $3e $10
    ld   [wD394], A                                    ;; 06:51d6 $ea $94 $d3
    ld   HL, wD396                                     ;; 06:51d9 $21 $96 $d3
    call call_06_50ca                                  ;; 06:51dc $cd $ca $50
    ld   C, $0c                                        ;; 06:51df $0e $0c
    call call_06_517d                                  ;; 06:51e1 $cd $7d $51
    ld   A, [wD393]                                    ;; 06:51e4 $fa $93 $d3
    and  A, A                                          ;; 06:51e7 $a7
    jr   Z, .jr_06_51f7                                ;; 06:51e8 $28 $0d
    ld   HL, wD3A5                                     ;; 06:51ea $21 $a5 $d3
    ld   A, $2a                                        ;; 06:51ed $3e $2a
    ld   [HL], A                                       ;; 06:51ef $77
    ld   A, [wD393]                                    ;; 06:51f0 $fa $93 $d3
    cp   A, $0e                                        ;; 06:51f3 $fe $0e
    jr   Z, .jr_06_51fd                                ;; 06:51f5 $28 $06
.jr_06_51f7:
    ld   HL, wD455                                     ;; 06:51f7 $21 $55 $d4
    ld   A, $29                                        ;; 06:51fa $3e $29
    ld   [HL], A                                       ;; 06:51fc $77
.jr_06_51fd:
    ld   HL, wD3A6                                     ;; 06:51fd $21 $a6 $d3
    call call_06_50ca                                  ;; 06:5200 $cd $ca $50
    ld   HL, data_06_5994                              ;; 06:5203 $21 $94 $59
    ld   A, H                                          ;; 06:5206 $7c
    ld   [wD45C], A                                    ;; 06:5207 $ea $5c $d4
    ld   A, L                                          ;; 06:520a $7d
    ld   [wD45D], A                                    ;; 06:520b $ea $5d $d4
    ld   HL, wC113                                     ;; 06:520e $21 $13 $c1
    ld   A, [wD393]                                    ;; 06:5211 $fa $93 $d3
    ld   E, A                                          ;; 06:5214 $5f
    ld   D, $00                                        ;; 06:5215 $16 $00
    add  HL, DE                                        ;; 06:5217 $19
    ld   A, $06                                        ;; 06:5218 $3e $06
    call call_06_518b                                  ;; 06:521a $cd $8b $51
    ld   HL, $98a3                                     ;; 06:521d $21 $a3 $98
    ld   A, H                                          ;; 06:5220 $7c
    ld   [wD45A], A                                    ;; 06:5221 $ea $5a $d4
    ld   A, L                                          ;; 06:5224 $7d
    ld   [wD45B], A                                    ;; 06:5225 $ea $5b $d4
    ld   DE, wD396                                     ;; 06:5228 $11 $96 $d3
    ld   A, D                                          ;; 06:522b $7a
    ld   [wD45C], A                                    ;; 06:522c $ea $5c $d4
    ld   A, E                                          ;; 06:522f $7b
    ld   [wD45D], A                                    ;; 06:5230 $ea $5d $d4
    ld   A, $10                                        ;; 06:5233 $3e $10
    ld   [wD462], A                                    ;; 06:5235 $ea $62 $d4
    ld   A, $0c                                        ;; 06:5238 $3e $0c
    ld   [wD463], A                                    ;; 06:523a $ea $63 $d4
    ld   A, $03                                        ;; 06:523d $3e $03
    ld   [wD395], A                                    ;; 06:523f $ea $95 $d3
    ret                                                ;; 06:5242 $c9

jp_06_5243:
    ld   A, $09                                        ;; 06:5243 $3e $09
    ld   [wD394], A                                    ;; 06:5245 $ea $94 $d3
    ld   HL, wD396                                     ;; 06:5248 $21 $96 $d3
    call call_06_50ca                                  ;; 06:524b $cd $ca $50
    ld   C, $04                                        ;; 06:524e $0e $04
    call call_06_517d                                  ;; 06:5250 $cd $7d $51
    ld   A, [wD465]                                    ;; 06:5253 $fa $65 $d4
    cp   A, $02                                        ;; 06:5256 $fe $02
    jr   Z, .jr_06_5279                                ;; 06:5258 $28 $1f
    cp   A, $01                                        ;; 06:525a $fe $01
    jr   NZ, .jr_06_5261                               ;; 06:525c $20 $03
    xor  A, A                                          ;; 06:525e $af
    jr   .jr_06_5263                                   ;; 06:525f $18 $02
.jr_06_5261:
    ld   A, $0b                                        ;; 06:5261 $3e $0b
.jr_06_5263:
    ld   HL, data_06_59b2                              ;; 06:5263 $21 $b2 $59
    sla  A                                             ;; 06:5266 $cb $27
    ld   E, A                                          ;; 06:5268 $5f
    ld   D, $00                                        ;; 06:5269 $16 $00
    add  HL, DE                                        ;; 06:526b $19
    ld   A, [HL+]                                      ;; 06:526c $2a
    ld   L, [HL]                                       ;; 06:526d $6e
    ld   D, A                                          ;; 06:526e $57
    ld   A, L                                          ;; 06:526f $7d
    ld   E, A                                          ;; 06:5270 $5f
    ld   HL, wD39F                                     ;; 06:5271 $21 $9f $d3
    call call_06_50e5                                  ;; 06:5274 $cd $e5 $50
    jr   .jr_06_52a6                                   ;; 06:5277 $18 $2d
.jr_06_5279:
    ld   A, [wD466]                                    ;; 06:5279 $fa $66 $d4
    ld   HL, data_06_59b2                              ;; 06:527c $21 $b2 $59
    sla  A                                             ;; 06:527f $cb $27
    ld   E, A                                          ;; 06:5281 $5f
    ld   D, $00                                        ;; 06:5282 $16 $00
    add  HL, DE                                        ;; 06:5284 $19
    ld   A, [HL+]                                      ;; 06:5285 $2a
    ld   L, [HL]                                       ;; 06:5286 $6e
    ld   D, A                                          ;; 06:5287 $57
    ld   A, L                                          ;; 06:5288 $7d
    ld   E, A                                          ;; 06:5289 $5f
    ld   HL, wD3A0                                     ;; 06:528a $21 $a0 $d3
    call call_06_50e5                                  ;; 06:528d $cd $e5 $50
    ld   A, $0a                                        ;; 06:5290 $3e $0a
    ld   HL, data_06_59b2                              ;; 06:5292 $21 $b2 $59
    sla  A                                             ;; 06:5295 $cb $27
    ld   E, A                                          ;; 06:5297 $5f
    ld   D, $00                                        ;; 06:5298 $16 $00
    add  HL, DE                                        ;; 06:529a $19
    ld   A, [HL+]                                      ;; 06:529b $2a
    ld   L, [HL]                                       ;; 06:529c $6e
    ld   D, A                                          ;; 06:529d $57
    ld   A, L                                          ;; 06:529e $7d
    ld   E, A                                          ;; 06:529f $5f
    ld   HL, wD3B2                                     ;; 06:52a0 $21 $b2 $d3
    call call_06_50e5                                  ;; 06:52a3 $cd $e5 $50
.jr_06_52a6:
    ld   HL, $9886                                     ;; 06:52a6 $21 $86 $98
    ld   A, H                                          ;; 06:52a9 $7c
    ld   [wD45A], A                                    ;; 06:52aa $ea $5a $d4
    ld   A, L                                          ;; 06:52ad $7d
    ld   [wD45B], A                                    ;; 06:52ae $ea $5b $d4
    ld   DE, wD396                                     ;; 06:52b1 $11 $96 $d3
    ld   A, D                                          ;; 06:52b4 $7a
    ld   [wD45C], A                                    ;; 06:52b5 $ea $5c $d4
    ld   A, E                                          ;; 06:52b8 $7b
    ld   [wD45D], A                                    ;; 06:52b9 $ea $5d $d4
    ld   A, $09                                        ;; 06:52bc $3e $09
    ld   [wD462], A                                    ;; 06:52be $ea $62 $d4
    ld   A, $04                                        ;; 06:52c1 $3e $04
    ld   [wD463], A                                    ;; 06:52c3 $ea $63 $d4
    ld   A, $01                                        ;; 06:52c6 $3e $01
    ld   [wD395], A                                    ;; 06:52c8 $ea $95 $d3
    ret                                                ;; 06:52cb $c9

call_06_52cc:
    ld   A, $12                                        ;; 06:52cc $3e $12
    ld   [wD394], A                                    ;; 06:52ce $ea $94 $d3
    ld   HL, wD396                                     ;; 06:52d1 $21 $96 $d3
    call call_06_50ca                                  ;; 06:52d4 $cd $ca $50
    ld   C, $04                                        ;; 06:52d7 $0e $04
    call call_06_517d                                  ;; 06:52d9 $cd $7d $51
    ld   A, [wD5B3]                                    ;; 06:52dc $fa $b3 $d5
    cp   A, $02                                        ;; 06:52df $fe $02
    jr   NC, .jr_06_5313                               ;; 06:52e1 $30 $30
    ld   HL, data_06_59ca                              ;; 06:52e3 $21 $ca $59
    ld   A, [wD379]                                    ;; 06:52e6 $fa $79 $d3
    sla  A                                             ;; 06:52e9 $cb $27
    ld   E, A                                          ;; 06:52eb $5f
    ld   D, $00                                        ;; 06:52ec $16 $00
    add  HL, DE                                        ;; 06:52ee $19
    ld   A, [HL+]                                      ;; 06:52ef $2a
    ld   L, [HL]                                       ;; 06:52f0 $6e
    ld   D, A                                          ;; 06:52f1 $57
    ld   A, L                                          ;; 06:52f2 $7d
    ld   E, A                                          ;; 06:52f3 $5f
    ld   HL, wD3AB                                     ;; 06:52f4 $21 $ab $d3
    call call_06_50e5                                  ;; 06:52f7 $cd $e5 $50
    ld   HL, data_06_59d6                              ;; 06:52fa $21 $d6 $59
    ld   A, [wD379]                                    ;; 06:52fd $fa $79 $d3
    sla  A                                             ;; 06:5300 $cb $27
    ld   E, A                                          ;; 06:5302 $5f
    ld   D, $00                                        ;; 06:5303 $16 $00
    add  HL, DE                                        ;; 06:5305 $19
    ld   A, [HL+]                                      ;; 06:5306 $2a
    ld   L, [HL]                                       ;; 06:5307 $6e
    ld   D, A                                          ;; 06:5308 $57
    ld   A, L                                          ;; 06:5309 $7d
    ld   E, A                                          ;; 06:530a $5f
    ld   HL, wD3CC                                     ;; 06:530b $21 $cc $d3
    call call_06_50e5                                  ;; 06:530e $cd $e5 $50
    jr   .jr_06_5329                                   ;; 06:5311 $18 $16
.jr_06_5313:
    ld   HL, data_06_59d6                              ;; 06:5313 $21 $d6 $59
    ld   A, $06                                        ;; 06:5316 $3e $06
    sla  A                                             ;; 06:5318 $cb $27
    ld   E, A                                          ;; 06:531a $5f
    ld   D, $00                                        ;; 06:531b $16 $00
    add  HL, DE                                        ;; 06:531d $19
    ld   A, [HL+]                                      ;; 06:531e $2a
    ld   L, [HL]                                       ;; 06:531f $6e
    ld   D, A                                          ;; 06:5320 $57
    ld   A, L                                          ;; 06:5321 $7d
    ld   E, A                                          ;; 06:5322 $5f
    ld   HL, wD3AA                                     ;; 06:5323 $21 $aa $d3
    call call_06_50e5                                  ;; 06:5326 $cd $e5 $50
.jr_06_5329:
    ld   HL, $9981                                     ;; 06:5329 $21 $81 $99
    ld   A, H                                          ;; 06:532c $7c
    ld   [wD45A], A                                    ;; 06:532d $ea $5a $d4
    ld   A, L                                          ;; 06:5330 $7d
    ld   [wD45B], A                                    ;; 06:5331 $ea $5b $d4
    ld   DE, wD396                                     ;; 06:5334 $11 $96 $d3
    ld   A, D                                          ;; 06:5337 $7a
    ld   [wD45C], A                                    ;; 06:5338 $ea $5c $d4
    ld   A, E                                          ;; 06:533b $7b
    ld   [wD45D], A                                    ;; 06:533c $ea $5d $d4
    ld   A, $12                                        ;; 06:533f $3e $12
    ld   [wD462], A                                    ;; 06:5341 $ea $62 $d4
    ld   A, $04                                        ;; 06:5344 $3e $04
    ld   [wD463], A                                    ;; 06:5346 $ea $63 $d4
    ld   A, $01                                        ;; 06:5349 $3e $01
    ld   [wD395], A                                    ;; 06:534b $ea $95 $d3
    ret                                                ;; 06:534e $c9

call_06_534f:
    ld   A, $0a                                        ;; 06:534f $3e $0a
    ld   [$0000], A                                    ;; 06:5351 $ea $00 $00
    ld   B, $00                                        ;; 06:5354 $06 $00
    ld   DE, $358                                      ;; 06:5356 $11 $58 $03
    call call_00_0555                                  ;; 06:5359 $cd $55 $05
    ld   DE, sA000                                     ;; 06:535c $11 $00 $a0
    add  HL, DE                                        ;; 06:535f $19
    ld   DE, wD396                                     ;; 06:5360 $11 $96 $d3
    ld   C, $12                                        ;; 06:5363 $0e $12
.jr_06_5365:
    ld   A, [HL+]                                      ;; 06:5365 $2a
    ld   [DE], A                                       ;; 06:5366 $12
    inc  DE                                            ;; 06:5367 $13
    dec  C                                             ;; 06:5368 $0d
    jr   NZ, .jr_06_5365                               ;; 06:5369 $20 $fa
    ld   A, [wD392]                                    ;; 06:536b $fa $92 $d3
    ld   C, A                                          ;; 06:536e $4f
    ld   HL, data_06_5977                              ;; 06:536f $21 $77 $59
    sla  C                                             ;; 06:5372 $cb $21
    add  HL, BC                                        ;; 06:5374 $09
    call call_06_50dc                                  ;; 06:5375 $cd $dc $50
    call call_06_50ca                                  ;; 06:5378 $cd $ca $50
    ld   HL, wD3A4                                     ;; 06:537b $21 $a4 $d3
    ld   A, [HL]                                       ;; 06:537e $7e
    call call_06_50a1                                  ;; 06:537f $cd $a1 $50
    ld   DE, $14                                       ;; 06:5382 $11 $14 $00
    add  HL, DE                                        ;; 06:5385 $19
    call call_06_50ca                                  ;; 06:5386 $cd $ca $50
    ld   HL, wD39C                                     ;; 06:5389 $21 $9c $d3
    call call_06_50b0                                  ;; 06:538c $cd $b0 $50
    inc  HL                                            ;; 06:538f $23
    call call_06_50ca                                  ;; 06:5390 $cd $ca $50
    ld   HL, wD39A                                     ;; 06:5393 $21 $9a $d3
    call call_06_50b0                                  ;; 06:5396 $cd $b0 $50
    ld   DE, $03                                       ;; 06:5399 $11 $03 $00
    add  HL, DE                                        ;; 06:539c $19
    call call_06_50ca                                  ;; 06:539d $cd $ca $50
    ld   HL, wD3A5                                     ;; 06:53a0 $21 $a5 $d3
    ld   A, [HL]                                       ;; 06:53a3 $7e
    call call_06_50a1                                  ;; 06:53a4 $cd $a1 $50
    ld   DE, $1e                                       ;; 06:53a7 $11 $1e $00
    add  HL, DE                                        ;; 06:53aa $19
    call call_06_50ca                                  ;; 06:53ab $cd $ca $50
    ld   HL, wD3A6                                     ;; 06:53ae $21 $a6 $d3
    ld   A, [HL]                                       ;; 06:53b1 $7e
    call call_06_50a1                                  ;; 06:53b2 $cd $a1 $50
    ld   DE, $14                                       ;; 06:53b5 $11 $14 $00
    add  HL, DE                                        ;; 06:53b8 $19
    call call_06_50ca                                  ;; 06:53b9 $cd $ca $50
    ld   HL, wD398                                     ;; 06:53bc $21 $98 $d3
    call call_06_50b0                                  ;; 06:53bf $cd $b0 $50
    inc  HL                                            ;; 06:53c2 $23
    call call_06_50ca                                  ;; 06:53c3 $cd $ca $50
    ld   HL, wD396                                     ;; 06:53c6 $21 $96 $d3
    call call_06_50b0                                  ;; 06:53c9 $cd $b0 $50
    ld   DE, $03                                       ;; 06:53cc $11 $03 $00
    add  HL, DE                                        ;; 06:53cf $19
    call call_06_50ca                                  ;; 06:53d0 $cd $ca $50
    ld   HL, wD3A7                                     ;; 06:53d3 $21 $a7 $d3
    ld   A, [HL]                                       ;; 06:53d6 $7e
    call call_06_50a1                                  ;; 06:53d7 $cd $a1 $50
    xor  A, A                                          ;; 06:53da $af
    ld   [$0000], A                                    ;; 06:53db $ea $00 $00
    ret                                                ;; 06:53de $c9

call_06_53df:
    ld   A, $0e                                        ;; 06:53df $3e $0e
    ld   [wD394], A                                    ;; 06:53e1 $ea $94 $d3
    ld   HL, wD396                                     ;; 06:53e4 $21 $96 $d3
    call call_06_50ca                                  ;; 06:53e7 $cd $ca $50
    ld   C, $06                                        ;; 06:53ea $0e $06
    call call_06_517d                                  ;; 06:53ec $cd $7d $51
    ld   HL, wC456                                     ;; 06:53ef $21 $56 $c4
    ld   A, [wD379]                                    ;; 06:53f2 $fa $79 $d3
    ld   E, A                                          ;; 06:53f5 $5f
    ld   D, $00                                        ;; 06:53f6 $16 $00
    add  HL, DE                                        ;; 06:53f8 $19
    ld   A, [HL]                                       ;; 06:53f9 $7e
    sla  A                                             ;; 06:53fa $cb $27
    ld   E, A                                          ;; 06:53fc $5f
    ld   HL, data_06_5a0e                              ;; 06:53fd $21 $0e $5a
    add  HL, DE                                        ;; 06:5400 $19
    call call_06_50dc                                  ;; 06:5401 $cd $dc $50
    call call_06_50e0                                  ;; 06:5404 $cd $e0 $50
    ld   HL, wD3A4                                     ;; 06:5407 $21 $a4 $d3
    call call_06_50e5                                  ;; 06:540a $cd $e5 $50
    ld   HL, $98c3                                     ;; 06:540d $21 $c3 $98
    ld   A, H                                          ;; 06:5410 $7c
    ld   [wD45A], A                                    ;; 06:5411 $ea $5a $d4
    ld   A, L                                          ;; 06:5414 $7d
    ld   [wD45B], A                                    ;; 06:5415 $ea $5b $d4
    ld   DE, wD396                                     ;; 06:5418 $11 $96 $d3
    ld   A, D                                          ;; 06:541b $7a
    ld   [wD45C], A                                    ;; 06:541c $ea $5c $d4
    ld   A, E                                          ;; 06:541f $7b
    ld   [wD45D], A                                    ;; 06:5420 $ea $5d $d4
    ld   A, $0e                                        ;; 06:5423 $3e $0e
    ld   [wD462], A                                    ;; 06:5425 $ea $62 $d4
    ld   A, $06                                        ;; 06:5428 $3e $06
    ld   [wD463], A                                    ;; 06:542a $ea $63 $d4
    ld   A, $02                                        ;; 06:542d $3e $02
    ld   [wD395], A                                    ;; 06:542f $ea $95 $d3
    ret                                                ;; 06:5432 $c9
    db   $3e, $10, $ea, $94, $d3, $21, $96, $d3        ;; 06:5433 ????????
    db   $cd, $ca, $50, $0e, $0c, $cd, $7d, $51        ;; 06:543b ????????
    db   $fa, $84, $d3, $a7, $28, $0d, $21, $a5        ;; 06:5443 ????????
    db   $d3, $3e, $2a, $77, $fa, $84, $d3, $fe        ;; 06:544b ????????
    db   $07, $28, $06, $21, $f5, $d3, $3e, $29        ;; 06:5453 ????????
    db   $77, $21, $a6, $d3, $cd, $ca, $50, $21        ;; 06:545b ????????
    db   $e4, $59, $7c, $ea, $5c, $d4, $7d, $ea        ;; 06:5463 ????????
    db   $5d, $d4, $21, $2d, $c1, $fa, $84, $d3        ;; 06:546b ????????
    db   $ea, $69, $d4, $5f, $16, $00, $19, $3e        ;; 06:5473 ????????
    db   $03, $ea, $92, $d3, $7c, $ea, $90, $d3        ;; 06:547b ????????
    db   $7d, $ea, $91, $d3, $7e, $a7, $28, $1e        ;; 06:5483 ????????
    db   $fa, $69, $d4, $cb, $27, $5f, $16, $00        ;; 06:548b ????????
    db   $fa, $5c, $d4, $67, $fa, $5d, $d4, $6f        ;; 06:5493 ????????
    db   $19, $2a, $6e, $67, $7c, $57, $7d, $5f        ;; 06:549b ????????
    db   $cd, $d3, $50, $cd, $e5, $50, $cd, $d3        ;; 06:54a3 ????????
    db   $50, $fa, $94, $d3, $cb, $27, $5f, $16        ;; 06:54ab ????????
    db   $00, $19, $cd, $ca, $50, $fa, $90, $d3        ;; 06:54b3 ????????
    db   $67, $fa, $91, $d3, $6f, $23, $fa, $69        ;; 06:54bb ????????
    db   $d4, $3c, $ea, $69, $d4, $fa, $92, $d3        ;; 06:54c3 ????????
    db   $3d, $20, $ae, $21, $8c, $d3, $7e, $d6        ;; 06:54cb ????????
    db   $10, $32, $7e, $de, $00, $77, $cd, $d3        ;; 06:54d3 ????????
    db   $50, $06, $10, $3e, $3b, $22, $05, $20        ;; 06:54db ????????
    db   $fc, $06, $10, $3e, $3a, $22, $05, $20        ;; 06:54e3 ????????
    db   $fc, $11, $10, $00, $19, $cd, $ca, $50        ;; 06:54eb ????????
    db   $21, $2d, $c1, $fa, $84, $d3, $47, $fa        ;; 06:54f3 ????????
    db   $79, $d3, $80, $5f, $16, $00, $19, $7e        ;; 06:54fb ????????
    db   $a7, $28, $1c, $21, $f8, $59, $fa, $84        ;; 06:5503 ????????
    db   $d3, $47, $fa, $79, $d3, $80, $cb, $27        ;; 06:550b ????????
    db   $5f, $16, $00, $19, $2a, $6e, $57, $7d        ;; 06:5513 ????????
    db   $5f, $cd, $d3, $50, $cd, $e5, $50, $21        ;; 06:551b ????????
    db   $a3, $98, $7c, $ea, $5a, $d4, $7d, $ea        ;; 06:5523 ????????
    db   $5b, $d4, $11, $96, $d3, $7a, $ea, $5c        ;; 06:552b ????????
    db   $d4, $7b, $ea, $5d, $d4, $3e, $10, $ea        ;; 06:5533 ????????
    db   $62, $d4, $3e, $0c, $ea, $63, $d4, $3e        ;; 06:553b ????????
    db   $03, $ea, $95, $d3, $c9                       ;; 06:5543 ?????

call_06_5548:
    ld   A, $10                                        ;; 06:5548 $3e $10
    ld   [wD394], A                                    ;; 06:554a $ea $94 $d3
    ld   HL, wD396                                     ;; 06:554d $21 $96 $d3
    call call_06_50ca                                  ;; 06:5550 $cd $ca $50
    ld   C, $0c                                        ;; 06:5553 $0e $0c
    call call_06_517d                                  ;; 06:5555 $cd $7d $51
    ld   A, [wD384]                                    ;; 06:5558 $fa $84 $d3
    and  A, A                                          ;; 06:555b $a7
    jr   Z, .jr_06_556b                                ;; 06:555c $28 $0d
    ld   HL, wD3A5                                     ;; 06:555e $21 $a5 $d3
    ld   A, $2a                                        ;; 06:5561 $3e $2a
    ld   [HL], A                                       ;; 06:5563 $77
    ld   A, [wD384]                                    ;; 06:5564 $fa $84 $d3
    cp   A, $04                                        ;; 06:5567 $fe $04
    jr   Z, .jr_06_5571                                ;; 06:5569 $28 $06
.jr_06_556b:
    ld   HL, wD455                                     ;; 06:556b $21 $55 $d4
    ld   A, $29                                        ;; 06:556e $3e $29
    ld   [HL], A                                       ;; 06:5570 $77
.jr_06_5571:
    ld   HL, wD3A6                                     ;; 06:5571 $21 $a6 $d3
    call call_06_50ca                                  ;; 06:5574 $cd $ca $50
    ld   HL, data_06_59e4                              ;; 06:5577 $21 $e4 $59
    ld   A, H                                          ;; 06:557a $7c
    ld   [wD45C], A                                    ;; 06:557b $ea $5c $d4
    ld   A, L                                          ;; 06:557e $7d
    ld   [wD45D], A                                    ;; 06:557f $ea $5d $d4
    ld   HL, wC12D                                     ;; 06:5582 $21 $2d $c1
    ld   A, [wD384]                                    ;; 06:5585 $fa $84 $d3
    ld   [wD469], A                                    ;; 06:5588 $ea $69 $d4
    ld   E, A                                          ;; 06:558b $5f
    ld   D, $00                                        ;; 06:558c $16 $00
    add  HL, DE                                        ;; 06:558e $19
    ld   A, $06                                        ;; 06:558f $3e $06
.jr_06_5591:
    ld   [wD392], A                                    ;; 06:5591 $ea $92 $d3
    ld   A, H                                          ;; 06:5594 $7c
    ld   [wD390], A                                    ;; 06:5595 $ea $90 $d3
    ld   A, L                                          ;; 06:5598 $7d
    ld   [wD391], A                                    ;; 06:5599 $ea $91 $d3
    ld   A, [HL]                                       ;; 06:559c $7e
    and  A, A                                          ;; 06:559d $a7
    jr   Z, .jr_06_55be                                ;; 06:559e $28 $1e
    ld   A, [wD469]                                    ;; 06:55a0 $fa $69 $d4
    sla  A                                             ;; 06:55a3 $cb $27
    ld   E, A                                          ;; 06:55a5 $5f
    ld   D, $00                                        ;; 06:55a6 $16 $00
    ld   A, [wD45C]                                    ;; 06:55a8 $fa $5c $d4
    ld   H, A                                          ;; 06:55ab $67
    ld   A, [wD45D]                                    ;; 06:55ac $fa $5d $d4
    ld   L, A                                          ;; 06:55af $6f
    add  HL, DE                                        ;; 06:55b0 $19
    ld   A, [HL+]                                      ;; 06:55b1 $2a
    ld   L, [HL]                                       ;; 06:55b2 $6e
    ld   H, A                                          ;; 06:55b3 $67
    ld   A, H                                          ;; 06:55b4 $7c
    ld   D, A                                          ;; 06:55b5 $57
    ld   A, L                                          ;; 06:55b6 $7d
    ld   E, A                                          ;; 06:55b7 $5f
    call call_06_50d3                                  ;; 06:55b8 $cd $d3 $50
    call call_06_50e5                                  ;; 06:55bb $cd $e5 $50
.jr_06_55be:
    call call_06_50d3                                  ;; 06:55be $cd $d3 $50
    ld   A, [wD394]                                    ;; 06:55c1 $fa $94 $d3
    sla  A                                             ;; 06:55c4 $cb $27
    ld   E, A                                          ;; 06:55c6 $5f
    ld   D, $00                                        ;; 06:55c7 $16 $00
    add  HL, DE                                        ;; 06:55c9 $19
    call call_06_50ca                                  ;; 06:55ca $cd $ca $50
    ld   A, [wD390]                                    ;; 06:55cd $fa $90 $d3
    ld   H, A                                          ;; 06:55d0 $67
    ld   A, [wD391]                                    ;; 06:55d1 $fa $91 $d3
    ld   L, A                                          ;; 06:55d4 $6f
    inc  HL                                            ;; 06:55d5 $23
    ld   A, [wD469]                                    ;; 06:55d6 $fa $69 $d4
    inc  A                                             ;; 06:55d9 $3c
    ld   [wD469], A                                    ;; 06:55da $ea $69 $d4
    ld   A, [wD392]                                    ;; 06:55dd $fa $92 $d3
    dec  A                                             ;; 06:55e0 $3d
    jr   NZ, .jr_06_5591                               ;; 06:55e1 $20 $ae
    ld   HL, $98a3                                     ;; 06:55e3 $21 $a3 $98
    ld   A, H                                          ;; 06:55e6 $7c
    ld   [wD45A], A                                    ;; 06:55e7 $ea $5a $d4
    ld   A, L                                          ;; 06:55ea $7d
    ld   [wD45B], A                                    ;; 06:55eb $ea $5b $d4
    ld   DE, wD396                                     ;; 06:55ee $11 $96 $d3
    ld   A, D                                          ;; 06:55f1 $7a
    ld   [wD45C], A                                    ;; 06:55f2 $ea $5c $d4
    ld   A, E                                          ;; 06:55f5 $7b
    ld   [wD45D], A                                    ;; 06:55f6 $ea $5d $d4
    ld   A, $10                                        ;; 06:55f9 $3e $10
    ld   [wD462], A                                    ;; 06:55fb $ea $62 $d4
    ld   A, $0c                                        ;; 06:55fe $3e $0c
    ld   [wD463], A                                    ;; 06:5600 $ea $63 $d4
    ld   A, $03                                        ;; 06:5603 $3e $03
    ld   [wD395], A                                    ;; 06:5605 $ea $95 $d3
    ret                                                ;; 06:5608 $c9

call_06_5609:
    ld   A, $10                                        ;; 06:5609 $3e $10
    ld   [wD394], A                                    ;; 06:560b $ea $94 $d3
    ld   HL, wD396                                     ;; 06:560e $21 $96 $d3
    call call_06_50ca                                  ;; 06:5611 $cd $ca $50
    ld   C, $0c                                        ;; 06:5614 $0e $0c
    call call_06_517d                                  ;; 06:5616 $cd $7d $51
    ld   HL, wD3C6                                     ;; 06:5619 $21 $c6 $d3
    call call_06_50ca                                  ;; 06:561c $cd $ca $50
    ld   HL, data_06_59f8                              ;; 06:561f $21 $f8 $59
    ld   A, [wD384]                                    ;; 06:5622 $fa $84 $d3
    ld   B, A                                          ;; 06:5625 $47
    ld   A, [wD379]                                    ;; 06:5626 $fa $79 $d3
    add  A, B                                          ;; 06:5629 $80
    sla  A                                             ;; 06:562a $cb $27
    ld   E, A                                          ;; 06:562c $5f
    ld   D, $00                                        ;; 06:562d $16 $00
    add  HL, DE                                        ;; 06:562f $19
    ld   A, [HL+]                                      ;; 06:5630 $2a
    ld   L, [HL]                                       ;; 06:5631 $6e
    ld   D, A                                          ;; 06:5632 $57
    ld   A, L                                          ;; 06:5633 $7d
    ld   E, A                                          ;; 06:5634 $5f
    call call_06_50d3                                  ;; 06:5635 $cd $d3 $50
    call call_06_50e5                                  ;; 06:5638 $cd $e5 $50
    ld   HL, $98a3                                     ;; 06:563b $21 $a3 $98
    ld   A, H                                          ;; 06:563e $7c
    ld   [wD45A], A                                    ;; 06:563f $ea $5a $d4
    ld   A, L                                          ;; 06:5642 $7d
    ld   [wD45B], A                                    ;; 06:5643 $ea $5b $d4
    ld   DE, wD396                                     ;; 06:5646 $11 $96 $d3
    ld   A, D                                          ;; 06:5649 $7a
    ld   [wD45C], A                                    ;; 06:564a $ea $5c $d4
    ld   A, E                                          ;; 06:564d $7b
    ld   [wD45D], A                                    ;; 06:564e $ea $5d $d4
    ld   A, $10                                        ;; 06:5651 $3e $10
    ld   [wD462], A                                    ;; 06:5653 $ea $62 $d4
    ld   A, $0c                                        ;; 06:5656 $3e $0c
    ld   [wD463], A                                    ;; 06:5658 $ea $63 $d4
    ld   A, $03                                        ;; 06:565b $3e $03
    ld   [wD395], A                                    ;; 06:565d $ea $95 $d3
    ret                                                ;; 06:5660 $c9

call_06_5661:
    ld   A, $12                                        ;; 06:5661 $3e $12
    ld   [wD394], A                                    ;; 06:5663 $ea $94 $d3
    ld   HL, wD396                                     ;; 06:5666 $21 $96 $d3
    call call_06_50ca                                  ;; 06:5669 $cd $ca $50
    ld   C, $04                                        ;; 06:566c $0e $04
    call call_06_517d                                  ;; 06:566e $cd $7d $51
    ld   HL, data_06_59f8                              ;; 06:5671 $21 $f8 $59
    ld   A, $0a                                        ;; 06:5674 $3e $0a
    sla  A                                             ;; 06:5676 $cb $27
    ld   E, A                                          ;; 06:5678 $5f
    ld   D, $00                                        ;; 06:5679 $16 $00
    add  HL, DE                                        ;; 06:567b $19
    ld   A, [HL+]                                      ;; 06:567c $2a
    ld   L, [HL]                                       ;; 06:567d $6e
    ld   D, A                                          ;; 06:567e $57
    ld   A, L                                          ;; 06:567f $7d
    ld   E, A                                          ;; 06:5680 $5f
    ld   HL, wD3AB                                     ;; 06:5681 $21 $ab $d3
    call call_06_50e5                                  ;; 06:5684 $cd $e5 $50
    ld   A, [wD46A]                                    ;; 06:5687 $fa $6a $d4
    call call_00_0fdb                                  ;; 06:568a $cd $db $0f
    ld   A, B                                          ;; 06:568d $78
    add  A, $04                                        ;; 06:568e $c6 $04
    ld   [HL+], A                                      ;; 06:5690 $22
    ld   A, C                                          ;; 06:5691 $79
    add  A, $04                                        ;; 06:5692 $c6 $04
    ld   [HL+], A                                      ;; 06:5694 $22
    ld   HL, $99a1                                     ;; 06:5695 $21 $a1 $99
    ld   A, H                                          ;; 06:5698 $7c
    ld   [wD45A], A                                    ;; 06:5699 $ea $5a $d4
    ld   A, L                                          ;; 06:569c $7d
    ld   [wD45B], A                                    ;; 06:569d $ea $5b $d4
    ld   DE, wD396                                     ;; 06:56a0 $11 $96 $d3
    ld   A, D                                          ;; 06:56a3 $7a
    ld   [wD45C], A                                    ;; 06:56a4 $ea $5c $d4
    ld   A, E                                          ;; 06:56a7 $7b
    ld   [wD45D], A                                    ;; 06:56a8 $ea $5d $d4
    ld   A, $12                                        ;; 06:56ab $3e $12
    ld   [wD462], A                                    ;; 06:56ad $ea $62 $d4
    ld   A, $04                                        ;; 06:56b0 $3e $04
    ld   [wD463], A                                    ;; 06:56b2 $ea $63 $d4
    ld   A, $01                                        ;; 06:56b5 $3e $01
    ld   [wD395], A                                    ;; 06:56b7 $ea $95 $d3
    ret                                                ;; 06:56ba $c9

jp_06_56bb:
    ld   A, [wD46A]                                    ;; 06:56bb $fa $6a $d4
    ld   HL, data_06_597d                              ;; 06:56be $21 $7d $59
    ld   C, A                                          ;; 06:56c1 $4f
    ld   B, $00                                        ;; 06:56c2 $06 $00
    add  HL, BC                                        ;; 06:56c4 $09
    ld   A, [HL]                                       ;; 06:56c5 $7e
    call call_00_11a8                                  ;; 06:56c6 $cd $a8 $11
    ret                                                ;; 06:56c9 $c9

call_06_56ca:
    ld   HL, wD46C                                     ;; 06:56ca $21 $6c $d4
    ld   A, [wD38D]                                    ;; 06:56cd $fa $8d $d3
    ld   B, A                                          ;; 06:56d0 $47
    ld   A, $36                                        ;; 06:56d1 $3e $36
    ld   [HL+], A                                      ;; 06:56d3 $22
.jr_06_56d4:
    ld   A, $3a                                        ;; 06:56d4 $3e $3a
    ld   [HL+], A                                      ;; 06:56d6 $22
    dec  B                                             ;; 06:56d7 $05
    jr   NZ, .jr_06_56d4                               ;; 06:56d8 $20 $fa
    ld   A, $37                                        ;; 06:56da $3e $37
    ld   [HL+], A                                      ;; 06:56dc $22
    ld   A, [wD38E]                                    ;; 06:56dd $fa $8e $d3
    ld   C, A                                          ;; 06:56e0 $4f
.jr_06_56e1:
    ld   A, $3c                                        ;; 06:56e1 $3e $3c
    ld   [HL+], A                                      ;; 06:56e3 $22
    ld   A, [wD38D]                                    ;; 06:56e4 $fa $8d $d3
    ld   B, A                                          ;; 06:56e7 $47
.jr_06_56e8:
    ld   A, $80                                        ;; 06:56e8 $3e $80
    ld   [HL+], A                                      ;; 06:56ea $22
    dec  B                                             ;; 06:56eb $05
    jr   NZ, .jr_06_56e8                               ;; 06:56ec $20 $fa
    ld   A, $3d                                        ;; 06:56ee $3e $3d
    ld   [HL+], A                                      ;; 06:56f0 $22
    dec  C                                             ;; 06:56f1 $0d
    jr   NZ, .jr_06_56e1                               ;; 06:56f2 $20 $ed
    ld   A, [wD38D]                                    ;; 06:56f4 $fa $8d $d3
    ld   B, A                                          ;; 06:56f7 $47
    ld   A, $38                                        ;; 06:56f8 $3e $38
    ld   [HL+], A                                      ;; 06:56fa $22
.jr_06_56fb:
    ld   A, $3b                                        ;; 06:56fb $3e $3b
    ld   [HL+], A                                      ;; 06:56fd $22
    dec  B                                             ;; 06:56fe $05
    jr   NZ, .jr_06_56fb                               ;; 06:56ff $20 $fa
    ld   A, $39                                        ;; 06:5701 $3e $39
    ld   [HL+], A                                      ;; 06:5703 $22
    ld   A, $01                                        ;; 06:5704 $3e $01
    ld   [wD38F], A                                    ;; 06:5706 $ea $8f $d3
    ld   A, [wD38E]                                    ;; 06:5709 $fa $8e $d3
    add  A, $02                                        ;; 06:570c $c6 $02
    ld   [wD38E], A                                    ;; 06:570e $ea $8e $d3
    ld   A, [wD38D]                                    ;; 06:5711 $fa $8d $d3
    add  A, $02                                        ;; 06:5714 $c6 $02
    ld   [wD38D], A                                    ;; 06:5716 $ea $8d $d3
    ld   DE, wD46C                                     ;; 06:5719 $11 $6c $d4
    ld   A, D                                          ;; 06:571c $7a
    ld   [wD45E], A                                    ;; 06:571d $ea $5e $d4
    ld   A, E                                          ;; 06:5720 $7b
    ld   [wD45F], A                                    ;; 06:5721 $ea $5f $d4
    ret                                                ;; 06:5724 $c9

jp_06_5725:
    ld   A, [wD467]                                    ;; 06:5725 $fa $67 $d4
    ld   H, A                                          ;; 06:5728 $67
    ld   A, [wD468]                                    ;; 06:5729 $fa $68 $d4
    ld   L, A                                          ;; 06:572c $6f
    ld   A, [wD38E]                                    ;; 06:572d $fa $8e $d3
    cp   A, $06                                        ;; 06:5730 $fe $06
    jr   C, .jr_06_5742                                ;; 06:5732 $38 $0e
    sub  A, $05                                        ;; 06:5734 $d6 $05
    ld   [wD38E], A                                    ;; 06:5736 $ea $8e $d3
    ld   A, [wD38F]                                    ;; 06:5739 $fa $8f $d3
    inc  A                                             ;; 06:573c $3c
    ld   [wD38F], A                                    ;; 06:573d $ea $8f $d3
    ld   A, $05                                        ;; 06:5740 $3e $05
.jr_06_5742:
    ld   B, A                                          ;; 06:5742 $47
    ld   A, [wD38D]                                    ;; 06:5743 $fa $8d $d3
    ld   C, A                                          ;; 06:5746 $4f
    ld   A, $20                                        ;; 06:5747 $3e $20
    sub  A, C                                          ;; 06:5749 $91
    ld   [wD4F7], A                                    ;; 06:574a $ea $f7 $d4
    ld   A, [wD45E]                                    ;; 06:574d $fa $5e $d4
    ld   D, A                                          ;; 06:5750 $57
    ld   A, [wD45F]                                    ;; 06:5751 $fa $5f $d4
    ld   E, A                                          ;; 06:5754 $5f
.jr_06_5755:
    ld   A, [wD38D]                                    ;; 06:5755 $fa $8d $d3
    ld   C, A                                          ;; 06:5758 $4f
.jr_06_5759:
    ld   A, [DE]                                       ;; 06:5759 $1a
    ld   [HL+], A                                      ;; 06:575a $22
    inc  DE                                            ;; 06:575b $13
    dec  C                                             ;; 06:575c $0d
    jr   NZ, .jr_06_5759                               ;; 06:575d $20 $fa
    ld   A, [wD4F7]                                    ;; 06:575f $fa $f7 $d4
    ld   C, A                                          ;; 06:5762 $4f
    ld   A, B                                          ;; 06:5763 $78
    ld   B, $00                                        ;; 06:5764 $06 $00
    add  HL, BC                                        ;; 06:5766 $09
    ld   B, A                                          ;; 06:5767 $47
    dec  B                                             ;; 06:5768 $05
    jr   NZ, .jr_06_5755                               ;; 06:5769 $20 $ea
    ld   A, D                                          ;; 06:576b $7a
    ld   [wD45E], A                                    ;; 06:576c $ea $5e $d4
    ld   A, E                                          ;; 06:576f $7b
    ld   [wD45F], A                                    ;; 06:5770 $ea $5f $d4
    ld   A, H                                          ;; 06:5773 $7c
    ld   [wD467], A                                    ;; 06:5774 $ea $67 $d4
    ld   A, L                                          ;; 06:5777 $7d
    ld   [wD468], A                                    ;; 06:5778 $ea $68 $d4
    ld   A, [wD38F]                                    ;; 06:577b $fa $8f $d3
    dec  A                                             ;; 06:577e $3d
    ld   [wD38F], A                                    ;; 06:577f $ea $8f $d3
    ret                                                ;; 06:5782 $c9

jp_06_5783:
    ld   A, [wD45A]                                    ;; 06:5783 $fa $5a $d4
    ld   H, A                                          ;; 06:5786 $67
    ld   A, [wD45B]                                    ;; 06:5787 $fa $5b $d4
    ld   L, A                                          ;; 06:578a $6f
    ld   A, [wD463]                                    ;; 06:578b $fa $63 $d4
    cp   A, $05                                        ;; 06:578e $fe $05
    jr   C, .jr_06_5799                                ;; 06:5790 $38 $07
    sub  A, $04                                        ;; 06:5792 $d6 $04
    ld   [wD463], A                                    ;; 06:5794 $ea $63 $d4
    ld   A, $04                                        ;; 06:5797 $3e $04
.jr_06_5799:
    ld   B, A                                          ;; 06:5799 $47
    ld   A, [wD462]                                    ;; 06:579a $fa $62 $d4
    ld   C, A                                          ;; 06:579d $4f
    ld   A, $20                                        ;; 06:579e $3e $20
    sub  A, C                                          ;; 06:57a0 $91
    ld   [wD4F7], A                                    ;; 06:57a1 $ea $f7 $d4
    ld   A, [wD45C]                                    ;; 06:57a4 $fa $5c $d4
    ld   D, A                                          ;; 06:57a7 $57
    ld   A, [wD45D]                                    ;; 06:57a8 $fa $5d $d4
    ld   E, A                                          ;; 06:57ab $5f
.jr_06_57ac:
    ld   A, [wD462]                                    ;; 06:57ac $fa $62 $d4
    ld   C, A                                          ;; 06:57af $4f
.jr_06_57b0:
    ld   A, [DE]                                       ;; 06:57b0 $1a
    ld   [HL+], A                                      ;; 06:57b1 $22
    inc  DE                                            ;; 06:57b2 $13
    dec  C                                             ;; 06:57b3 $0d
    jr   NZ, .jr_06_57b0                               ;; 06:57b4 $20 $fa
    ld   A, [wD4F7]                                    ;; 06:57b6 $fa $f7 $d4
    ld   C, A                                          ;; 06:57b9 $4f
    ld   A, B                                          ;; 06:57ba $78
    ld   B, $00                                        ;; 06:57bb $06 $00
    add  HL, BC                                        ;; 06:57bd $09
    ld   B, A                                          ;; 06:57be $47
    dec  B                                             ;; 06:57bf $05
    jr   NZ, .jr_06_57ac                               ;; 06:57c0 $20 $ea
    ld   A, [wD395]                                    ;; 06:57c2 $fa $95 $d3
    dec  A                                             ;; 06:57c5 $3d
    ld   [wD395], A                                    ;; 06:57c6 $ea $95 $d3
    ld   A, D                                          ;; 06:57c9 $7a
    ld   [wD45C], A                                    ;; 06:57ca $ea $5c $d4
    ld   A, E                                          ;; 06:57cd $7b
    ld   [wD45D], A                                    ;; 06:57ce $ea $5d $d4
    ld   A, H                                          ;; 06:57d1 $7c
    ld   [wD45A], A                                    ;; 06:57d2 $ea $5a $d4
    ld   A, L                                          ;; 06:57d5 $7d
    ld   [wD45B], A                                    ;; 06:57d6 $ea $5b $d4
    ret                                                ;; 06:57d9 $c9

jp_06_57da:
    ld   A, [wD377]                                    ;; 06:57da $fa $77 $d3
    and  A, A                                          ;; 06:57dd $a7
    jr   Z, .jr_06_57f5                                ;; 06:57de $28 $15
    call call_06_4f6f                                  ;; 06:57e0 $cd $6f $4f
    xor  A, A                                          ;; 06:57e3 $af
    ld   [wD377], A                                    ;; 06:57e4 $ea $77 $d3
    ld   [wD37F], A                                    ;; 06:57e7 $ea $7f $d3
    ld   [wD37B], A                                    ;; 06:57ea $ea $7b $d3
    ld   [wD37C], A                                    ;; 06:57ed $ea $7c $d3
    ld   [wJoypadPressed], A                           ;; 06:57f0 $ea $7f $d5
    ld   A, $c8                                        ;; 06:57f3 $3e $c8
.jr_06_57f5:
    call call_06_49c2                                  ;; 06:57f5 $cd $c2 $49
    ld   A, [wD378]                                    ;; 06:57f8 $fa $78 $d3
    cp   A, $01                                        ;; 06:57fb $fe $01
    jp   Z, .jp_06_581a                                ;; 06:57fd $ca $1a $58
    cp   A, $02                                        ;; 06:5800 $fe $02
    jp   Z, .jp_06_5886                                ;; 06:5802 $ca $86 $58
    cp   A, $03                                        ;; 06:5805 $fe $03
    jp   Z, jp_06_45f9                                 ;; 06:5807 $ca $f9 $45
    cp   A, $04                                        ;; 06:580a $fe $04
    jp   Z, jp_06_4610                                 ;; 06:580c $ca $10 $46
    cp   A, $05                                        ;; 06:580f $fe $05
    jp   Z, jp_06_4626                                 ;; 06:5811 $ca $26 $46
    cp   A, $06                                        ;; 06:5814 $fe $06
    jp   Z, jp_06_463f                                 ;; 06:5816 $ca $3f $46
    ret                                                ;; 06:5819 $c9
.jp_06_581a:
    ld   A, [wD37F]                                    ;; 06:581a $fa $7f $d3
    and  A, A                                          ;; 06:581d $a7
    jr   Z, .jr_06_584d                                ;; 06:581e $28 $2d
    ld   A, [wD380]                                    ;; 06:5820 $fa $80 $d3
    and  A, A                                          ;; 06:5823 $a7
    jr   NZ, .jr_06_588d                               ;; 06:5824 $20 $67
    ld   A, [wD37E]                                    ;; 06:5826 $fa $7e $d3
    and  A, A                                          ;; 06:5829 $a7
    jr   Z, .jr_06_5846                                ;; 06:582a $28 $1a
    ld   A, [wD379]                                    ;; 06:582c $fa $79 $d3
    ld   C, A                                          ;; 06:582f $4f
    call call_00_3c2c                                  ;; 06:5830 $cd $2c $3c
    xor  A, A                                          ;; 06:5833 $af
    ld   [wD586], A                                    ;; 06:5834 $ea $86 $d5
    xor  A, A                                          ;; 06:5837 $af
    ld   [wD4F9], A                                    ;; 06:5838 $ea $f9 $d4
    ld   A, $01                                        ;; 06:583b $3e $01
    ld   [wD377], A                                    ;; 06:583d $ea $77 $d3
    ld   A, $21                                        ;; 06:5840 $3e $21
    call call_00_11a8                                  ;; 06:5842 $cd $a8 $11
    ret                                                ;; 06:5845 $c9
.jr_06_5846:
    ld   A, $16                                        ;; 06:5846 $3e $16
    call call_00_11a8                                  ;; 06:5848 $cd $a8 $11
    jr   .jr_06_588d                                   ;; 06:584b $18 $40
.jr_06_584d:
    ld   A, $01                                        ;; 06:584d $3e $01
    ld   [wD37F], A                                    ;; 06:584f $ea $7f $d3
    ld   HL, $98a2                                     ;; 06:5852 $21 $a2 $98
    ld   A, H                                          ;; 06:5855 $7c
    ld   [wD467], A                                    ;; 06:5856 $ea $67 $d4
    ld   A, L                                          ;; 06:5859 $7d
    ld   [wD468], A                                    ;; 06:585a $ea $68 $d4
    ld   A, $0e                                        ;; 06:585d $3e $0e
    ld   [wD38D], A                                    ;; 06:585f $ea $8d $d3
    ld   A, $06                                        ;; 06:5862 $3e $06
    ld   [wD38E], A                                    ;; 06:5864 $ea $8e $d3
    call call_06_56ca                                  ;; 06:5867 $cd $ca $56
    xor  A, A                                          ;; 06:586a $af
    ld   [wD380], A                                    ;; 06:586b $ea $80 $d3
    call call_06_58c0                                  ;; 06:586e $cd $c0 $58
    ld   A, [wD37E]                                    ;; 06:5871 $fa $7e $d3
    and  A, A                                          ;; 06:5874 $a7
    ret  Z                                             ;; 06:5875 $c8
    ld   A, $68                                        ;; 06:5876 $3e $68
    ld   [wShadowOAM.04], A                            ;; 06:5878 $ea $04 $c0
    ld   A, $2d                                        ;; 06:587b $3e $2d
    ld   [wShadowOAM.05], A                            ;; 06:587d $ea $05 $c0
    ld   A, $01                                        ;; 06:5880 $3e $01
    call call_00_11a8                                  ;; 06:5882 $cd $a8 $11
    ret                                                ;; 06:5885 $c9
.jp_06_5886:
    ld   A, [wD37F]                                    ;; 06:5886 $fa $7f $d3
    and  A, A                                          ;; 06:5889 $a7
    jp   Z, .jp_06_58a3                                ;; 06:588a $ca $a3 $58
.jr_06_588d:
    xor  A, A                                          ;; 06:588d $af
    ld   [wD37F], A                                    ;; 06:588e $ea $7f $d3
    ld   A, $01                                        ;; 06:5891 $3e $01
    ld   [wD377], A                                    ;; 06:5893 $ea $77 $d3
    xor  A, A                                          ;; 06:5896 $af
    ld   [wShadowOAM.04], A                            ;; 06:5897 $ea $04 $c0
    ld   [wShadowOAM.05], A                            ;; 06:589a $ea $05 $c0
    ld   A, $03                                        ;; 06:589d $3e $03
    call call_00_11a8                                  ;; 06:589f $cd $a8 $11
    ret                                                ;; 06:58a2 $c9
.jp_06_58a3:
    ld   A, $05                                        ;; 06:58a3 $3e $05
    ld   [wD586], A                                    ;; 06:58a5 $ea $86 $d5
    ld   A, $09                                        ;; 06:58a8 $3e $09
    ld   [wD51A], A                                    ;; 06:58aa $ea $1a $d5
    xor  A, A                                          ;; 06:58ad $af
    ld   [wD4FA], A                                    ;; 06:58ae $ea $fa $d4
    ld   A, $01                                        ;; 06:58b1 $3e $01
    ld   [wD56F], A                                    ;; 06:58b3 $ea $6f $d5
    xor  A, A                                          ;; 06:58b6 $af
    ld   [wD4F9], A                                    ;; 06:58b7 $ea $f9 $d4
    ld   A, $86                                        ;; 06:58ba $3e $86
    call call_00_11a8                                  ;; 06:58bc $cd $a8 $11
    ret                                                ;; 06:58bf $c9

call_06_58c0:
    ld   A, $0e                                        ;; 06:58c0 $3e $0e
    ld   [wD394], A                                    ;; 06:58c2 $ea $94 $d3
    ld   HL, wD396                                     ;; 06:58c5 $21 $96 $d3
    call call_06_50ca                                  ;; 06:58c8 $cd $ca $50
    ld   C, $06                                        ;; 06:58cb $0e $06
    call call_06_517d                                  ;; 06:58cd $cd $7d $51
    ld   HL, wC456                                     ;; 06:58d0 $21 $56 $c4
    ld   A, [wD379]                                    ;; 06:58d3 $fa $79 $d3
    ld   E, A                                          ;; 06:58d6 $5f
    ld   D, $00                                        ;; 06:58d7 $16 $00
    add  HL, DE                                        ;; 06:58d9 $19
    ld   A, [HL]                                       ;; 06:58da $7e
    ld   [wD37E], A                                    ;; 06:58db $ea $7e $d3
    sla  A                                             ;; 06:58de $cb $27
    ld   E, A                                          ;; 06:58e0 $5f
    ld   HL, data_06_5a12                              ;; 06:58e1 $21 $12 $5a
    add  HL, DE                                        ;; 06:58e4 $19
    call call_06_50dc                                  ;; 06:58e5 $cd $dc $50
    call call_06_50e0                                  ;; 06:58e8 $cd $e0 $50
    ld   HL, wD3A4                                     ;; 06:58eb $21 $a4 $d3
    call call_06_50e5                                  ;; 06:58ee $cd $e5 $50
    ld   HL, $98c3                                     ;; 06:58f1 $21 $c3 $98
    ld   A, H                                          ;; 06:58f4 $7c
    ld   [wD45A], A                                    ;; 06:58f5 $ea $5a $d4
    ld   A, L                                          ;; 06:58f8 $7d
    ld   [wD45B], A                                    ;; 06:58f9 $ea $5b $d4
    ld   DE, wD396                                     ;; 06:58fc $11 $96 $d3
    ld   A, D                                          ;; 06:58ff $7a
    ld   [wD45C], A                                    ;; 06:5900 $ea $5c $d4
    ld   A, E                                          ;; 06:5903 $7b
    ld   [wD45D], A                                    ;; 06:5904 $ea $5d $d4
    ld   A, $0e                                        ;; 06:5907 $3e $0e
    ld   [wD462], A                                    ;; 06:5909 $ea $62 $d4
    ld   A, $06                                        ;; 06:590c $3e $06
    ld   [wD463], A                                    ;; 06:590e $ea $63 $d4
    ld   A, $02                                        ;; 06:5911 $3e $02
    ld   [wD395], A                                    ;; 06:5913 $ea $95 $d3
    ret                                                ;; 06:5916 $c9

data_06_5917:
    db   $38, $20, $60, $20, $38, $30, $60, $30        ;; 06:5917 ........

data_06_591f:
    db   $40, $50, $60, $70, $80, $90                  ;; 06:591f .?????

data_06_5925:
    db   $10, $28, $40, $58, $70, $88                  ;; 06:5925 ??????

data_06_592b:
    db   $59, $37, $59, $3d, $59, $43, $59, $49        ;; 06:592b ????????
    db   $59, $4f, $59, $55, $ce, $00, $10, $00        ;; 06:5933 ????????
    db   $f0, $04, $1d, $01, $c8, $01, $e8, $03        ;; 06:593b ????????
    db   $5a, $00, $d8, $01, $e8, $03, $43, $00        ;; 06:5943 ????????
    db   $78, $01, $e8, $03, $65, $01, $20, $01        ;; 06:594b ????????
    db   $e8, $03, $cd, $00, $f8, $01, $e8, $04        ;; 06:5953 ????????

data_06_595b:
    db   $10, $40, $70, $40, $50, $60                  ;; 06:595b ...???

data_06_5961:
    db   $04, $08, $08, $08, $05, $06, $09, $09        ;; 06:5961 ........
    db   $09, $07                                      ;; 06:5969 ..

data_06_596b:
    db   $00, $00, $01, $03, $02, $00                  ;; 06:596b ......

data_06_5971:
    db   $98, $23, $98, $e3, $99, $a3                  ;; 06:5971 ......

data_06_5977:
    db   $98, $31, $98, $f1, $99, $b1                  ;; 06:5977 ......

data_06_597d:
    db   $86, $87, $8e, $90, $81, $83, $84, $82        ;; 06:597d ????????
    db   $91, $94, $92, $8d, $97, $8a, $95, $8f        ;; 06:5985 ????????
    db   $85, $93, $96, $89, $88, $8b, $8c             ;; 06:598d ???????

data_06_5994:
    db   $79, $96, $79, $a5, $79, $b3, $79, $c1        ;; 06:5994 ????????
    db   $79, $d1, $79, $e2, $79, $ed, $79, $fb        ;; 06:599c ????????
    db   $7a, $0a, $7a, $1a, $7a, $29, $7a, $39        ;; 06:59a4 ????????
    db   $7a, $43, $7a, $53, $7a, $63                  ;; 06:59ac ??????

data_06_59b2:
    db   $7a, $73, $7a, $87, $7a, $91, $7a, $99        ;; 06:59b2 ????????
    db   $7a, $a2, $7a, $ab, $7a, $b5, $7a, $bd        ;; 06:59ba ????????
    db   $7a, $c6, $7a, $cf, $7a, $d7, $7a, $e2        ;; 06:59c2 ????????

data_06_59ca:
    db   $7a, $f7, $7b, $05, $7b, $14, $7b, $21        ;; 06:59ca ????????
    db   $7b, $2f, $7b, $3b                            ;; 06:59d2 ????

data_06_59d6:
    db   $7b, $49, $7b, $5c, $7b, $70, $7b, $84        ;; 06:59d6 ????????
    db   $7b, $97, $7b, $aa, $7b, $be                  ;; 06:59de ??????

data_06_59e4:
    db   $7b, $d9, $7b, $e5, $7b, $f1, $7b, $ff        ;; 06:59e4 ????????
    db   $7c, $0b, $7c, $1a, $7c, $2a, $7c, $3c        ;; 06:59ec ????????
    db   $7c, $4e, $7c, $5f                            ;; 06:59f4 ????

data_06_59f8:
    db   $7c, $6b, $7c, $9d, $7c, $cc, $7c, $fc        ;; 06:59f8 ????????
    db   $7d, $2a, $7d, $62, $7d, $7d, $7d, $ad        ;; 06:5a00 ????????
    db   $7d, $de, $7e, $0f, $7e, $42                  ;; 06:5a08 ??????

data_06_5a0e:
    db   $7e, $5c, $7e, $82                            ;; 06:5a0e ??Pp

data_06_5a12:
    db   $7e, $aa, $7e, $c6                            ;; 06:5a12 ????

data_06_5a16:
    dw   `33300000                                     ;; 06:5a16 $e0 $e0
    dw   `32233000                                     ;; 06:5a18 $98 $f8
    dw   `32222330                                     ;; 06:5a1a $86 $fe
    dw   `32222223                                     ;; 06:5a1c $81 $ff
    dw   `32222223                                     ;; 06:5a1e $81 $ff
    dw   `32222330                                     ;; 06:5a20 $86 $fe
    dw   `32233000                                     ;; 06:5a22 $98 $f8
    dw   `33300000                                     ;; 06:5a24 $e0 $e0

    dw   `00000000                                     ;; 06:5a26 $00 $00
    dw   `00000000                                     ;; 06:5a28 $00 $00
    dw   `00000000                                     ;; 06:5a2a $00 $00
    dw   `00000000                                     ;; 06:5a2c $00 $00
    dw   `00000000                                     ;; 06:5a2e $00 $00
    dw   `00000000                                     ;; 06:5a30 $00 $00
    dw   `00000000                                     ;; 06:5a32 $00 $00
    dw   `00000000                                     ;; 06:5a34 $00 $00

    dw   `03333333                                     ;; 06:5a36 $7f $7f
    dw   `33333333                                     ;; 06:5a38 $ff $ff
    dw   `33000000                                     ;; 06:5a3a $c0 $c0
    dw   `33000000                                     ;; 06:5a3c $c0 $c0
    dw   `33000000                                     ;; 06:5a3e $c0 $c0
    dw   `33000000                                     ;; 06:5a40 $c0 $c0
    dw   `33000000                                     ;; 06:5a42 $c0 $c0
    dw   `33000000                                     ;; 06:5a44 $c0 $c0

    dw   `33000000                                     ;; 06:5a46 $c0 $c0
    dw   `33000000                                     ;; 06:5a48 $c0 $c0
    dw   `33000000                                     ;; 06:5a4a $c0 $c0
    dw   `33000000                                     ;; 06:5a4c $c0 $c0
    dw   `33000000                                     ;; 06:5a4e $c0 $c0
    dw   `33000000                                     ;; 06:5a50 $c0 $c0
    dw   `33333333                                     ;; 06:5a52 $ff $ff
    dw   `03333333                                     ;; 06:5a54 $7f $7f

    dw   `03303333                                     ;; 06:5a56 $6f $6f
    dw   `30132202                                     ;; 06:5a58 $b0 $9d
    dw   `32230313                                     ;; 06:5a5a $97 $f5
    dw   `03310333                                     ;; 06:5a5c $77 $67
    dw   `30003130                                     ;; 06:5a5e $8e $8a
    dw   `32331023                                     ;; 06:5a60 $b9 $f3
    dw   `30233213                                     ;; 06:5a62 $9b $bd
    dw   `32330333                                     ;; 06:5a64 $b7 $f7

    dw   `33330330                                     ;; 06:5a66 $f6 $f6
    dw   `20223013                                     ;; 06:5a68 $0b $b9
    dw   `31303223                                     ;; 06:5a6a $e9 $af
    dw   `33301330                                     ;; 06:5a6c $ee $e6
    dw   `03130023                                     ;; 06:5a6e $71 $53
    dw   `32013233                                     ;; 06:5a70 $9b $cf
    dw   `31233013                                     ;; 06:5a72 $db $b9
    dw   `33303233                                     ;; 06:5a74 $eb $ef

    dw   `32330333                                     ;; 06:5a76 $b7 $f7
    dw   `30133213                                     ;; 06:5a78 $bb $9d
    dw   `32331023                                     ;; 06:5a7a $b9 $f3
    dw   `30003130                                     ;; 06:5a7c $8e $8a
    dw   `03310333                                     ;; 06:5a7e $77 $67
    dw   `30130202                                     ;; 06:5a80 $b0 $95
    dw   `32232313                                     ;; 06:5a82 $97 $fd
    dw   `03303333                                     ;; 06:5a84 $6f $6f

    dw   `33303233                                     ;; 06:5a86 $eb $ef
    dw   `31233013                                     ;; 06:5a88 $db $b9
    dw   `32013233                                     ;; 06:5a8a $9b $cf
    dw   `03130023                                     ;; 06:5a8c $71 $53
    dw   `33301330                                     ;; 06:5a8e $ee $e6
    dw   `20203013                                     ;; 06:5a90 $0b $a9
    dw   `31323223                                     ;; 06:5a92 $e9 $bf
    dw   `33330330                                     ;; 06:5a94 $f6 $f6

    dw   `33333333                                     ;; 06:5a96 $ff $ff
    dw   `00000000                                     ;; 06:5a98 $00 $00
    dw   `22222222                                     ;; 06:5a9a $00 $ff
    dw   `33333333                                     ;; 06:5a9c $ff $ff
    dw   `00000000                                     ;; 06:5a9e $00 $00
    dw   `00000000                                     ;; 06:5aa0 $00 $00
    dw   `00000000                                     ;; 06:5aa2 $00 $00
    dw   `00000000                                     ;; 06:5aa4 $00 $00

    dw   `00000000                                     ;; 06:5aa6 $00 $00
    dw   `00000000                                     ;; 06:5aa8 $00 $00
    dw   `00000000                                     ;; 06:5aaa $00 $00
    dw   `00000000                                     ;; 06:5aac $00 $00
    dw   `33333333                                     ;; 06:5aae $ff $ff
    dw   `00000000                                     ;; 06:5ab0 $00 $00
    dw   `22222222                                     ;; 06:5ab2 $00 $ff
    dw   `33333333                                     ;; 06:5ab4 $ff $ff

    dw   `30230000                                     ;; 06:5ab6 $90 $b0
    dw   `30230000                                     ;; 06:5ab8 $90 $b0
    dw   `30230000                                     ;; 06:5aba $90 $b0
    dw   `30230000                                     ;; 06:5abc $90 $b0
    dw   `30230000                                     ;; 06:5abe $90 $b0
    dw   `30230000                                     ;; 06:5ac0 $90 $b0
    dw   `30230000                                     ;; 06:5ac2 $90 $b0
    dw   `30230000                                     ;; 06:5ac4 $90 $b0

    dw   `00003023                                     ;; 06:5ac6 $09 $0b
    dw   `00003023                                     ;; 06:5ac8 $09 $0b
    dw   `00003023                                     ;; 06:5aca $09 $0b
    dw   `00003023                                     ;; 06:5acc $09 $0b
    dw   `00003023                                     ;; 06:5ace $09 $0b
    dw   `00003023                                     ;; 06:5ad0 $09 $0b
    dw   `00003023                                     ;; 06:5ad2 $09 $0b
    dw   `00003023                                     ;; 06:5ad4 $09 $0b


data_06_5ad6:
    dw   `00000000                                     ;; 06:5ad6 $00 $00
    dw   `00000000                                     ;; 06:5ad8 $00 $00
    dw   `00000000                                     ;; 06:5ada $00 $00
    dw   `00000000                                     ;; 06:5adc $00 $00
    dw   `00000000                                     ;; 06:5ade $00 $00
    dw   `00000000                                     ;; 06:5ae0 $00 $00
    dw   `00000000                                     ;; 06:5ae2 $00 $00
    dw   `00000000                                     ;; 06:5ae4 $00 $00

    dw   `00300000                                     ;; 06:5ae6 $20 $20
    dw   `33333330                                     ;; 06:5ae8 $fe $fe
    dw   `00300000                                     ;; 06:5aea $20 $20
    dw   `00333300                                     ;; 06:5aec $3c $3c
    dw   `03300330                                     ;; 06:5aee $66 $66
    dw   `30303030                                     ;; 06:5af0 $aa $aa
    dw   `30030030                                     ;; 06:5af2 $92 $92
    dw   `03300300                                     ;; 06:5af4 $64 $64

    dw   `00000000                                     ;; 06:5af6 $00 $00
    dw   `30000300                                     ;; 06:5af8 $84 $84
    dw   `30000030                                     ;; 06:5afa $82 $82
    dw   `30000030                                     ;; 06:5afc $82 $82
    dw   `30000030                                     ;; 06:5afe $82 $82
    dw   `30000030                                     ;; 06:5b00 $82 $82
    dw   `30030000                                     ;; 06:5b02 $90 $90
    dw   `03300000                                     ;; 06:5b04 $60 $60

    dw   `00333000                                     ;; 06:5b06 $38 $38
    dw   `00000000                                     ;; 06:5b08 $00 $00
    dw   `00333300                                     ;; 06:5b0a $3c $3c
    dw   `03000030                                     ;; 06:5b0c $42 $42
    dw   `00000030                                     ;; 06:5b0e $02 $02
    dw   `00000030                                     ;; 06:5b10 $02 $02
    dw   `00000300                                     ;; 06:5b12 $04 $04
    dw   `00033000                                     ;; 06:5b14 $18 $18

    dw   `00330000                                     ;; 06:5b16 $30 $30
    dw   `00000000                                     ;; 06:5b18 $00 $00
    dw   `33333300                                     ;; 06:5b1a $fc $fc
    dw   `00003000                                     ;; 06:5b1c $08 $08
    dw   `00030000                                     ;; 06:5b1e $10 $10
    dw   `00330000                                     ;; 06:5b20 $30 $30
    dw   `03030000                                     ;; 06:5b22 $50 $50
    dw   `30003300                                     ;; 06:5b24 $8c $8c

    dw   `00300300                                     ;; 06:5b26 $24 $24
    dw   `33333030                                     ;; 06:5b28 $fa $fa
    dw   `00300000                                     ;; 06:5b2a $20 $20
    dw   `00333300                                     ;; 06:5b2c $3c $3c
    dw   `03300030                                     ;; 06:5b2e $62 $62
    dw   `30300030                                     ;; 06:5b30 $a2 $a2
    dw   `30300030                                     ;; 06:5b32 $a2 $a2
    dw   `03000300                                     ;; 06:5b34 $44 $44

    dw   `00303000                                     ;; 06:5b36 $28 $28
    dw   `00300300                                     ;; 06:5b38 $24 $24
    dw   `33333030                                     ;; 06:5b3a $fa $fa
    dw   `00300300                                     ;; 06:5b3c $24 $24
    dw   `03000300                                     ;; 06:5b3e $44 $44
    dw   `03000300                                     ;; 06:5b40 $44 $44
    dw   `30300300                                     ;; 06:5b42 $a4 $a4
    dw   `30033000                                     ;; 06:5b44 $98 $98

    dw   `00030000                                     ;; 06:5b46 $10 $10
    dw   `03333300                                     ;; 06:5b48 $7c $7c
    dw   `00003000                                     ;; 06:5b4a $08 $08
    dw   `00333330                                     ;; 06:5b4c $3e $3e
    dw   `00000300                                     ;; 06:5b4e $04 $04
    dw   `00003300                                     ;; 06:5b50 $0c $0c
    dw   `03000000                                     ;; 06:5b52 $40 $40
    dw   `00333300                                     ;; 06:5b54 $3c $3c

    dw   `00003000                                     ;; 06:5b56 $08 $08
    dw   `00030000                                     ;; 06:5b58 $10 $10
    dw   `00300000                                     ;; 06:5b5a $20 $20
    dw   `03000000                                     ;; 06:5b5c $40 $40
    dw   `03000000                                     ;; 06:5b5e $40 $40
    dw   `00300000                                     ;; 06:5b60 $20 $20
    dw   `00030000                                     ;; 06:5b62 $10 $10
    dw   `00003000                                     ;; 06:5b64 $08 $08

    dw   `30000300                                     ;; 06:5b66 $84 $84
    dw   `30333330                                     ;; 06:5b68 $be $be
    dw   `30000300                                     ;; 06:5b6a $84 $84
    dw   `30000300                                     ;; 06:5b6c $84 $84
    dw   `30000300                                     ;; 06:5b6e $84 $84
    dw   `30000300                                     ;; 06:5b70 $84 $84
    dw   `30000300                                     ;; 06:5b72 $84 $84
    dw   `03003000                                     ;; 06:5b74 $48 $48

    dw   `00000000                                     ;; 06:5b76 $00 $00
    dw   `00333300                                     ;; 06:5b78 $3c $3c
    dw   `00000330                                     ;; 06:5b7a $06 $06
    dw   `00003000                                     ;; 06:5b7c $08 $08
    dw   `00000000                                     ;; 06:5b7e $00 $00
    dw   `00000000                                     ;; 06:5b80 $00 $00
    dw   `03000000                                     ;; 06:5b82 $40 $40
    dw   `00333330                                     ;; 06:5b84 $3e $3e

    dw   `00030000                                     ;; 06:5b86 $10 $10
    dw   `03333330                                     ;; 06:5b88 $7e $7e
    dw   `00003000                                     ;; 06:5b8a $08 $08
    dw   `00000300                                     ;; 06:5b8c $04 $04
    dw   `00000300                                     ;; 06:5b8e $04 $04
    dw   `03000000                                     ;; 06:5b90 $40 $40
    dw   `03000000                                     ;; 06:5b92 $40 $40
    dw   `00333300                                     ;; 06:5b94 $3c $3c

    dw   `00300000                                     ;; 06:5b96 $20 $20
    dw   `00300000                                     ;; 06:5b98 $20 $20
    dw   `00300000                                     ;; 06:5b9a $20 $20
    dw   `00300000                                     ;; 06:5b9c $20 $20
    dw   `00300000                                     ;; 06:5b9e $20 $20
    dw   `00300000                                     ;; 06:5ba0 $20 $20
    dw   `00300030                                     ;; 06:5ba2 $22 $22
    dw   `00033300                                     ;; 06:5ba4 $1c $1c

    dw   `00030000                                     ;; 06:5ba6 $10 $10
    dw   `33333330                                     ;; 06:5ba8 $fe $fe
    dw   `00003000                                     ;; 06:5baa $08 $08
    dw   `00333000                                     ;; 06:5bac $38 $38
    dw   `03003000                                     ;; 06:5bae $48 $48
    dw   `00333000                                     ;; 06:5bb0 $38 $38
    dw   `00003000                                     ;; 06:5bb2 $08 $08
    dw   `00330000                                     ;; 06:5bb4 $30 $30

    dw   `03000300                                     ;; 06:5bb6 $44 $44
    dw   `03000300                                     ;; 06:5bb8 $44 $44
    dw   `33333330                                     ;; 06:5bba $fe $fe
    dw   `03000300                                     ;; 06:5bbc $44 $44
    dw   `03003000                                     ;; 06:5bbe $48 $48
    dw   `03000000                                     ;; 06:5bc0 $40 $40
    dw   `03000000                                     ;; 06:5bc2 $40 $40
    dw   `00333330                                     ;; 06:5bc4 $3e $3e

    dw   `00333300                                     ;; 06:5bc6 $3c $3c
    dw   `00003000                                     ;; 06:5bc8 $08 $08
    dw   `00030000                                     ;; 06:5bca $10 $10
    dw   `03333330                                     ;; 06:5bcc $7e $7e
    dw   `00003000                                     ;; 06:5bce $08 $08
    dw   `00030000                                     ;; 06:5bd0 $10 $10
    dw   `00030000                                     ;; 06:5bd2 $10 $10
    dw   `00003300                                     ;; 06:5bd4 $0c $0c

    dw   `00300000                                     ;; 06:5bd6 $20 $20
    dw   `33333000                                     ;; 06:5bd8 $f8 $f8
    dw   `00300000                                     ;; 06:5bda $20 $20
    dw   `03003330                                     ;; 06:5bdc $4e $4e
    dw   `03000000                                     ;; 06:5bde $40 $40
    dw   `30000000                                     ;; 06:5be0 $80 $80
    dw   `30030000                                     ;; 06:5be2 $90 $90
    dw   `30003330                                     ;; 06:5be4 $8e $8e

    dw   `00003000                                     ;; 06:5be6 $08 $08
    dw   `03333330                                     ;; 06:5be8 $7e $7e
    dw   `00030000                                     ;; 06:5bea $10 $10
    dw   `00300000                                     ;; 06:5bec $20 $20
    dw   `00333300                                     ;; 06:5bee $3c $3c
    dw   `03000030                                     ;; 06:5bf0 $42 $42
    dw   `00000030                                     ;; 06:5bf2 $02 $02
    dw   `00033300                                     ;; 06:5bf4 $1c $1c

    dw   `00000000                                     ;; 06:5bf6 $00 $00
    dw   `00000000                                     ;; 06:5bf8 $00 $00
    dw   `33333300                                     ;; 06:5bfa $fc $fc
    dw   `00000030                                     ;; 06:5bfc $02 $02
    dw   `00000030                                     ;; 06:5bfe $02 $02
    dw   `00000300                                     ;; 06:5c00 $04 $04
    dw   `00333000                                     ;; 06:5c02 $38 $38
    dw   `00000000                                     ;; 06:5c04 $00 $00

    dw   `00000000                                     ;; 06:5c06 $00 $00
    dw   `33333330                                     ;; 06:5c08 $fe $fe
    dw   `00003000                                     ;; 06:5c0a $08 $08
    dw   `00030000                                     ;; 06:5c0c $10 $10
    dw   `00300000                                     ;; 06:5c0e $20 $20
    dw   `00300000                                     ;; 06:5c10 $20 $20
    dw   `00030000                                     ;; 06:5c12 $10 $10
    dw   `00003300                                     ;; 06:5c14 $0c $0c

    dw   `00300000                                     ;; 06:5c16 $20 $20
    dw   `00300000                                     ;; 06:5c18 $20 $20
    dw   `00303300                                     ;; 06:5c1a $2c $2c
    dw   `00330000                                     ;; 06:5c1c $30 $30
    dw   `00300000                                     ;; 06:5c1e $20 $20
    dw   `03000000                                     ;; 06:5c20 $40 $40
    dw   `03000000                                     ;; 06:5c22 $40 $40
    dw   `00333330                                     ;; 06:5c24 $3e $3e

    dw   `00300000                                     ;; 06:5c26 $20 $20
    dw   `03330300                                     ;; 06:5c28 $74 $74
    dw   `00300030                                     ;; 06:5c2a $22 $22
    dw   `00300303                                     ;; 06:5c2c $25 $25
    dw   `03000300                                     ;; 06:5c2e $44 $44
    dw   `30333300                                     ;; 06:5c30 $bc $bc
    dw   `00300330                                     ;; 06:5c32 $26 $26
    dw   `00033000                                     ;; 06:5c34 $18 $18

    dw   `00000000                                     ;; 06:5c36 $00 $00
    dw   `03033330                                     ;; 06:5c38 $5e $5e
    dw   `03000000                                     ;; 06:5c3a $40 $40
    dw   `03000000                                     ;; 06:5c3c $40 $40
    dw   `03000000                                     ;; 06:5c3e $40 $40
    dw   `03000000                                     ;; 06:5c40 $40 $40
    dw   `03030000                                     ;; 06:5c42 $50 $50
    dw   `03003330                                     ;; 06:5c44 $4e $4e

    dw   `00003000                                     ;; 06:5c46 $08 $08
    dw   `00303000                                     ;; 06:5c48 $28 $28
    dw   `00333300                                     ;; 06:5c4a $3c $3c
    dw   `03303030                                     ;; 06:5c4c $6a $6a
    dw   `30030030                                     ;; 06:5c4e $92 $92
    dw   `30303330                                     ;; 06:5c50 $ae $ae
    dw   `30303030                                     ;; 06:5c52 $aa $aa
    dw   `03000330                                     ;; 06:5c54 $46 $46

    dw   `00300000                                     ;; 06:5c56 $20 $20
    dw   `00300000                                     ;; 06:5c58 $20 $20
    dw   `33303300                                     ;; 06:5c5a $ec $ec
    dw   `00330030                                     ;; 06:5c5c $32 $32
    dw   `00300030                                     ;; 06:5c5e $22 $22
    dw   `03303330                                     ;; 06:5c60 $6e $6e
    dw   `30303030                                     ;; 06:5c62 $aa $aa
    dw   `00300330                                     ;; 06:5c64 $26 $26

    dw   `00000000                                     ;; 06:5c66 $00 $00
    dw   `00333000                                     ;; 06:5c68 $38 $38
    dw   `03030300                                     ;; 06:5c6a $54 $54
    dw   `30030030                                     ;; 06:5c6c $92 $92
    dw   `30030030                                     ;; 06:5c6e $92 $92
    dw   `30030030                                     ;; 06:5c70 $92 $92
    dw   `30300030                                     ;; 06:5c72 $a2 $a2
    dw   `03300300                                     ;; 06:5c74 $64 $64

    dw   `30000300                                     ;; 06:5c76 $84 $84
    dw   `30033330                                     ;; 06:5c78 $9e $9e
    dw   `30000300                                     ;; 06:5c7a $84 $84
    dw   `30000300                                     ;; 06:5c7c $84 $84
    dw   `30000300                                     ;; 06:5c7e $84 $84
    dw   `30033300                                     ;; 06:5c80 $9c $9c
    dw   `30300330                                     ;; 06:5c82 $a6 $a6
    dw   `30033000                                     ;; 06:5c84 $98 $98

    dw   `00000000                                     ;; 06:5c86 $00 $00
    dw   `33300000                                     ;; 06:5c88 $e0 $e0
    dw   `00300300                                     ;; 06:5c8a $24 $24
    dw   `03000330                                     ;; 06:5c8c $46 $46
    dw   `30000300                                     ;; 06:5c8e $84 $84
    dw   `30000300                                     ;; 06:5c90 $84 $84
    dw   `30003000                                     ;; 06:5c92 $88 $88
    dw   `03330000                                     ;; 06:5c94 $70 $70

    dw   `00030000                                     ;; 06:5c96 $10 $10
    dw   `00033000                                     ;; 06:5c98 $18 $18
    dw   `00003300                                     ;; 06:5c9a $0c $0c
    dw   `00003000                                     ;; 06:5c9c $08 $08
    dw   `03003030                                     ;; 06:5c9e $4a $4a
    dw   `30000303                                     ;; 06:5ca0 $85 $85
    dw   `30300303                                     ;; 06:5ca2 $a5 $a5
    dw   `00333000                                     ;; 06:5ca4 $38 $38

    dw   `00000000                                     ;; 06:5ca6 $00 $00
    dw   `00000000                                     ;; 06:5ca8 $00 $00
    dw   `00330000                                     ;; 06:5caa $30 $30
    dw   `03003000                                     ;; 06:5cac $48 $48
    dw   `30000300                                     ;; 06:5cae $84 $84
    dw   `00000030                                     ;; 06:5cb0 $02 $02
    dw   `00000003                                     ;; 06:5cb2 $01 $01
    dw   `00000000                                     ;; 06:5cb4 $00 $00

    dw   `30033330                                     ;; 06:5cb6 $9e $9e
    dw   `30000300                                     ;; 06:5cb8 $84 $84
    dw   `30033330                                     ;; 06:5cba $9e $9e
    dw   `30000300                                     ;; 06:5cbc $84 $84
    dw   `30033300                                     ;; 06:5cbe $9c $9c
    dw   `30300330                                     ;; 06:5cc0 $a6 $a6
    dw   `30300300                                     ;; 06:5cc2 $a4 $a4
    dw   `30033000                                     ;; 06:5cc4 $98 $98

    dw   `00003000                                     ;; 06:5cc6 $08 $08
    dw   `03333330                                     ;; 06:5cc8 $7e $7e
    dw   `00003000                                     ;; 06:5cca $08 $08
    dw   `03333330                                     ;; 06:5ccc $7e $7e
    dw   `00003000                                     ;; 06:5cce $08 $08
    dw   `00333300                                     ;; 06:5cd0 $3c $3c
    dw   `03003030                                     ;; 06:5cd2 $4a $4a
    dw   `00330000                                     ;; 06:5cd4 $30 $30

    dw   `03333000                                     ;; 06:5cd6 $78 $78
    dw   `00030000                                     ;; 06:5cd8 $10 $10
    dw   `00030300                                     ;; 06:5cda $14 $14
    dw   `00030300                                     ;; 06:5cdc $14 $14
    dw   `03333330                                     ;; 06:5cde $7e $7e
    dw   `30300300                                     ;; 06:5ce0 $a4 $a4
    dw   `30300300                                     ;; 06:5ce2 $a4 $a4
    dw   `03003000                                     ;; 06:5ce4 $48 $48

    dw   `00300000                                     ;; 06:5ce6 $20 $20
    dw   `33330300                                     ;; 06:5ce8 $f4 $f4
    dw   `00300030                                     ;; 06:5cea $22 $22
    dw   `00300000                                     ;; 06:5cec $20 $20
    dw   `03300000                                     ;; 06:5cee $60 $60
    dw   `30300030                                     ;; 06:5cf0 $a2 $a2
    dw   `33300030                                     ;; 06:5cf2 $e2 $e2
    dw   `00333300                                     ;; 06:5cf4 $3c $3c

    dw   `00000300                                     ;; 06:5cf6 $04 $04
    dw   `03000300                                     ;; 06:5cf8 $44 $44
    dw   `03033300                                     ;; 06:5cfa $5c $5c
    dw   `03300330                                     ;; 06:5cfc $66 $66
    dw   `30303030                                     ;; 06:5cfe $aa $aa
    dw   `30303030                                     ;; 06:5d00 $aa $aa
    dw   `30030030                                     ;; 06:5d02 $92 $92
    dw   `03300300                                     ;; 06:5d04 $64 $64

    dw   `00300000                                     ;; 06:5d06 $20 $20
    dw   `03333300                                     ;; 06:5d08 $7c $7c
    dw   `00300000                                     ;; 06:5d0a $20 $20
    dw   `03333300                                     ;; 06:5d0c $7c $7c
    dw   `00300000                                     ;; 06:5d0e $20 $20
    dw   `00300030                                     ;; 06:5d10 $22 $22
    dw   `00300030                                     ;; 06:5d12 $22 $22
    dw   `00033300                                     ;; 06:5d14 $1c $1c

    dw   `00030000                                     ;; 06:5d16 $10 $10
    dw   `30033300                                     ;; 06:5d18 $9c $9c
    dw   `03300030                                     ;; 06:5d1a $62 $62
    dw   `33000030                                     ;; 06:5d1c $c2 $c2
    dw   `00303300                                     ;; 06:5d1e $2c $2c
    dw   `00300000                                     ;; 06:5d20 $20 $20
    dw   `00030000                                     ;; 06:5d22 $10 $10
    dw   `00030000                                     ;; 06:5d24 $10 $10

    dw   `00003000                                     ;; 06:5d26 $08 $08
    dw   `30033300                                     ;; 06:5d28 $9c $9c
    dw   `30303030                                     ;; 06:5d2a $aa $aa
    dw   `33003030                                     ;; 06:5d2c $ca $ca
    dw   `33003030                                     ;; 06:5d2e $ca $ca
    dw   `30303030                                     ;; 06:5d30 $aa $aa
    dw   `00033300                                     ;; 06:5d32 $1c $1c
    dw   `00330000                                     ;; 06:5d34 $30 $30

    dw   `00003000                                     ;; 06:5d36 $08 $08
    dw   `00003000                                     ;; 06:5d38 $08 $08
    dw   `00003330                                     ;; 06:5d3a $0e $0e
    dw   `00003000                                     ;; 06:5d3c $08 $08
    dw   `00003000                                     ;; 06:5d3e $08 $08
    dw   `03333000                                     ;; 06:5d40 $78 $78
    dw   `30003300                                     ;; 06:5d42 $8c $8c
    dw   `03330030                                     ;; 06:5d44 $72 $72

    dw   `00330000                                     ;; 06:5d46 $30 $30
    dw   `00003000                                     ;; 06:5d48 $08 $08
    dw   `03000000                                     ;; 06:5d4a $40 $40
    dw   `03033300                                     ;; 06:5d4c $5c $5c
    dw   `03300030                                     ;; 06:5d4e $62 $62
    dw   `03000030                                     ;; 06:5d50 $42 $42
    dw   `00000300                                     ;; 06:5d52 $04 $04
    dw   `00033000                                     ;; 06:5d54 $18 $18

    dw   `00003000                                     ;; 06:5d56 $08 $08
    dw   `03000300                                     ;; 06:5d58 $44 $44
    dw   `03000300                                     ;; 06:5d5a $44 $44
    dw   `03000300                                     ;; 06:5d5c $44 $44
    dw   `03000300                                     ;; 06:5d5e $44 $44
    dw   `00000300                                     ;; 06:5d60 $04 $04
    dw   `00003000                                     ;; 06:5d62 $08 $08
    dw   `00330000                                     ;; 06:5d64 $30 $30

    dw   `03333300                                     ;; 06:5d66 $7c $7c
    dw   `00033000                                     ;; 06:5d68 $18 $18
    dw   `00300000                                     ;; 06:5d6a $20 $20
    dw   `03333300                                     ;; 06:5d6c $7c $7c
    dw   `30000030                                     ;; 06:5d6e $82 $82
    dw   `00330030                                     ;; 06:5d70 $32 $32
    dw   `03003030                                     ;; 06:5d72 $4a $4a
    dw   `00333300                                     ;; 06:5d74 $3c $3c

    dw   `00300000                                     ;; 06:5d76 $20 $20
    dw   `00300000                                     ;; 06:5d78 $20 $20
    dw   `33303300                                     ;; 06:5d7a $ec $ec
    dw   `00330030                                     ;; 06:5d7c $32 $32
    dw   `00300030                                     ;; 06:5d7e $22 $22

    db   $64, $64                                      ;; 06:5d80 ..
    dw   `30300300                                     ;; 06:5d82 $a4 $a4
    dw   `00300030                                     ;; 06:5d84 $22 $22
    dw   `03333300                                     ;; 06:5d86 $7c $7c
    dw   `00033000                                     ;; 06:5d88 $18 $18
    dw   `00300000                                     ;; 06:5d8a $20 $20
    dw   `03333300                                     ;; 06:5d8c $7c $7c
    dw   `30000030                                     ;; 06:5d8e $82 $82
    dw   `00000030                                     ;; 06:5d90 $02 $02

    dw   `00000300                                     ;; 06:5d92 $04 $04
    dw   `00333000                                     ;; 06:5d94 $38 $38
    dw   `00300000                                     ;; 06:5d96 $20 $20
    dw   `00300000                                     ;; 06:5d98 $20 $20
    dw   `33303300                                     ;; 06:5d9a $ec $ec
    dw   `00330030                                     ;; 06:5d9c $32 $32
    dw   `00300030                                     ;; 06:5d9e $22 $22
    dw   `03300030                                     ;; 06:5da0 $62 $62

    dw   `30300030                                     ;; 06:5da2 $a2 $a2
    dw   `00300300                                     ;; 06:5da4 $24 $24
    dw   `00003000                                     ;; 06:5da6 $08 $08
    dw   `03333300                                     ;; 06:5da8 $7c $7c
    dw   `00030000                                     ;; 06:5daa $10 $10
    dw   `00333030                                     ;; 06:5dac $3a $3a
    dw   `03003300                                     ;; 06:5dae $4c $4c
    dw   `00300300                                     ;; 06:5db0 $24 $24

    dw   `00300000                                     ;; 06:5db2 $20 $20
    dw   `00033330                                     ;; 06:5db4 $1e $1e
    dw   `00030000                                     ;; 06:5db6 $10 $10
    dw   `00030000                                     ;; 06:5db8 $10 $10
    dw   `00300000                                     ;; 06:5dba $20 $20
    dw   `00300000                                     ;; 06:5dbc $20 $20
    dw   `03330000                                     ;; 06:5dbe $70 $70
    dw   `03003030                                     ;; 06:5dc0 $4a $4a

    dw   `30003030                                     ;; 06:5dc2 $8a $8a
    dw   `30000300                                     ;; 06:5dc4 $84 $84
    dw   `00000000                                     ;; 06:5dc6 $00 $00
    dw   `00000000                                     ;; 06:5dc8 $00 $00
    dw   `00000000                                     ;; 06:5dca $00 $00
    dw   `03333000                                     ;; 06:5dcc $78 $78
    dw   `00000300                                     ;; 06:5dce $04 $04
    dw   `00000300                                     ;; 06:5dd0 $04 $04

    dw   `00003000                                     ;; 06:5dd2 $08 $08
    dw   `00330000                                     ;; 06:5dd4 $30 $30
    dw   `00000000                                     ;; 06:5dd6 $00 $00
    dw   `00000000                                     ;; 06:5dd8 $00 $00
    dw   `00303000                                     ;; 06:5dda $28 $28
    dw   `00333330                                     ;; 06:5ddc $3e $3e
    dw   `03330030                                     ;; 06:5dde $72 $72
    dw   `00033300                                     ;; 06:5de0 $1c $1c

    dw   `00030000                                     ;; 06:5de2 $10 $10
    dw   `00003000                                     ;; 06:5de4 $08 $08
    dw   `00000000                                     ;; 06:5de6 $00 $00
    dw   `00000000                                     ;; 06:5de8 $00 $00
    dw   `00003000                                     ;; 06:5dea $08 $08
    dw   `03033300                                     ;; 06:5dec $5c $5c
    dw   `03303030                                     ;; 06:5dee $6a $6a
    dw   `03003030                                     ;; 06:5df0 $4a $4a

    dw   `00033300                                     ;; 06:5df2 $1c $1c
    dw   `00003000                                     ;; 06:5df4 $08 $08
    dw   `00000000                                     ;; 06:5df6 $00 $00
    dw   `00000000                                     ;; 06:5df8 $00 $00
    dw   `00030000                                     ;; 06:5dfa $10 $10
    dw   `00033300                                     ;; 06:5dfc $1c $1c
    dw   `00030000                                     ;; 06:5dfe $10 $10
    dw   `00330000                                     ;; 06:5e00 $30 $30

    dw   `03033000                                     ;; 06:5e02 $58 $58
    dw   `00300300                                     ;; 06:5e04 $24 $24
    dw   `00000000                                     ;; 06:5e06 $00 $00
    dw   `33333330                                     ;; 06:5e08 $fe $fe
    dw   `00000030                                     ;; 06:5e0a $02 $02
    dw   `00000030                                     ;; 06:5e0c $02 $02
    dw   `00300300                                     ;; 06:5e0e $24 $24
    dw   `00333000                                     ;; 06:5e10 $38 $38

    dw   `00300000                                     ;; 06:5e12 $20 $20
    dw   `03000000                                     ;; 06:5e14 $40 $40
    dw   `00000030                                     ;; 06:5e16 $02 $02
    dw   `00000030                                     ;; 06:5e18 $02 $02
    dw   `00000300                                     ;; 06:5e1a $04 $04
    dw   `00003300                                     ;; 06:5e1c $0c $0c
    dw   `03330300                                     ;; 06:5e1e $74 $74
    dw   `00000300                                     ;; 06:5e20 $04 $04

    dw   `00000300                                     ;; 06:5e22 $04 $04
    dw   `00000300                                     ;; 06:5e24 $04 $04
    dw   `00030000                                     ;; 06:5e26 $10 $10
    dw   `33333330                                     ;; 06:5e28 $fe $fe
    dw   `30000030                                     ;; 06:5e2a $82 $82
    dw   `30000030                                     ;; 06:5e2c $82 $82
    dw   `30000030                                     ;; 06:5e2e $82 $82
    dw   `00000030                                     ;; 06:5e30 $02 $02

    dw   `00000300                                     ;; 06:5e32 $04 $04
    dw   `00333000                                     ;; 06:5e34 $38 $38
    dw   `00000000                                     ;; 06:5e36 $00 $00
    dw   `03333300                                     ;; 06:5e38 $7c $7c
    dw   `00030000                                     ;; 06:5e3a $10 $10
    dw   `00030000                                     ;; 06:5e3c $10 $10
    dw   `00030000                                     ;; 06:5e3e $10 $10
    dw   `00030000                                     ;; 06:5e40 $10 $10

    dw   `00030000                                     ;; 06:5e42 $10 $10
    dw   `33333330                                     ;; 06:5e44 $fe $fe
    dw   `00000300                                     ;; 06:5e46 $04 $04
    dw   `00000300                                     ;; 06:5e48 $04 $04
    dw   `33333330                                     ;; 06:5e4a $fe $fe
    dw   `00000300                                     ;; 06:5e4c $04 $04
    dw   `00003300                                     ;; 06:5e4e $0c $0c
    dw   `00030300                                     ;; 06:5e50 $14 $14

    dw   `00300300                                     ;; 06:5e52 $24 $24
    dw   `33000300                                     ;; 06:5e54 $c4 $c4
    dw   `00030000                                     ;; 06:5e56 $10 $10
    dw   `33333330                                     ;; 06:5e58 $fe $fe
    dw   `00030030                                     ;; 06:5e5a $12 $12
    dw   `00030030                                     ;; 06:5e5c $12 $12
    dw   `00300030                                     ;; 06:5e5e $22 $22
    dw   `00300030                                     ;; 06:5e60 $22 $22

    dw   `03000030                                     ;; 06:5e62 $42 $42
    dw   `03003300                                     ;; 06:5e64 $4c $4c
    dw   `00300000                                     ;; 06:5e66 $20 $20
    dw   `33333330                                     ;; 06:5e68 $fe $fe
    dw   `00030000                                     ;; 06:5e6a $10 $10
    dw   `00030000                                     ;; 06:5e6c $10 $10
    dw   `33333330                                     ;; 06:5e6e $fe $fe
    dw   `00003000                                     ;; 06:5e70 $08 $08

    dw   `00003000                                     ;; 06:5e72 $08 $08
    dw   `00003000                                     ;; 06:5e74 $08 $08
    dw   `00000000                                     ;; 06:5e76 $00 $00
    dw   `00333330                                     ;; 06:5e78 $3e $3e
    dw   `00300030                                     ;; 06:5e7a $22 $22
    dw   `03000030                                     ;; 06:5e7c $42 $42
    dw   `00000300                                     ;; 06:5e7e $04 $04
    dw   `00000300                                     ;; 06:5e80 $04 $04

    dw   `00003000                                     ;; 06:5e82 $08 $08
    dw   `00330000                                     ;; 06:5e84 $30 $30
    dw   `00300000                                     ;; 06:5e86 $20 $20
    dw   `00333333                                     ;; 06:5e88 $3f $3f
    dw   `00300300                                     ;; 06:5e8a $24 $24
    dw   `03000300                                     ;; 06:5e8c $44 $44
    dw   `30000300                                     ;; 06:5e8e $84 $84
    dw   `00000300                                     ;; 06:5e90 $04 $04

    dw   `00003000                                     ;; 06:5e92 $08 $08
    dw   `00030000                                     ;; 06:5e94 $10 $10
    dw   `00000000                                     ;; 06:5e96 $00 $00
    dw   `03333330                                     ;; 06:5e98 $7e $7e
    dw   `00000030                                     ;; 06:5e9a $02 $02
    dw   `00000030                                     ;; 06:5e9c $02 $02
    dw   `00000030                                     ;; 06:5e9e $02 $02
    dw   `00000030                                     ;; 06:5ea0 $02 $02

    dw   `00000030                                     ;; 06:5ea2 $02 $02
    dw   `03333330                                     ;; 06:5ea4 $7e $7e
    dw   `03000300                                     ;; 06:5ea6 $44 $44
    dw   `33333330                                     ;; 06:5ea8 $fe $fe
    dw   `03000300                                     ;; 06:5eaa $44 $44
    dw   `03000300                                     ;; 06:5eac $44 $44
    dw   `03000300                                     ;; 06:5eae $44 $44
    dw   `00000300                                     ;; 06:5eb0 $04 $04

    dw   `00003000                                     ;; 06:5eb2 $08 $08
    dw   `00030000                                     ;; 06:5eb4 $10 $10
    dw   `00000000                                     ;; 06:5eb6 $00 $00
    dw   `33330030                                     ;; 06:5eb8 $f2 $f2
    dw   `00000030                                     ;; 06:5eba $02 $02
    dw   `33330030                                     ;; 06:5ebc $f2 $f2
    dw   `00000030                                     ;; 06:5ebe $02 $02
    dw   `00000300                                     ;; 06:5ec0 $04 $04

    dw   `00003000                                     ;; 06:5ec2 $08 $08
    dw   `33330000                                     ;; 06:5ec4 $f0 $f0
    dw   `00000000                                     ;; 06:5ec6 $00 $00
    dw   `33333330                                     ;; 06:5ec8 $fe $fe
    dw   `00000300                                     ;; 06:5eca $04 $04
    dw   `00000300                                     ;; 06:5ecc $04 $04
    dw   `00003000                                     ;; 06:5ece $08 $08
    dw   `00033000                                     ;; 06:5ed0 $18 $18

    dw   `00300300                                     ;; 06:5ed2 $24 $24
    dw   `33000030                                     ;; 06:5ed4 $c2 $c2
    dw   `03000000                                     ;; 06:5ed6 $40 $40
    dw   `03000000                                     ;; 06:5ed8 $40 $40
    dw   `33333330                                     ;; 06:5eda $fe $fe
    dw   `03000300                                     ;; 06:5edc $44 $44
    dw   `03003000                                     ;; 06:5ede $48 $48
    dw   `03000000                                     ;; 06:5ee0 $40 $40

    dw   `03000000                                     ;; 06:5ee2 $40 $40
    dw   `00333330                                     ;; 06:5ee4 $3e $3e
    dw   `00000000                                     ;; 06:5ee6 $00 $00
    dw   `30000030                                     ;; 06:5ee8 $82 $82
    dw   `03000030                                     ;; 06:5eea $42 $42
    dw   `00300300                                     ;; 06:5eec $24 $24
    dw   `00000300                                     ;; 06:5eee $04 $04
    dw   `00003000                                     ;; 06:5ef0 $08 $08

    dw   `00030000                                     ;; 06:5ef2 $10 $10
    dw   `03300000                                     ;; 06:5ef4 $60 $60
    dw   `00000000                                     ;; 06:5ef6 $00 $00
    dw   `00333330                                     ;; 06:5ef8 $3e $3e
    dw   `00300030                                     ;; 06:5efa $22 $22
    dw   `03000030                                     ;; 06:5efc $42 $42
    dw   `00033330                                     ;; 06:5efe $1e $1e
    dw   `00000300                                     ;; 06:5f00 $04 $04

    dw   `00003000                                     ;; 06:5f02 $08 $08
    dw   `00330000                                     ;; 06:5f04 $30 $30
    dw   `00000000                                     ;; 06:5f06 $00 $00
    dw   `00003330                                     ;; 06:5f08 $0e $0e
    dw   `00330300                                     ;; 06:5f0a $34 $34
    dw   `00000300                                     ;; 06:5f0c $04 $04
    dw   `03333333                                     ;; 06:5f0e $7f $7f
    dw   `00000300                                     ;; 06:5f10 $04 $04

    dw   `00003000                                     ;; 06:5f12 $08 $08
    dw   `00330000                                     ;; 06:5f14 $30 $30
    dw   `00000000                                     ;; 06:5f16 $00 $00
    dw   `03030030                                     ;; 06:5f18 $52 $52
    dw   `03030030                                     ;; 06:5f1a $52 $52
    dw   `00303030                                     ;; 06:5f1c $2a $2a
    dw   `00000030                                     ;; 06:5f1e $02 $02
    dw   `00000300                                     ;; 06:5f20 $04 $04

    dw   `00003000                                     ;; 06:5f22 $08 $08
    dw   `00330000                                     ;; 06:5f24 $30 $30
    dw   `00000000                                     ;; 06:5f26 $00 $00
    dw   `03333300                                     ;; 06:5f28 $7c $7c
    dw   `00000000                                     ;; 06:5f2a $00 $00
    dw   `33333330                                     ;; 06:5f2c $fe $fe
    dw   `00003000                                     ;; 06:5f2e $08 $08
    dw   `00003000                                     ;; 06:5f30 $08 $08

    dw   `00030000                                     ;; 06:5f32 $10 $10
    dw   `03300000                                     ;; 06:5f34 $60 $60
    dw   `03000000                                     ;; 06:5f36 $40 $40
    dw   `03000000                                     ;; 06:5f38 $40 $40
    dw   `03000000                                     ;; 06:5f3a $40 $40
    dw   `03330000                                     ;; 06:5f3c $70 $70
    dw   `03003000                                     ;; 06:5f3e $48 $48
    dw   `03000300                                     ;; 06:5f40 $44 $44

    dw   `03000000                                     ;; 06:5f42 $40 $40
    dw   `03000000                                     ;; 06:5f44 $40 $40
    dw   `00003000                                     ;; 06:5f46 $08 $08
    dw   `00003000                                     ;; 06:5f48 $08 $08
    dw   `33333330                                     ;; 06:5f4a $fe $fe
    dw   `00003000                                     ;; 06:5f4c $08 $08
    dw   `00003000                                     ;; 06:5f4e $08 $08
    dw   `00003000                                     ;; 06:5f50 $08 $08

    dw   `00030000                                     ;; 06:5f52 $10 $10
    dw   `03300000                                     ;; 06:5f54 $60 $60
    dw   `00000000                                     ;; 06:5f56 $00 $00
    dw   `00000000                                     ;; 06:5f58 $00 $00
    dw   `03333300                                     ;; 06:5f5a $7c $7c
    dw   `00000000                                     ;; 06:5f5c $00 $00
    dw   `00000000                                     ;; 06:5f5e $00 $00
    dw   `00000000                                     ;; 06:5f60 $00 $00

    dw   `00000000                                     ;; 06:5f62 $00 $00
    dw   `33333330                                     ;; 06:5f64 $fe $fe
    dw   `00000000                                     ;; 06:5f66 $00 $00
    dw   `03333330                                     ;; 06:5f68 $7e $7e
    dw   `00000030                                     ;; 06:5f6a $02 $02
    dw   `00300030                                     ;; 06:5f6c $22 $22
    dw   `00030300                                     ;; 06:5f6e $14 $14
    dw   `00003000                                     ;; 06:5f70 $08 $08

    dw   `00330300                                     ;; 06:5f72 $34 $34
    dw   `33000030                                     ;; 06:5f74 $c2 $c2
    dw   `00030000                                     ;; 06:5f76 $10 $10
    dw   `33333330                                     ;; 06:5f78 $fe $fe
    dw   `00000300                                     ;; 06:5f7a $04 $04
    dw   `00003000                                     ;; 06:5f7c $08 $08
    dw   `00033000                                     ;; 06:5f7e $18 $18
    dw   `00330300                                     ;; 06:5f80 $34 $34

    dw   `33030030                                     ;; 06:5f82 $d2 $d2
    dw   `00030000                                     ;; 06:5f84 $10 $10
    dw   `00000000                                     ;; 06:5f86 $00 $00
    dw   `00000030                                     ;; 06:5f88 $02 $02
    dw   `00000030                                     ;; 06:5f8a $02 $02
    dw   `00000030                                     ;; 06:5f8c $02 $02
    dw   `00000030                                     ;; 06:5f8e $02 $02
    dw   `00000300                                     ;; 06:5f90 $04 $04

    dw   `00003000                                     ;; 06:5f92 $08 $08
    dw   `03330000                                     ;; 06:5f94 $70 $70
    dw   `00000000                                     ;; 06:5f96 $00 $00
    dw   `00000300                                     ;; 06:5f98 $04 $04
    dw   `00300300                                     ;; 06:5f9a $24 $24
    dw   `00300030                                     ;; 06:5f9c $22 $22
    dw   `03000030                                     ;; 06:5f9e $42 $42
    dw   `03000003                                     ;; 06:5fa0 $41 $41

    dw   `30000003                                     ;; 06:5fa2 $81 $81
    dw   `30000003                                     ;; 06:5fa4 $81 $81
    dw   `03000000                                     ;; 06:5fa6 $40 $40
    dw   `03000000                                     ;; 06:5fa8 $40 $40
    dw   `03333330                                     ;; 06:5faa $7e $7e
    dw   `03000000                                     ;; 06:5fac $40 $40
    dw   `03000000                                     ;; 06:5fae $40 $40
    dw   `03000000                                     ;; 06:5fb0 $40 $40

    dw   `03000000                                     ;; 06:5fb2 $40 $40
    dw   `00333330                                     ;; 06:5fb4 $3e $3e
    dw   `00000000                                     ;; 06:5fb6 $00 $00
    dw   `03333330                                     ;; 06:5fb8 $7e $7e
    dw   `00000030                                     ;; 06:5fba $02 $02
    dw   `00000030                                     ;; 06:5fbc $02 $02
    dw   `00000030                                     ;; 06:5fbe $02 $02
    dw   `00000300                                     ;; 06:5fc0 $04 $04

    dw   `00003000                                     ;; 06:5fc2 $08 $08
    dw   `00330000                                     ;; 06:5fc4 $30 $30
    dw   `00000000                                     ;; 06:5fc6 $00 $00
    dw   `00000000                                     ;; 06:5fc8 $00 $00
    dw   `00333000                                     ;; 06:5fca $38 $38
    dw   `03000300                                     ;; 06:5fcc $44 $44
    dw   `30000030                                     ;; 06:5fce $82 $82
    dw   `00000003                                     ;; 06:5fd0 $01 $01

    dw   `00000000                                     ;; 06:5fd2 $00 $00
    dw   `00000000                                     ;; 06:5fd4 $00 $00
    dw   `00030000                                     ;; 06:5fd6 $10 $10
    dw   `33333330                                     ;; 06:5fd8 $fe $fe
    dw   `00030000                                     ;; 06:5fda $10 $10
    dw   `00030000                                     ;; 06:5fdc $10 $10
    dw   `03030300                                     ;; 06:5fde $54 $54
    dw   `03030030                                     ;; 06:5fe0 $52 $52

    dw   `30030030                                     ;; 06:5fe2 $92 $92
    dw   `00030000                                     ;; 06:5fe4 $10 $10
    dw   `00000000                                     ;; 06:5fe6 $00 $00
    dw   `00000000                                     ;; 06:5fe8 $00 $00
    dw   `33333330                                     ;; 06:5fea $fe $fe
    dw   `00000030                                     ;; 06:5fec $02 $02
    dw   `03000300                                     ;; 06:5fee $44 $44
    dw   `00303000                                     ;; 06:5ff0 $28 $28

    dw   `00030000                                     ;; 06:5ff2 $10 $10
    dw   `00003000                                     ;; 06:5ff4 $08 $08
    dw   `00000000                                     ;; 06:5ff6 $00 $00
    dw   `03333000                                     ;; 06:5ff8 $78 $78
    dw   `00000300                                     ;; 06:5ffa $04 $04
    dw   `03330000                                     ;; 06:5ffc $70 $70
    dw   `00003300                                     ;; 06:5ffe $0c $0c
    dw   `00000000                                     ;; 06:6000 $00 $00

    dw   `03330000                                     ;; 06:6002 $70 $70
    dw   `00003300                                     ;; 06:6004 $0c $0c
    dw   `00000000                                     ;; 06:6006 $00 $00
    dw   `00030000                                     ;; 06:6008 $10 $10
    dw   `00300000                                     ;; 06:600a $20 $20
    dw   `03000000                                     ;; 06:600c $40 $40
    dw   `03000300                                     ;; 06:600e $44 $44
    dw   `30000300                                     ;; 06:6010 $84 $84

    dw   `33333330                                     ;; 06:6012 $fe $fe
    dw   `30000030                                     ;; 06:6014 $82 $82
    dw   `00000000                                     ;; 06:6016 $00 $00
    dw   `00000030                                     ;; 06:6018 $02 $02
    dw   `00000030                                     ;; 06:601a $02 $02
    dw   `00300030                                     ;; 06:601c $22 $22
    dw   `00030300                                     ;; 06:601e $14 $14
    dw   `00003300                                     ;; 06:6020 $0c $0c

    dw   `00030030                                     ;; 06:6022 $12 $12
    dw   `03300000                                     ;; 06:6024 $60 $60
    dw   `00000000                                     ;; 06:6026 $00 $00
    dw   `03333300                                     ;; 06:6028 $7c $7c
    dw   `00300000                                     ;; 06:602a $20 $20
    dw   `33333330                                     ;; 06:602c $fe $fe
    dw   `00300000                                     ;; 06:602e $20 $20
    dw   `00300000                                     ;; 06:6030 $20 $20

    dw   `00300000                                     ;; 06:6032 $20 $20
    dw   `00033330                                     ;; 06:6034 $1e $1e
    dw   `00000000                                     ;; 06:6036 $00 $00
    dw   `03000000                                     ;; 06:6038 $40 $40
    dw   `33333330                                     ;; 06:603a $fe $fe
    dw   `03000030                                     ;; 06:603c $42 $42
    dw   `03000030                                     ;; 06:603e $42 $42
    dw   `03000300                                     ;; 06:6040 $44 $44

    dw   `00303000                                     ;; 06:6042 $28 $28
    dw   `00300000                                     ;; 06:6044 $20 $20
    dw   `00000000                                     ;; 06:6046 $00 $00
    dw   `00000000                                     ;; 06:6048 $00 $00
    dw   `03333300                                     ;; 06:604a $7c $7c
    dw   `00000300                                     ;; 06:604c $04 $04
    dw   `00000300                                     ;; 06:604e $04 $04
    dw   `00003000                                     ;; 06:6050 $08 $08

    dw   `00003000                                     ;; 06:6052 $08 $08
    dw   `33333330                                     ;; 06:6054 $fe $fe
    dw   `00000000                                     ;; 06:6056 $00 $00
    dw   `03333330                                     ;; 06:6058 $7e $7e
    dw   `00000030                                     ;; 06:605a $02 $02
    dw   `00000030                                     ;; 06:605c $02 $02
    dw   `03333330                                     ;; 06:605e $7e $7e
    dw   `00000030                                     ;; 06:6060 $02 $02

    dw   `00000030                                     ;; 06:6062 $02 $02
    dw   `03333330                                     ;; 06:6064 $7e $7e
    dw   `00000000                                     ;; 06:6066 $00 $00
    dw   `03333300                                     ;; 06:6068 $7c $7c
    dw   `00000000                                     ;; 06:606a $00 $00
    dw   `33333330                                     ;; 06:606c $fe $fe
    dw   `00000030                                     ;; 06:606e $02 $02
    dw   `00000030                                     ;; 06:6070 $02 $02

    dw   `00000300                                     ;; 06:6072 $04 $04
    dw   `00333000                                     ;; 06:6074 $38 $38
    dw   `00000000                                     ;; 06:6076 $00 $00
    dw   `03000300                                     ;; 06:6078 $44 $44
    dw   `03000300                                     ;; 06:607a $44 $44
    dw   `03000300                                     ;; 06:607c $44 $44
    dw   `03000300                                     ;; 06:607e $44 $44
    dw   `00000300                                     ;; 06:6080 $04 $04

    dw   `00003000                                     ;; 06:6082 $08 $08
    dw   `00330000                                     ;; 06:6084 $30 $30
    dw   `00000000                                     ;; 06:6086 $00 $00
    dw   `00030000                                     ;; 06:6088 $10 $10
    dw   `03030000                                     ;; 06:608a $50 $50
    dw   `03030000                                     ;; 06:608c $50 $50
    dw   `03030030                                     ;; 06:608e $52 $52
    dw   `03030030                                     ;; 06:6090 $52 $52

    dw   `03030300                                     ;; 06:6092 $54 $54
    dw   `30033000                                     ;; 06:6094 $98 $98
    dw   `00000000                                     ;; 06:6096 $00 $00
    dw   `03000000                                     ;; 06:6098 $40 $40
    dw   `03000000                                     ;; 06:609a $40 $40
    dw   `03000030                                     ;; 06:609c $42 $42
    dw   `03000030                                     ;; 06:609e $42 $42
    dw   `03000300                                     ;; 06:60a0 $44 $44

    dw   `03003000                                     ;; 06:60a2 $48 $48
    dw   `03330000                                     ;; 06:60a4 $70 $70
    dw   `00000000                                     ;; 06:60a6 $00 $00
    dw   `03333330                                     ;; 06:60a8 $7e $7e
    dw   `03000030                                     ;; 06:60aa $42 $42
    dw   `03000030                                     ;; 06:60ac $42 $42
    dw   `03000030                                     ;; 06:60ae $42 $42
    dw   `03000030                                     ;; 06:60b0 $42 $42

    dw   `03000030                                     ;; 06:60b2 $42 $42
    dw   `03333330                                     ;; 06:60b4 $7e $7e
    dw   `00000000                                     ;; 06:60b6 $00 $00
    dw   `03333330                                     ;; 06:60b8 $7e $7e
    dw   `03000030                                     ;; 06:60ba $42 $42
    dw   `03000030                                     ;; 06:60bc $42 $42
    dw   `00000030                                     ;; 06:60be $02 $02
    dw   `00000030                                     ;; 06:60c0 $02 $02

    dw   `00000300                                     ;; 06:60c2 $04 $04
    dw   `00333000                                     ;; 06:60c4 $38 $38
    dw   `00000000                                     ;; 06:60c6 $00 $00
    dw   `03333330                                     ;; 06:60c8 $7e $7e
    dw   `00000030                                     ;; 06:60ca $02 $02
    dw   `00333330                                     ;; 06:60cc $3e $3e
    dw   `00000030                                     ;; 06:60ce $02 $02
    dw   `00000300                                     ;; 06:60d0 $04 $04

    dw   `00003000                                     ;; 06:60d2 $08 $08
    dw   `00330000                                     ;; 06:60d4 $30 $30
    dw   `00000000                                     ;; 06:60d6 $00 $00
    dw   `00000030                                     ;; 06:60d8 $02 $02
    dw   `03330030                                     ;; 06:60da $72 $72
    dw   `00000030                                     ;; 06:60dc $02 $02
    dw   `00000030                                     ;; 06:60de $02 $02
    dw   `00000300                                     ;; 06:60e0 $04 $04

    dw   `00003000                                     ;; 06:60e2 $08 $08
    dw   `03330000                                     ;; 06:60e4 $70 $70
    dw   `00000000                                     ;; 06:60e6 $00 $00
    dw   `00000000                                     ;; 06:60e8 $00 $00
    dw   `00000000                                     ;; 06:60ea $00 $00
    dw   `03333300                                     ;; 06:60ec $7c $7c
    dw   `00000300                                     ;; 06:60ee $04 $04
    dw   `00033000                                     ;; 06:60f0 $18 $18

    dw   `00030000                                     ;; 06:60f2 $10 $10
    dw   `00300000                                     ;; 06:60f4 $20 $20
    dw   `00000000                                     ;; 06:60f6 $00 $00
    dw   `00000000                                     ;; 06:60f8 $00 $00
    dw   `00000000                                     ;; 06:60fa $00 $00
    dw   `00000300                                     ;; 06:60fc $04 $04
    dw   `00003000                                     ;; 06:60fe $08 $08
    dw   `00033000                                     ;; 06:6100 $18 $18

    dw   `03303000                                     ;; 06:6102 $68 $68
    dw   `00003000                                     ;; 06:6104 $08 $08
    dw   `00000000                                     ;; 06:6106 $00 $00
    dw   `00000000                                     ;; 06:6108 $00 $00
    dw   `00000000                                     ;; 06:610a $00 $00
    dw   `00030000                                     ;; 06:610c $10 $10
    dw   `03333000                                     ;; 06:610e $78 $78
    dw   `03003000                                     ;; 06:6110 $48 $48

    dw   `00003000                                     ;; 06:6112 $08 $08
    dw   `00330000                                     ;; 06:6114 $30 $30
    dw   `00000000                                     ;; 06:6116 $00 $00
    dw   `00000000                                     ;; 06:6118 $00 $00
    dw   `00000000                                     ;; 06:611a $00 $00
    dw   `00333000                                     ;; 06:611c $38 $38
    dw   `00030000                                     ;; 06:611e $10 $10
    dw   `00030000                                     ;; 06:6120 $10 $10

    dw   `00030000                                     ;; 06:6122 $10 $10
    dw   `03333300                                     ;; 06:6124 $7c $7c
    dw   `00000000                                     ;; 06:6126 $00 $00
    dw   `00000000                                     ;; 06:6128 $00 $00
    dw   `00000000                                     ;; 06:612a $00 $00
    dw   `00003000                                     ;; 06:612c $08 $08
    dw   `03333300                                     ;; 06:612e $7c $7c
    dw   `00003000                                     ;; 06:6130 $08 $08

    dw   `00033000                                     ;; 06:6132 $18 $18
    dw   `03303000                                     ;; 06:6134 $68 $68
    dw   `00000000                                     ;; 06:6136 $00 $00
    dw   `00000000                                     ;; 06:6138 $00 $00
    dw   `00000000                                     ;; 06:613a $00 $00
    dw   `03030300                                     ;; 06:613c $54 $54
    dw   `03030300                                     ;; 06:613e $54 $54
    dw   `00000300                                     ;; 06:6140 $04 $04

    dw   `00003000                                     ;; 06:6142 $08 $08
    dw   `00330000                                     ;; 06:6144 $30 $30
    dw   `00000000                                     ;; 06:6146 $00 $00
    dw   `00000000                                     ;; 06:6148 $00 $00
    dw   `00000000                                     ;; 06:614a $00 $00
    dw   `00300000                                     ;; 06:614c $20 $20
    dw   `03333300                                     ;; 06:614e $7c $7c
    dw   `00300300                                     ;; 06:6150 $24 $24

    dw   `00303000                                     ;; 06:6152 $28 $28
    dw   `00300000                                     ;; 06:6154 $20 $20
    dw   `00000000                                     ;; 06:6156 $00 $00
    dw   `00000000                                     ;; 06:6158 $00 $00
    dw   `00000000                                     ;; 06:615a $00 $00
    dw   `00000000                                     ;; 06:615c $00 $00
    dw   `00333000                                     ;; 06:615e $38 $38
    dw   `00003000                                     ;; 06:6160 $08 $08

    dw   `00003000                                     ;; 06:6162 $08 $08
    dw   `03333300                                     ;; 06:6164 $7c $7c
    dw   `00000000                                     ;; 06:6166 $00 $00
    dw   `00000000                                     ;; 06:6168 $00 $00
    dw   `00000000                                     ;; 06:616a $00 $00
    dw   `03333000                                     ;; 06:616c $78 $78
    dw   `00003000                                     ;; 06:616e $08 $08
    dw   `03333000                                     ;; 06:6170 $78 $78

    dw   `00003000                                     ;; 06:6172 $08 $08
    dw   `03333000                                     ;; 06:6174 $78 $78
    dw   `00030000                                     ;; 06:6176 $10 $10
    dw   `00303000                                     ;; 06:6178 $28 $28
    dw   `00303000                                     ;; 06:617a $28 $28
    dw   `03000300                                     ;; 06:617c $44 $44
    dw   `03333300                                     ;; 06:617e $7c $7c
    dw   `30000030                                     ;; 06:6180 $82 $82

    dw   `30000030                                     ;; 06:6182 $82 $82
    dw   `00000000                                     ;; 06:6184 $00 $00
    dw   `03333300                                     ;; 06:6186 $7c $7c
    dw   `03000030                                     ;; 06:6188 $42 $42
    dw   `03000030                                     ;; 06:618a $42 $42
    dw   `03333300                                     ;; 06:618c $7c $7c
    dw   `03000030                                     ;; 06:618e $42 $42
    dw   `03000030                                     ;; 06:6190 $42 $42

    dw   `03333300                                     ;; 06:6192 $7c $7c
    dw   `00000000                                     ;; 06:6194 $00 $00
    dw   `00333300                                     ;; 06:6196 $3c $3c
    dw   `03000030                                     ;; 06:6198 $42 $42
    dw   `03000000                                     ;; 06:619a $40 $40
    dw   `03000000                                     ;; 06:619c $40 $40
    dw   `03000000                                     ;; 06:619e $40 $40
    dw   `03000030                                     ;; 06:61a0 $42 $42

    dw   `00333300                                     ;; 06:61a2 $3c $3c
    dw   `00000000                                     ;; 06:61a4 $00 $00
    dw   `03333000                                     ;; 06:61a6 $78 $78
    dw   `03000300                                     ;; 06:61a8 $44 $44
    dw   `03000030                                     ;; 06:61aa $42 $42
    dw   `03000030                                     ;; 06:61ac $42 $42
    dw   `03000030                                     ;; 06:61ae $42 $42
    dw   `03000300                                     ;; 06:61b0 $44 $44

    dw   `03333000                                     ;; 06:61b2 $78 $78
    dw   `00000000                                     ;; 06:61b4 $00 $00
    dw   `03333330                                     ;; 06:61b6 $7e $7e
    dw   `03000000                                     ;; 06:61b8 $40 $40
    dw   `03000000                                     ;; 06:61ba $40 $40
    dw   `03333300                                     ;; 06:61bc $7c $7c
    dw   `03000000                                     ;; 06:61be $40 $40
    dw   `03000000                                     ;; 06:61c0 $40 $40

    dw   `03333330                                     ;; 06:61c2 $7e $7e
    dw   `00000000                                     ;; 06:61c4 $00 $00
    dw   `03333330                                     ;; 06:61c6 $7e $7e
    dw   `03000000                                     ;; 06:61c8 $40 $40
    dw   `03000000                                     ;; 06:61ca $40 $40
    dw   `03333300                                     ;; 06:61cc $7c $7c
    dw   `03000000                                     ;; 06:61ce $40 $40
    dw   `03000000                                     ;; 06:61d0 $40 $40

    dw   `03000000                                     ;; 06:61d2 $40 $40
    dw   `00000000                                     ;; 06:61d4 $00 $00
    dw   `00333330                                     ;; 06:61d6 $3e $3e
    dw   `03000000                                     ;; 06:61d8 $40 $40
    dw   `30000000                                     ;; 06:61da $80 $80
    dw   `30003330                                     ;; 06:61dc $8e $8e
    dw   `30000030                                     ;; 06:61de $82 $82
    dw   `03000030                                     ;; 06:61e0 $42 $42

    dw   `00333330                                     ;; 06:61e2 $3e $3e
    dw   `00000000                                     ;; 06:61e4 $00 $00
    dw   `03000030                                     ;; 06:61e6 $42 $42
    dw   `03000030                                     ;; 06:61e8 $42 $42
    dw   `03000030                                     ;; 06:61ea $42 $42
    dw   `03333330                                     ;; 06:61ec $7e $7e
    dw   `03000030                                     ;; 06:61ee $42 $42
    dw   `03000030                                     ;; 06:61f0 $42 $42

    dw   `03000030                                     ;; 06:61f2 $42 $42
    dw   `00000000                                     ;; 06:61f4 $00 $00
    dw   `00033300                                     ;; 06:61f6 $1c $1c
    dw   `00003000                                     ;; 06:61f8 $08 $08
    dw   `00003000                                     ;; 06:61fa $08 $08
    dw   `00003000                                     ;; 06:61fc $08 $08
    dw   `00003000                                     ;; 06:61fe $08 $08
    dw   `00003000                                     ;; 06:6200 $08 $08

    dw   `00033300                                     ;; 06:6202 $1c $1c
    dw   `00000000                                     ;; 06:6204 $00 $00
    dw   `00000030                                     ;; 06:6206 $02 $02
    dw   `00000030                                     ;; 06:6208 $02 $02
    dw   `00000030                                     ;; 06:620a $02 $02
    dw   `00000030                                     ;; 06:620c $02 $02
    dw   `03000030                                     ;; 06:620e $42 $42
    dw   `03000300                                     ;; 06:6210 $44 $44

    dw   `00333000                                     ;; 06:6212 $38 $38
    dw   `00000000                                     ;; 06:6214 $00 $00
    dw   `00300030                                     ;; 06:6216 $22 $22
    dw   `00300300                                     ;; 06:6218 $24 $24
    dw   `00303000                                     ;; 06:621a $28 $28
    dw   `00330000                                     ;; 06:621c $30 $30
    dw   `00303000                                     ;; 06:621e $28 $28
    dw   `00300300                                     ;; 06:6220 $24 $24

    dw   `00300030                                     ;; 06:6222 $22 $22
    dw   `00000000                                     ;; 06:6224 $00 $00
    dw   `00300000                                     ;; 06:6226 $20 $20
    dw   `00300000                                     ;; 06:6228 $20 $20
    dw   `00300000                                     ;; 06:622a $20 $20
    dw   `00300000                                     ;; 06:622c $20 $20
    dw   `00300000                                     ;; 06:622e $20 $20
    dw   `00300000                                     ;; 06:6230 $20 $20

    dw   `00333330                                     ;; 06:6232 $3e $3e
    dw   `00000000                                     ;; 06:6234 $00 $00
    dw   `30000030                                     ;; 06:6236 $82 $82
    dw   `33000330                                     ;; 06:6238 $c6 $c6
    dw   `30303030                                     ;; 06:623a $aa $aa
    dw   `30030030                                     ;; 06:623c $92 $92
    dw   `30000030                                     ;; 06:623e $82 $82
    dw   `30000030                                     ;; 06:6240 $82 $82

    dw   `30000030                                     ;; 06:6242 $82 $82
    dw   `00000000                                     ;; 06:6244 $00 $00
    dw   `03000030                                     ;; 06:6246 $42 $42
    dw   `03300030                                     ;; 06:6248 $62 $62
    dw   `03030030                                     ;; 06:624a $52 $52
    dw   `03003030                                     ;; 06:624c $4a $4a
    dw   `03000330                                     ;; 06:624e $46 $46
    dw   `03000030                                     ;; 06:6250 $42 $42

    dw   `03000030                                     ;; 06:6252 $42 $42
    dw   `00000000                                     ;; 06:6254 $00 $00
    dw   `00333000                                     ;; 06:6256 $38 $38
    dw   `03000300                                     ;; 06:6258 $44 $44
    dw   `03000300                                     ;; 06:625a $44 $44
    dw   `03000300                                     ;; 06:625c $44 $44
    dw   `03000300                                     ;; 06:625e $44 $44
    dw   `03000300                                     ;; 06:6260 $44 $44

    dw   `00333000                                     ;; 06:6262 $38 $38
    dw   `00000000                                     ;; 06:6264 $00 $00
    dw   `03333300                                     ;; 06:6266 $7c $7c
    dw   `03000030                                     ;; 06:6268 $42 $42
    dw   `03000030                                     ;; 06:626a $42 $42
    dw   `03000030                                     ;; 06:626c $42 $42
    dw   `03333300                                     ;; 06:626e $7c $7c
    dw   `03000000                                     ;; 06:6270 $40 $40

    dw   `03000000                                     ;; 06:6272 $40 $40
    dw   `00000000                                     ;; 06:6274 $00 $00
    dw   `00333000                                     ;; 06:6276 $38 $38
    dw   `03000300                                     ;; 06:6278 $44 $44
    dw   `03000300                                     ;; 06:627a $44 $44
    dw   `03000300                                     ;; 06:627c $44 $44
    dw   `03033300                                     ;; 06:627e $5c $5c
    dw   `03030330                                     ;; 06:6280 $56 $56

    dw   `00333000                                     ;; 06:6282 $38 $38
    dw   `00000000                                     ;; 06:6284 $00 $00
    dw   `03333000                                     ;; 06:6286 $78 $78
    dw   `03000300                                     ;; 06:6288 $44 $44
    dw   `03000300                                     ;; 06:628a $44 $44
    dw   `03000300                                     ;; 06:628c $44 $44
    dw   `03333000                                     ;; 06:628e $78 $78
    dw   `03000300                                     ;; 06:6290 $44 $44

    dw   `03000030                                     ;; 06:6292 $42 $42
    dw   `00000000                                     ;; 06:6294 $00 $00
    dw   `00033300                                     ;; 06:6296 $1c $1c
    dw   `00300030                                     ;; 06:6298 $22 $22
    dw   `00300000                                     ;; 06:629a $20 $20
    dw   `00033000                                     ;; 06:629c $18 $18
    dw   `00000330                                     ;; 06:629e $06 $06
    dw   `00300030                                     ;; 06:62a0 $22 $22

    dw   `00033300                                     ;; 06:62a2 $1c $1c
    dw   `00000000                                     ;; 06:62a4 $00 $00
    dw   `03333330                                     ;; 06:62a6 $7e $7e
    dw   `00003000                                     ;; 06:62a8 $08 $08
    dw   `00003000                                     ;; 06:62aa $08 $08
    dw   `00003000                                     ;; 06:62ac $08 $08
    dw   `00003000                                     ;; 06:62ae $08 $08
    dw   `00003000                                     ;; 06:62b0 $08 $08

    dw   `00003000                                     ;; 06:62b2 $08 $08
    dw   `00000000                                     ;; 06:62b4 $00 $00
    dw   `03000300                                     ;; 06:62b6 $44 $44
    dw   `03000300                                     ;; 06:62b8 $44 $44
    dw   `03000300                                     ;; 06:62ba $44 $44
    dw   `03000300                                     ;; 06:62bc $44 $44
    dw   `03000300                                     ;; 06:62be $44 $44
    dw   `03000300                                     ;; 06:62c0 $44 $44

    dw   `00333000                                     ;; 06:62c2 $38 $38
    dw   `00000000                                     ;; 06:62c4 $00 $00
    dw   `03000300                                     ;; 06:62c6 $44 $44
    dw   `03000300                                     ;; 06:62c8 $44 $44
    dw   `03000300                                     ;; 06:62ca $44 $44
    dw   `03000300                                     ;; 06:62cc $44 $44
    dw   `03000300                                     ;; 06:62ce $44 $44
    dw   `00303000                                     ;; 06:62d0 $28 $28

    dw   `00030000                                     ;; 06:62d2 $10 $10
    dw   `00000000                                     ;; 06:62d4 $00 $00
    dw   `30000030                                     ;; 06:62d6 $82 $82
    dw   `30000030                                     ;; 06:62d8 $82 $82
    dw   `30030030                                     ;; 06:62da $92 $92
    dw   `30030030                                     ;; 06:62dc $92 $92
    dw   `30333030                                     ;; 06:62de $ba $ba
    dw   `03000300                                     ;; 06:62e0 $44 $44

    dw   `03000300                                     ;; 06:62e2 $44 $44
    dw   `00000000                                     ;; 06:62e4 $00 $00
    dw   `30000030                                     ;; 06:62e6 $82 $82
    dw   `03000300                                     ;; 06:62e8 $44 $44
    dw   `00303000                                     ;; 06:62ea $28 $28
    dw   `00030000                                     ;; 06:62ec $10 $10
    dw   `00303000                                     ;; 06:62ee $28 $28
    dw   `03000300                                     ;; 06:62f0 $44 $44

    dw   `30000030                                     ;; 06:62f2 $82 $82
    dw   `00000000                                     ;; 06:62f4 $00 $00
    dw   `03000003                                     ;; 06:62f6 $41 $41
    dw   `00300030                                     ;; 06:62f8 $22 $22
    dw   `00030300                                     ;; 06:62fa $14 $14
    dw   `00003000                                     ;; 06:62fc $08 $08
    dw   `00003000                                     ;; 06:62fe $08 $08
    dw   `00003000                                     ;; 06:6300 $08 $08

    dw   `00003000                                     ;; 06:6302 $08 $08
    dw   `00000000                                     ;; 06:6304 $00 $00
    dw   `03333330                                     ;; 06:6306 $7e $7e
    dw   `00000300                                     ;; 06:6308 $04 $04
    dw   `00003000                                     ;; 06:630a $08 $08
    dw   `00030000                                     ;; 06:630c $10 $10
    dw   `00300000                                     ;; 06:630e $20 $20
    dw   `03000000                                     ;; 06:6310 $40 $40

    dw   `03333330                                     ;; 06:6312 $7e $7e
    dw   `00000000                                     ;; 06:6314 $00 $00
    dw   `00333000                                     ;; 06:6316 $38 $38
    dw   `03003300                                     ;; 06:6318 $4c $4c
    dw   `33000330                                     ;; 06:631a $c6 $c6
    dw   `33000330                                     ;; 06:631c $c6 $c6
    dw   `33000330                                     ;; 06:631e $c6 $c6
    dw   `03300300                                     ;; 06:6320 $64 $64

    dw   `00333000                                     ;; 06:6322 $38 $38
    dw   `00000000                                     ;; 06:6324 $00 $00
    dw   `00033000                                     ;; 06:6326 $18 $18
    dw   `00333000                                     ;; 06:6328 $38 $38
    dw   `00033000                                     ;; 06:632a $18 $18
    dw   `00033000                                     ;; 06:632c $18 $18
    dw   `00033000                                     ;; 06:632e $18 $18
    dw   `00033000                                     ;; 06:6330 $18 $18

    dw   `03333330                                     ;; 06:6332 $7e $7e
    dw   `00000000                                     ;; 06:6334 $00 $00
    dw   `00333300                                     ;; 06:6336 $3c $3c
    dw   `03000030                                     ;; 06:6338 $42 $42
    dw   `00000330                                     ;; 06:633a $06 $06
    dw   `00033300                                     ;; 06:633c $1c $1c
    dw   `00333000                                     ;; 06:633e $38 $38
    dw   `03300000                                     ;; 06:6340 $60 $60

    dw   `03333330                                     ;; 06:6342 $7e $7e
    dw   `00000000                                     ;; 06:6344 $00 $00
    dw   `03333330                                     ;; 06:6346 $7e $7e
    dw   `00003300                                     ;; 06:6348 $0c $0c
    dw   `00033000                                     ;; 06:634a $18 $18
    dw   `00333300                                     ;; 06:634c $3c $3c
    dw   `00000330                                     ;; 06:634e $06 $06
    dw   `33000330                                     ;; 06:6350 $c6 $c6

    dw   `03333300                                     ;; 06:6352 $7c $7c
    dw   `00000000                                     ;; 06:6354 $00 $00
    dw   `00033300                                     ;; 06:6356 $1c $1c
    dw   `00333300                                     ;; 06:6358 $3c $3c
    dw   `03303300                                     ;; 06:635a $6c $6c
    dw   `33003300                                     ;; 06:635c $cc $cc
    dw   `33333330                                     ;; 06:635e $fe $fe
    dw   `00003300                                     ;; 06:6360 $0c $0c

    dw   `00003300                                     ;; 06:6362 $0c $0c
    dw   `00000000                                     ;; 06:6364 $00 $00
    dw   `33333300                                     ;; 06:6366 $fc $fc
    dw   `33000000                                     ;; 06:6368 $c0 $c0
    dw   `33333300                                     ;; 06:636a $fc $fc
    dw   `00000330                                     ;; 06:636c $06 $06
    dw   `00000330                                     ;; 06:636e $06 $06
    dw   `33000330                                     ;; 06:6370 $c6 $c6

    dw   `03333300                                     ;; 06:6372 $7c $7c
    dw   `00000000                                     ;; 06:6374 $00 $00
    dw   `00333300                                     ;; 06:6376 $3c $3c
    dw   `03300000                                     ;; 06:6378 $60 $60
    dw   `33000000                                     ;; 06:637a $c0 $c0
    dw   `33333300                                     ;; 06:637c $fc $fc
    dw   `33000330                                     ;; 06:637e $c6 $c6
    dw   `33000330                                     ;; 06:6380 $c6 $c6

    dw   `03333300                                     ;; 06:6382 $7c $7c
    dw   `00000000                                     ;; 06:6384 $00 $00
    dw   `03333330                                     ;; 06:6386 $7e $7e
    dw   `03000330                                     ;; 06:6388 $46 $46
    dw   `00003300                                     ;; 06:638a $0c $0c
    dw   `00033000                                     ;; 06:638c $18 $18
    dw   `00330000                                     ;; 06:638e $30 $30
    dw   `00330000                                     ;; 06:6390 $30 $30

    dw   `00330000                                     ;; 06:6392 $30 $30
    dw   `00000000                                     ;; 06:6394 $00 $00
    dw   `03333000                                     ;; 06:6396 $78 $78
    dw   `33000300                                     ;; 06:6398 $c4 $c4
    dw   `33300300                                     ;; 06:639a $e4 $e4
    dw   `03333000                                     ;; 06:639c $78 $78
    dw   `30033330                                     ;; 06:639e $9e $9e
    dw   `30000330                                     ;; 06:63a0 $86 $86

    dw   `03333300                                     ;; 06:63a2 $7c $7c
    dw   `00000000                                     ;; 06:63a4 $00 $00
    dw   `03333300                                     ;; 06:63a6 $7c $7c
    dw   `33000330                                     ;; 06:63a8 $c6 $c6
    dw   `33000330                                     ;; 06:63aa $c6 $c6
    dw   `03333330                                     ;; 06:63ac $7e $7e
    dw   `00000330                                     ;; 06:63ae $06 $06
    dw   `00003300                                     ;; 06:63b0 $0c $0c

    dw   `03333000                                     ;; 06:63b2 $78 $78
    dw   `00000000                                     ;; 06:63b4 $00 $00
    dw   `00000000                                     ;; 06:63b6 $00 $00
    dw   `00333300                                     ;; 06:63b8 $3c $3c
    dw   `00300000                                     ;; 06:63ba $20 $20
    dw   `00300000                                     ;; 06:63bc $20 $20
    dw   `00300000                                     ;; 06:63be $20 $20
    dw   `00300000                                     ;; 06:63c0 $20 $20

    dw   `00000000                                     ;; 06:63c2 $00 $00
    dw   `00000000                                     ;; 06:63c4 $00 $00
    dw   `00000000                                     ;; 06:63c6 $00 $00
    dw   `00000000                                     ;; 06:63c8 $00 $00
    dw   `00000000                                     ;; 06:63ca $00 $00
    dw   `00000300                                     ;; 06:63cc $04 $04
    dw   `00000300                                     ;; 06:63ce $04 $04
    dw   `00000300                                     ;; 06:63d0 $04 $04

    dw   `00000300                                     ;; 06:63d2 $04 $04
    dw   `00333300                                     ;; 06:63d4 $3c $3c
    dw   `00033300                                     ;; 06:63d6 $1c $1c
    dw   `00033300                                     ;; 06:63d8 $1c $1c
    dw   `00033000                                     ;; 06:63da $18 $18
    dw   `00033000                                     ;; 06:63dc $18 $18
    dw   `00000000                                     ;; 06:63de $00 $00
    dw   `00330000                                     ;; 06:63e0 $30 $30

    dw   `00330000                                     ;; 06:63e2 $30 $30
    dw   `00000000                                     ;; 06:63e4 $00 $00
    dw   `00333000                                     ;; 06:63e6 $38 $38
    dw   `03303300                                     ;; 06:63e8 $6c $6c
    dw   `03003300                                     ;; 06:63ea $4c $4c
    dw   `00033000                                     ;; 06:63ec $18 $18
    dw   `00030000                                     ;; 06:63ee $10 $10
    dw   `00000000                                     ;; 06:63f0 $00 $00

    dw   `00030000                                     ;; 06:63f2 $10 $10
    dw   `00000000                                     ;; 06:63f4 $00 $00
    dw   `00000000                                     ;; 06:63f6 $00 $00
    dw   `00000000                                     ;; 06:63f8 $00 $00
    dw   `00000000                                     ;; 06:63fa $00 $00
    dw   `03333330                                     ;; 06:63fc $7e $7e
    dw   `00000000                                     ;; 06:63fe $00 $00
    dw   `00000000                                     ;; 06:6400 $00 $00

    dw   `00000000                                     ;; 06:6402 $00 $00
    dw   `00000000                                     ;; 06:6404 $00 $00
    dw   `00000000                                     ;; 06:6406 $00 $00
    dw   `00000000                                     ;; 06:6408 $00 $00
    dw   `00000000                                     ;; 06:640a $00 $00
    dw   `00000000                                     ;; 06:640c $00 $00
    dw   `00003000                                     ;; 06:640e $08 $08
    dw   `00000000                                     ;; 06:6410 $00 $00

    dw   `00000000                                     ;; 06:6412 $00 $00
    dw   `00000000                                     ;; 06:6414 $00 $00
    dw   `00000000                                     ;; 06:6416 $00 $00
    dw   `00000000                                     ;; 06:6418 $00 $00
    dw   `00000000                                     ;; 06:641a $00 $00
    dw   `00000000                                     ;; 06:641c $00 $00
    dw   `00000000                                     ;; 06:641e $00 $00
    dw   `00000000                                     ;; 06:6420 $00 $00

    dw   `00300000                                     ;; 06:6422 $20 $20
    dw   `00030000                                     ;; 06:6424 $10 $10
    dw   `00000000                                     ;; 06:6426 $00 $00
    dw   `00000000                                     ;; 06:6428 $00 $00
    dw   `00000000                                     ;; 06:642a $00 $00
    dw   `00000000                                     ;; 06:642c $00 $00
    dw   `00000000                                     ;; 06:642e $00 $00
    dw   `00300000                                     ;; 06:6430 $20 $20

    dw   `03030000                                     ;; 06:6432 $50 $50
    dw   `00300000                                     ;; 06:6434 $20 $20
    dw   `00033330                                     ;; 06:6436 $1e $1e
    dw   `00033330                                     ;; 06:6438 $1e $1e
    dw   `00033000                                     ;; 06:643a $18 $18
    dw   `00033000                                     ;; 06:643c $18 $18
    dw   `00033000                                     ;; 06:643e $18 $18
    dw   `00033000                                     ;; 06:6440 $18 $18

    dw   `00033330                                     ;; 06:6442 $1e $1e
    dw   `00033330                                     ;; 06:6444 $1e $1e
    dw   `03333000                                     ;; 06:6446 $78 $78
    dw   `03333000                                     ;; 06:6448 $78 $78
    dw   `00033000                                     ;; 06:644a $18 $18
    dw   `00033000                                     ;; 06:644c $18 $18
    dw   `00033000                                     ;; 06:644e $18 $18
    dw   `00033000                                     ;; 06:6450 $18 $18

    dw   `03333000                                     ;; 06:6452 $78 $78
    dw   `03333000                                     ;; 06:6454 $78 $78
    dw   `00000000                                     ;; 06:6456 $00 $00
    dw   `00000000                                     ;; 06:6458 $00 $00
    dw   `00000000                                     ;; 06:645a $00 $00
    dw   `00000000                                     ;; 06:645c $00 $00
    dw   `00000000                                     ;; 06:645e $00 $00
    dw   `00000000                                     ;; 06:6460 $00 $00

    dw   `00000000                                     ;; 06:6462 $00 $00
    dw   `00000000                                     ;; 06:6464 $00 $00
    dw   `00000000                                     ;; 06:6466 $00 $00
    dw   `00000000                                     ;; 06:6468 $00 $00
    dw   `00000000                                     ;; 06:646a $00 $00
    dw   `00000000                                     ;; 06:646c $00 $00
    dw   `30030030                                     ;; 06:646e $92 $92
    dw   `00000000                                     ;; 06:6470 $00 $00

    dw   `00000000                                     ;; 06:6472 $00 $00
    dw   `00000000                                     ;; 06:6474 $00 $00
    dw   `00000000                                     ;; 06:6476 $00 $00
    dw   `00000000                                     ;; 06:6478 $00 $00
    dw   `00000000                                     ;; 06:647a $00 $00
    dw   `03300030                                     ;; 06:647c $62 $62
    dw   `30030030                                     ;; 06:647e $92 $92
    dw   `30003300                                     ;; 06:6480 $8c $8c

    dw   `00000000                                     ;; 06:6482 $00 $00
    dw   `00000000                                     ;; 06:6484 $00 $00
    dw   `00000000                                     ;; 06:6486 $00 $00
    dw   `03300000                                     ;; 06:6488 $60 $60
    dw   `00300000                                     ;; 06:648a $20 $20
    dw   `03000000                                     ;; 06:648c $40 $40
    dw   `00000000                                     ;; 06:648e $00 $00
    dw   `00000000                                     ;; 06:6490 $00 $00

    dw   `00000000                                     ;; 06:6492 $00 $00
    dw   `00000000                                     ;; 06:6494 $00 $00
    dw   `00000000                                     ;; 06:6496 $00 $00
    dw   `00333000                                     ;; 06:6498 $38 $38
    dw   `03000300                                     ;; 06:649a $44 $44
    dw   `03000000                                     ;; 06:649c $40 $40
    dw   `03003000                                     ;; 06:649e $48 $48
    dw   `00333000                                     ;; 06:64a0 $38 $38

    dw   `00003000                                     ;; 06:64a2 $08 $08
    dw   `00030000                                     ;; 06:64a4 $10 $10
    dw   `00000000                                     ;; 06:64a6 $00 $00
    dw   `03000300                                     ;; 06:64a8 $44 $44
    dw   `00030000                                     ;; 06:64aa $10 $10
    dw   `00303000                                     ;; 06:64ac $28 $28
    dw   `00303000                                     ;; 06:64ae $28 $28
    dw   `03000300                                     ;; 06:64b0 $44 $44

    dw   `03333300                                     ;; 06:64b2 $7c $7c
    dw   `03000300                                     ;; 06:64b4 $44 $44
    dw   `00000000                                     ;; 06:64b6 $00 $00
    dw   `03000030                                     ;; 06:64b8 $42 $42
    dw   `00033000                                     ;; 06:64ba $18 $18
    dw   `00300300                                     ;; 06:64bc $24 $24
    dw   `03000030                                     ;; 06:64be $42 $42
    dw   `03000030                                     ;; 06:64c0 $42 $42

    dw   `00300300                                     ;; 06:64c2 $24 $24
    dw   `00033000                                     ;; 06:64c4 $18 $18
    dw   `00000000                                     ;; 06:64c6 $00 $00
    dw   `03000300                                     ;; 06:64c8 $44 $44
    dw   `00000000                                     ;; 06:64ca $00 $00
    dw   `03000300                                     ;; 06:64cc $44 $44
    dw   `03000300                                     ;; 06:64ce $44 $44
    dw   `03000300                                     ;; 06:64d0 $44 $44

    dw   `03000300                                     ;; 06:64d2 $44 $44
    dw   `00333000                                     ;; 06:64d4 $38 $38
    dw   `00000000                                     ;; 06:64d6 $00 $00
    dw   `00333300                                     ;; 06:64d8 $3c $3c
    dw   `00300030                                     ;; 06:64da $22 $22
    dw   `00303300                                     ;; 06:64dc $2c $2c
    dw   `00300030                                     ;; 06:64de $22 $22
    dw   `03000300                                     ;; 06:64e0 $44 $44

    dw   `03033000                                     ;; 06:64e2 $58 $58
    dw   `03000000                                     ;; 06:64e4 $40 $40
    dw   `00000000                                     ;; 06:64e6 $00 $00
    dw   `00000000                                     ;; 06:64e8 $00 $00
    dw   `00000000                                     ;; 06:64ea $00 $00
    dw   `00000000                                     ;; 06:64ec $00 $00
    dw   `00000000                                     ;; 06:64ee $00 $00
    dw   `03300000                                     ;; 06:64f0 $60 $60

    dw   `03300000                                     ;; 06:64f2 $60 $60
    dw   `00000000                                     ;; 06:64f4 $00 $00
    dw   `00000000                                     ;; 06:64f6 $00 $00
    dw   `00000000                                     ;; 06:64f8 $00 $00
    dw   `00000000                                     ;; 06:64fa $00 $00
    dw   `00000000                                     ;; 06:64fc $00 $00
    dw   `00000000                                     ;; 06:64fe $00 $00
    dw   `03300000                                     ;; 06:6500 $60 $60

    dw   `00300000                                     ;; 06:6502 $20 $20
    dw   `03000000                                     ;; 06:6504 $40 $40
    dw   `00000000                                     ;; 06:6506 $00 $00
    dw   `00000030                                     ;; 06:6508 $02 $02
    dw   `00000300                                     ;; 06:650a $04 $04
    dw   `00003000                                     ;; 06:650c $08 $08
    dw   `00030000                                     ;; 06:650e $10 $10
    dw   `00300000                                     ;; 06:6510 $20 $20

    dw   `03000000                                     ;; 06:6512 $40 $40
    dw   `00000000                                     ;; 06:6514 $00 $00
    dw   `00000000                                     ;; 06:6516 $00 $00
    dw   `00000030                                     ;; 06:6518 $02 $02
    dw   `00000300                                     ;; 06:651a $04 $04
    dw   `00003000                                     ;; 06:651c $08 $08
    dw   `00030000                                     ;; 06:651e $10 $10
    dw   `00003000                                     ;; 06:6520 $08 $08

    dw   `00000300                                     ;; 06:6522 $04 $04
    dw   `00000030                                     ;; 06:6524 $02 $02
    dw   `00000000                                     ;; 06:6526 $00 $00
    dw   `03000000                                     ;; 06:6528 $40 $40
    dw   `00300000                                     ;; 06:652a $20 $20
    dw   `00030000                                     ;; 06:652c $10 $10
    dw   `00003000                                     ;; 06:652e $08 $08
    dw   `00030000                                     ;; 06:6530 $10 $10

    dw   `00300000                                     ;; 06:6532 $20 $20
    dw   `03000000                                     ;; 06:6534 $40 $40
    dw   `00000000                                     ;; 06:6536 $00 $00
    dw   `00033000                                     ;; 06:6538 $18 $18
    dw   `00300300                                     ;; 06:653a $24 $24
    dw   `00303000                                     ;; 06:653c $28 $28
    dw   `00330030                                     ;; 06:653e $32 $32
    dw   `03003300                                     ;; 06:6540 $4c $4c

    dw   `03000300                                     ;; 06:6542 $44 $44
    dw   `00333030                                     ;; 06:6544 $3a $3a
    dw   `00000000                                     ;; 06:6546 $00 $00
    dw   `00033000                                     ;; 06:6548 $18 $18
    dw   `00033000                                     ;; 06:654a $18 $18
    dw   `00000000                                     ;; 06:654c $00 $00
    dw   `00000000                                     ;; 06:654e $00 $00
    dw   `00033000                                     ;; 06:6550 $18 $18

    dw   `00033000                                     ;; 06:6552 $18 $18
    dw   `00000000                                     ;; 06:6554 $00 $00
    dw   `00000000                                     ;; 06:6556 $00 $00
    dw   `00033000                                     ;; 06:6558 $18 $18
    dw   `00033000                                     ;; 06:655a $18 $18
    dw   `00000000                                     ;; 06:655c $00 $00
    dw   `00000000                                     ;; 06:655e $00 $00
    dw   `00033000                                     ;; 06:6560 $18 $18

    dw   `00003000                                     ;; 06:6562 $08 $08
    dw   `00030000                                     ;; 06:6564 $10 $10
    dw   `00000000                                     ;; 06:6566 $00 $00
    dw   `00030000                                     ;; 06:6568 $10 $10
    dw   `00030000                                     ;; 06:656a $10 $10
    dw   `00030000                                     ;; 06:656c $10 $10
    dw   `03030300                                     ;; 06:656e $54 $54
    dw   `00333000                                     ;; 06:6570 $38 $38

    dw   `00030000                                     ;; 06:6572 $10 $10
    dw   `00000000                                     ;; 06:6574 $00 $00
    dw   `00000000                                     ;; 06:6576 $00 $00
    dw   `00030000                                     ;; 06:6578 $10 $10
    dw   `00333000                                     ;; 06:657a $38 $38
    dw   `03030300                                     ;; 06:657c $54 $54
    dw   `00030000                                     ;; 06:657e $10 $10
    dw   `00030000                                     ;; 06:6580 $10 $10

    dw   `00030000                                     ;; 06:6582 $10 $10
    dw   `00000000                                     ;; 06:6584 $00 $00
    dw   `00000000                                     ;; 06:6586 $00 $00
    dw   `00003000                                     ;; 06:6588 $08 $08
    dw   `00000300                                     ;; 06:658a $04 $04
    dw   `03333330                                     ;; 06:658c $7e $7e
    dw   `00000300                                     ;; 06:658e $04 $04
    dw   `00003000                                     ;; 06:6590 $08 $08

    dw   `00000000                                     ;; 06:6592 $00 $00
    dw   `00000000                                     ;; 06:6594 $00 $00
    dw   `00000000                                     ;; 06:6596 $00 $00
    dw   `00030000                                     ;; 06:6598 $10 $10
    dw   `00300000                                     ;; 06:659a $20 $20
    dw   `03333330                                     ;; 06:659c $7e $7e
    dw   `00300000                                     ;; 06:659e $20 $20
    dw   `00030000                                     ;; 06:65a0 $10 $10

    dw   `00000000                                     ;; 06:65a2 $00 $00
    dw   `00000000                                     ;; 06:65a4 $00 $00
    dw   `00000000                                     ;; 06:65a6 $00 $00
    dw   `00030000                                     ;; 06:65a8 $10 $10
    dw   `03030300                                     ;; 06:65aa $54 $54
    dw   `00333000                                     ;; 06:65ac $38 $38
    dw   `00030000                                     ;; 06:65ae $10 $10
    dw   `00333000                                     ;; 06:65b0 $38 $38

    dw   `03030300                                     ;; 06:65b2 $54 $54
    dw   `00030000                                     ;; 06:65b4 $10 $10
    dw   `00000000                                     ;; 06:65b6 $00 $00
    dw   `00000330                                     ;; 06:65b8 $06 $06
    dw   `00003000                                     ;; 06:65ba $08 $08
    dw   `00030000                                     ;; 06:65bc $10 $10
    dw   `00030000                                     ;; 06:65be $10 $10
    dw   `00030000                                     ;; 06:65c0 $10 $10

    dw   `00003000                                     ;; 06:65c2 $08 $08
    dw   `00000330                                     ;; 06:65c4 $06 $06
    dw   `00000000                                     ;; 06:65c6 $00 $00
    dw   `03300000                                     ;; 06:65c8 $60 $60
    dw   `00030000                                     ;; 06:65ca $10 $10
    dw   `00003000                                     ;; 06:65cc $08 $08
    dw   `00003000                                     ;; 06:65ce $08 $08
    dw   `00003000                                     ;; 06:65d0 $08 $08

    dw   `00030000                                     ;; 06:65d2 $10 $10
    dw   `03300000                                     ;; 06:65d4 $60 $60
    dw   `00000000                                     ;; 06:65d6 $00 $00
    dw   `00000000                                     ;; 06:65d8 $00 $00
    dw   `00000000                                     ;; 06:65da $00 $00
    dw   `00000000                                     ;; 06:65dc $00 $00
    dw   `00000000                                     ;; 06:65de $00 $00
    dw   `00000000                                     ;; 06:65e0 $00 $00

    dw   `00003030                                     ;; 06:65e2 $0a $0a
    dw   `00000303                                     ;; 06:65e4 $05 $05
    dw   `00000000                                     ;; 06:65e6 $00 $00
    dw   `00000000                                     ;; 06:65e8 $00 $00
    dw   `00000000                                     ;; 06:65ea $00 $00
    dw   `00000000                                     ;; 06:65ec $00 $00
    dw   `00000000                                     ;; 06:65ee $00 $00
    dw   `00000030                                     ;; 06:65f0 $02 $02

    dw   `00000303                                     ;; 06:65f2 $05 $05
    dw   `00000030                                     ;; 06:65f4 $02 $02
    dw   `00001000                                     ;; 06:65f6 $08 $00
    dw   `00120020                                     ;; 06:65f8 $20 $12
    dw   `01200000                                     ;; 06:65fa $40 $20
    dw   `02202202                                     ;; 06:65fc $00 $6d
    dw   `02121220                                     ;; 06:65fe $28 $56
    dw   `02111120                                     ;; 06:6600 $3c $42

    dw   `01211220                                     ;; 06:6602 $58 $26
    dw   `00122200                                     ;; 06:6604 $20 $1c
    dw   `20021000                                     ;; 06:6606 $08 $90
    dw   `02112000                                     ;; 06:6608 $30 $48
    dw   `20222210                                     ;; 06:660a $02 $bc
    dw   `02111120                                     ;; 06:660c $3c $42
    dw   `20222210                                     ;; 06:660e $02 $bc
    dw   `02010121                                     ;; 06:6610 $15 $42

    dw   `00211112                                     ;; 06:6612 $1e $21
    dw   `00022222                                     ;; 06:6614 $00 $1f
    dw   `00012000                                     ;; 06:6616 $10 $08
    dw   `00022000                                     ;; 06:6618 $00 $18
    dw   `00122100                                     ;; 06:661a $24 $18
    dw   `00212200                                     ;; 06:661c $10 $2c
    dw   `01101210                                     ;; 06:661e $6a $04
    dw   `01212210                                     ;; 06:6620 $52 $2c

    dw   `01222210                                     ;; 06:6622 $42 $3c
    dw   `00122100                                     ;; 06:6624 $24 $18
    dw   `00022000                                     ;; 06:6626 $00 $18
    dw   `00212200                                     ;; 06:6628 $10 $2c
    dw   `02112220                                     ;; 06:662a $30 $4e
    dw   `21112222                                     ;; 06:662c $70 $8f
    dw   `22222222                                     ;; 06:662e $00 $ff
    dw   `02222220                                     ;; 06:6630 $00 $7e

    dw   `00222200                                     ;; 06:6632 $00 $3c
    dw   `00022000                                     ;; 06:6634 $00 $18
    dw   `03303333                                     ;; 06:6636 $6f $6f
    dw   `30132202                                     ;; 06:6638 $b0 $9d
    dw   `32230313                                     ;; 06:663a $97 $f5
    dw   `03310333                                     ;; 06:663c $77 $67
    dw   `30003130                                     ;; 06:663e $8e $8a
    dw   `32331023                                     ;; 06:6640 $b9 $f3

    dw   `30233213                                     ;; 06:6642 $9b $bd
    dw   `32330333                                     ;; 06:6644 $b7 $f7
    dw   `33330330                                     ;; 06:6646 $f6 $f6
    dw   `20223013                                     ;; 06:6648 $0b $b9
    dw   `31303223                                     ;; 06:664a $e9 $af
    dw   `33301330                                     ;; 06:664c $ee $e6
    dw   `03130023                                     ;; 06:664e $71 $53
    dw   `32013233                                     ;; 06:6650 $9b $cf

    dw   `31233013                                     ;; 06:6652 $db $b9
    dw   `33303233                                     ;; 06:6654 $eb $ef
    dw   `32330333                                     ;; 06:6656 $b7 $f7
    dw   `30133213                                     ;; 06:6658 $bb $9d
    dw   `32331023                                     ;; 06:665a $b9 $f3
    dw   `30003130                                     ;; 06:665c $8e $8a
    dw   `03310333                                     ;; 06:665e $77 $67
    dw   `30130202                                     ;; 06:6660 $b0 $95

    dw   `32232313                                     ;; 06:6662 $97 $fd
    dw   `03303333                                     ;; 06:6664 $6f $6f
    dw   `33303233                                     ;; 06:6666 $eb $ef
    dw   `31233013                                     ;; 06:6668 $db $b9
    dw   `32013233                                     ;; 06:666a $9b $cf
    dw   `03130023                                     ;; 06:666c $71 $53
    dw   `33301330                                     ;; 06:666e $ee $e6
    dw   `20203013                                     ;; 06:6670 $0b $a9

    dw   `31323223                                     ;; 06:6672 $e9 $bf
    dw   `33330330                                     ;; 06:6674 $f6 $f6
    dw   `33333333                                     ;; 06:6676 $ff $ff
    dw   `00000000                                     ;; 06:6678 $00 $00
    dw   `22222222                                     ;; 06:667a $00 $ff
    dw   `33333333                                     ;; 06:667c $ff $ff
    dw   `00000000                                     ;; 06:667e $00 $00
    dw   `00000000                                     ;; 06:6680 $00 $00

    dw   `00000000                                     ;; 06:6682 $00 $00
    dw   `00000000                                     ;; 06:6684 $00 $00
    dw   `00000000                                     ;; 06:6686 $00 $00
    dw   `00000000                                     ;; 06:6688 $00 $00
    dw   `00000000                                     ;; 06:668a $00 $00
    dw   `00000000                                     ;; 06:668c $00 $00
    dw   `33333333                                     ;; 06:668e $ff $ff
    dw   `00000000                                     ;; 06:6690 $00 $00

    dw   `22222222                                     ;; 06:6692 $00 $ff
    dw   `33333333                                     ;; 06:6694 $ff $ff
    dw   `30230000                                     ;; 06:6696 $90 $b0
    dw   `30230000                                     ;; 06:6698 $90 $b0
    dw   `30230000                                     ;; 06:669a $90 $b0
    dw   `30230000                                     ;; 06:669c $90 $b0
    dw   `30230000                                     ;; 06:669e $90 $b0
    dw   `30230000                                     ;; 06:66a0 $90 $b0

    dw   `30230000                                     ;; 06:66a2 $90 $b0
    dw   `30230000                                     ;; 06:66a4 $90 $b0
    dw   `00003023                                     ;; 06:66a6 $09 $0b
    dw   `00003023                                     ;; 06:66a8 $09 $0b
    dw   `00003023                                     ;; 06:66aa $09 $0b
    dw   `00003023                                     ;; 06:66ac $09 $0b
    dw   `00003023                                     ;; 06:66ae $09 $0b
    dw   `00003023                                     ;; 06:66b0 $09 $0b

    dw   `00003023                                     ;; 06:66b2 $09 $0b
    dw   `00003023                                     ;; 06:66b4 $09 $0b
    dw   `03000003                                     ;; 06:66b6 $41 $41
    dw   `30300030                                     ;; 06:66b8 $a2 $a2
    dw   `03000300                                     ;; 06:66ba $44 $44
    dw   `00003000                                     ;; 06:66bc $08 $08
    dw   `00030000                                     ;; 06:66be $10 $10
    dw   `00300030                                     ;; 06:66c0 $22 $22

    dw   `03000303                                     ;; 06:66c2 $45 $45
    dw   `30000030                                     ;; 06:66c4 $82 $82
    dw   `33333333                                     ;; 06:66c6 $ff $ff
    dw   `33333333                                     ;; 06:66c8 $ff $ff
    dw   `33333333                                     ;; 06:66ca $ff $ff
    dw   `33333333                                     ;; 06:66cc $ff $ff
    dw   `33333333                                     ;; 06:66ce $ff $ff
    dw   `33333333                                     ;; 06:66d0 $ff $ff

    dw   `33333333                                     ;; 06:66d2 $ff $ff
    dw   `33333333                                     ;; 06:66d4 $ff $ff
    dw   `00000000                                     ;; 06:66d6 $00 $00
    dw   `00000000                                     ;; 06:66d8 $00 $00
    dw   `00000123                                     ;; 06:66da $05 $03
    dw   `00133332                                     ;; 06:66dc $3e $1f
    dw   `00300000                                     ;; 06:66de $20 $20
    dw   `00300100                                     ;; 06:66e0 $24 $20

    dw   `00200023                                     ;; 06:66e2 $01 $23
    dw   `01200001                                     ;; 06:66e4 $41 $20
    dw   `00001233                                     ;; 06:66e6 $0b $07
    dw   `01223003                                     ;; 06:66e8 $49 $39
    dw   `33300030                                     ;; 06:66ea $e2 $e2
    dw   `00002300                                     ;; 06:66ec $04 $0c
    dw   `12233300                                     ;; 06:66ee $9c $7c
    dw   `00300030                                     ;; 06:66f0 $22 $22

    dw   `00123330                                     ;; 06:66f2 $2e $1e
    dw   `33333000                                     ;; 06:66f4 $f8 $f8
    dw   `00000000                                     ;; 06:66f6 $00 $00
    dw   `00000000                                     ;; 06:66f8 $00 $00
    dw   `00000123                                     ;; 06:66fa $05 $03
    dw   `00233332                                     ;; 06:66fc $1e $3f
    dw   `00311111                                     ;; 06:66fe $3f $20
    dw   `00311221                                     ;; 06:6700 $39 $26

    dw   `01311133                                     ;; 06:6702 $7f $23
    dw   `02312111                                     ;; 06:6704 $37 $68
    dw   `00012333                                     ;; 06:6706 $17 $0f
    dw   `12233113                                     ;; 06:6708 $9f $79
    dw   `33311130                                     ;; 06:670a $fe $e2
    dw   `22112300                                     ;; 06:670c $34 $cc
    dw   `13333300                                     ;; 06:670e $fc $7c
    dw   `11321130                                     ;; 06:6710 $ee $32

    dw   `21133330                                     ;; 06:6712 $7e $9e
    dw   `33323000                                     ;; 06:6714 $e8 $f8
    dw   `00000000                                     ;; 06:6716 $00 $00
    dw   `00000000                                     ;; 06:6718 $00 $00
    dw   `00000123                                     ;; 06:671a $05 $03
    dw   `00233332                                     ;; 06:671c $1e $3f
    dw   `00311111                                     ;; 06:671e $3f $20
    dw   `00311221                                     ;; 06:6720 $39 $26

    dw   `00311133                                     ;; 06:6722 $3f $23
    dw   `01312100                                     ;; 06:6724 $74 $28
    dw   `00001333                                     ;; 06:6726 $0f $07
    dw   `01233013                                     ;; 06:6728 $5b $39
    dw   `33300130                                     ;; 06:672a $e6 $e2
    dw   `22112300                                     ;; 06:672c $34 $cc
    dw   `13333300                                     ;; 06:672e $fc $7c
    dw   `00121130                                     ;; 06:6730 $2e $12

    dw   `21233330                                     ;; 06:6732 $5e $be
    dw   `23323000                                     ;; 06:6734 $68 $f8
    dw   `00000000                                     ;; 06:6736 $00 $00
    dw   `00000000                                     ;; 06:6738 $00 $00
    dw   `00000123                                     ;; 06:673a $05 $03
    dw   `00233332                                     ;; 06:673c $1e $3f
    dw   `00311111                                     ;; 06:673e $3f $20
    dw   `00311221                                     ;; 06:6740 $39 $26

    dw   `00311133                                     ;; 06:6742 $3f $23
    dw   `01312100                                     ;; 06:6744 $74 $28
    dw   `00001333                                     ;; 06:6746 $0f $07
    dw   `01233013                                     ;; 06:6748 $5b $39
    dw   `33300130                                     ;; 06:674a $e6 $e2
    dw   `22112300                                     ;; 06:674c $34 $cc
    dw   `13333300                                     ;; 06:674e $fc $7c
    dw   `00121130                                     ;; 06:6750 $2e $12

    dw   `21233330                                     ;; 06:6752 $5e $be
    dw   `23323000                                     ;; 06:6754 $68 $f8
    dw   `00000000                                     ;; 06:6756 $00 $00
    dw   `00000000                                     ;; 06:6758 $00 $00
    dw   `00000123                                     ;; 06:675a $05 $03
    dw   `00233332                                     ;; 06:675c $1e $3f
    dw   `00311111                                     ;; 06:675e $3f $20
    dw   `00311221                                     ;; 06:6760 $39 $26

    dw   `00311133                                     ;; 06:6762 $3f $23
    dw   `01312100                                     ;; 06:6764 $74 $28
    dw   `00001333                                     ;; 06:6766 $0f $07
    dw   `01233013                                     ;; 06:6768 $5b $39
    dw   `33300130                                     ;; 06:676a $e6 $e2
    dw   `22112300                                     ;; 06:676c $34 $cc
    dw   `13333300                                     ;; 06:676e $fc $7c
    dw   `00121130                                     ;; 06:6770 $2e $12

    dw   `21233330                                     ;; 06:6772 $5e $be
    dw   `23323000                                     ;; 06:6774 $68 $f8
    dw   `00000000                                     ;; 06:6776 $00 $00
    dw   `00000000                                     ;; 06:6778 $00 $00
    dw   `00000123                                     ;; 06:677a $05 $03
    dw   `00233332                                     ;; 06:677c $1e $3f
    dw   `00333333                                     ;; 06:677e $3f $3f
    dw   `00333233                                     ;; 06:6780 $3b $3f

    dw   `01333322                                     ;; 06:6782 $7c $3f
    dw   `02323333                                     ;; 06:6784 $2f $7f
    dw   `00012333                                     ;; 06:6786 $17 $0f
    dw   `11233323                                     ;; 06:6788 $dd $3f
    dw   `33333230                                     ;; 06:678a $fa $fe
    dw   `33222300                                     ;; 06:678c $c4 $fc
    dw   `22333310                                     ;; 06:678e $3e $fc
    dw   `33232231                                     ;; 06:6790 $d3 $fe

    dw   `33233331                                     ;; 06:6792 $df $fe
    dw   `22323210                                     ;; 06:6794 $2a $fc
    dw   `03303333                                     ;; 06:6796 $6f $6f
    dw   `30030000                                     ;; 06:6798 $90 $90
    dw   `30030000                                     ;; 06:679a $90 $90
    dw   `03300033                                     ;; 06:679c $63 $63
    dw   `30000030                                     ;; 06:679e $82 $82
    dw   `30000003                                     ;; 06:67a0 $81 $81

    dw   `30033003                                     ;; 06:67a2 $99 $99
    dw   `30030333                                     ;; 06:67a4 $97 $97
    dw   `33333333                                     ;; 06:67a6 $ff $ff
    dw   `00000000                                     ;; 06:67a8 $00 $00
    dw   `00000000                                     ;; 06:67aa $00 $00
    dw   `33333333                                     ;; 06:67ac $ff $ff
    dw   `00000000                                     ;; 06:67ae $00 $00
    dw   `00000000                                     ;; 06:67b0 $00 $00

    dw   `00000000                                     ;; 06:67b2 $00 $00
    dw   `00000000                                     ;; 06:67b4 $00 $00
    dw   `33333333                                     ;; 06:67b6 $ff $ff
    dw   `00000000                                     ;; 06:67b8 $00 $00
    dw   `00000000                                     ;; 06:67ba $00 $00
    dw   `33333333                                     ;; 06:67bc $ff $ff
    dw   `00003123                                     ;; 06:67be $0d $0b
    dw   `00003123                                     ;; 06:67c0 $0d $0b

    dw   `00003123                                     ;; 06:67c2 $0d $0b
    dw   `00003123                                     ;; 06:67c4 $0d $0b
    dw   `33333333                                     ;; 06:67c6 $ff $ff
    dw   `00000000                                     ;; 06:67c8 $00 $00
    dw   `00000000                                     ;; 06:67ca $00 $00
    dw   `33333333                                     ;; 06:67cc $ff $ff
    dw   `00000000                                     ;; 06:67ce $00 $00
    dw   `00000000                                     ;; 06:67d0 $00 $00

    dw   `00000000                                     ;; 06:67d2 $00 $00
    dw   `00000000                                     ;; 06:67d4 $00 $00
    dw   `02101200                                     ;; 06:67d6 $28 $44
    dw   `03000033                                     ;; 06:67d8 $43 $43
    dw   `13010002                                     ;; 06:67da $d0 $41
    dw   `21002333                                     ;; 06:67dc $47 $8f
    dw   `20100323                                     ;; 06:67de $25 $87
    dw   `30032103                                     ;; 06:67e0 $95 $99

    dw   `30013310                                     ;; 06:67e2 $9e $8c
    dw   `33333033                                     ;; 06:67e4 $fb $fb
    dw   `33101333                                     ;; 06:67e6 $ef $c7
    dw   `03333303                                     ;; 06:67e8 $7d $7d
    dw   `03303303                                     ;; 06:67ea $6d $6d
    dw   `02000203                                     ;; 06:67ec $01 $45
    dw   `00030003                                     ;; 06:67ee $11 $11
    dw   `20131023                                     ;; 06:67f0 $39 $93

    dw   `30303030                                     ;; 06:67f2 $aa $aa
    dw   `33000330                                     ;; 06:67f4 $c6 $c6
    dw   `02312323                                     ;; 06:67f6 $35 $6f
    dw   `13211133                                     ;; 06:67f8 $df $63
    dw   `23123112                                     ;; 06:67fa $6e $d9
    dw   `32112333                                     ;; 06:67fc $b7 $cf
    dw   `31211323                                     ;; 06:67fe $dd $a7
    dw   `31133211                                     ;; 06:6800 $fb $9c

    dw   `31123311                                     ;; 06:6802 $ef $9c
    dw   `33333033                                     ;; 06:6804 $fb $fb
    dw   `33112333                                     ;; 06:6806 $f7 $cf
    dw   `00323003                                     ;; 06:6808 $29 $39
    dw   `30030030                                     ;; 06:680a $92 $92
    dw   `13000300                                     ;; 06:680c $c4 $44
    dw   `22303000                                     ;; 06:680e $28 $e8
    dw   `33303000                                     ;; 06:6810 $e8 $e8

    dw   `30303000                                     ;; 06:6812 $a8 $a8
    dw   `30333000                                     ;; 06:6814 $b8 $b8
    dw   `02212321                                     ;; 06:6816 $15 $6e
    dw   `03210133                                     ;; 06:6818 $57 $63
    dw   `13123012                                     ;; 06:681a $ea $59
    dw   `22102333                                     ;; 06:681c $27 $cf
    dw   `31210323                                     ;; 06:681e $d5 $a7
    dw   `31133211                                     ;; 06:6820 $fb $9c

    dw   `31123311                                     ;; 06:6822 $ef $9c
    dw   `33333033                                     ;; 06:6824 $fb $fb
    dw   `33333330                                     ;; 06:6826 $fe $fe
    dw   `30000033                                     ;; 06:6828 $83 $83
    dw   `30333103                                     ;; 06:682a $bd $b9
    dw   `30000030                                     ;; 06:682c $82 $82
    dw   `30333303                                     ;; 06:682e $bd $bd
    dw   `30333103                                     ;; 06:6830 $bd $b9

    dw   `30000030                                     ;; 06:6832 $82 $82
    dw   `33333300                                     ;; 06:6834 $fc $fc
    dw   `02212321                                     ;; 06:6836 $15 $6e
    dw   `03210133                                     ;; 06:6838 $57 $63
    dw   `13123012                                     ;; 06:683a $ea $59
    dw   `22102333                                     ;; 06:683c $27 $cf
    dw   `31210323                                     ;; 06:683e $d5 $a7
    dw   `31133211                                     ;; 06:6840 $fb $9c

    dw   `31123311                                     ;; 06:6842 $ef $9c
    dw   `33333033                                     ;; 06:6844 $fb $fb
    dw   `32333300                                     ;; 06:6846 $bc $fc
    dw   `23000030                                     ;; 06:6848 $42 $c2
    dw   `30033203                                     ;; 06:684a $99 $9d
    dw   `30333333                                     ;; 06:684c $bf $bf
    dw   `30330003                                     ;; 06:684e $b1 $b1
    dw   `30233303                                     ;; 06:6850 $9d $bd

    dw   `33000003                                     ;; 06:6852 $c1 $c1
    dw   `30333330                                     ;; 06:6854 $be $be
    dw   `02212321                                     ;; 06:6856 $15 $6e
    dw   `03210133                                     ;; 06:6858 $57 $63
    dw   `13123012                                     ;; 06:685a $ea $59
    dw   `22102333                                     ;; 06:685c $27 $cf
    dw   `31210323                                     ;; 06:685e $d5 $a7
    dw   `31133211                                     ;; 06:6860 $fb $9c

    dw   `31123311                                     ;; 06:6862 $ef $9c
    dw   `33333033                                     ;; 06:6864 $fb $fb
    dw   `33333300                                     ;; 06:6866 $fc $fc
    dw   `00000030                                     ;; 06:6868 $02 $02
    dw   `03333203                                     ;; 06:686a $79 $7d
    dw   `03333003                                     ;; 06:686c $79 $79
    dw   `00000030                                     ;; 06:686e $02 $02
    dw   `03333003                                     ;; 06:6870 $79 $79

    dw   `03000303                                     ;; 06:6872 $45 $45
    dw   `33000033                                     ;; 06:6874 $c3 $c3
    dw   `02332233                                     ;; 06:6876 $33 $7f
    dw   `13333330                                     ;; 06:6878 $fe $7e
    dw   `23233330                                     ;; 06:687a $5e $fe
    dw   `33322230                                     ;; 06:687c $e2 $fe
    dw   `33332330                                     ;; 06:687e $f6 $fe
    dw   `32332330                                     ;; 06:6880 $b6 $fe

    dw   `33223330                                     ;; 06:6882 $ce $fe
    dw   `33333033                                     ;; 06:6884 $fb $fb
    dw   `33333300                                     ;; 06:6886 $fc $fc
    dw   `00330300                                     ;; 06:6888 $34 $34
    dw   `33030300                                     ;; 06:688a $d4 $d4
    dw   `00330300                                     ;; 06:688c $34 $34
    dw   `33030300                                     ;; 06:688e $d4 $d4
    dw   `33030333                                     ;; 06:6890 $d7 $d7

    dw   `00330003                                     ;; 06:6892 $31 $31
    dw   `33333333                                     ;; 06:6894 $ff $ff
    dw   `30030000                                     ;; 06:6896 $90 $90
    dw   `30030000                                     ;; 06:6898 $90 $90
    dw   `30030000                                     ;; 06:689a $90 $90
    dw   `30030000                                     ;; 06:689c $90 $90
    dw   `30030000                                     ;; 06:689e $90 $90
    dw   `30031000                                     ;; 06:68a0 $98 $90

    dw   `30030101                                     ;; 06:68a2 $95 $90
    dw   `30031010                                     ;; 06:68a4 $9a $90
    dw   `00000000                                     ;; 06:68a6 $00 $00
    dw   `00000000                                     ;; 06:68a8 $00 $00
    dw   `00000000                                     ;; 06:68aa $00 $00
    dw   `00000000                                     ;; 06:68ac $00 $00
    dw   `00000012                                     ;; 06:68ae $02 $01
    dw   `10123333                                     ;; 06:68b0 $af $1f

    dw   `02333222                                     ;; 06:68b2 $38 $7f
    dw   `13100122                                     ;; 06:68b4 $e4 $43
    dw   `00003123                                     ;; 06:68b6 $0d $0b
    dw   `00003132                                     ;; 06:68b8 $0e $0b
    dw   `00003231                                     ;; 06:68ba $0b $0e
    dw   `00003230                                     ;; 06:68bc $0a $0e
    dw   `33333330                                     ;; 06:68be $fe $fe
    dw   `32222223                                     ;; 06:68c0 $81 $ff

    dw   `22112222                                     ;; 06:68c2 $30 $cf
    dw   `21001232                                     ;; 06:68c4 $4a $87
    dw   `00000000                                     ;; 06:68c6 $00 $00
    dw   `00000000                                     ;; 06:68c8 $00 $00
    dw   `00000000                                     ;; 06:68ca $00 $00
    dw   `00000000                                     ;; 06:68cc $00 $00
    dw   `00000000                                     ;; 06:68ce $00 $00
    dw   `31010001                                     ;; 06:68d0 $d1 $80

    dw   `23301010                                     ;; 06:68d2 $6a $e0
    dw   `22233101                                     ;; 06:68d4 $1d $f8
    dw   `33330330                                     ;; 06:68d6 $f6 $f6
    dw   `00003003                                     ;; 06:68d8 $09 $09
    dw   `00003003                                     ;; 06:68da $09 $09
    dw   `33000330                                     ;; 06:68dc $c6 $c6
    dw   `03000003                                     ;; 06:68de $41 $41
    dw   `30000003                                     ;; 06:68e0 $81 $81

    dw   `30033003                                     ;; 06:68e2 $99 $99
    dw   `33303003                                     ;; 06:68e4 $e9 $e9
    dw   `30030101                                     ;; 06:68e6 $95 $90
    dw   `30031011                                     ;; 06:68e8 $9b $90
    dw   `30031112                                     ;; 06:68ea $9e $91
    dw   `30031123                                     ;; 06:68ec $9d $93
    dw   `30031133                                     ;; 06:68ee $9f $93
    dw   `30031232                                     ;; 06:68f0 $9a $97

    dw   `30031322                                     ;; 06:68f2 $9c $97
    dw   `30031322                                     ;; 06:68f4 $9c $97
    dw   `23011001                                     ;; 06:68f6 $59 $c0
    dw   `32012331                                     ;; 06:68f8 $97 $ce
    dw   `31022332                                     ;; 06:68fa $c6 $9f
    dw   `31023333                                     ;; 06:68fc $cf $9f
    dw   `31023233                                     ;; 06:68fe $cb $9f
    dw   `32023223                                     ;; 06:6900 $89 $df

    dw   `23113212                                     ;; 06:6902 $7a $cd
    dw   `23213110                                     ;; 06:6904 $5e $e8
    dw   `21210213                                     ;; 06:6906 $53 $a5
    dw   `22320202                                     ;; 06:6908 $20 $f5
    dw   `13320101                                     ;; 06:690a $e5 $70
    dw   `23320010                                     ;; 06:690c $62 $f0
    dw   `33320120                                     ;; 06:690e $e4 $f2
    dw   `23310221                                     ;; 06:6910 $71 $e6

    dw   `12311231                                     ;; 06:6912 $bb $66
    dw   `11312232                                     ;; 06:6914 $f2 $2f
    dw   `22222310                                     ;; 06:6916 $06 $fc
    dw   `32222231                                     ;; 06:6918 $83 $fe
    dw   `32121223                                     ;; 06:691a $a9 $d7
    dw   `23010222                                     ;; 06:691c $50 $c7
    dw   `13201122                                     ;; 06:691e $cc $63
    dw   `12312122                                     ;; 06:6920 $b4 $6b

    dw   `22322122                                     ;; 06:6922 $24 $fb
    dw   `22322322                                     ;; 06:6924 $24 $ff
    dw   `10103003                                     ;; 06:6926 $a9 $09
    dw   `01013003                                     ;; 06:6928 $59 $09
    dw   `11113003                                     ;; 06:692a $f9 $09
    dw   `31113003                                     ;; 06:692c $f9 $89
    dw   `32113003                                     ;; 06:692e $b9 $c9
    dw   `23113003                                     ;; 06:6930 $79 $c9

    dw   `23213003                                     ;; 06:6932 $59 $e9
    dw   `22313003                                     ;; 06:6934 $39 $e9
    dw   `30032231                                     ;; 06:6936 $93 $9e
    dw   `30032223                                     ;; 06:6938 $91 $9f
    dw   `30032222                                     ;; 06:693a $90 $9f
    dw   `30032222                                     ;; 06:693c $90 $9f
    dw   `30032222                                     ;; 06:693e $90 $9f
    dw   `30032222                                     ;; 06:6940 $90 $9f

    dw   `30032222                                     ;; 06:6942 $90 $9f
    dw   `30032223                                     ;; 06:6944 $91 $9f
    dw   `13032300                                     ;; 06:6946 $d4 $5c
    dw   `12003100                                     ;; 06:6948 $8c $48
    dw   `32000003                                     ;; 06:694a $81 $c1
    dw   `23100000                                     ;; 06:694c $60 $c0
    dw   `22310002                                     ;; 06:694e $30 $e1
    dw   `22232100                                     ;; 06:6950 $14 $f8

    dw   `23323321                                     ;; 06:6952 $6d $fe
    dw   `33333333                                     ;; 06:6954 $ff $ff
    dw   `00001323                                     ;; 06:6956 $0d $07
    dw   `11000232                                     ;; 06:6958 $c2 $07
    dw   `21000000                                     ;; 06:695a $40 $80
    dw   `00121000                                     ;; 06:695c $28 $10
    dw   `31310011                                     ;; 06:695e $f3 $a0
    dw   `00000111                                     ;; 06:6960 $07 $00

    dw   `00001123                                     ;; 06:6962 $0d $03
    dw   `21122332                                     ;; 06:6964 $66 $9f
    dw   `02011032                                     ;; 06:6966 $1a $43
    dw   `10012111                                     ;; 06:6968 $97 $08
    dw   `00123211                                     ;; 06:696a $2b $1c
    dw   `11133323                                     ;; 06:696c $fd $1f
    dw   `11332222                                     ;; 06:696e $f0 $3f
    dw   `23322222                                     ;; 06:6970 $60 $ff

    dw   `33333332                                     ;; 06:6972 $fe $ff
    dw   `23333333                                     ;; 06:6974 $7f $ff
    dw   `13223003                                     ;; 06:6976 $c9 $79
    dw   `23223003                                     ;; 06:6978 $49 $f9
    dw   `32223003                                     ;; 06:697a $89 $f9
    dw   `22223003                                     ;; 06:697c $09 $f9
    dw   `22223003                                     ;; 06:697e $09 $f9
    dw   `22223003                                     ;; 06:6980 $09 $f9

    dw   `22223003                                     ;; 06:6982 $09 $f9
    dw   `33223003                                     ;; 06:6984 $c9 $f9
    dw   `30033333                                     ;; 06:6986 $9f $9f
    dw   `30033003                                     ;; 06:6988 $99 $99
    dw   `30000003                                     ;; 06:698a $81 $81
    dw   `30000032                                     ;; 06:698c $82 $83
    dw   `03300033                                     ;; 06:698e $63 $63
    dw   `30030000                                     ;; 06:6990 $90 $90

    dw   `30030000                                     ;; 06:6992 $90 $90
    dw   `03303333                                     ;; 06:6994 $6f $6f
    dw   `32333003                                     ;; 06:6996 $b9 $f9
    dw   `32233300                                     ;; 06:6998 $9c $fc
    dw   `31122330                                     ;; 06:699a $e6 $9e
    dw   `31001233                                     ;; 06:699c $cb $87
    dw   `33333333                                     ;; 06:699e $ff $ff
    dw   `00000000                                     ;; 06:69a0 $00 $00

    dw   `00000000                                     ;; 06:69a2 $00 $00
    dw   `33333333                                     ;; 06:69a4 $ff $ff
    dw   `30201232                                     ;; 06:69a6 $8a $a7
    dw   `23221333                                     ;; 06:69a8 $4f $f7
    dw   `12213320                                     ;; 06:69aa $9c $6e
    dw   `02132300                                     ;; 06:69ac $34 $5c
    dw   `33333333                                     ;; 06:69ae $ff $ff
    dw   `00000000                                     ;; 06:69b0 $00 $00

    dw   `00000000                                     ;; 06:69b2 $00 $00
    dw   `33333333                                     ;; 06:69b4 $ff $ff
    dw   `33211233                                     ;; 06:69b6 $db $e7
    dw   `22211233                                     ;; 06:69b8 $1b $e7
    dw   `01211333                                     ;; 06:69ba $5f $27
    dw   `00012333                                     ;; 06:69bc $17 $0f
    dw   `33333333                                     ;; 06:69be $ff $ff
    dw   `00000000                                     ;; 06:69c0 $00 $00

    dw   `00000000                                     ;; 06:69c2 $00 $00
    dw   `33333333                                     ;; 06:69c4 $ff $ff
    dw   `33333003                                     ;; 06:69c6 $f9 $f9
    dw   `30033003                                     ;; 06:69c8 $99 $99
    dw   `30000003                                     ;; 06:69ca $81 $81
    dw   `23000003                                     ;; 06:69cc $41 $c1
    dw   `33000330                                     ;; 06:69ce $c6 $c6
    dw   `00003003                                     ;; 06:69d0 $09 $09

    dw   `00003003                                     ;; 06:69d2 $09 $09
    dw   `33330330                                     ;; 06:69d4 $f6 $f6
    dw   `00003003                                     ;; 06:69d6 $09 $09
    dw   `00003003                                     ;; 06:69d8 $09 $09
    dw   `00003003                                     ;; 06:69da $09 $09
    dw   `00003003                                     ;; 06:69dc $09 $09
    dw   `00003003                                     ;; 06:69de $09 $09
    dw   `00013003                                     ;; 06:69e0 $19 $09

    dw   `10103003                                     ;; 06:69e2 $a9 $09
    dw   `01013003                                     ;; 06:69e4 $59 $09
    dw   `30031322                                     ;; 06:69e6 $9c $97
    dw   `30031232                                     ;; 06:69e8 $9a $97
    dw   `30031123                                     ;; 06:69ea $9d $93
    dw   `30032113                                     ;; 06:69ec $97 $99
    dw   `30031230                                     ;; 06:69ee $9a $96
    dw   `30032121                                     ;; 06:69f0 $95 $9a

    dw   `30031232                                     ;; 06:69f2 $9a $97
    dw   `30032132                                     ;; 06:69f4 $96 $9b
    dw   `32313100                                     ;; 06:69f6 $bc $e8
    dw   `32323200                                     ;; 06:69f8 $a8 $fc
    dw   `23233310                                     ;; 06:69fa $5e $fc
    dw   `33323320                                     ;; 06:69fc $ec $fe
    dw   `13133120                                     ;; 06:69fe $fc $5a
    dw   `03332310                                     ;; 06:6a00 $76 $7c

    dw   `03322310                                     ;; 06:6a02 $66 $7c
    dw   `23010200                                     ;; 06:6a04 $50 $c4
    dw   `00312332                                     ;; 06:6a06 $36 $2f
    dw   `01323322                                     ;; 06:6a08 $6c $3f
    dw   `02331323                                     ;; 06:6a0a $3d $77
    dw   `03213332                                     ;; 06:6a0c $5e $6f
    dw   `00131333                                     ;; 06:6a0e $3f $17
    dw   `00113322                                     ;; 06:6a10 $3c $0f

    dw   `00023232                                     ;; 06:6a12 $0a $1f
    dw   `00001002                                     ;; 06:6a14 $08 $01
    dw   `23222322                                     ;; 06:6a16 $44 $ff
    dw   `33223222                                     ;; 06:6a18 $c8 $ff
    dw   `33233233                                     ;; 06:6a1a $db $ff
    dw   `13332311                                     ;; 06:6a1c $f7 $7c
    dw   `31333002                                     ;; 06:6a1e $f8 $b9
    dw   `32133022                                     ;; 06:6a20 $b8 $db

    dw   `13130033                                     ;; 06:6a22 $f3 $53
    dw   `03110232                                     ;; 06:6a24 $72 $47
    dw   `22313003                                     ;; 06:6a26 $39 $e9
    dw   `22323003                                     ;; 06:6a28 $29 $f9
    dw   `32333003                                     ;; 06:6a2a $b9 $f9
    dw   `33333003                                     ;; 06:6a2c $f9 $f9
    dw   `23333003                                     ;; 06:6a2e $79 $f9
    dw   `13333003                                     ;; 06:6a30 $f9 $79

    dw   `13323003                                     ;; 06:6a32 $e9 $79
    dw   `13213003                                     ;; 06:6a34 $d9 $69
    dw   `30033332                                     ;; 06:6a36 $9e $9f
    dw   `30033232                                     ;; 06:6a38 $9a $9f
    dw   `30032232                                     ;; 06:6a3a $92 $9f
    dw   `30032222                                     ;; 06:6a3c $90 $9f
    dw   `30032022                                     ;; 06:6a3e $90 $9b
    dw   `30033300                                     ;; 06:6a40 $9c $9c

    dw   `30031133                                     ;; 06:6a42 $9f $93
    dw   `30031113                                     ;; 06:6a44 $9f $91
    dw   `13333321                                     ;; 06:6a46 $fd $7e
    dw   `12233320                                     ;; 06:6a48 $9c $7e
    dw   `21112332                                     ;; 06:6a4a $76 $8f
    dw   `22200223                                     ;; 06:6a4c $01 $e7
    dw   `11332130                                     ;; 06:6a4e $f6 $3a
    dw   `21233310                                     ;; 06:6a50 $5e $bc

    dw   `00133100                                     ;; 06:6a52 $3c $18
    dw   `33221002                                     ;; 06:6a54 $c8 $f1
    dw   `33332112                                     ;; 06:6a56 $f6 $f9
    dw   `22121013                                     ;; 06:6a58 $2b $d1
    dw   `30332132                                     ;; 06:6a5a $b6 $bb
    dw   `01133320                                     ;; 06:6a5c $7c $1e
    dw   `02113320                                     ;; 06:6a5e $3c $4e
    dw   `22013310                                     ;; 06:6a60 $1e $cc

    dw   `00001312                                     ;; 06:6a62 $0e $05
    dw   `33322133                                     ;; 06:6a64 $e7 $fb
    dw   `33222222                                     ;; 06:6a66 $c0 $ff
    dw   `20233222                                     ;; 06:6a68 $18 $bf
    dw   `02333330                                     ;; 06:6a6a $3e $7e
    dw   `22222002                                     ;; 06:6a6c $00 $f9
    dw   `00002233                                     ;; 06:6a6e $03 $0f
    dw   `02333331                                     ;; 06:6a70 $3f $7e

    dw   `33111111                                     ;; 06:6a72 $ff $c0
    dw   `31333333                                     ;; 06:6a74 $ff $bf
    dw   `22333003                                     ;; 06:6a76 $39 $f9
    dw   `23333003                                     ;; 06:6a78 $79 $f9
    dw   `02233003                                     ;; 06:6a7a $19 $79
    dw   `33323003                                     ;; 06:6a7c $e9 $f9
    dw   `33333003                                     ;; 06:6a7e $f9 $f9
    dw   `11133003                                     ;; 06:6a80 $f9 $19

    dw   `11113003                                     ;; 06:6a82 $f9 $09
    dw   `33113003                                     ;; 06:6a84 $f9 $c9
    dw   `00000000                                     ;; 06:6a86 $00 $00
    dw   `00000000                                     ;; 06:6a88 $00 $00
    dw   `00000000                                     ;; 06:6a8a $00 $00
    dw   `00000000                                     ;; 06:6a8c $00 $00
    dw   `00000000                                     ;; 06:6a8e $00 $00
    dw   `00000000                                     ;; 06:6a90 $00 $00

    dw   `00000000                                     ;; 06:6a92 $00 $00
    dw   `00000000                                     ;; 06:6a94 $00 $00
    dw   `00000000                                     ;; 06:6a96 $00 $00
    dw   `00000000                                     ;; 06:6a98 $00 $00
    dw   `00000000                                     ;; 06:6a9a $00 $00
    dw   `00000000                                     ;; 06:6a9c $00 $00
    dw   `00000000                                     ;; 06:6a9e $00 $00
    dw   `00000000                                     ;; 06:6aa0 $00 $00

    dw   `00000000                                     ;; 06:6aa2 $00 $00
    dw   `00000000                                     ;; 06:6aa4 $00 $00
    dw   `00000000                                     ;; 06:6aa6 $00 $00
    dw   `00000000                                     ;; 06:6aa8 $00 $00
    dw   `00000000                                     ;; 06:6aaa $00 $00
    dw   `00000000                                     ;; 06:6aac $00 $00
    dw   `00000000                                     ;; 06:6aae $00 $00
    dw   `00000000                                     ;; 06:6ab0 $00 $00

    dw   `00000000                                     ;; 06:6ab2 $00 $00
    dw   `00000000                                     ;; 06:6ab4 $00 $00
    dw   `00000000                                     ;; 06:6ab6 $00 $00
    dw   `00000000                                     ;; 06:6ab8 $00 $00
    dw   `00000000                                     ;; 06:6aba $00 $00
    dw   `00000000                                     ;; 06:6abc $00 $00
    dw   `00000000                                     ;; 06:6abe $00 $00
    dw   `00000000                                     ;; 06:6ac0 $00 $00

    dw   `00000000                                     ;; 06:6ac2 $00 $00
    dw   `00000000                                     ;; 06:6ac4 $00 $00
    dw   `00000000                                     ;; 06:6ac6 $00 $00
    dw   `00000000                                     ;; 06:6ac8 $00 $00
    dw   `00000000                                     ;; 06:6aca $00 $00
    dw   `00000000                                     ;; 06:6acc $00 $00
    dw   `00000000                                     ;; 06:6ace $00 $00
    dw   `00000000                                     ;; 06:6ad0 $00 $00

    dw   `00000000                                     ;; 06:6ad2 $00 $00
    dw   `00000000                                     ;; 06:6ad4 $00 $00


data_06_6ad6:
    db   $4c, $4d, $4e, $4f, $60, $36, $3a, $3a        ;; 06:6ad6 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:6ade ........
    db   $3a, $3a, $3a, $37, $5c, $5d, $5e, $5f        ;; 06:6ae6 ........
    db   $70, $3c, $80, $80, $80, $80, $80, $80        ;; 06:6aee ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6af6 ........
    db   $61, $62, $63, $64, $65, $3c, $80, $f2        ;; 06:6afe ........
    db   $fd, $ee, $f6, $80, $00, $f2, $f7, $f0        ;; 06:6b06 ........
    db   $fc, $80, $80, $3d, $71, $72, $73, $74        ;; 06:6b0e ........
    db   $75, $3c, $80, $80, $80, $80, $80, $80        ;; 06:6b16 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6b1e ........
    db   $66, $67, $68, $69, $6a, $3c, $80, $fc        ;; 06:6b26 ........
    db   $ea, $ff, $ee, $80, $ff, $f5, $eb, $fc        ;; 06:6b2e ........
    db   $80, $80, $80, $3d, $76, $77, $78, $79        ;; 06:6b36 ........
    db   $7a, $3c, $80, $80, $80, $80, $80, $80        ;; 06:6b3e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6b46 ........
    db   $6b, $6c, $6d, $6e, $6f, $38, $3b, $3b        ;; 06:6b4e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:6b56 ........
    db   $3b, $3b, $3b, $39, $36, $3a, $3a, $3a        ;; 06:6b5e ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:6b66 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $37        ;; 06:6b6e ........
    db   $3c, $f1, $80, $f9, $27, $80, $80, $80        ;; 06:6b76 ........
    db   $80, $23, $80, $80, $80, $80, $80, $80        ;; 06:6b7e ........
    db   $3e, $80, $80, $3d, $3c, $f6, $80, $f9        ;; 06:6b86 ........
    db   $27, $80, $80, $80, $80, $23, $80, $80        ;; 06:6b8e ........
    db   $80, $80, $80, $80, $3e, $80, $80, $3d        ;; 06:6b96 ........
    db   $3c, $ea, $f0, $f2, $27, $80, $80, $80        ;; 06:6b9e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6ba6 ........
    db   $3e, $80, $80, $3d, $3c, $ed, $ee, $ef        ;; 06:6bae ........
    db   $27, $80, $80, $80, $80, $80, $80, $80        ;; 06:6bb6 ........
    db   $80, $80, $80, $80, $3e, $80, $80, $3d        ;; 06:6bbe ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6bc6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6bce ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:6bd6 ........
    db   $ee, $f5, $ee, $f6, $ee, $f7, $fd, $80        ;; 06:6bde ........
    db   $80, $80, $80, $3e, $80, $80, $80, $3d        ;; 06:6be6 ........
    db   $3c, $80, $80, $32, $80, $27, $80, $80        ;; 06:6bee ........
    db   $80, $80, $80, $34, $80, $27, $80, $80        ;; 06:6bf6 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $33        ;; 06:6bfe ........
    db   $80, $27, $80, $80, $80, $80, $80, $35        ;; 06:6c06 ........
    db   $80, $27, $80, $80, $80, $80, $80, $3d        ;; 06:6c0e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6c16 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6c1e ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:6c26 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:6c2e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:6c36 ........
    db   $04, $04, $04, $04, $04, $00, $00, $00        ;; 06:6c3e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6c46 ........
    db   $00, $00, $00, $00, $04, $04, $04, $04        ;; 06:6c4e ........
    db   $04, $00, $10, $10, $10, $10, $10, $10        ;; 06:6c56 ........
    db   $00, $00, $00, $00, $10, $10, $10, $00        ;; 06:6c5e ........
    db   $04, $04, $04, $04, $04, $00, $00, $00        ;; 06:6c66 ........
    db   $00, $00, $00, $10, $00, $00, $00, $00        ;; 06:6c6e ........
    db   $00, $10, $10, $00, $04, $04, $04, $04        ;; 06:6c76 ........
    db   $04, $00, $10, $10, $00, $00, $10, $00        ;; 06:6c7e ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:6c86 ........
    db   $04, $04, $04, $04, $04, $00, $10, $00        ;; 06:6c8e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6c96 ........
    db   $10, $10, $10, $00, $06, $05, $05, $06        ;; 06:6c9e ........
    db   $06, $00, $00, $00, $00, $00, $00, $00        ;; 06:6ca6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6cae ........
    db   $06, $07, $05, $07, $06, $00, $00, $00        ;; 06:6cb6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6cbe ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6cc6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6cce ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6cd6 ........
    db   $00, $00, $10, $00, $00, $10, $10, $10        ;; 06:6cde ........
    db   $10, $00, $00, $10, $10, $10, $00, $10        ;; 06:6ce6 ........
    db   $00, $10, $10, $00, $00, $00, $10, $00        ;; 06:6cee ........
    db   $00, $10, $10, $10, $10, $00, $10, $10        ;; 06:6cf6 ........
    db   $10, $10, $10, $10, $00, $10, $10, $00        ;; 06:6cfe ........
    db   $00, $00, $00, $00, $00, $10, $10, $10        ;; 06:6d06 ........
    db   $10, $00, $10, $10, $10, $10, $10, $10        ;; 06:6d0e ........
    db   $00, $10, $10, $00, $00, $00, $00, $00        ;; 06:6d16 ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:6d1e ........
    db   $10, $10, $00, $10, $00, $10, $10, $00        ;; 06:6d26 ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:6d2e ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:6d36 ........
    db   $10, $10, $10, $00, $00, $10, $10, $10        ;; 06:6d3e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6d46 ........
    db   $10, $00, $10, $00, $10, $00, $10, $00        ;; 06:6d4e ........
    db   $00, $10, $10, $02, $10, $00, $00, $00        ;; 06:6d56 ........
    db   $00, $00, $10, $01, $10, $00, $10, $10        ;; 06:6d5e ........
    db   $00, $00, $10, $00, $00, $10, $10, $03        ;; 06:6d66 ........
    db   $10, $00, $10, $00, $00, $00, $10, $00        ;; 06:6d6e ........
    db   $10, $00, $00, $10, $00, $00, $10, $00        ;; 06:6d76 ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:6d7e ........
    db   $10, $00, $10, $10, $10, $00, $10, $10        ;; 06:6d86 ........
    db   $10, $10, $10, $00, $00, $00, $00, $00        ;; 06:6d8e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6d96 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6d9e ........

data_06_6da6:
    db   $36, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:6da6 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:6dae ........
    db   $3a, $3a, $3a, $37, $3c, $80, $80, $80        ;; 06:6db6 ........
    db   $f1, $80, $f9, $27, $80, $80, $80, $80        ;; 06:6dbe ........
    db   $23, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6dc6 ........
    db   $3c, $80, $80, $80, $f6, $80, $f9, $27        ;; 06:6dce ........
    db   $80, $80, $80, $80, $23, $80, $80, $80        ;; 06:6dd6 ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:6dde ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:6de6 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:6dee ........
    db   $36, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:6df6 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:6dfe ........
    db   $3a, $3a, $3a, $37, $3c, $80, $80, $80        ;; 06:6e06 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e0e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6e16 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e1e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e26 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:6e2e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e36 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6e3e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e46 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e4e ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:6e56 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e5e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6e66 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e6e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e76 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:6e7e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e86 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6e8e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e96 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6e9e ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:6ea6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6eae ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6eb6 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6ebe ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6ec6 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:6ece ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6ed6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:6ede ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:6ee6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:6eee ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:6ef6 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:6efe ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:6f06 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f0e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f16 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f1e ........
    db   $00, $10, $00, $00, $10, $00, $10, $10        ;; 06:6f26 ........
    db   $00, $10, $00, $10, $00, $00, $00, $00        ;; 06:6f2e ........
    db   $00, $00, $00, $00, $00, $10, $00, $00        ;; 06:6f36 ........
    db   $10, $00, $10, $10, $00, $10, $00, $10        ;; 06:6f3e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f46 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f4e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f56 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f5e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f66 ........
    db   $00, $00, $00, $00, $00, $10, $10, $00        ;; 06:6f6e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f76 ........
    db   $00, $00, $00, $00, $00, $00, $10, $00        ;; 06:6f7e ........
    db   $00, $00, $10, $00, $00, $00, $00, $00        ;; 06:6f86 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f8e ........
    db   $00, $00, $10, $00, $00, $00, $10, $00        ;; 06:6f96 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6f9e ........
    db   $00, $00, $00, $00, $00, $00, $10, $00        ;; 06:6fa6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6fae ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6fb6 ........
    db   $00, $00, $10, $00, $00, $00, $00, $00        ;; 06:6fbe ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6fc6 ........
    db   $00, $00, $00, $00, $00, $00, $10, $00        ;; 06:6fce ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6fd6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6fde ........
    db   $00, $00, $10, $00, $00, $10, $10, $00        ;; 06:6fe6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:6fee ........
    db   $00, $00, $00, $00, $00, $00, $10, $00        ;; 06:6ff6 ........
    db   $00, $10, $10, $00, $00, $00, $00, $00        ;; 06:6ffe ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7006 ........
    db   $00, $00, $10, $00, $00, $10, $10, $00        ;; 06:700e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7016 ........
    db   $00, $00, $00, $00, $00, $00, $10, $00        ;; 06:701e ........
    db   $00, $10, $10, $00, $00, $00, $00, $00        ;; 06:7026 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:702e ........
    db   $00, $00, $10, $00, $00, $10, $10, $00        ;; 06:7036 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:703e ........
    db   $00, $00, $00, $00, $00, $00, $10, $00        ;; 06:7046 ........
    db   $00, $10, $10, $00, $00, $00, $00, $00        ;; 06:704e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7056 ........
    db   $00, $00, $10, $00, $00, $00, $00, $00        ;; 06:705e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7066 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:706e ........

data_06_7076:
    db   $4c, $4d, $4e, $4f, $60, $36, $3a, $3a        ;; 06:7076 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:707e ........
    db   $3a, $3a, $3a, $37, $5c, $5d, $5e, $5f        ;; 06:7086 ........
    db   $70, $3c, $80, $80, $80, $80, $80, $80        ;; 06:708e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7096 ........
    db   $61, $62, $63, $64, $65, $3c, $80, $f2        ;; 06:709e ........
    db   $fd, $ee, $f6, $80, $00, $f2, $f7, $f0        ;; 06:70a6 ........
    db   $fc, $80, $80, $3d, $71, $72, $73, $74        ;; 06:70ae ........
    db   $75, $3c, $80, $80, $80, $80, $80, $80        ;; 06:70b6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:70be ........
    db   $66, $67, $68, $69, $6a, $3c, $80, $fc        ;; 06:70c6 ........
    db   $ea, $ff, $ee, $80, $ff, $f5, $eb, $fc        ;; 06:70ce ........
    db   $80, $80, $80, $3d, $76, $77, $78, $79        ;; 06:70d6 ........
    db   $7a, $3c, $80, $80, $80, $80, $80, $80        ;; 06:70de ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:70e6 ........
    db   $6b, $6c, $6d, $6e, $6f, $38, $3b, $3b        ;; 06:70ee ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:70f6 ........
    db   $3b, $3b, $3b, $39, $36, $3a, $3a, $3a        ;; 06:70fe ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:7106 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $37        ;; 06:710e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:7116 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:711e ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:7126 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:712e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7136 ........
    db   $38, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:713e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:7146 ........
    db   $3b, $3b, $3b, $39, $36, $3a, $3a, $3a        ;; 06:714e ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:7156 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $37        ;; 06:715e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:7166 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:716e ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:7176 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:717e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7186 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:718e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7196 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:719e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:71a6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:71ae ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:71b6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:71be ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:71c6 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:71ce ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:71d6 ........
    db   $04, $04, $04, $04, $04, $00, $00, $00        ;; 06:71de ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:71e6 ........
    db   $00, $00, $00, $00, $04, $04, $04, $04        ;; 06:71ee ........
    db   $04, $00, $10, $10, $10, $10, $10, $10        ;; 06:71f6 ........
    db   $00, $00, $00, $00, $10, $10, $10, $00        ;; 06:71fe ........
    db   $04, $04, $04, $04, $04, $00, $00, $00        ;; 06:7206 ........
    db   $00, $00, $00, $10, $00, $00, $00, $00        ;; 06:720e ........
    db   $00, $10, $10, $00, $04, $04, $04, $04        ;; 06:7216 ........
    db   $04, $00, $10, $10, $00, $00, $10, $00        ;; 06:721e ........
    db   $10, $10, $10, $10, $10, $10, $00, $00        ;; 06:7226 ........
    db   $04, $04, $04, $04, $04, $00, $10, $00        ;; 06:722e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7236 ........
    db   $10, $10, $10, $00, $06, $05, $05, $06        ;; 06:723e ........
    db   $06, $00, $00, $00, $00, $00, $00, $00        ;; 06:7246 ........
    db   $00, $00, $00, $00, $00, $10, $00, $00        ;; 06:724e ........
    db   $06, $07, $05, $07, $06, $00, $00, $00        ;; 06:7256 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:725e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7266 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:726e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7276 ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:727e ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:7286 ........
    db   $10, $10, $10, $00, $00, $10, $10, $10        ;; 06:728e ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:7296 ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:729e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72a6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72ae ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72b6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72be ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72c6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72ce ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72d6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72de ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72e6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72ee ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72f6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:72fe ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7306 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:730e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7316 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:731e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7326 ........
    db   $00, $00, $10, $00, $00, $00, $00, $00        ;; 06:732e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7336 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:733e ........

data_06_7346:
    db   $36, $80, $ed, $ea, $fd, $ea, $05, $3a        ;; 06:7346 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:734e ........
    db   $3a, $3a, $3a, $37, $3c, $80, $80, $80        ;; 06:7356 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:735e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7366 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:736e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7376 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:737e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7386 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:738e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:7396 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:739e ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:73a6 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:73ae ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:73b6 ........
    db   $36, $80, $ed, $ea, $fd, $ea, $06, $3a        ;; 06:73be ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:73c6 ........
    db   $3a, $3a, $3a, $37, $3c, $80, $80, $80        ;; 06:73ce ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:73d6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:73de ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:73e6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:73ee ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:73f6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:73fe ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7406 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:740e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7416 ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:741e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:7426 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:742e ........
    db   $36, $80, $ed, $ea, $fd, $ea, $07, $3a        ;; 06:7436 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:743e ........
    db   $3a, $3a, $3a, $37, $3c, $80, $80, $80        ;; 06:7446 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:744e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7456 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:745e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7466 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:746e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7476 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:747e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:7486 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:748e ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:7496 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:749e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:74a6 ........
    db   $00, $10, $00, $00, $00, $00, $00, $00        ;; 06:74ae ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:74b6 ........
    db   $00, $00, $00, $00, $00, $10, $10, $10        ;; 06:74be ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:74c6 ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:74ce ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:74d6 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:74de ........
    db   $10, $10, $10, $00, $00, $10, $10, $10        ;; 06:74e6 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:74ee ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:74f6 ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:74fe ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:7506 ........
    db   $10, $10, $10, $00, $00, $00, $00, $00        ;; 06:750e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7516 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:751e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7526 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:752e ........
    db   $00, $00, $00, $00, $00, $10, $10, $10        ;; 06:7536 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:753e ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:7546 ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:754e ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:7556 ........
    db   $10, $10, $10, $00, $00, $10, $10, $10        ;; 06:755e ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:7566 ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:756e ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:7576 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:757e ........
    db   $10, $10, $10, $00, $00, $00, $00, $00        ;; 06:7586 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:758e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7596 ........
    db   $00, $10, $00, $00, $00, $00, $00, $00        ;; 06:759e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:75a6 ........
    db   $00, $00, $00, $00, $00, $10, $00, $00        ;; 06:75ae ........
    db   $00, $00, $00, $10, $10, $10, $10, $10        ;; 06:75b6 ........
    db   $10, $10, $10, $10, $10, $10, $10, $00        ;; 06:75be ........
    db   $00, $00, $00, $00, $00, $10, $00, $10        ;; 06:75c6 ........
    db   $10, $10, $10, $10, $00, $10, $10, $10        ;; 06:75ce ........
    db   $10, $10, $10, $00, $00, $10, $00, $00        ;; 06:75d6 ........
    db   $00, $00, $00, $00, $10, $10, $10, $10        ;; 06:75de ........
    db   $10, $00, $10, $10, $10, $10, $10, $00        ;; 06:75e6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:75ee ........
    db   $10, $10, $10, $10, $10, $00, $10, $10        ;; 06:75f6 ........
    db   $10, $10, $10, $00, $00, $00, $00, $00        ;; 06:75fe ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7606 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:760e ........

data_06_7616:
    db   $36, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:7616 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:761e ........
    db   $3a, $3a, $3a, $37, $3c, $fc, $f9, $f2        ;; 06:7626 ........
    db   $fb, $f2, $fd, $80, $f0, $ee, $f6, $fc        ;; 06:762e ........
    db   $fd, $f8, $f7, $ee, $fc, $80, $80, $3d        ;; 06:7636 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:763e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7646 ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:764e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:7656 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:765e ........
    db   $36, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:7666 ........
    db   $3a, $3a, $3a, $3a, $3a, $3a, $3a, $3a        ;; 06:766e ........
    db   $3a, $3a, $3a, $37, $3c, $80, $80, $80        ;; 06:7676 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:767e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7686 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:768e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7696 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:769e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:76a6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:76ae ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:76b6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:76be ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:76c6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:76ce ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:76d6 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:76de ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:76e6 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:76ee ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:76f6 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:76fe ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:7706 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:770e ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:7716 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:771e ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:7726 ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:772e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7736 ........
    db   $80, $80, $80, $3d, $3c, $80, $80, $80        ;; 06:773e ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7746 ........
    db   $80, $80, $80, $80, $80, $80, $80, $3d        ;; 06:774e ........
    db   $3c, $80, $80, $80, $80, $80, $80, $80        ;; 06:7756 ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:775e ........
    db   $80, $80, $80, $3d, $38, $3b, $3b, $3b        ;; 06:7766 ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $3b        ;; 06:776e ........
    db   $3b, $3b, $3b, $3b, $3b, $3b, $3b, $39        ;; 06:7776 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:777e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7786 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:778e ........
    db   $00, $00, $00, $10, $00, $00, $00, $00        ;; 06:7796 ........
    db   $00, $00, $00, $00, $00, $10, $10, $00        ;; 06:779e ........
    db   $00, $10, $10, $10, $10, $10, $10, $10        ;; 06:77a6 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:77ae ........
    db   $10, $10, $10, $00, $00, $00, $00, $00        ;; 06:77b6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77be ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77c6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77ce ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77d6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77de ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77e6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77ee ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77f6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:77fe ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7806 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:780e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7816 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:781e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7826 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:782e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7836 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:783e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7846 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:784e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7856 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:785e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7866 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:786e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7876 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:787e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7886 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:788e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:7896 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:789e ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78a6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78ae ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78b6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78be ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78c6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78ce ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78d6 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 06:78de ........

data_06_78e6:
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:78e6 ........
    db   $80, $80, $80, $80, $32, $27, $f1, $80        ;; 06:78ee ........
    db   $f9, $27, $80, $80, $80, $23, $80, $80        ;; 06:78f6 ........
    db   $80, $80, $33, $27, $80, $80, $80, $80        ;; 06:78fe ........
    db   $80, $80, $80, $80, $80, $80, $80, $80        ;; 06:7906 ........
    db   $34, $27, $f6, $80, $f9, $27, $80, $80        ;; 06:790e ........
    db   $80, $23, $80, $80, $80, $80, $35, $27        ;; 06:7916 ........

data_06_791e:
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:791e ........
    db   $10, $10, $10, $10, $02, $00, $00, $10        ;; 06:7926 ........
    db   $00, $00, $10, $10, $10, $00, $10, $10        ;; 06:792e ........
    db   $00, $10, $03, $00, $10, $10, $10, $10        ;; 06:7936 ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 06:793e ........
    db   $01, $00, $00, $10, $00, $00, $10, $10        ;; 06:7946 ........
    db   $10, $00, $10, $10, $10, $10, $00, $00        ;; 06:794e ........

data_06_7956:
    db   $ff, $7f, $3c, $3f, $f4, $29, $00, $00        ;; 06:7956 ........
    db   $ff, $7f, $ef, $7d, $00, $50, $00, $00        ;; 06:795e ........
    db   $ff, $7f, $1f, $00, $10, $00, $00, $00        ;; 06:7966 ........
    db   $ff, $7f, $ca, $2b, $e0, $01, $00, $00        ;; 06:796e ........
    db   $ff, $7f, $59, $32, $12, $11, $00, $00        ;; 06:7976 ........
    db   $ff, $7f, $4f, $72, $47, $44, $00, $00        ;; 06:797e ........
    db   $ff, $7f, $1f, $01, $47, $5c, $00, $00        ;; 06:7986 ........
    db   $ff, $7f, $3a, $03, $91, $01, $00, $00        ;; 06:798e ........
    db   $7b, $78, $71, $7a, $71, $7c, $97, $74        ;; 06:7996 ????????
    db   $71, $6f, $70, $7c, $ff, $79, $96, $6e        ;; 06:799e ????????
    db   $7a, $6d, $7b, $70, $97, $6a, $7a, $6d        ;; 06:79a6 ????????
    db   $69, $6c, $ff, $79, $a5, $70, $77, $76        ;; 06:79ae ????????
    db   $6d, $81, $97, $6a, $7a, $6d, $69, $6c        ;; 06:79b6 ????????
    db   $ff, $79, $b3, $70, $6d, $69, $74, $71        ;; 06:79be ????????
    db   $76, $6f, $78, $77, $7c, $71, $77, $76        ;; 06:79c6 ????????
    db   $ff, $79, $c1, $6c, $7a, $69, $6f, $77        ;; 06:79ce ????????
    db   $76, $9a, $7b, $78, $77, $7c, $71, $77        ;; 06:79d6 ????????
    db   $76, $ff, $79, $d1, $6c, $6d, $7f, $97        ;; 06:79de ????????
    db   $6c, $7a, $77, $78, $ff, $79, $e2, $75        ;; 06:79e6 ????????
    db   $71, $76, $7c, $97, $74, $6d, $69, $7e        ;; 06:79ee ????????
    db   $6d, $7b, $ff, $79, $ed, $70, $6d, $7a        ;; 06:79f6 ????????
    db   $77, $6d, $7b, $97, $6c, $7a, $71, $76        ;; 06:79fe ????????
    db   $73, $ff, $79, $fb, $7b, $6d, $6b, $7a        ;; 06:7a06 ????????
    db   $6d, $7c, $97, $78, $77, $7c, $71, $77        ;; 06:7a0e ????????
    db   $76, $ff, $7a, $0a, $7b, $71, $74, $6d        ;; 06:7a16 ????????
    db   $76, $7c, $97, $6e, $74, $7d, $7c, $6d        ;; 06:7a1e ????????
    db   $ff, $7a, $1a, $6b, $6d, $74, $71, $76        ;; 06:7a26 ????????
    db   $6d, $9a, $7b, $97, $6a, $6d, $74, $74        ;; 06:7a2e ????????
    db   $ff, $7a, $29, $7a, $6d, $78, $74, $71        ;; 06:7a36 ????????
    db   $6b, $69, $ff, $7a, $39, $6f, $71, $69        ;; 06:7a3e ????????
    db   $76, $7c, $9a, $7b, $97, $7b, $70, $77        ;; 06:7a46 ????????
    db   $6d, $7b, $ff, $7a, $43, $7b, $71, $74        ;; 06:7a4e ????????
    db   $7e, $6d, $7a, $97, $69, $75, $7d, $74        ;; 06:7a56 ????????
    db   $6d, $7c, $ff, $7a, $53, $6f, $77, $74        ;; 06:7a5e ????????
    db   $6c, $6d, $76, $97, $69, $75, $7d, $74        ;; 06:7a66 ????????
    db   $6d, $7c, $ff, $7a, $63, $7d, $7b, $6d        ;; 06:7a6e ????????
    db   $97, $7c, $70, $71, $7b, $90, $fd, $97        ;; 06:7a76 ????????
    db   $81, $6d, $7b, $97, $76, $77, $ff, $7a        ;; 06:7a7e ????????
    db   $73, $70, $78, $97, $6e, $7d, $74, $74        ;; 06:7a86 ????????
    db   $ff, $7a, $87, $70, $78, $97, $88, $83        ;; 06:7a8e ????????
    db   $ff, $7a, $91, $70, $78, $97, $84, $83        ;; 06:7a96 ????????
    db   $83, $ff, $7a, $99, $70, $78, $97, $86        ;; 06:7a9e ????????
    db   $83, $83, $ff, $7a, $a2, $75, $78, $97        ;; 06:7aa6 ????????
    db   $6e, $7d, $74, $74, $ff, $7a, $ab, $75        ;; 06:7aae ????????
    db   $78, $97, $88, $83, $ff, $7a, $b5, $75        ;; 06:7ab6 ????????
    db   $78, $97, $84, $83, $83, $ff, $7a, $bd        ;; 06:7abe ????????
    db   $75, $78, $97, $86, $83, $83, $ff, $7a        ;; 06:7ac6 ????????
    db   $c6, $70, $78, $d8, $75, $78, $ff, $7a        ;; 06:7ace ????????
    db   $cf, $7a, $6d, $6b, $77, $7e, $6d, $7a        ;; 06:7ad6 ????????
    db   $81, $ff, $7a, $d7, $6b, $69, $76, $9a        ;; 06:7ade ????????
    db   $7c, $97, $7d, $7b, $6d, $fd, $71, $7c        ;; 06:7ae6 ????????
    db   $97, $70, $6d, $7a, $6d, $d3, $ff, $7a        ;; 06:7aee ????????
    db   $e2, $7f, $70, $71, $7c, $6d, $97, $7f        ;; 06:7af6 ????????
    db   $71, $76, $6f, $7b, $ff, $7a, $f7, $81        ;; 06:7afe ????????
    db   $6d, $74, $74, $77, $7f, $97, $7f, $71        ;; 06:7b06 ????????
    db   $76, $6f, $7b, $ff, $7b, $05, $6a, $74        ;; 06:7b0e ????????
    db   $7d, $6d, $97, $7f, $71, $76, $6f, $7b        ;; 06:7b16 ????????
    db   $ff, $7b, $14, $6f, $7a, $6d, $6d, $76        ;; 06:7b1e ????????
    db   $97, $7f, $71, $76, $6f, $7b, $ff, $7b        ;; 06:7b26 ????????
    db   $21, $7a, $6d, $6c, $97, $7f, $71, $76        ;; 06:7b2e ????????
    db   $6f, $7b, $ff, $7b, $2f, $6a, $74, $69        ;; 06:7b36 ????????
    db   $6b, $73, $97, $7f, $71, $76, $6f, $7b        ;; 06:7b3e ????????
    db   $ff, $7b, $3b, $97, $97, $6e, $74, $81        ;; 06:7b46 ????????
    db   $97, $7c, $77, $97, $75, $6d, $74, $7a        ;; 06:7b4e ????????
    db   $77, $6c, $6d, $ff, $7b, $49, $97, $97        ;; 06:7b56 ????????
    db   $6e, $74, $81, $97, $7c, $77, $97, $6c        ;; 06:7b5e ????????
    db   $77, $76, $6c, $77, $7a, $69, $76, $ff        ;; 06:7b66 ????????
    db   $7b, $5c, $97, $97, $6e, $74, $81, $97        ;; 06:7b6e ????????
    db   $7c, $77, $97, $74, $69, $7a, $69, $78        ;; 06:7b76 ????????
    db   $77, $77, $74, $ff, $7b, $70, $97, $97        ;; 06:7b7e ????????
    db   $6e, $74, $81, $97, $7c, $77, $97, $76        ;; 06:7b86 ????????
    db   $77, $7a, $75, $77, $77, $76, $ff, $7b        ;; 06:7b8e ????????
    db   $84, $97, $97, $6e, $74, $81, $97, $7c        ;; 06:7b96 ????????
    db   $77, $97, $74, $71, $75, $6d, $74, $71        ;; 06:7b9e ????????
    db   $76, $ff, $7b, $97, $97, $97, $6e, $74        ;; 06:7ba6 ????????
    db   $81, $97, $7c, $77, $97, $6a, $7a, $69        ;; 06:7bae ????????
    db   $76, $76, $77, $6b, $70, $ff, $7b, $aa        ;; 06:7bb6 ????????
    db   $81, $77, $7d, $97, $6b, $69, $76, $9a        ;; 06:7bbe ????????
    db   $7c, $97, $7d, $7b, $6d, $fd, $7f, $71        ;; 06:7bc6 ????????
    db   $76, $6f, $97, $70, $6d, $7a, $6d, $d3        ;; 06:7bce ????????
    db   $ff, $7b, $be, $6d, $69, $7a, $7c, $70        ;; 06:7bd6 ????????
    db   $97, $77, $7a, $6a, $ff, $7b, $d9, $7f        ;; 06:7bde ????????
    db   $71, $76, $6c, $97, $72, $69, $6c, $6d        ;; 06:7be6 ????????
    db   $ff, $7b, $e5, $7f, $69, $7c, $6d, $7a        ;; 06:7bee ????????
    db   $97, $72, $6d, $7f, $6d, $74, $ff, $7b        ;; 06:7bf6 ????????
    db   $f1, $6e, $71, $7a, $6d, $97, $7a, $7d        ;; 06:7bfe ????????
    db   $6a, $81, $ff, $7b, $ff, $6d, $74, $6d        ;; 06:7c06 ????????
    db   $7c, $69, $74, $6d, $97, $6a, $77, $77        ;; 06:7c0e ????????
    db   $73, $ff, $7c, $0b, $6c, $69, $7a, $73        ;; 06:7c16 ????????
    db   $97, $6f, $69, $77, $74, $97, $73, $6d        ;; 06:7c1e ????????
    db   $81, $ff, $7c, $1a, $7f, $69, $7a, $7a        ;; 06:7c26 ????????
    db   $71, $77, $7a, $9a, $7b, $97, $6a, $69        ;; 06:7c2e ????????
    db   $6c, $6f, $6d, $ff, $7c, $2a, $7f, $69        ;; 06:7c36 ????????
    db   $7a, $7a, $71, $77, $7a, $9a, $7b, $97        ;; 06:7c3e ????????
    db   $7b, $7c, $69, $6e, $6e, $ff, $7c, $3c        ;; 06:7c46 ????????
    db   $7f, $69, $7a, $7a, $71, $77, $7a, $9a        ;; 06:7c4e ????????
    db   $7b, $97, $6b, $69, $78, $6d, $ff, $7c        ;; 06:7c56 ????????
    db   $4e, $77, $7a, $6b, $70, $6d, $7b, $7c        ;; 06:7c5e ????????
    db   $7a, $69, $ff, $7c, $5f, $6b, $7a, $81        ;; 06:7c66 ????????
    db   $7b, $7c, $69, $74, $97, $6a, $69, $74        ;; 06:7c6e ????????
    db   $74, $fd, $70, $77, $74, $6c, $7b, $97        ;; 06:7c76 ????????
    db   $6f, $7a, $6d, $69, $7c, $fd, $78, $77        ;; 06:7c7e ????????
    db   $7f, $6d, $7a, $97, $77, $6e, $97, $fd        ;; 06:7c86 ????????
    db   $6d, $69, $7a, $7c, $70, $97, $7b, $78        ;; 06:7c8e ????????
    db   $71, $7a, $71, $7c, $ff, $7c, $6b, $6f        ;; 06:7c96 ????????
    db   $7a, $6d, $6d, $76, $97, $72, $69, $6c        ;; 06:7c9e ????????
    db   $6d, $97, $fd, $70, $77, $74, $6c, $7b        ;; 06:7ca6 ????????
    db   $fd, $6f, $7a, $6d, $69, $7c, $97, $78        ;; 06:7cae ????????
    db   $77, $7f, $6d, $7a, $97, $77, $6e, $fd        ;; 06:7cb6 ????????
    db   $7f, $71, $76, $6c, $97, $7b, $78, $71        ;; 06:7cbe ????????
    db   $7a, $71, $7c, $ff, $7c, $9d, $69, $79        ;; 06:7cc6 ????????
    db   $7d, $69, $75, $69, $7a, $71, $76, $6d        ;; 06:7cce ????????
    db   $97, $fd, $70, $77, $74, $6c, $7b, $fd        ;; 06:7cd6 ????????
    db   $6f, $7a, $6d, $69, $7c, $97, $78, $77        ;; 06:7cde ????????
    db   $7f, $6d, $7a, $97, $77, $6e, $fd, $7f        ;; 06:7ce6 ????????
    db   $69, $7c, $6d, $7a, $97, $7b, $78, $71        ;; 06:7cee ????????
    db   $7a, $71, $7c, $ff, $7c, $cc, $6a, $74        ;; 06:7cf6 ????????
    db   $77, $77, $6c, $97, $7a, $7d, $6a, $81        ;; 06:7cfe ????????
    db   $97, $70, $77, $74, $6c, $7b, $fd, $6f        ;; 06:7d06 ????????
    db   $7a, $6d, $69, $7c, $97, $78, $77, $7f        ;; 06:7d0e ????????
    db   $6d, $7a, $97, $77, $6e, $fd, $6e, $71        ;; 06:7d16 ????????
    db   $7a, $6d, $97, $7b, $78, $71, $7a, $71        ;; 06:7d1e ????????
    db   $7c, $ff, $7c, $fc, $6a, $77, $77, $73        ;; 06:7d26 ????????
    db   $97, $7f, $7a, $71, $7c, $7c, $6d, $76        ;; 06:7d2e ????????
    db   $fd, $69, $6a, $77, $7d, $7c, $97, $7c        ;; 06:7d36 ????????
    db   $70, $6d, $97, $78, $77, $7f, $6d, $7a        ;; 06:7d3e ????????
    db   $fd, $7c, $70, $69, $7c, $97, $6d, $80        ;; 06:7d46 ????????
    db   $6b, $6d, $6d, $6c, $7b, $97, $fd, $7c        ;; 06:7d4e ????????
    db   $70, $6d, $97, $7b, $78, $71, $7a, $71        ;; 06:7d56 ????????
    db   $7c, $ff, $7d, $2a, $73, $71, $76, $6f        ;; 06:7d5e ????????
    db   $97, $75, $69, $75, $75, $77, $76, $9a        ;; 06:7d66 ????????
    db   $7b, $fd, $78, $7a, $71, $7b, $77, $76        ;; 06:7d6e ????????
    db   $97, $73, $6d, $81, $ff, $7d, $62, $81        ;; 06:7d76 ????????
    db   $77, $7d, $97, $7f, $71, $74, $74, $97        ;; 06:7d7e ????????
    db   $75, $6d, $6d, $7c, $fd, $6e, $6d, $7f        ;; 06:7d86 ????????
    db   $6d, $7a, $97, $75, $77, $76, $7b, $7c        ;; 06:7d8e ????????
    db   $6d, $7a, $7b, $fd, $7f, $71, $7c, $70        ;; 06:7d96 ????????
    db   $97, $7c, $70, $71, $7b, $97, $6a, $69        ;; 06:7d9e ????????
    db   $6c, $6f, $6d, $d3, $ff, $7d, $7d, $69        ;; 06:7da6 ????????
    db   $7c, $7c, $69, $6b, $73, $97, $78, $77        ;; 06:7dae ????????
    db   $7f, $6d, $7a, $fd, $7f, $71, $74, $74        ;; 06:7db6 ????????
    db   $97, $6a, $6d, $97, $6d, $76, $70, $69        ;; 06:7dbe ????????
    db   $76, $6b, $6d, $6c, $fd, $7f, $71, $7c        ;; 06:7dc6 ????????
    db   $70, $97, $7c, $70, $71, $7b, $97, $7b        ;; 06:7dce ????????
    db   $7c, $69, $6e, $6e, $d3, $ff, $7d, $ad        ;; 06:7dd6 ????????
    db   $6c, $6d, $6e, $6d, $76, $7b, $6d, $97        ;; 06:7dde ????????
    db   $78, $77, $7f, $6d, $7a, $fd, $7f, $71        ;; 06:7de6 ????????
    db   $74, $74, $97, $6a, $6d, $97, $6d, $76        ;; 06:7dee ????????
    db   $70, $69, $76, $6b, $6d, $6c, $fd, $7f        ;; 06:7df6 ????????
    db   $71, $7c, $70, $97, $7c, $70, $71, $7b        ;; 06:7dfe ????????
    db   $97, $6b, $69, $78, $6d, $d3, $ff, $7d        ;; 06:7e06 ????????
    db   $de, $81, $77, $7d, $97, $7f, $71, $74        ;; 06:7e0e ????????
    db   $74, $97, $6a, $6d, $97, $69, $6a, $74        ;; 06:7e16 ????????
    db   $6d, $fd, $7c, $77, $97, $74, $71, $7b        ;; 06:7e1e ????????
    db   $7c, $6d, $76, $97, $7c, $77, $97, $69        ;; 06:7e26 ????????
    db   $76, $81, $fd, $7c, $7d, $76, $6d, $97        ;; 06:7e2e ????????
    db   $81, $77, $7d, $97, $7f, $69, $76, $7c        ;; 06:7e36 ????????
    db   $d3, $ff, $7e, $0f, $97, $97, $7b, $77        ;; 06:7e3e ????????
    db   $7d, $76, $6c, $97, $75, $77, $6c, $6d        ;; 06:7e46 ????????
    db   $fd, $97, $7b, $77, $7d, $76, $6c, $97        ;; 06:7e4e ????????
    db   $76, $77, $d3, $ff, $7e, $42, $97, $97        ;; 06:7e56 ????????
    db   $97, $7b, $69, $7e, $6d, $97, $71, $76        ;; 06:7e5e ????????
    db   $fd, $97, $97, $97, $7c, $70, $71, $7b        ;; 06:7e66 ????????
    db   $97, $6e, $71, $74, $6d, $90, $fd, $97        ;; 06:7e6e ????????
    db   $97, $97, $81, $6d, $7b, $97, $97, $76        ;; 06:7e76 ????????
    db   $77, $ff, $7e, $5c, $97, $6c, $77, $97        ;; 06:7e7e ????....
    db   $81, $77, $7d, $97, $7f, $69, $76, $7c        ;; 06:7e86 ........
    db   $fd, $7c, $77, $97, $77, $7e, $6d, $7a        ;; 06:7e8e ........
    db   $7f, $7a, $71, $7c, $6d, $90, $fd, $97        ;; 06:7e96 ........
    db   $97, $97, $81, $6d, $7b, $97, $97, $76        ;; 06:7e9e ........
    db   $77, $ff, $7e, $82, $97, $97, $76, $77        ;; 06:7ea6 ..??????
    db   $97, $6c, $69, $7c, $69, $97, $71, $76        ;; 06:7eae ????????
    db   $fd, $97, $97, $7c, $70, $71, $7b, $97        ;; 06:7eb6 ????????
    db   $6e, $71, $74, $6d, $d3, $ff, $7e, $aa        ;; 06:7ebe ????????
    db   $97, $6c, $77, $97, $81, $77, $7d, $97        ;; 06:7ec6 ????????
    db   $7f, $69, $76, $7c, $fd, $97, $97, $97        ;; 06:7ece ????????
    db   $7c, $77, $97, $74, $77, $69, $6c, $90        ;; 06:7ed6 ????????
    db   $fd, $97, $97, $97, $81, $6d, $7b, $97        ;; 06:7ede ????????
    db   $97, $76, $77, $ff, $7e, $c6, $06, $14        ;; 06:7ee6 ????????
    db   $13, $06, $15, $fd, $0c, $06, $14, $06        ;; 06:7eee ????????
    db   $31, $07, $9b, $06, $08, $1e, $0c, $ff        ;; 06:7ef6 ????????
    db   $7e, $eb, $97, $97, $3c, $34, $5f, $c2        ;; 06:7efe ????????
    db   $54, $91, $c2, $fd, $97, $3c, $34, $5f        ;; 06:7f06 ????????
    db   $c2, $76, $77, $d3, $ff, $7f, $00, $97        ;; 06:7f0e ????????
    db   $97, $97, $09, $18, $4d, $60, $33, $5a        ;; 06:7f16 ????????
    db   $15, $fd, $97, $97, $97, $3f, $91, $c5        ;; 06:7f1e ????????
    db   $0b, $1e, $0c, $05, $90, $fd, $97, $97        ;; 06:7f26 ????????
    db   $97, $19, $01, $97, $97, $97, $01, $01        ;; 06:7f2e ????????
    db   $03, $ff, $7f, $15, $0c, $a8, $15, $c1        ;; 06:7f36 ????????
    db   $91, $41, $9b, $0e, $2d, $a0, $01, $0b        ;; 06:7f3e ????????
    db   $1e, $0c, $fd, $97, $97, $97, $02, $2b        ;; 06:7f46 ????????
    db   $9b, $06, $0b, $1e, $0c, $05, $90, $fd        ;; 06:7f4e ????????
    db   $97, $97, $97, $19, $01, $97, $97, $97        ;; 06:7f56 ????????
    db   $01, $01, $03, $ff, $7f, $3a, $97, $97        ;; 06:7f5e ????????
    db   $97, $09, $18, $4d, $60, $33, $5a, $15        ;; 06:7f66 ????????
    db   $19, $fd, $97, $97, $97, $97, $97, $c1        ;; 06:7f6e ????????
    db   $91, $41, $9b, $fd, $97, $97, $97, $0e        ;; 06:7f76 ????????
    db   $2d, $a0, $01, $0b, $1e, $0d, $2d, $ff        ;; 06:7f7e ????????
    db   $7f, $64, $97, $09, $18, $c1, $91, $41        ;; 06:7f86 ????????
    db   $2c, $5c, $91, $c2, $0b, $1e, $0c, $fd        ;; 06:7f8e ????????
    db   $97, $97, $97, $25, $2a, $0b, $01, $a8        ;; 06:7f96 ????????
    db   $0c, $05, $90, $fd, $97, $97, $97, $19        ;; 06:7f9e ????????
    db   $01, $97, $97, $97, $01, $01, $03, $ff        ;; 06:7fa6 ????????
    db   $7f, $88                                      ;; 06:7fae ??
