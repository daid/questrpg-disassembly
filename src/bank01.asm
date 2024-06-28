;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank01", ROMX[$4000], BANK[$01]

call_01_4000:
    ld   HL, data_01_48e0                              ;; 01:4000 $21 $e0 $48
    ld   DE, wD2AC                                     ;; 01:4003 $11 $ac $d2
    ld   B, $08                                        ;; 01:4006 $06 $08
    call memcopySmall                                  ;; 01:4008 $cd $91 $05
    ld   C, $24                                        ;; 01:400b $0e $24
    ld   A, $77                                        ;; 01:400d $3e $77
    ldh  [C], A                                        ;; 01:400f $e2
    inc  C                                             ;; 01:4010 $0c
    ld   A, $ff                                        ;; 01:4011 $3e $ff
    ldh  [C], A                                        ;; 01:4013 $e2
    inc  C                                             ;; 01:4014 $0c
    ld   A, $8f                                        ;; 01:4015 $3e $8f
    ldh  [C], A                                        ;; 01:4017 $e2
    ld   HL, data_01_48a0                              ;; 01:4018 $21 $a0 $48
    call call_01_470b                                  ;; 01:401b $cd $0b $47
    xor  A, A                                          ;; 01:401e $af
    ld   [wD2BD], A                                    ;; 01:401f $ea $bd $d2
    ld   [wD2BF], A                                    ;; 01:4022 $ea $bf $d2
    ld   [wD2B8], A                                    ;; 01:4025 $ea $b8 $d2
    ld   A, $80                                        ;; 01:4028 $3e $80
    ld   [wD2B9], A                                    ;; 01:402a $ea $b9 $d2
    ld   A, $01                                        ;; 01:402d $3e $01
    ld   [wD2BC], A                                    ;; 01:402f $ea $bc $d2
    ld   [wD1EB], A                                    ;; 01:4032 $ea $eb $d1
    ld   A, $04                                        ;; 01:4035 $3e $04
    ld   [wD2BB], A                                    ;; 01:4037 $ea $bb $d2
    ret                                                ;; 01:403a $c9

call_01_403b:
    ld   A, $01                                        ;; 01:403b $3e $01
    ld   [wD1EB], A                                    ;; 01:403d $ea $eb $d1
    ld   HL, wD1EC                                     ;; 01:4040 $21 $ec $d1
    ld   DE, wD2B8                                     ;; 01:4043 $11 $b8 $d2
    ld   A, [wD1E8]                                    ;; 01:4046 $fa $e8 $d1
    ld   [wD2B4], A                                    ;; 01:4049 $ea $b4 $d2
    bit  7, A                                          ;; 01:404c $cb $7f
    jr   Z, .jr_01_405b                                ;; 01:404e $28 $0b
    xor  A, A                                          ;; 01:4050 $af
    ld   [wD2BD], A                                    ;; 01:4051 $ea $bd $d2
    inc  DE                                            ;; 01:4054 $13
    ld   HL, wD24C                                     ;; 01:4055 $21 $4c $d2
    ld   A, [wD2B4]                                    ;; 01:4058 $fa $b4 $d2
.jr_01_405b:
    ld   [DE], A                                       ;; 01:405b $12
    and  A, $7f                                        ;; 01:405c $e6 $7f
    jr   NZ, .jr_01_4064                               ;; 01:405e $20 $04
    call call_01_412a                                  ;; 01:4060 $cd $2a $41
    ret                                                ;; 01:4063 $c9
.jr_01_4064:
    push HL                                            ;; 01:4064 $e5
    ld   HL, data_01_7235                              ;; 01:4065 $21 $35 $72
    ld   A, [wD2B4]                                    ;; 01:4068 $fa $b4 $d2
    and  A, $80                                        ;; 01:406b $e6 $80
    jr   Z, .jr_01_4072                                ;; 01:406d $28 $03
    ld   HL, data_01_727f                              ;; 01:406f $21 $7f $72
.jr_01_4072:
    ld   A, [wD2B4]                                    ;; 01:4072 $fa $b4 $d2
    and  A, $7f                                        ;; 01:4075 $e6 $7f
    dec  A                                             ;; 01:4077 $3d
    add  A, A                                          ;; 01:4078 $87
    ld   E, A                                          ;; 01:4079 $5f
    ld   D, $00                                        ;; 01:407a $16 $00
    add  HL, DE                                        ;; 01:407c $19
    ld   A, [HL+]                                      ;; 01:407d $2a
    ld   E, A                                          ;; 01:407e $5f
    ld   D, [HL]                                       ;; 01:407f $56
    ld   HL, wD2AC                                     ;; 01:4080 $21 $ac $d2
    ld   A, [wD2B4]                                    ;; 01:4083 $fa $b4 $d2
    and  A, $80                                        ;; 01:4086 $e6 $80
    jr   Z, .jr_01_408d                                ;; 01:4088 $28 $03
    ld   HL, wD2B0                                     ;; 01:408a $21 $b0 $d2
.jr_01_408d:
    ld   A, $c0                                        ;; 01:408d $3e $c0
    ld   [HL+], A                                      ;; 01:408f $22
    ld   A, [data_01_48e1]                             ;; 01:4090 $fa $e1 $48
    ld   [HL+], A                                      ;; 01:4093 $22
    ld   A, [data_01_48e2]                             ;; 01:4094 $fa $e2 $48
    ld   [HL+], A                                      ;; 01:4097 $22
    ld   A, [data_01_48e3]                             ;; 01:4098 $fa $e3 $48
    ld   [HL], A                                       ;; 01:409b $77
    pop  HL                                            ;; 01:409c $e1
    push HL                                            ;; 01:409d $e5
    ld   B, $60                                        ;; 01:409e $06 $60
    call memzeroSmall                                  ;; 01:40a0 $cd $8b $05
    pop  HL                                            ;; 01:40a3 $e1
    push HL                                            ;; 01:40a4 $e5
    call call_00_11f2                                  ;; 01:40a5 $cd $f2 $11
    ld   A, [wD2B4]                                    ;; 01:40a8 $fa $b4 $d2
    and  A, $80                                        ;; 01:40ab $e6 $80
    jr   Z, .jr_01_40b3                                ;; 01:40ad $28 $04
    ld   A, $04                                        ;; 01:40af $3e $04
    jr   .jr_01_40b5                                   ;; 01:40b1 $18 $02
.jr_01_40b3:
    ld   A, $08                                        ;; 01:40b3 $3e $08
.jr_01_40b5:
    ld   [wD2BA], A                                    ;; 01:40b5 $ea $ba $d2
    pop  HL                                            ;; 01:40b8 $e1
.jr_01_40b9:
    push HL                                            ;; 01:40b9 $e5
    ld   A, [HL]                                       ;; 01:40ba $7e
    and  A, A                                          ;; 01:40bb $a7
    jr   Z, .jr_01_40ef                                ;; 01:40bc $28 $31
    ld   D, H                                          ;; 01:40be $54
    ld   E, L                                          ;; 01:40bf $5d
    inc  DE                                            ;; 01:40c0 $13
    call call_00_11c9                                  ;; 01:40c1 $cd $c9 $11
    ld   [DE], A                                       ;; 01:40c4 $12
    inc  DE                                            ;; 01:40c5 $13
    call call_00_11c9                                  ;; 01:40c6 $cd $c9 $11
    ld   [DE], A                                       ;; 01:40c9 $12
    inc  DE                                            ;; 01:40ca $13
    call call_00_11c9                                  ;; 01:40cb $cd $c9 $11
    ld   [DE], A                                       ;; 01:40ce $12
    push AF                                            ;; 01:40cf $f5
    inc  DE                                            ;; 01:40d0 $13
    call call_00_11c9                                  ;; 01:40d1 $cd $c9 $11
    ld   H, D                                          ;; 01:40d4 $62
    ld   L, E                                          ;; 01:40d5 $6b
    inc  HL                                            ;; 01:40d6 $23
    ld   [HL+], A                                      ;; 01:40d7 $22
    ld   A, [HL+]                                      ;; 01:40d8 $2a
    inc  HL                                            ;; 01:40d9 $23
    ld   [HL-], A                                      ;; 01:40da $32
    ld   A, [HL+]                                      ;; 01:40db $2a
    inc  HL                                            ;; 01:40dc $23
    ld   [HL+], A                                      ;; 01:40dd $22
    ld   DE, $05                                       ;; 01:40de $11 $05 $00
    add  HL, DE                                        ;; 01:40e1 $19
    pop  AF                                            ;; 01:40e2 $f1
    ld   [HL], A                                       ;; 01:40e3 $77
    pop  HL                                            ;; 01:40e4 $e1
    push HL                                            ;; 01:40e5 $e5
    ld   A, [wD2BA]                                    ;; 01:40e6 $fa $ba $d2
    dec  A                                             ;; 01:40e9 $3d
    and  A, $03                                        ;; 01:40ea $e6 $03
    call Z, call_01_459f                               ;; 01:40ec $cc $9f $45
.jr_01_40ef:
    pop  HL                                            ;; 01:40ef $e1
    ld   DE, $18                                       ;; 01:40f0 $11 $18 $00
    add  HL, DE                                        ;; 01:40f3 $19
    ld   A, [wD2BA]                                    ;; 01:40f4 $fa $ba $d2
    dec  A                                             ;; 01:40f7 $3d
    ld   [wD2BA], A                                    ;; 01:40f8 $ea $ba $d2
    and  A, $03                                        ;; 01:40fb $e6 $03
    jr   NZ, .jr_01_40b9                               ;; 01:40fd $20 $ba
    ld   A, $06                                        ;; 01:40ff $3e $06
    ld   [wD2BE], A                                    ;; 01:4101 $ea $be $d2
    xor  A, A                                          ;; 01:4104 $af
    ld   [wD1EB], A                                    ;; 01:4105 $ea $eb $d1
    ret                                                ;; 01:4108 $c9

call_01_4109:
    push HL                                            ;; 01:4109 $e5
    ld   A, $01                                        ;; 01:410a $3e $01
    ld   [wD1EB], A                                    ;; 01:410c $ea $eb $d1
    ld   BC, $c0                                       ;; 01:410f $01 $c0 $00
    ld   HL, wD1EC                                     ;; 01:4112 $21 $ec $d1
    call memzero                                       ;; 01:4115 $cd $46 $04
    xor  A, A                                          ;; 01:4118 $af
    ld   [wD2B8], A                                    ;; 01:4119 $ea $b8 $d2
    ld   [wD2B9], A                                    ;; 01:411c $ea $b9 $d2
    ld   [wD1EB], A                                    ;; 01:411f $ea $eb $d1
    ldh  [rNR52], A                                    ;; 01:4122 $e0 $26
    ld   A, $80                                        ;; 01:4124 $3e $80
    ldh  [rNR52], A                                    ;; 01:4126 $e0 $26
    pop  HL                                            ;; 01:4128 $e1
    ret                                                ;; 01:4129 $c9

call_01_412a:
    push HL                                            ;; 01:412a $e5
    ld   A, [wD2B4]                                    ;; 01:412b $fa $b4 $d2
    and  A, $80                                        ;; 01:412e $e6 $80
    jr   NZ, .jr_01_4154                               ;; 01:4130 $20 $22
    ld   A, [wD2B9]                                    ;; 01:4132 $fa $b9 $d2
    and  A, A                                          ;; 01:4135 $a7
    jr   Z, .jr_01_4154                                ;; 01:4136 $28 $1c
    ld   A, $c0                                        ;; 01:4138 $3e $c0
    ld   [wD2B0], A                                    ;; 01:413a $ea $b0 $d2
    ld   B, $04                                        ;; 01:413d $06 $04
.jr_01_413f:
    ld   A, [HL]                                       ;; 01:413f $7e
    or   A, A                                          ;; 01:4140 $b7
    jr   Z, .jr_01_414d                                ;; 01:4141 $28 $0a
    push HL                                            ;; 01:4143 $e5
    ld   DE, $60                                       ;; 01:4144 $11 $60 $00
    add  HL, DE                                        ;; 01:4147 $19
    ld   A, [HL]                                       ;; 01:4148 $7e
    or   A, $80                                        ;; 01:4149 $f6 $80
    ld   [HL], A                                       ;; 01:414b $77
    pop  HL                                            ;; 01:414c $e1
.jr_01_414d:
    ld   DE, $18                                       ;; 01:414d $11 $18 $00
    add  HL, DE                                        ;; 01:4150 $19
    dec  B                                             ;; 01:4151 $05
    jr   NZ, .jr_01_413f                               ;; 01:4152 $20 $eb
.jr_01_4154:
    pop  HL                                            ;; 01:4154 $e1
    ld   B, $04                                        ;; 01:4155 $06 $04
    ld   DE, $18                                       ;; 01:4157 $11 $18 $00
    xor  A, A                                          ;; 01:415a $af
.jr_01_415b:
    ld   [HL], A                                       ;; 01:415b $77
    add  HL, DE                                        ;; 01:415c $19
    dec  B                                             ;; 01:415d $05
    jr   NZ, .jr_01_415b                               ;; 01:415e $20 $fb
    ld   DE, wD2AC                                     ;; 01:4160 $11 $ac $d2
    ld   HL, wD2B8                                     ;; 01:4163 $21 $b8 $d2
    ld   A, [wD2B4]                                    ;; 01:4166 $fa $b4 $d2
    and  A, $80                                        ;; 01:4169 $e6 $80
    jr   Z, .jr_01_4171                                ;; 01:416b $28 $04
    inc  HL                                            ;; 01:416d $23
    ld   DE, wD2B0                                     ;; 01:416e $11 $b0 $d2
.jr_01_4171:
    xor  A, A                                          ;; 01:4171 $af
    ld   [DE], A                                       ;; 01:4172 $12
    ld   [HL], A                                       ;; 01:4173 $77
    ret                                                ;; 01:4174 $c9

call_01_4175:
    ld   A, $08                                        ;; 01:4175 $3e $08
    ld   HL, wD1EC                                     ;; 01:4177 $21 $ec $d1

jr_01_417a:
    ld   [wD2BA], A                                    ;; 01:417a $ea $ba $d2
    ld   A, [HL]                                       ;; 01:417d $7e
    and  A, $a0                                        ;; 01:417e $e6 $a0
    jr   Z, jp_01_41e0                                 ;; 01:4180 $28 $5e
    ld   D, H                                          ;; 01:4182 $54
    ld   E, L                                          ;; 01:4183 $5d
    ld   BC, $16                                       ;; 01:4184 $01 $16 $00
    add  HL, BC                                        ;; 01:4187 $09
    ld   A, [HL]                                       ;; 01:4188 $7e
    ld   B, H                                          ;; 01:4189 $44
    ld   C, L                                          ;; 01:418a $4d
    ld   H, D                                          ;; 01:418b $62
    ld   L, E                                          ;; 01:418c $6b
    dec  A                                             ;; 01:418d $3d
    jp   NZ, .jp_01_41a1                               ;; 01:418e $c2 $a1 $41
    ld   A, [wD2BA]                                    ;; 01:4191 $fa $ba $d2
    cp   A, $01                                        ;; 01:4194 $fe $01
    jp   Z, jp_01_4555                                 ;; 01:4196 $ca $55 $45
    cp   A, $05                                        ;; 01:4199 $fe $05
    jp   Z, jp_01_4555                                 ;; 01:419b $ca $55 $45
    jp   jp_01_41ed                                    ;; 01:419e $c3 $ed $41
.jp_01_41a1:
    ld   [BC], A                                       ;; 01:41a1 $02
    inc  BC                                            ;; 01:41a2 $03
    ld   A, [BC]                                       ;; 01:41a3 $0a
    and  A, A                                          ;; 01:41a4 $a7
    jr   Z, jp_01_41e0                                 ;; 01:41a5 $28 $39
    dec  A                                             ;; 01:41a7 $3d
    ld   [BC], A                                       ;; 01:41a8 $02
    jr   Z, .jr_01_41be                                ;; 01:41a9 $28 $13
    ld   A, [wD2BA]                                    ;; 01:41ab $fa $ba $d2
    cp   A, $02                                        ;; 01:41ae $fe $02
    jr   Z, .jr_01_41b9                                ;; 01:41b0 $28 $07
    cp   A, $06                                        ;; 01:41b2 $fe $06
    jr   Z, .jr_01_41b9                                ;; 01:41b4 $28 $03
    call call_01_4719                                  ;; 01:41b6 $cd $19 $47
.jr_01_41b9:
    call call_01_479c                                  ;; 01:41b9 $cd $9c $47
    jr   jp_01_41e0                                    ;; 01:41bc $18 $22
.jr_01_41be:
    ld   A, [wD2BA]                                    ;; 01:41be $fa $ba $d2
    sub  A, $01                                        ;; 01:41c1 $d6 $01
    jr   Z, .jr_01_41d6                                ;; 01:41c3 $28 $11
    sub  A, $04                                        ;; 01:41c5 $d6 $04
    jr   Z, .jr_01_41d6                                ;; 01:41c7 $28 $0d
    ld   A, [wD2BA]                                    ;; 01:41c9 $fa $ba $d2
    sub  A, $02                                        ;; 01:41cc $d6 $02
    jr   Z, .jr_01_41d6                                ;; 01:41ce $28 $06
    sub  A, $04                                        ;; 01:41d0 $d6 $04
    jr   Z, .jr_01_41d6                                ;; 01:41d2 $28 $02
    ld   A, $18                                        ;; 01:41d4 $3e $18
.jr_01_41d6:
    ld   B, H                                          ;; 01:41d6 $44
    ld   C, L                                          ;; 01:41d7 $4d
    inc  BC                                            ;; 01:41d8 $03
    inc  BC                                            ;; 01:41d9 $03
    inc  BC                                            ;; 01:41da $03
    ld   [BC], A                                       ;; 01:41db $02
    ld   A, [HL]                                       ;; 01:41dc $7e
    or   A, $e0                                        ;; 01:41dd $f6 $e0
    ld   [HL], A                                       ;; 01:41df $77

jp_01_41e0:
    ld   DE, $18                                       ;; 01:41e0 $11 $18 $00
    add  HL, DE                                        ;; 01:41e3 $19
    ld   A, [wD2BA]                                    ;; 01:41e4 $fa $ba $d2
    dec  A                                             ;; 01:41e7 $3d
    jr   NZ, jr_01_417a                                ;; 01:41e8 $20 $90
    jp   jp_01_45e9                                    ;; 01:41ea $c3 $e9 $45

jp_01_41ed:
    call call_00_11c9                                  ;; 01:41ed $cd $c9 $11
    cp   A, $ff                                        ;; 01:41f0 $fe $ff
    jp   Z, jp_01_4270                                 ;; 01:41f2 $ca $70 $42
    cp   A, $f0                                        ;; 01:41f5 $fe $f0
    jr   Z, jr_01_4246                                 ;; 01:41f7 $28 $4d
    cp   A, $50                                        ;; 01:41f9 $fe $50
    jp   C, jp_01_428d                                 ;; 01:41fb $da $8d $42
    cp   A, $60                                        ;; 01:41fe $fe $60
    jp   C, jp_01_433f                                 ;; 01:4200 $da $3f $43
    cp   A, $70                                        ;; 01:4203 $fe $70
    jp   C, jp_01_4357                                 ;; 01:4205 $da $57 $43
    cp   A, $80                                        ;; 01:4208 $fe $80
    jp   C, jp_01_439a                                 ;; 01:420a $da $9a $43
    cp   A, $a0                                        ;; 01:420d $fe $a0
    jp   C, jp_01_43dc                                 ;; 01:420f $da $dc $43
    cp   A, $b0                                        ;; 01:4212 $fe $b0
    jp   C, jp_01_43e8                                 ;; 01:4214 $da $e8 $43
    jp   Z, jp_01_43fe                                 ;; 01:4217 $ca $fe $43
    cp   A, $b1                                        ;; 01:421a $fe $b1
    jp   Z, jp_01_441d                                 ;; 01:421c $ca $1d $44
    cp   A, $b2                                        ;; 01:421f $fe $b2
    jp   Z, jp_01_4443                                 ;; 01:4221 $ca $43 $44
    cp   A, $b3                                        ;; 01:4224 $fe $b3
    jp   Z, jp_01_4468                                 ;; 01:4226 $ca $68 $44
    cp   A, $b4                                        ;; 01:4229 $fe $b4
    jp   Z, jp_01_4496                                 ;; 01:422b $ca $96 $44
    cp   A, $b5                                        ;; 01:422e $fe $b5
    jp   Z, jp_01_44a9                                 ;; 01:4230 $ca $a9 $44
    cp   A, $b6                                        ;; 01:4233 $fe $b6
    jp   Z, jp_01_42fd                                 ;; 01:4235 $ca $fd $42
    cp   A, $b7                                        ;; 01:4238 $fe $b7
    jp   Z, jp_01_44b8                                 ;; 01:423a $ca $b8 $44
    cp   A, $b8                                        ;; 01:423d $fe $b8
    jp   Z, jp_01_44d7                                 ;; 01:423f $ca $d7 $44
    jp   jp_01_41ed                                    ;; 01:4242 $c3 $ed $41

jp_01_4245:
    pop  BC                                            ;; 01:4245 $c1

jr_01_4246:
    xor  A, A                                          ;; 01:4246 $af
    ld   [wD2B8], A                                    ;; 01:4247 $ea $b8 $d2
    ld   [wD2AC], A                                    ;; 01:424a $ea $ac $d2
    ld   A, [wD2B9]                                    ;; 01:424d $fa $b9 $d2
    and  A, A                                          ;; 01:4250 $a7
    jr   Z, .jr_01_4264                                ;; 01:4251 $28 $11
    ld   D, H                                          ;; 01:4253 $54
    ld   E, L                                          ;; 01:4254 $5d
    ld   BC, $60                                       ;; 01:4255 $01 $60 $00
    add  HL, BC                                        ;; 01:4258 $09
    ld   A, [HL]                                       ;; 01:4259 $7e
    or   A, $c0                                        ;; 01:425a $f6 $c0
    ld   [HL], A                                       ;; 01:425c $77
    ld   A, $c0                                        ;; 01:425d $3e $c0
    ld   [wD2B0], A                                    ;; 01:425f $ea $b0 $d2
    ld   H, D                                          ;; 01:4262 $62
    ld   L, E                                          ;; 01:4263 $6b
.jr_01_4264:
    ld   D, H                                          ;; 01:4264 $54
    ld   E, L                                          ;; 01:4265 $5d
    ld   B, $18                                        ;; 01:4266 $06 $18
    call memzeroSmall                                  ;; 01:4268 $cd $8b $05
    ld   H, D                                          ;; 01:426b $62
    ld   L, E                                          ;; 01:426c $6b
    jp   jp_01_41e0                                    ;; 01:426d $c3 $e0 $41

jp_01_4270:
    ld   B, H                                          ;; 01:4270 $44
    ld   C, L                                          ;; 01:4271 $4d
    ld   DE, $09                                       ;; 01:4272 $11 $09 $00
    add  HL, DE                                        ;; 01:4275 $19
    ld   A, [HL-]                                      ;; 01:4276 $3a
    ld   D, [HL]                                       ;; 01:4277 $56
    dec  HL                                            ;; 01:4278 $2b
    ld   [HL-], A                                      ;; 01:4279 $32
    ld   [HL], D                                       ;; 01:427a $72
    ld   H, B                                          ;; 01:427b $60
    ld   L, C                                          ;; 01:427c $69
    ld   A, [wD2BA]                                    ;; 01:427d $fa $ba $d2
    cp   A, $01                                        ;; 01:4280 $fe $01
    jp   Z, call_01_459f                               ;; 01:4282 $ca $9f $45
    cp   A, $05                                        ;; 01:4285 $fe $05
    jp   Z, call_01_459f                               ;; 01:4287 $ca $9f $45
    jp   jp_01_41ed                                    ;; 01:428a $c3 $ed $41

jp_01_428d:
    cp   A, $01                                        ;; 01:428d $fe $01
    jp   C, jp_01_44df                                 ;; 01:428f $da $df $44
    jp   Z, jp_01_44f7                                 ;; 01:4292 $ca $f7 $44
    push HL                                            ;; 01:4295 $e5
    sub  A, $02                                        ;; 01:4296 $d6 $02
    add  A, A                                          ;; 01:4298 $87
    ld   C, A                                          ;; 01:4299 $4f
    ld   B, $00                                        ;; 01:429a $06 $00
    ld   HL, data_01_47f4                              ;; 01:429c $21 $f4 $47
    add  HL, BC                                        ;; 01:429f $09
    ld   A, [HL+]                                      ;; 01:42a0 $2a
    ld   C, A                                          ;; 01:42a1 $4f
    ld   A, [HL]                                       ;; 01:42a2 $7e
    pop  HL                                            ;; 01:42a3 $e1
    push HL                                            ;; 01:42a4 $e5
    ld   DE, $04                                       ;; 01:42a5 $11 $04 $00
    add  HL, DE                                        ;; 01:42a8 $19
    ld   [HL+], A                                      ;; 01:42a9 $22
    ld   A, [HL]                                       ;; 01:42aa $7e
    and  A, $f8                                        ;; 01:42ab $e6 $f8
    or   A, C                                          ;; 01:42ad $b1
    ld   [HL], A                                       ;; 01:42ae $77
    pop  HL                                            ;; 01:42af $e1
    push HL                                            ;; 01:42b0 $e5
    ld   DE, $0f                                       ;; 01:42b1 $11 $0f $00
    add  HL, DE                                        ;; 01:42b4 $19
    ld   A, [HL]                                       ;; 01:42b5 $7e
    ld   DE, hFFF4                                     ;; 01:42b6 $11 $f4 $ff
    add  HL, DE                                        ;; 01:42b9 $19
    ld   [HL], A                                       ;; 01:42ba $77
    ld   DE, $0d                                       ;; 01:42bb $11 $0d $00
    add  HL, DE                                        ;; 01:42be $19
    ld   A, [HL]                                       ;; 01:42bf $7e
    ld   [wD2B4], A                                    ;; 01:42c0 $ea $b4 $d2
    pop  HL                                            ;; 01:42c3 $e1
    and  A, $80                                        ;; 01:42c4 $e6 $80
    jr   Z, .jr_01_42e5                                ;; 01:42c6 $28 $1d
    push HL                                            ;; 01:42c8 $e5
    ld   A, [wD2B4]                                    ;; 01:42c9 $fa $b4 $d2
    and  A, $7f                                        ;; 01:42cc $e6 $7f
    add  A, A                                          ;; 01:42ce $87
    ld   C, A                                          ;; 01:42cf $4f
    ld   B, $00                                        ;; 01:42d0 $06 $00
    ld   HL, data_01_72ad                              ;; 01:42d2 $21 $ad $72
    add  HL, BC                                        ;; 01:42d5 $09
    ld   A, [HL+]                                      ;; 01:42d6 $2a
    ld   C, A                                          ;; 01:42d7 $4f
    ld   A, [HL]                                       ;; 01:42d8 $7e
    pop  HL                                            ;; 01:42d9 $e1
    push HL                                            ;; 01:42da $e5
    ld   DE, $13                                       ;; 01:42db $11 $13 $00
    add  HL, DE                                        ;; 01:42de $19
    ld   [HL-], A                                      ;; 01:42df $32
    ld   [HL], C                                       ;; 01:42e0 $71
    pop  HL                                            ;; 01:42e1 $e1
    call call_01_472b                                  ;; 01:42e2 $cd $2b $47
.jr_01_42e5:
    push HL                                            ;; 01:42e5 $e5
    ld   DE, $0e                                       ;; 01:42e6 $11 $0e $00
    add  HL, DE                                        ;; 01:42e9 $19
    ld   A, [HL]                                       ;; 01:42ea $7e
    ld   [wD2B4], A                                    ;; 01:42eb $ea $b4 $d2
    and  A, $40                                        ;; 01:42ee $e6 $40
    jr   Z, jp_01_42fd                                 ;; 01:42f0 $28 $0b
    ld   A, [wD2B4]                                    ;; 01:42f2 $fa $b4 $d2
    and  A, $c0                                        ;; 01:42f5 $e6 $c0
    ld   B, A                                          ;; 01:42f7 $47
    ld   A, [wD2BB]                                    ;; 01:42f8 $fa $bb $d2
    or   A, B                                          ;; 01:42fb $b0
    ld   [HL], A                                       ;; 01:42fc $77

jp_01_42fd:
    pop  HL                                            ;; 01:42fd $e1
    call call_00_11c9                                  ;; 01:42fe $cd $c9 $11
    ld   B, H                                          ;; 01:4301 $44
    ld   C, L                                          ;; 01:4302 $4d
    ld   DE, $16                                       ;; 01:4303 $11 $16 $00
    add  HL, DE                                        ;; 01:4306 $19
    ld   [HL], A                                       ;; 01:4307 $77
    ld   H, B                                          ;; 01:4308 $60
    ld   L, C                                          ;; 01:4309 $69

jp_01_430a:
    ld   C, A                                          ;; 01:430a $4f
    ld   A, [HL]                                       ;; 01:430b $7e
    and  A, $07                                        ;; 01:430c $e6 $07
    jr   Z, .jr_01_432e                                ;; 01:430e $28 $1e
    cp   A, $01                                        ;; 01:4310 $fe $01
    jr   Z, .jr_01_432a                                ;; 01:4312 $28 $16
    cp   A, $02                                        ;; 01:4314 $fe $02
    jr   Z, .jr_01_4325                                ;; 01:4316 $28 $0d
    cp   A, $04                                        ;; 01:4318 $fe $04
    jr   Z, .jr_01_4320                                ;; 01:431a $28 $04
    ld   A, $01                                        ;; 01:431c $3e $01
    jr   jp_01_432f                                    ;; 01:431e $18 $0f
.jr_01_4320:
    ld   A, C                                          ;; 01:4320 $79
    sub  A, $02                                        ;; 01:4321 $d6 $02
    jr   jp_01_432f                                    ;; 01:4323 $18 $0a
.jr_01_4325:
    ld   A, C                                          ;; 01:4325 $79
    srl  A                                             ;; 01:4326 $cb $3f
    jr   jp_01_432f                                    ;; 01:4328 $18 $05
.jr_01_432a:
    ld   A, C                                          ;; 01:432a $79
    dec  A                                             ;; 01:432b $3d
    jr   jp_01_432f                                    ;; 01:432c $18 $01
.jr_01_432e:
    ld   A, C                                          ;; 01:432e $79

jp_01_432f:
    ld   B, H                                          ;; 01:432f $44
    ld   C, L                                          ;; 01:4330 $4d
    ld   DE, $17                                       ;; 01:4331 $11 $17 $00
    add  HL, DE                                        ;; 01:4334 $19
    ld   [HL], A                                       ;; 01:4335 $77
    ld   H, B                                          ;; 01:4336 $60
    ld   L, C                                          ;; 01:4337 $69
    ld   A, [HL]                                       ;; 01:4338 $7e
    or   A, $e0                                        ;; 01:4339 $f6 $e0
    ld   [HL], A                                       ;; 01:433b $77
    jp   jp_01_41e0                                    ;; 01:433c $c3 $e0 $41

jp_01_433f:
    and  A, $07                                        ;; 01:433f $e6 $07
    ld   B, A                                          ;; 01:4341 $47
    ld   A, [HL]                                       ;; 01:4342 $7e
    and  A, $f8                                        ;; 01:4343 $e6 $f8
    or   A, B                                          ;; 01:4345 $b0
    ld   [HL], A                                       ;; 01:4346 $77
    ld   A, [wD2BA]                                    ;; 01:4347 $fa $ba $d2
    cp   A, $01                                        ;; 01:434a $fe $01
    jp   Z, jp_01_4555                                 ;; 01:434c $ca $55 $45
    cp   A, $05                                        ;; 01:434f $fe $05
    jp   Z, jp_01_4555                                 ;; 01:4351 $ca $55 $45
    jp   jp_01_41ed                                    ;; 01:4354 $c3 $ed $41

jp_01_4357:
    and  A, $07                                        ;; 01:4357 $e6 $07
    inc  A                                             ;; 01:4359 $3c
    ld   E, A                                          ;; 01:435a $5f
    ld   A, [wD2BA]                                    ;; 01:435b $fa $ba $d2
    cp   A, $01                                        ;; 01:435e $fe $01
    jr   Z, .jr_01_436b                                ;; 01:4360 $28 $09
    cp   A, $05                                        ;; 01:4362 $fe $05
    jr   Z, .jr_01_436b                                ;; 01:4364 $28 $05
    call call_00_11c9                                  ;; 01:4366 $cd $c9 $11
    jr   .jr_01_436e                                   ;; 01:4369 $18 $03
.jr_01_436b:
    call call_01_45da                                  ;; 01:436b $cd $da $45
.jr_01_436e:
    ld   B, A                                          ;; 01:436e $47
    push HL                                            ;; 01:436f $e5
    ld   D, $00                                        ;; 01:4370 $16 $00
    add  HL, DE                                        ;; 01:4372 $19
    ld   [HL], A                                       ;; 01:4373 $77
    pop  HL                                            ;; 01:4374 $e1
    ld   A, [HL]                                       ;; 01:4375 $7e
    or   A, $80                                        ;; 01:4376 $f6 $80
    ld   [HL], A                                       ;; 01:4378 $77
    ld   A, E                                          ;; 01:4379 $7b
    cp   A, $03                                        ;; 01:437a $fe $03
    jp   NZ, .jp_01_438a                               ;; 01:437c $c2 $8a $43
    push HL                                            ;; 01:437f $e5
    ld   DE, $0f                                       ;; 01:4380 $11 $0f $00
    add  HL, DE                                        ;; 01:4383 $19
    ld   [HL], B                                       ;; 01:4384 $70
    pop  HL                                            ;; 01:4385 $e1
    ld   A, [HL]                                       ;; 01:4386 $7e
    or   A, $c0                                        ;; 01:4387 $f6 $c0
    ld   [HL], A                                       ;; 01:4389 $77
.jp_01_438a:
    ld   A, [wD2BA]                                    ;; 01:438a $fa $ba $d2
    cp   A, $01                                        ;; 01:438d $fe $01
    jp   Z, jp_01_4555                                 ;; 01:438f $ca $55 $45
    cp   A, $05                                        ;; 01:4392 $fe $05
    jp   Z, jp_01_4555                                 ;; 01:4394 $ca $55 $45
    jp   jp_01_41ed                                    ;; 01:4397 $c3 $ed $41

jp_01_439a:
    push HL                                            ;; 01:439a $e5
    and  A, $03                                        ;; 01:439b $e6 $03
    inc  A                                             ;; 01:439d $3c
    ld   E, A                                          ;; 01:439e $5f
    ld   A, [wD2BA]                                    ;; 01:439f $fa $ba $d2
    cp   A, $01                                        ;; 01:43a2 $fe $01
    jr   Z, .jr_01_43af                                ;; 01:43a4 $28 $09
    cp   A, $05                                        ;; 01:43a6 $fe $05
    jr   Z, .jr_01_43af                                ;; 01:43a8 $28 $05
    call call_00_11c9                                  ;; 01:43aa $cd $c9 $11
    jr   .jr_01_43b2                                   ;; 01:43ad $18 $03
.jr_01_43af:
    call call_01_45da                                  ;; 01:43af $cd $da $45
.jr_01_43b2:
    ld   D, A                                          ;; 01:43b2 $57
    ld   HL, wD2AC                                     ;; 01:43b3 $21 $ac $d2
    ld   A, [wD2BA]                                    ;; 01:43b6 $fa $ba $d2
    cp   A, $05                                        ;; 01:43b9 $fe $05
    jr   NC, .jr_01_43c0                               ;; 01:43bb $30 $03
    ld   HL, wD2B0                                     ;; 01:43bd $21 $b0 $d2
.jr_01_43c0:
    push HL                                            ;; 01:43c0 $e5
    ld   A, D                                          ;; 01:43c1 $7a
    ld   D, $00                                        ;; 01:43c2 $16 $00
    add  HL, DE                                        ;; 01:43c4 $19
    ld   [HL], A                                       ;; 01:43c5 $77
    pop  HL                                            ;; 01:43c6 $e1
    ld   A, [HL]                                       ;; 01:43c7 $7e
    or   A, $80                                        ;; 01:43c8 $f6 $80
    ld   [HL], A                                       ;; 01:43ca $77
    pop  HL                                            ;; 01:43cb $e1
    ld   A, [wD2BA]                                    ;; 01:43cc $fa $ba $d2
    cp   A, $01                                        ;; 01:43cf $fe $01
    jp   Z, jp_01_4555                                 ;; 01:43d1 $ca $55 $45
    cp   A, $05                                        ;; 01:43d4 $fe $05
    jp   Z, jp_01_4555                                 ;; 01:43d6 $ca $55 $45
    jp   jp_01_41ed                                    ;; 01:43d9 $c3 $ed $41

jp_01_43dc:
    ld   B, H                                          ;; 01:43dc $44
    ld   C, L                                          ;; 01:43dd $4d
    ld   DE, $10                                       ;; 01:43de $11 $10 $00
    add  HL, DE                                        ;; 01:43e1 $19
    ld   [HL], A                                       ;; 01:43e2 $77
    ld   H, B                                          ;; 01:43e3 $60
    ld   L, C                                          ;; 01:43e4 $69
    jp   jp_01_41ed                                    ;; 01:43e5 $c3 $ed $41

jp_01_43e8:
    push HL                                            ;; 01:43e8 $e5
    ld   HL, data_01_4886                              ;; 01:43e9 $21 $86 $48
    and  A, $0f                                        ;; 01:43ec $e6 $0f
    sla  A                                             ;; 01:43ee $cb $27
    ld   C, A                                          ;; 01:43f0 $4f
    ld   B, $00                                        ;; 01:43f1 $06 $00
    add  HL, BC                                        ;; 01:43f3 $09
    ld   A, [HL+]                                      ;; 01:43f4 $2a
    ld   H, [HL]                                       ;; 01:43f5 $66
    ld   L, A                                          ;; 01:43f6 $6f
    call call_01_470b                                  ;; 01:43f7 $cd $0b $47
    pop  HL                                            ;; 01:43fa $e1
    jp   jp_01_41ed                                    ;; 01:43fb $c3 $ed $41

jp_01_43fe:
    ld   B, H                                          ;; 01:43fe $44
    ld   C, L                                          ;; 01:43ff $4d
    ld   DE, $06                                       ;; 01:4400 $11 $06 $00
    add  HL, DE                                        ;; 01:4403 $19
    ld   A, [HL+]                                      ;; 01:4404 $2a
    ld   D, A                                          ;; 01:4405 $57
    ld   A, [HL+]                                      ;; 01:4406 $2a
    ld   E, A                                          ;; 01:4407 $5f
    ld   A, D                                          ;; 01:4408 $7a
    ld   [HL+], A                                      ;; 01:4409 $22
    ld   [HL], E                                       ;; 01:440a $73
    ld   H, B                                          ;; 01:440b $60
    ld   L, C                                          ;; 01:440c $69
    ld   A, [wD2BA]                                    ;; 01:440d $fa $ba $d2
    cp   A, $01                                        ;; 01:4410 $fe $01
    jp   Z, call_01_459f                               ;; 01:4412 $ca $9f $45
    cp   A, $05                                        ;; 01:4415 $fe $05
    jp   Z, call_01_459f                               ;; 01:4417 $ca $9f $45
    jp   jp_01_41ed                                    ;; 01:441a $c3 $ed $41

jp_01_441d:
    push HL                                            ;; 01:441d $e5
    ld   DE, $06                                       ;; 01:441e $11 $06 $00
    add  HL, DE                                        ;; 01:4421 $19
    ld   A, [HL+]                                      ;; 01:4422 $2a
    ld   B, [HL]                                       ;; 01:4423 $46
    ld   DE, $03                                       ;; 01:4424 $11 $03 $00
    add  HL, DE                                        ;; 01:4427 $19
    ld   [HL+], A                                      ;; 01:4428 $22
    ld   [HL], B                                       ;; 01:4429 $70
    ld   DE, $03                                       ;; 01:442a $11 $03 $00
    add  HL, DE                                        ;; 01:442d $19
    ld   A, [HL]                                       ;; 01:442e $7e
    and  A, $7f                                        ;; 01:442f $e6 $7f
    ld   [HL], A                                       ;; 01:4431 $77
    pop  HL                                            ;; 01:4432 $e1
    ld   A, [wD2BA]                                    ;; 01:4433 $fa $ba $d2
    cp   A, $01                                        ;; 01:4436 $fe $01
    jp   Z, call_01_459f                               ;; 01:4438 $ca $9f $45
    cp   A, $05                                        ;; 01:443b $fe $05
    jp   Z, call_01_459f                               ;; 01:443d $ca $9f $45
    jp   jp_01_41ed                                    ;; 01:4440 $c3 $ed $41

jp_01_4443:
    push HL                                            ;; 01:4443 $e5
    ld   DE, $0e                                       ;; 01:4444 $11 $0e $00
    add  HL, DE                                        ;; 01:4447 $19
    ld   A, [HL]                                       ;; 01:4448 $7e
    and  A, $80                                        ;; 01:4449 $e6 $80
    jr   Z, .jr_01_4457                                ;; 01:444b $28 $0a
    dec  HL                                            ;; 01:444d $2b
    dec  HL                                            ;; 01:444e $2b
    ld   A, [HL+]                                      ;; 01:444f $2a
    ld   B, [HL]                                       ;; 01:4450 $46
    ld   DE, hFFF9                                     ;; 01:4451 $11 $f9 $ff
    add  HL, DE                                        ;; 01:4454 $19
    ld   [HL+], A                                      ;; 01:4455 $22
    ld   [HL], B                                       ;; 01:4456 $70
.jr_01_4457:
    pop  HL                                            ;; 01:4457 $e1
    ld   A, [wD2BA]                                    ;; 01:4458 $fa $ba $d2
    cp   A, $01                                        ;; 01:445b $fe $01
    jp   Z, call_01_459f                               ;; 01:445d $ca $9f $45
    cp   A, $05                                        ;; 01:4460 $fe $05
    jp   Z, call_01_459f                               ;; 01:4462 $ca $9f $45
    jp   jp_01_41ed                                    ;; 01:4465 $c3 $ed $41

jp_01_4468:
    push HL                                            ;; 01:4468 $e5
    ld   DE, $06                                       ;; 01:4469 $11 $06 $00
    add  HL, DE                                        ;; 01:446c $19
    ld   A, [HL+]                                      ;; 01:446d $2a
    ld   B, [HL]                                       ;; 01:446e $46
    push HL                                            ;; 01:446f $e5
    ld   DE, $05                                       ;; 01:4470 $11 $05 $00
    add  HL, DE                                        ;; 01:4473 $19
    ld   [HL+], A                                      ;; 01:4474 $22
    ld   [HL], B                                       ;; 01:4475 $70
    dec  HL                                            ;; 01:4476 $2b
    dec  HL                                            ;; 01:4477 $2b
    ld   A, [HL-]                                      ;; 01:4478 $3a
    ld   B, [HL]                                       ;; 01:4479 $46
    pop  HL                                            ;; 01:447a $e1
    ld   [HL-], A                                      ;; 01:447b $32
    ld   [HL], B                                       ;; 01:447c $70
    ld   DE, $08                                       ;; 01:447d $11 $08 $00
    add  HL, DE                                        ;; 01:4480 $19
    ld   A, [HL]                                       ;; 01:4481 $7e
    xor  A, $80                                        ;; 01:4482 $ee $80
    ld   [HL], A                                       ;; 01:4484 $77
    pop  HL                                            ;; 01:4485 $e1
    ld   A, [wD2BA]                                    ;; 01:4486 $fa $ba $d2
    cp   A, $01                                        ;; 01:4489 $fe $01
    jp   Z, call_01_459f                               ;; 01:448b $ca $9f $45
    cp   A, $05                                        ;; 01:448e $fe $05
    jp   Z, call_01_459f                               ;; 01:4490 $ca $9f $45
    jp   jp_01_41ed                                    ;; 01:4493 $c3 $ed $41

jp_01_4496:
    ld   B, H                                          ;; 01:4496 $44
    ld   C, L                                          ;; 01:4497 $4d
    ld   DE, $0e                                       ;; 01:4498 $11 $0e $00
    add  HL, DE                                        ;; 01:449b $19
    ld   D, [HL]                                       ;; 01:449c $56
    ld   A, [wD2BB]                                    ;; 01:449d $fa $bb $d2
    or   A, D                                          ;; 01:44a0 $b2
    or   A, $40                                        ;; 01:44a1 $f6 $40
    ld   [HL], A                                       ;; 01:44a3 $77
    ld   H, B                                          ;; 01:44a4 $60
    ld   L, C                                          ;; 01:44a5 $69
    jp   jp_01_41ed                                    ;; 01:44a6 $c3 $ed $41

jp_01_44a9:
    ld   B, H                                          ;; 01:44a9 $44
    ld   C, L                                          ;; 01:44aa $4d
    ld   DE, $0e                                       ;; 01:44ab $11 $0e $00
    add  HL, DE                                        ;; 01:44ae $19
    ld   A, [HL]                                       ;; 01:44af $7e
    and  A, $80                                        ;; 01:44b0 $e6 $80
    ld   [HL], A                                       ;; 01:44b2 $77
    ld   H, B                                          ;; 01:44b3 $60
    ld   L, C                                          ;; 01:44b4 $69
    jp   jp_01_41ed                                    ;; 01:44b5 $c3 $ed $41

jp_01_44b8:
    call call_00_11c9                                  ;; 01:44b8 $cd $c9 $11
    ld   E, A                                          ;; 01:44bb $5f
    call call_00_11c9                                  ;; 01:44bc $cd $c9 $11
    push HL                                            ;; 01:44bf $e5
    ld   BC, $07                                       ;; 01:44c0 $01 $07 $00
    add  HL, BC                                        ;; 01:44c3 $09
    ld   [HL-], A                                      ;; 01:44c4 $32
    ld   [HL], E                                       ;; 01:44c5 $73
    pop  HL                                            ;; 01:44c6 $e1
    ld   A, [wD2BA]                                    ;; 01:44c7 $fa $ba $d2
    cp   A, $01                                        ;; 01:44ca $fe $01
    jp   Z, call_01_459f                               ;; 01:44cc $ca $9f $45
    cp   A, $05                                        ;; 01:44cf $fe $05
    jp   Z, call_01_459f                               ;; 01:44d1 $ca $9f $45
    jp   jp_01_41ed                                    ;; 01:44d4 $c3 $ed $41

jp_01_44d7:
    ld   A, $01                                        ;; 01:44d7 $3e $01
    ld   [wD2BD], A                                    ;; 01:44d9 $ea $bd $d2
    jp   jp_01_41ed                                    ;; 01:44dc $c3 $ed $41

jp_01_44df:
    ld   B, H                                          ;; 01:44df $44
    ld   C, L                                          ;; 01:44e0 $4d
    inc  BC                                            ;; 01:44e1 $03
    inc  BC                                            ;; 01:44e2 $03
    inc  BC                                            ;; 01:44e3 $03
    ld   A, $08                                        ;; 01:44e4 $3e $08
    ld   [BC], A                                       ;; 01:44e6 $02

jp_01_44e7:
    call call_00_11c9                                  ;; 01:44e7 $cd $c9 $11
    ld   B, H                                          ;; 01:44ea $44
    ld   C, L                                          ;; 01:44eb $4d
    ld   DE, $16                                       ;; 01:44ec $11 $16 $00
    add  HL, DE                                        ;; 01:44ef $19
    ld   [HL], A                                       ;; 01:44f0 $77
    ld   H, B                                          ;; 01:44f1 $60
    ld   L, C                                          ;; 01:44f2 $69
    xor  A, A                                          ;; 01:44f3 $af
    jp   jp_01_432f                                    ;; 01:44f4 $c3 $2f $43

jp_01_44f7:
    ld   B, H                                          ;; 01:44f7 $44
    ld   C, L                                          ;; 01:44f8 $4d
    inc  BC                                            ;; 01:44f9 $03
    inc  BC                                            ;; 01:44fa $03
    inc  BC                                            ;; 01:44fb $03
    ld   A, $18                                        ;; 01:44fc $3e $18
    ld   [BC], A                                       ;; 01:44fe $02
    jp   jp_01_44e7                                    ;; 01:44ff $c3 $e7 $44
    db   $44, $4d, $11, $04, $00, $19, $35, $60        ;; 01:4502 ????????
    db   $69, $c9, $cd, $c9, $11, $fe, $01, $da        ;; 01:450a ????????
    db   $df, $44, $ca, $f7, $44, $e5, $d6, $02        ;; 01:4512 ????????
    db   $87, $4f, $06, $00, $21, $f4, $47, $09        ;; 01:451a ????????
    db   $2a, $57, $2a, $5f, $d5, $2a, $47, $2a        ;; 01:4522 ????????
    db   $4f, $79, $93, $5f, $78, $9a, $57, $cb        ;; 01:452a ????????
    db   $3a, $cb, $1b, $e1, $19, $54, $5d, $e1        ;; 01:4532 ????????
    db   $e5, $01, $03, $00, $09, $7e, $e6, $f8        ;; 01:453a ????????
    db   $b2, $22, $73, $e1, $cd, $c9, $11, $44        ;; 01:4542 ????????
    db   $4d, $11, $16, $00, $19, $77, $60, $69        ;; 01:454a ????????
    db   $c3, $2f, $43                                 ;; 01:4552 ???

jp_01_4555:
    call call_01_45da                                  ;; 01:4555 $cd $da $45
    cp   A, $ff                                        ;; 01:4558 $fe $ff
    jp   Z, .jp_01_459b                                ;; 01:455a $ca $9b $45
    cp   A, $50                                        ;; 01:455d $fe $50
    jr   C, .jr_01_4578                                ;; 01:455f $38 $17
    cp   A, $60                                        ;; 01:4561 $fe $60
    jp   C, jp_01_433f                                 ;; 01:4563 $da $3f $43
    cp   A, $70                                        ;; 01:4566 $fe $70
    jp   C, jp_01_4357                                 ;; 01:4568 $da $57 $43
    cp   A, $80                                        ;; 01:456b $fe $80
    jp   C, jp_01_439a                                 ;; 01:456d $da $9a $43
    cp   A, $b6                                        ;; 01:4570 $fe $b6
    jp   Z, .jp_01_458c                                ;; 01:4572 $ca $8c $45
    jp   jp_01_4555                                    ;; 01:4575 $c3 $55 $45
.jr_01_4578:
    push HL                                            ;; 01:4578 $e5
    add  A, A                                          ;; 01:4579 $87
    add  A, $02                                        ;; 01:457a $c6 $02
    ld   C, A                                          ;; 01:457c $4f
    ld   A, $00                                        ;; 01:457d $3e $00
    adc  A, $74                                        ;; 01:457f $ce $74
    ld   B, A                                          ;; 01:4581 $47
    ld   DE, $04                                       ;; 01:4582 $11 $04 $00
    add  HL, DE                                        ;; 01:4585 $19
    ld   A, [BC]                                       ;; 01:4586 $0a
    ld   [HL-], A                                      ;; 01:4587 $32
    inc  BC                                            ;; 01:4588 $03
    ld   A, [BC]                                       ;; 01:4589 $0a
    ld   [HL], A                                       ;; 01:458a $77
    pop  HL                                            ;; 01:458b $e1
.jp_01_458c:
    call call_01_45da                                  ;; 01:458c $cd $da $45
    ld   B, H                                          ;; 01:458f $44
    ld   C, L                                          ;; 01:4590 $4d
    ld   DE, $16                                       ;; 01:4591 $11 $16 $00
    add  HL, DE                                        ;; 01:4594 $19
    ld   [HL], A                                       ;; 01:4595 $77
    ld   H, B                                          ;; 01:4596 $60
    ld   L, C                                          ;; 01:4597 $69
    jp   jp_01_430a                                    ;; 01:4598 $c3 $0a $43
.jp_01_459b:
    ld   BC, jp_01_4555                                ;; 01:459b $01 $55 $45
    push BC                                            ;; 01:459e $c5

call_01_459f:
    call call_00_11c9                                  ;; 01:459f $cd $c9 $11
    cp   A, $b0                                        ;; 01:45a2 $fe $b0
    jp   Z, jp_01_43fe                                 ;; 01:45a4 $ca $fe $43
    cp   A, $b1                                        ;; 01:45a7 $fe $b1
    jp   Z, jp_01_441d                                 ;; 01:45a9 $ca $1d $44
    cp   A, $b2                                        ;; 01:45ac $fe $b2
    jp   Z, jp_01_4443                                 ;; 01:45ae $ca $43 $44
    cp   A, $b3                                        ;; 01:45b1 $fe $b3
    jp   Z, jp_01_4468                                 ;; 01:45b3 $ca $68 $44
    cp   A, $b7                                        ;; 01:45b6 $fe $b7
    jp   Z, jp_01_44b8                                 ;; 01:45b8 $ca $b8 $44
    cp   A, $ff                                        ;; 01:45bb $fe $ff
    jp   Z, jp_01_4270                                 ;; 01:45bd $ca $70 $42
    cp   A, $f0                                        ;; 01:45c0 $fe $f0
    jp   Z, jp_01_4245                                 ;; 01:45c2 $ca $45 $42
    push HL                                            ;; 01:45c5 $e5
    add  A, A                                          ;; 01:45c6 $87
    add  A, $14                                        ;; 01:45c7 $c6 $14
    ld   C, A                                          ;; 01:45c9 $4f
    ld   A, $00                                        ;; 01:45ca $3e $00
    adc  A, $74                                        ;; 01:45cc $ce $74
    ld   B, A                                          ;; 01:45ce $47
    ld   DE, $12                                       ;; 01:45cf $11 $12 $00
    add  HL, DE                                        ;; 01:45d2 $19
    ld   A, [BC]                                       ;; 01:45d3 $0a
    ld   [HL+], A                                      ;; 01:45d4 $22
    inc  BC                                            ;; 01:45d5 $03
    ld   A, [BC]                                       ;; 01:45d6 $0a
    ld   [HL], A                                       ;; 01:45d7 $77
    pop  HL                                            ;; 01:45d8 $e1
    ret                                                ;; 01:45d9 $c9

call_01_45da:
    push HL                                            ;; 01:45da $e5
    ld   BC, $12                                       ;; 01:45db $01 $12 $00
    add  HL, BC                                        ;; 01:45de $09
    ld   A, [HL+]                                      ;; 01:45df $2a
    ld   B, [HL]                                       ;; 01:45e0 $46
    ld   C, A                                          ;; 01:45e1 $4f
    ld   A, [BC]                                       ;; 01:45e2 $0a
    inc  BC                                            ;; 01:45e3 $03
    ld   [HL], B                                       ;; 01:45e4 $70
    dec  HL                                            ;; 01:45e5 $2b
    ld   [HL], C                                       ;; 01:45e6 $71
    pop  HL                                            ;; 01:45e7 $e1
    ret                                                ;; 01:45e8 $c9

jp_01_45e9:
    ld   A, [wD2BD]                                    ;; 01:45e9 $fa $bd $d2
    or   A, A                                          ;; 01:45ec $b7
    jr   Z, .jr_01_462a                                ;; 01:45ed $28 $3b
    ld   A, [wD2BF]                                    ;; 01:45ef $fa $bf $d2
    or   A, A                                          ;; 01:45f2 $b7
    jr   NZ, .jr_01_45f8                               ;; 01:45f3 $20 $03
    ld   A, [wD2BE]                                    ;; 01:45f5 $fa $be $d2
.jr_01_45f8:
    dec  A                                             ;; 01:45f8 $3d
    jr   NZ, .jr_01_462a                               ;; 01:45f9 $20 $2f
    ld   A, [wD2B1]                                    ;; 01:45fb $fa $b1 $d2
    and  A, $0f                                        ;; 01:45fe $e6 $0f
    dec  A                                             ;; 01:4600 $3d
    cp   A, $ff                                        ;; 01:4601 $fe $ff
    jr   NZ, .jr_01_461b                               ;; 01:4603 $20 $16
    ld   HL, wD24C                                     ;; 01:4605 $21 $4c $d2
    xor  A, A                                          ;; 01:4608 $af
    ld   [wD2B9], A                                    ;; 01:4609 $ea $b9 $d2
    ld   [wD2BD], A                                    ;; 01:460c $ea $bd $d2
    ld   B, $60                                        ;; 01:460f $06 $60
    call memzeroSmall                                  ;; 01:4611 $cd $8b $05
    ld   A, $ff                                        ;; 01:4614 $3e $ff
    ld   [wD2B1], A                                    ;; 01:4616 $ea $b1 $d2
    jr   .jr_01_4627                                   ;; 01:4619 $18 $0c
.jr_01_461b:
    ld   B, A                                          ;; 01:461b $47
    swap A                                             ;; 01:461c $cb $37
    or   A, B                                          ;; 01:461e $b0
    ld   [wD2B1], A                                    ;; 01:461f $ea $b1 $d2
    ld   A, $c0                                        ;; 01:4622 $3e $c0
    ld   [wD2B0], A                                    ;; 01:4624 $ea $b0 $d2
.jr_01_4627:
    ld   A, [wD2BE]                                    ;; 01:4627 $fa $be $d2
.jr_01_462a:
    ld   [wD2BF], A                                    ;; 01:462a $ea $bf $d2
    ld   B, $02                                        ;; 01:462d $06 $02
    ld   C, $24                                        ;; 01:462f $0e $24
    ld   HL, wD2AC                                     ;; 01:4631 $21 $ac $d2
.jr_01_4634:
    ld   A, [HL]                                       ;; 01:4634 $7e
    or   A, A                                          ;; 01:4635 $b7
    jr   NZ, .jr_01_4641                               ;; 01:4636 $20 $09
    ld   DE, $04                                       ;; 01:4638 $11 $04 $00
    add  HL, DE                                        ;; 01:463b $19
    dec  B                                             ;; 01:463c $05
    jr   NZ, .jr_01_4634                               ;; 01:463d $20 $f5
    jr   .jr_01_4650                                   ;; 01:463f $18 $0f
.jr_01_4641:
    and  A, $80                                        ;; 01:4641 $e6 $80
    jr   Z, .jr_01_4650                                ;; 01:4643 $28 $0b
    ld   A, $40                                        ;; 01:4645 $3e $40
    ld   [HL+], A                                      ;; 01:4647 $22
    ld   A, [HL+]                                      ;; 01:4648 $2a
    ldh  [C], A                                        ;; 01:4649 $e2
    inc  C                                             ;; 01:464a $0c
    ld   A, [HL+]                                      ;; 01:464b $2a
    ldh  [C], A                                        ;; 01:464c $e2
    inc  C                                             ;; 01:464d $0c
    ld   A, [HL]                                       ;; 01:464e $7e
    ldh  [C], A                                        ;; 01:464f $e2
.jr_01_4650:
    ld   HL, wD2B4                                     ;; 01:4650 $21 $b4 $d2
    xor  A, A                                          ;; 01:4653 $af
    ld   [HL+], A                                      ;; 01:4654 $22
    ld   [HL+], A                                      ;; 01:4655 $22
    ld   [HL+], A                                      ;; 01:4656 $22
    ld   [HL], A                                       ;; 01:4657 $77
    ld   A, $08                                        ;; 01:4658 $3e $08
    ld   C, $10                                        ;; 01:465a $0e $10
    ld   HL, wD1EC                                     ;; 01:465c $21 $ec $d1
.jp_01_465f:
    push HL                                            ;; 01:465f $e5
    ld   HL, wD2B4                                     ;; 01:4660 $21 $b4 $d2
    ld   [wD2BA], A                                    ;; 01:4663 $ea $ba $d2
    cp   A, $05                                        ;; 01:4666 $fe $05
    jr   C, .jr_01_466c                                ;; 01:4668 $38 $02
    sub  A, $04                                        ;; 01:466a $d6 $04
.jr_01_466c:
    dec  A                                             ;; 01:466c $3d
    ld   E, A                                          ;; 01:466d $5f
    ld   D, $00                                        ;; 01:466e $16 $00
    add  HL, DE                                        ;; 01:4670 $19
    ld   A, [HL]                                       ;; 01:4671 $7e
    pop  HL                                            ;; 01:4672 $e1
    and  A, A                                          ;; 01:4673 $a7
    jp   NZ, .jp_01_46ff                               ;; 01:4674 $c2 $ff $46
    ld   A, [HL]                                       ;; 01:4677 $7e
    and  A, $e0                                        ;; 01:4678 $e6 $e0
    jp   Z, .jp_01_46ff                                ;; 01:467a $ca $ff $46
    and  A, $80                                        ;; 01:467d $e6 $80
    jp   Z, .jp_01_4705                                ;; 01:467f $ca $05 $47
    ld   A, [wD2BA]                                    ;; 01:4682 $fa $ba $d2
    cp   A, $06                                        ;; 01:4685 $fe $06
    jr   Z, .jr_01_468d                                ;; 01:4687 $28 $04
    cp   A, $02                                        ;; 01:4689 $fe $02
    jr   NZ, .jr_01_4690                               ;; 01:468b $20 $03
.jr_01_468d:
    xor  A, A                                          ;; 01:468d $af
    ldh  [rNR30], A                                    ;; 01:468e $e0 $1a
.jr_01_4690:
    ld   D, H                                          ;; 01:4690 $54
    ld   E, L                                          ;; 01:4691 $5d
    inc  DE                                            ;; 01:4692 $13
    ld   B, $05                                        ;; 01:4693 $06 $05
.jr_01_4695:
    ld   A, B                                          ;; 01:4695 $78
    cp   A, $01                                        ;; 01:4696 $fe $01
    jr   NZ, .jr_01_46a9                               ;; 01:4698 $20 $0f
    ld   A, [HL]                                       ;; 01:469a $7e
    and  A, $40                                        ;; 01:469b $e6 $40
    jr   Z, .jr_01_46a4                                ;; 01:469d $28 $05
    ld   A, [DE]                                       ;; 01:469f $1a
    or   A, $80                                        ;; 01:46a0 $f6 $80
    jr   .jr_01_46aa                                   ;; 01:46a2 $18 $06
.jr_01_46a4:
    ld   A, [DE]                                       ;; 01:46a4 $1a
    and  A, $7f                                        ;; 01:46a5 $e6 $7f
    jr   .jr_01_46aa                                   ;; 01:46a7 $18 $01
.jr_01_46a9:
    ld   A, [DE]                                       ;; 01:46a9 $1a
.jr_01_46aa:
    ldh  [C], A                                        ;; 01:46aa $e2
    inc  C                                             ;; 01:46ab $0c
    inc  DE                                            ;; 01:46ac $13
    dec  B                                             ;; 01:46ad $05
    jr   NZ, .jr_01_4695                               ;; 01:46ae $20 $e5
    ld   A, [HL]                                       ;; 01:46b0 $7e
    and  A, $3f                                        ;; 01:46b1 $e6 $3f
    ld   [HL], A                                       ;; 01:46b3 $77
.jr_01_46b4:
    push HL                                            ;; 01:46b4 $e5
    ld   HL, wD2B4                                     ;; 01:46b5 $21 $b4 $d2
    ld   A, [wD2BA]                                    ;; 01:46b8 $fa $ba $d2
    cp   A, $05                                        ;; 01:46bb $fe $05
    jr   C, .jr_01_46c1                                ;; 01:46bd $38 $02
    sub  A, $04                                        ;; 01:46bf $d6 $04
.jr_01_46c1:
    dec  A                                             ;; 01:46c1 $3d
    ld   E, A                                          ;; 01:46c2 $5f
    ld   A, $ff                                        ;; 01:46c3 $3e $ff
    ld   D, $00                                        ;; 01:46c5 $16 $00
    add  HL, DE                                        ;; 01:46c7 $19
    ld   [HL], A                                       ;; 01:46c8 $77
    pop  HL                                            ;; 01:46c9 $e1
.jr_01_46ca:
    ld   DE, $18                                       ;; 01:46ca $11 $18 $00
    add  HL, DE                                        ;; 01:46cd $19
    ld   A, [wD2BA]                                    ;; 01:46ce $fa $ba $d2
    dec  A                                             ;; 01:46d1 $3d
    ld   [wD2BA], A                                    ;; 01:46d2 $ea $ba $d2
    cp   A, $04                                        ;; 01:46d5 $fe $04
    jr   Z, .jr_01_46fa                                ;; 01:46d7 $28 $21
    or   A, A                                          ;; 01:46d9 $b7
    jp   NZ, .jp_01_465f                               ;; 01:46da $c2 $5f $46
    ld   B, $04                                        ;; 01:46dd $06 $04
    ld   C, $12                                        ;; 01:46df $0e $12
    ld   HL, wD2B7                                     ;; 01:46e1 $21 $b7 $d2
.jr_01_46e4:
    ld   A, [HL-]                                      ;; 01:46e4 $3a
    or   A, A                                          ;; 01:46e5 $b7
    jr   NZ, .jr_01_46f2                               ;; 01:46e6 $20 $0a
    ld   A, $08                                        ;; 01:46e8 $3e $08
    ldh  [C], A                                        ;; 01:46ea $e2
    ld   D, C                                          ;; 01:46eb $51
    inc  C                                             ;; 01:46ec $0c
    inc  C                                             ;; 01:46ed $0c
    ld   A, $80                                        ;; 01:46ee $3e $80
    ldh  [C], A                                        ;; 01:46f0 $e2
    ld   C, D                                          ;; 01:46f1 $4a
.jr_01_46f2:
    ld   A, $05                                        ;; 01:46f2 $3e $05
    add  A, C                                          ;; 01:46f4 $81
    ld   C, A                                          ;; 01:46f5 $4f
    dec  B                                             ;; 01:46f6 $05
    jr   NZ, .jr_01_46e4                               ;; 01:46f7 $20 $eb
    ret                                                ;; 01:46f9 $c9
.jr_01_46fa:
    ld   C, $10                                        ;; 01:46fa $0e $10
    jp   .jp_01_465f                                   ;; 01:46fc $c3 $5f $46
.jp_01_46ff:
    ld   A, $05                                        ;; 01:46ff $3e $05
    add  A, C                                          ;; 01:4701 $81
    ld   C, A                                          ;; 01:4702 $4f
    jr   .jr_01_46ca                                   ;; 01:4703 $18 $c5
.jp_01_4705:
    ld   A, $05                                        ;; 01:4705 $3e $05
    add  A, C                                          ;; 01:4707 $81
    ld   C, A                                          ;; 01:4708 $4f
    jr   .jr_01_46b4                                   ;; 01:4709 $18 $a9

call_01_470b:
    xor  A, A                                          ;; 01:470b $af
    ldh  [rNR30], A                                    ;; 01:470c $e0 $1a
    ld   B, $10                                        ;; 01:470e $06 $10
    ld   C, $30                                        ;; 01:4710 $0e $30
.jr_01_4712:
    ld   A, [HL+]                                      ;; 01:4712 $2a
    ldh  [C], A                                        ;; 01:4713 $e2
    inc  C                                             ;; 01:4714 $0c
    dec  B                                             ;; 01:4715 $05
    jr   NZ, .jr_01_4712                               ;; 01:4716 $20 $fa
    ret                                                ;; 01:4718 $c9

call_01_4719:
    push HL                                            ;; 01:4719 $e5
    ld   DE, $10                                       ;; 01:471a $11 $10 $00
    add  HL, DE                                        ;; 01:471d $19
    ld   A, [HL+]                                      ;; 01:471e $2a
    ld   D, H                                          ;; 01:471f $54
    ld   E, L                                          ;; 01:4720 $5d
    pop  HL                                            ;; 01:4721 $e1
    and  A, $80                                        ;; 01:4722 $e6 $80
    ret  Z                                             ;; 01:4724 $c8
    ld   A, [DE]                                       ;; 01:4725 $1a
    and  A, A                                          ;; 01:4726 $a7
    ret  Z                                             ;; 01:4727 $c8
    dec  A                                             ;; 01:4728 $3d
    jr   NZ, jr_01_474f                                ;; 01:4729 $20 $24

call_01_472b:
    call call_01_45da                                  ;; 01:472b $cd $da $45
    cp   A, $fd                                        ;; 01:472e $fe $fd
    jr   NC, jr_01_475e                                ;; 01:4730 $30 $2c
    ld   B, H                                          ;; 01:4732 $44
    ld   C, L                                          ;; 01:4733 $4d
    ld   DE, $02                                       ;; 01:4734 $11 $02 $00
    add  HL, DE                                        ;; 01:4737 $19
    ld   [HL+], A                                      ;; 01:4738 $22
    ld   D, H                                          ;; 01:4739 $54
    ld   E, L                                          ;; 01:473a $5d
    ld   H, B                                          ;; 01:473b $60
    ld   L, C                                          ;; 01:473c $69
    ld   A, [DE]                                       ;; 01:473d $1a
    ld   B, A                                          ;; 01:473e $47
    push BC                                            ;; 01:473f $c5
    call call_01_45da                                  ;; 01:4740 $cd $da $45
    ld   [DE], A                                       ;; 01:4743 $12
    pop  BC                                            ;; 01:4744 $c1
    cp   A, B                                          ;; 01:4745 $b8
    jr   Z, jr_01_4759                                 ;; 01:4746 $28 $11
    ld   A, [HL]                                       ;; 01:4748 $7e
    or   A, $e0                                        ;; 01:4749 $f6 $e0

jr_01_474b:
    ld   [HL], A                                       ;; 01:474b $77
    call call_01_45da                                  ;; 01:474c $cd $da $45

jr_01_474f:
    ld   B, H                                          ;; 01:474f $44
    ld   C, L                                          ;; 01:4750 $4d
    ld   DE, $11                                       ;; 01:4751 $11 $11 $00
    add  HL, DE                                        ;; 01:4754 $19
    ld   [HL], A                                       ;; 01:4755 $77
    ld   H, B                                          ;; 01:4756 $60
    ld   L, C                                          ;; 01:4757 $69
    ret                                                ;; 01:4758 $c9

jr_01_4759:
    ld   A, [HL]                                       ;; 01:4759 $7e
    or   A, $80                                        ;; 01:475a $f6 $80
    jr   jr_01_474b                                    ;; 01:475c $18 $ed

jr_01_475e:
    jr   Z, jr_01_477f                                 ;; 01:475e $28 $1f
    cp   A, $ff                                        ;; 01:4760 $fe $ff
    jr   Z, .jr_01_4771                                ;; 01:4762 $28 $0d
    push HL                                            ;; 01:4764 $e5
    ld   DE, $12                                       ;; 01:4765 $11 $12 $00
    add  HL, DE                                        ;; 01:4768 $19
    ld   A, [HL+]                                      ;; 01:4769 $2a
    ld   B, [HL]                                       ;; 01:476a $46
    inc  HL                                            ;; 01:476b $23
    ld   [HL+], A                                      ;; 01:476c $22
    ld   [HL], B                                       ;; 01:476d $70
    pop  HL                                            ;; 01:476e $e1
    jr   call_01_472b                                  ;; 01:476f $18 $ba
.jr_01_4771:
    push HL                                            ;; 01:4771 $e5
    ld   DE, $15                                       ;; 01:4772 $11 $15 $00
    add  HL, DE                                        ;; 01:4775 $19
    ld   A, [HL-]                                      ;; 01:4776 $3a
    ld   B, [HL]                                       ;; 01:4777 $46
    dec  HL                                            ;; 01:4778 $2b
    ld   [HL-], A                                      ;; 01:4779 $32
    ld   [HL], B                                       ;; 01:477a $70
    pop  HL                                            ;; 01:477b $e1
    jp   call_01_472b                                  ;; 01:477c $c3 $2b $47

jr_01_477f:
    push HL                                            ;; 01:477f $e5
    call call_01_45da                                  ;; 01:4780 $cd $da $45
    ld   D, A                                          ;; 01:4783 $57
    ld   HL, wD2AE                                     ;; 01:4784 $21 $ae $d2
    ld   A, [wD2BA]                                    ;; 01:4787 $fa $ba $d2
    cp   A, $05                                        ;; 01:478a $fe $05
    jr   NC, .jr_01_4791                               ;; 01:478c $30 $03
    ld   HL, wD2B2                                     ;; 01:478e $21 $b2 $d2
.jr_01_4791:
    ld   [HL], D                                       ;; 01:4791 $72
    dec  HL                                            ;; 01:4792 $2b
    dec  HL                                            ;; 01:4793 $2b
    ld   A, [HL]                                       ;; 01:4794 $7e
    or   A, $80                                        ;; 01:4795 $f6 $80
    ld   [HL], A                                       ;; 01:4797 $77
    pop  HL                                            ;; 01:4798 $e1
    jp   call_01_472b                                  ;; 01:4799 $c3 $2b $47

call_01_479c:
    ld   B, H                                          ;; 01:479c $44
    ld   C, L                                          ;; 01:479d $4d
    ld   DE, $0e                                       ;; 01:479e $11 $0e $00
    add  HL, DE                                        ;; 01:47a1 $19
    ld   E, [HL]                                       ;; 01:47a2 $5e
    ld   H, B                                          ;; 01:47a3 $60
    ld   L, C                                          ;; 01:47a4 $69
    and  A, $40                                        ;; 01:47a5 $e6 $40
    ret  Z                                             ;; 01:47a7 $c8
    ld   A, E                                          ;; 01:47a8 $7b
    and  A, $0f                                        ;; 01:47a9 $e6 $0f
    dec  A                                             ;; 01:47ab $3d
    jr   Z, .jr_01_47e4                                ;; 01:47ac $28 $36
    ld   B, A                                          ;; 01:47ae $47
    ld   A, E                                          ;; 01:47af $7b
    and  A, $f0                                        ;; 01:47b0 $e6 $f0
    or   A, B                                          ;; 01:47b2 $b0
    push HL                                            ;; 01:47b3 $e5
    ld   BC, $0e                                       ;; 01:47b4 $01 $0e $00
    add  HL, BC                                        ;; 01:47b7 $09
    ld   [HL], A                                       ;; 01:47b8 $77
    pop  HL                                            ;; 01:47b9 $e1
    ld   A, E                                          ;; 01:47ba $7b
    and  A, $20                                        ;; 01:47bb $e6 $20
    jr   NZ, .jr_01_47cf                               ;; 01:47bd $20 $10
    push HL                                            ;; 01:47bf $e5
    ld   DE, $04                                       ;; 01:47c0 $11 $04 $00
    add  HL, DE                                        ;; 01:47c3 $19
    ld   B, [HL]                                       ;; 01:47c4 $46
    ld   A, [wD2BC]                                    ;; 01:47c5 $fa $bc $d2
    add  A, B                                          ;; 01:47c8 $80
    ld   [HL+], A                                      ;; 01:47c9 $22
    jr   NC, .jr_01_47de                               ;; 01:47ca $30 $12
    inc  [HL]                                          ;; 01:47cc $34
    jr   .jr_01_47de                                   ;; 01:47cd $18 $0f
.jr_01_47cf:
    push HL                                            ;; 01:47cf $e5
    ld   A, [wD2BC]                                    ;; 01:47d0 $fa $bc $d2
    ld   B, A                                          ;; 01:47d3 $47
    ld   DE, $04                                       ;; 01:47d4 $11 $04 $00
    add  HL, DE                                        ;; 01:47d7 $19
    ld   A, [HL]                                       ;; 01:47d8 $7e
    sub  A, B                                          ;; 01:47d9 $90
    ld   [HL+], A                                      ;; 01:47da $22
    jr   NC, .jr_01_47de                               ;; 01:47db $30 $01
    dec  [HL]                                          ;; 01:47dd $35
.jr_01_47de:
    pop  HL                                            ;; 01:47de $e1
    ld   A, [HL]                                       ;; 01:47df $7e
    or   A, $a0                                        ;; 01:47e0 $f6 $a0
    ld   [HL], A                                       ;; 01:47e2 $77
    ret                                                ;; 01:47e3 $c9
.jr_01_47e4:
    push HL                                            ;; 01:47e4 $e5
    ld   DE, $0e                                       ;; 01:47e5 $11 $0e $00
    add  HL, DE                                        ;; 01:47e8 $19
    ld   A, [HL]                                       ;; 01:47e9 $7e
    xor  A, $20                                        ;; 01:47ea $ee $20
    ld   B, A                                          ;; 01:47ec $47
    ld   A, [wD2BB]                                    ;; 01:47ed $fa $bb $d2
    or   A, B                                          ;; 01:47f0 $b0
    ld   [HL], A                                       ;; 01:47f1 $77
    pop  HL                                            ;; 01:47f2 $e1
    ret                                                ;; 01:47f3 $c9

data_01_47f4:
    db   $00, $2c, $00, $9d, $01, $07, $01, $6b        ;; 01:47f4 ????????
    db   $01, $c9, $02, $23, $02, $77, $02, $c6        ;; 01:47fc ..??....
    db   $03, $12, $03, $58, $03, $9b, $03, $da        ;; 01:4804 ....??..
    db   $04, $16, $04, $4e, $04, $83, $04, $b5        ;; 01:480c ..??....
    db   $04, $e5, $05, $11, $05, $3b, $05, $63        ;; 01:4814 ........
    db   $05, $89, $05, $ac, $05, $ce, $05, $ed        ;; 01:481c ........
    db   $06, $0b, $06, $27, $06, $42, $06, $5b        ;; 01:4824 ........
    db   $06, $72, $06, $89, $06, $9e, $06, $b2        ;; 01:482c ........
    db   $06, $c4, $06, $d6, $06, $e7, $06, $f7        ;; 01:4834 ........
    db   $07, $06, $07, $14, $07, $21, $07, $2d        ;; 01:483c ........
    db   $07, $39, $07, $44, $07, $4f, $07, $59        ;; 01:4844 ........
    db   $07, $62, $07, $6b, $07, $73, $07, $7b        ;; 01:484c ........
    db   $07, $83, $07, $8a, $07, $90, $07, $97        ;; 01:4854 ........
    db   $07, $9d, $07, $a2, $07, $a7, $07, $ac        ;; 01:485c ..??????
    db   $07, $b1, $07, $b6, $07, $ba, $07, $be        ;; 01:4864 ????????
    db   $07, $c1, $07, $c5, $07, $c8, $07, $cb        ;; 01:486c ????????
    db   $07, $ce, $07, $d1, $07, $d4, $07, $d6        ;; 01:4874 ????????
    db   $07, $d9, $07, $db, $07, $dd, $07, $df        ;; 01:487c ????????
    db   $07, $df                                      ;; 01:4884 ??

data_01_4886:
    db   $90, $48, $a0, $48, $b0, $48, $c0, $48        ;; 01:4886 ??....??
    db   $d0, $48, $aa, $aa, $aa, $aa, $aa, $aa        ;; 01:488e ????????
    db   $aa, $aa, $00, $00, $00, $00, $00, $00        ;; 01:4896 ????????
    db   $00, $00                                      ;; 01:489e ??

data_01_48a0:
    db   $7a, $df, $da, $99, $88, $77, $77, $77        ;; 01:48a0 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:48a8 ........
    db   $dc, $dc, $dc, $dc, $00, $00, $00, $00        ;; 01:48b0 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:48b8 ........
    db   $30, $30, $3b, $3f, $3f, $3b, $2b, $0b        ;; 01:48c0 ????????
    db   $01, $03, $08, $20, $0b, $00, $03, $02        ;; 01:48c8 ????????
    db   $e0, $e0, $eb, $ef, $ef, $eb, $db, $0b        ;; 01:48d0 ????????
    db   $01, $13, $18, $30, $1b, $00, $13, $12        ;; 01:48d8 ????????

data_01_48e0:
    db   $00                                           ;; 01:48e0 .

data_01_48e1:
    db   $77                                           ;; 01:48e1 .

data_01_48e2:
    db   $ff                                           ;; 01:48e2 .

data_01_48e3:
    db   $8f, $00, $77, $ff, $8f                       ;; 01:48e3 .....

data_01_48e8:
    dw   data_01_48f0                                  ;; 01:48e8 pP
    dw   data_01_49f3                                  ;; 01:48ea pP
    dw   data_01_4b45                                  ;; 01:48ec pP
    dw   data_01_4cd8                                  ;; 01:48ee pP

data_01_48f0:
    db   $08, $00, $f0, $80, $51, $b0, $87, $b1        ;; 01:48f0 ........
    db   $1c, $0a, $21, $0a, $23, $0a, $25, $0a        ;; 01:48f8 ........
    db   $26, $0a, $25, $0a, $23, $0a, $25, $0a        ;; 01:4900 ........
    db   $00, $0a, $21, $0a, $1c, $0a, $00, $0a        ;; 01:4908 ........
    db   $1c, $0a, $25, $0a, $26, $0a, $28, $0a        ;; 01:4910 ........
    db   $2a, $0a, $28, $0a, $26, $0a, $25, $28        ;; 01:4918 ........
    db   $00, $14, $23, $0a, $25, $0a, $26, $0a        ;; 01:4920 ........
    db   $28, $0c, $00, $12, $20, $0a, $21, $0a        ;; 01:4928 ........
    db   $23, $0a, $28, $0c, $00, $12, $1e, $0a        ;; 01:4930 ........
    db   $20, $0a, $21, $0a, $26, $0a, $25, $0a        ;; 01:4938 ........
    db   $26, $0a, $23, $1e, $00, $14, $1c, $0a        ;; 01:4940 ........
    db   $21, $0a, $23, $0a, $25, $0a, $26, $0a        ;; 01:4948 ........
    db   $25, $0a, $23, $0a, $25, $0a, $00, $0a        ;; 01:4950 ........
    db   $21, $0a, $1c, $0a, $00, $0a, $1c, $0a        ;; 01:4958 ........
    db   $28, $0a, $2a, $0a, $2b, $0a, $2b, $0a        ;; 01:4960 ........
    db   $2a, $0a, $28, $0a, $2a, $0a, $00, $0a        ;; 01:4968 ........
    db   $26, $0a, $21, $0a, $00, $0a, $21, $0a        ;; 01:4970 ........
    db   $2a, $0a, $2c, $0a, $2d, $0a, $32, $0c        ;; 01:4978 ........
    db   $00, $12, $25, $0a, $26, $0a, $28, $0a        ;; 01:4980 ........
    db   $31, $0c, $00, $12, $23, $0a, $25, $0a        ;; 01:4988 ........
    db   $26, $0a, $1c, $0a, $1e, $0a, $20, $0a        ;; 01:4990 ........
    db   $b2, $21, $1e, $00, $14, $b3, $21, $1e        ;; 01:4998 ........
    db   $2d, $0a, $2c, $0a, $2b, $0a, $2a, $55        ;; 01:49a0 ........
    db   $00, $05, $2a, $0a, $2c, $0a, $2d, $0a        ;; 01:49a8 ........
    db   $28, $55, $00, $05, $28, $0a, $2c, $0a        ;; 01:49b0 ........
    db   $2d, $0a, $26, $3c, $25, $1e, $26, $1e        ;; 01:49b8 ........
    db   $28, $50, $00, $0a, $34, $0a, $32, $0a        ;; 01:49c0 ........
    db   $31, $0a, $32, $55, $00, $05, $32, $0a        ;; 01:49c8 ........
    db   $31, $0a, $2f, $0a, $31, $1e, $2d, $1e        ;; 01:49d0 ........
    db   $28, $1d, $00, $01, $31, $1e, $2f, $28        ;; 01:49d8 ........
    db   $31, $0a, $2f, $0a, $2d, $1c, $00, $02        ;; 01:49e0 ........
    db   $2f, $0a, $31, $0a, $33, $0a, $34, $5a        ;; 01:49e8 ........
    db   $00, $14, $ff                                 ;; 01:49f0 ...

data_01_49f3:
    db   $08, $00, $00, $80, $51, $b0, $83, $b0        ;; 01:49f3 ........
    db   $b1, $00, $0a, $19, $08, $00, $0c, $19        ;; 01:49fb ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a03 ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a0b ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a13 ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a1b ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a23 ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a2b ........
    db   $08, $00, $02, $19, $08, $00, $0c, $19        ;; 01:4a33 ........
    db   $08, $00, $02, $1a, $08, $00, $0c, $1a        ;; 01:4a3b ........
    db   $08, $00, $02, $1a, $08, $00, $0c, $1a        ;; 01:4a43 ........
    db   $08, $00, $02, $17, $08, $00, $0c, $17        ;; 01:4a4b ........
    db   $08, $00, $02, $17, $08, $00, $0c, $17        ;; 01:4a53 ........
    db   $08, $00, $02, $1a, $08, $00, $0c, $1a        ;; 01:4a5b ........
    db   $08, $00, $02, $1a, $08, $00, $0c, $1a        ;; 01:4a63 ........
    db   $08, $00, $02, $00, $0a, $10, $0a, $12        ;; 01:4a6b ........
    db   $0a, $14, $0a, $15, $0a, $17, $0a, $19        ;; 01:4a73 ........
    db   $08, $00, $0c, $19, $08, $00, $02, $19        ;; 01:4a7b ........
    db   $08, $00, $0c, $19, $08, $00, $02, $19        ;; 01:4a83 ........
    db   $08, $00, $0c, $19, $08, $00, $02, $19        ;; 01:4a8b ........
    db   $08, $00, $0c, $19, $08, $00, $02, $1c        ;; 01:4a93 ........
    db   $0a, $00, $0a, $1c, $0a, $1c, $0a, $00        ;; 01:4a9b ........
    db   $0a, $1c, $0a, $1a, $0a, $00, $0a, $1a        ;; 01:4aa3 ........
    db   $0a, $1a, $0a, $00, $0a, $1a, $0a, $1a        ;; 01:4aab ........
    db   $0a, $1c, $0a, $1e, $0a, $21, $0a, $1a        ;; 01:4ab3 ........
    db   $0a, $1e, $0a, $21, $0a, $23, $0a, $25        ;; 01:4abb ........
    db   $0a, $28, $0a, $19, $0a, $1c, $0a, $20        ;; 01:4ac3 ........
    db   $0a, $21, $0a, $23, $0a, $14, $0a, $15        ;; 01:4acb ........
    db   $0a, $17, $0a, $b2, $19, $1e, $00, $14        ;; 01:4ad3 ........
    db   $b3, $19, $1e, $00, $1e, $00, $0a, $1a        ;; 01:4adb ........
    db   $0a, $1c, $0a, $1a, $0a, $1a, $0a, $1a        ;; 01:4ae3 ........
    db   $0a, $1a, $3c, $00, $0a, $19, $0a, $1a        ;; 01:4aeb ........
    db   $0a, $19, $0a, $19, $0a, $19, $0a, $19        ;; 01:4af3 ........
    db   $3c, $1e, $5a, $17, $1e, $14, $1e, $15        ;; 01:4afb ........
    db   $1e, $17, $1e, $19, $1e, $00, $0a, $1e        ;; 01:4b03 ........
    db   $0a, $20, $0a, $1e, $0a, $1e, $0a, $1e        ;; 01:4b0b ........
    db   $0a, $1e, $3c, $00, $0a, $1c, $0a, $1e        ;; 01:4b13 ........
    db   $0a, $1c, $0a, $1e, $0a, $1a, $0a, $19        ;; 01:4b1b ........
    db   $3c, $00, $0a, $1a, $0a, $19, $0a, $1a        ;; 01:4b23 ........
    db   $0a, $1c, $0a, $1e, $0a, $00, $0a, $1e        ;; 01:4b2b ........
    db   $0a, $1d, $0a, $1e, $0a, $20, $0a, $21        ;; 01:4b33 ........
    db   $0a, $23, $1e, $21, $1e, $23, $1e, $28        ;; 01:4b3b ........
    db   $14, $ff                                      ;; 01:4b43 ..

data_01_4b45:
    db   $80, $00, $20, $80, $a1, $51, $b0, $00        ;; 01:4b45 ........
    db   $0a, $b1, $15, $0a, $00, $0a, $15, $0a        ;; 01:4b4d ........
    db   $10, $0a, $00, $0a, $10, $0a, $15, $0a        ;; 01:4b55 ........
    db   $00, $0a, $15, $0a, $10, $0a, $00, $0a        ;; 01:4b5d ........
    db   $10, $0a, $15, $0a, $10, $0a, $15, $0a        ;; 01:4b65 ........
    db   $10, $0a, $00, $0a, $10, $0a, $15, $0a        ;; 01:4b6d ........
    db   $00, $0a, $15, $0a, $10, $0a, $00, $0a        ;; 01:4b75 ........
    db   $10, $0a, $17, $0a, $10, $0a, $17, $0a        ;; 01:4b7d ........
    db   $10, $0a, $00, $0a, $10, $0a, $14, $0a        ;; 01:4b85 ........
    db   $00, $0a, $14, $0a, $10, $0a, $00, $0a        ;; 01:4b8d ........
    db   $10, $0a, $1a, $0a, $12, $0a, $1a, $0a        ;; 01:4b95 ........
    db   $12, $0a, $00, $0a, $12, $0a, $17, $0a        ;; 01:4b9d ........
    db   $00, $0a, $17, $0a, $10, $0a, $00, $0a        ;; 01:4ba5 ........
    db   $10, $0a, $15, $0a, $10, $0a, $15, $0a        ;; 01:4bad ........
    db   $10, $0a, $00, $0a, $10, $0a, $15, $0a        ;; 01:4bb5 ........
    db   $00, $0a, $15, $0a, $10, $0a, $00, $0a        ;; 01:4bbd ........
    db   $10, $0a, $19, $0a, $13, $0a, $19, $0a        ;; 01:4bc5 ........
    db   $13, $0a, $00, $0a, $13, $0a, $1a, $0a        ;; 01:4bcd ........
    db   $00, $0a, $1a, $0a, $15, $0a, $00, $0a        ;; 01:4bd5 ........
    db   $15, $0a, $0e, $0a, $15, $0a, $0e, $0a        ;; 01:4bdd ........
    db   $1a, $0a, $00, $0a, $1a, $0a, $15, $0a        ;; 01:4be5 ........
    db   $00, $0a, $15, $0a, $10, $0a, $00, $0a        ;; 01:4bed ........
    db   $10, $0a, $14, $0a, $10, $0a, $14, $0a        ;; 01:4bf5 ........
    db   $10, $0a, $00, $0a, $10, $0a, $b2, $15        ;; 01:4bfd ........
    db   $0a, $10, $0a, $15, $0a, $15, $0a, $00        ;; 01:4c05 ........
    db   $14, $b3, $15, $0a, $10, $0a, $15, $0a        ;; 01:4c0d ........
    db   $15, $0a, $00, $14, $1a, $0a, $00, $0a        ;; 01:4c15 ........
    db   $1a, $0a, $15, $0a, $00, $0a, $15, $0a        ;; 01:4c1d ........
    db   $1a, $0a, $00, $0a, $1a, $0a, $15, $0a        ;; 01:4c25 ........
    db   $00, $0a, $15, $0a, $15, $0a, $10, $0a        ;; 01:4c2d ........
    db   $15, $0a, $10, $0a, $00, $0a, $10, $0a        ;; 01:4c35 ........
    db   $15, $0a, $00, $0a, $15, $0a, $10, $0a        ;; 01:4c3d ........
    db   $00, $0a, $10, $0a, $17, $0a, $00, $0a        ;; 01:4c45 ........
    db   $17, $0a, $12, $0a, $00, $0a, $12, $0a        ;; 01:4c4d ........
    db   $10, $0a, $00, $0a, $10, $0a, $14, $0a        ;; 01:4c55 ........
    db   $00, $0a, $14, $0a, $15, $0a, $00, $0a        ;; 01:4c5d ........
    db   $15, $0a, $10, $0a, $00, $0a, $10, $0a        ;; 01:4c65 ........
    db   $15, $0a, $00, $0a, $15, $0a, $19, $0a        ;; 01:4c6d ........
    db   $00, $0a, $19, $0a, $1a, $0a, $00, $0a        ;; 01:4c75 ........
    db   $1a, $0a, $15, $0a, $00, $0a, $15, $0a        ;; 01:4c7d ........
    db   $1a, $0a, $00, $0a, $1a, $0a, $15, $0a        ;; 01:4c85 ........
    db   $00, $0a, $15, $0a, $15, $0a, $00, $0a        ;; 01:4c8d ........
    db   $15, $0a, $10, $0a, $00, $0a, $10, $0a        ;; 01:4c95 ........
    db   $15, $0a, $00, $0a, $15, $0a, $10, $0a        ;; 01:4c9d ........
    db   $00, $0a, $10, $0a, $17, $0a, $00, $0a        ;; 01:4ca5 ........
    db   $17, $0a, $12, $0a, $00, $0a, $12, $0a        ;; 01:4cad ........
    db   $17, $0a, $00, $0a, $17, $0a, $12, $0a        ;; 01:4cb5 ........
    db   $00, $0a, $12, $0a, $14, $0a, $00, $0a        ;; 01:4cbd ........
    db   $14, $0a, $10, $0a, $00, $0a, $10, $0a        ;; 01:4cc5 ........
    db   $10, $0a, $00, $0a, $10, $0a, $17, $0a        ;; 01:4ccd ........
    db   $00, $0a, $ff                                 ;; 01:4cd5 ...

data_01_4cd8:
    db   $00, $00, $20, $80, $b0, $4b, $ff, $e7        ;; 01:4cd8 .......?
    db   $4c, $58, $4d, $c9, $4d, $51, $4e, $08        ;; 01:4ce0 ????????
    db   $00, $f0, $80, $51, $8b, $19, $1e, $1a        ;; 01:4ce8 ????????
    db   $1e, $1c, $1e, $21, $1e, $1c, $37, $00        ;; 01:4cf0 ????????
    db   $05, $19, $14, $1a, $0a, $1c, $0a, $21        ;; 01:4cf8 ????????
    db   $0a, $23, $0a, $23, $3c, $25, $4b, $00        ;; 01:4d00 ????????
    db   $0f, $25, $1e, $26, $1e, $28, $1e, $28        ;; 01:4d08 ????????
    db   $55, $00, $05, $26, $1e, $1d, $3c, $26        ;; 01:4d10 ????????
    db   $1e, $25, $1e, $21, $78, $23, $78, $19        ;; 01:4d18 ????????
    db   $1e, $1a, $1e, $1c, $1e, $21, $1e, $1c        ;; 01:4d20 ????????
    db   $37, $00, $05, $19, $14, $1a, $0a, $1c        ;; 01:4d28 ????????
    db   $0a, $21, $0a, $23, $0a, $23, $3c, $25        ;; 01:4d30 ????????
    db   $4b, $00, $0f, $25, $1e, $26, $1e, $28        ;; 01:4d38 ????????
    db   $1e, $28, $55, $00, $05, $26, $1e, $26        ;; 01:4d40 ????????
    db   $14, $25, $14, $23, $14, $23, $14, $21        ;; 01:4d48 ????????
    db   $14, $20, $14, $20, $78, $21, $78, $ff        ;; 01:4d50 ????????
    db   $08, $00, $60, $83, $51, $83, $15, $1e        ;; 01:4d58 ????????
    db   $17, $1e, $19, $1e, $1c, $1e, $19, $37        ;; 01:4d60 ????????
    db   $00, $05, $15, $14, $17, $0a, $19, $0a        ;; 01:4d68 ????????
    db   $1c, $0a, $20, $0a, $20, $3c, $21, $1e        ;; 01:4d70 ????????
    db   $20, $1e, $1f, $1e, $22, $1e, $23, $1e        ;; 01:4d78 ????????
    db   $25, $1e, $23, $3c, $1e, $3c, $1a, $3c        ;; 01:4d80 ????????
    db   $23, $1e, $21, $1e, $1e, $78, $1c, $78        ;; 01:4d88 ????????
    db   $15, $1e, $17, $1e, $19, $1e, $1c, $1e        ;; 01:4d90 ????????
    db   $19, $37, $00, $05, $15, $14, $17, $0a        ;; 01:4d98 ????????
    db   $19, $0a, $1c, $0a, $20, $0a, $20, $3c        ;; 01:4da0 ????????
    db   $21, $1e, $20, $1e, $1f, $1e, $22, $1e        ;; 01:4da8 ????????
    db   $23, $1e, $25, $1e, $23, $3c, $1e, $3c        ;; 01:4db0 ????????
    db   $1e, $14, $1c, $14, $1a, $14, $1a, $14        ;; 01:4db8 ????????
    db   $19, $14, $17, $14, $17, $78, $19, $78        ;; 01:4dc0 ????????
    db   $ff, $80, $00, $20, $80, $a1, $51, $b0        ;; 01:4dc8 ????????
    db   $15, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4dd0 ????????
    db   $1c, $1e, $00, $1e, $19, $1e, $1c, $1e        ;; 01:4dd8 ????????
    db   $15, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4de0 ????????
    db   $1c, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4de8 ????????
    db   $17, $1e, $00, $1e, $1e, $1e, $00, $1e        ;; 01:4df0 ????????
    db   $10, $1e, $00, $1e, $20, $1e, $00, $1e        ;; 01:4df8 ????????
    db   $0e, $1e, $00, $1e, $1a, $1e, $00, $1e        ;; 01:4e00 ????????
    db   $10, $1e, $12, $1e, $14, $1e, $17, $1e        ;; 01:4e08 ????????
    db   $15, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4e10 ????????
    db   $1c, $1e, $00, $1e, $19, $1e, $1c, $1e        ;; 01:4e18 ????????
    db   $15, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4e20 ????????
    db   $1c, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4e28 ????????
    db   $17, $1e, $00, $1e, $1e, $1e, $00, $1e        ;; 01:4e30 ????????
    db   $10, $1e, $00, $1e, $20, $1e, $00, $1e        ;; 01:4e38 ????????
    db   $15, $1e, $00, $1e, $21, $1e, $00, $1e        ;; 01:4e40 ????????
    db   $1c, $1e, $00, $1e, $19, $1e, $00, $1e        ;; 01:4e48 ????????
    db   $ff, $00, $00, $f1, $80, $b0, $0e, $ff        ;; 01:4e50 ????????
    db   $60, $4e, $51, $50, $f4, $52, $46, $55        ;; 01:4e58 ????????
    db   $08, $00, $f0, $80, $b0, $51, $88, $b1        ;; 01:4e60 ????????
    db   $23, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:4e68 ????????
    db   $26, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:4e70 ????????
    db   $23, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:4e78 ????????
    db   $26, $08, $1e, $08, $28, $08, $1e, $08        ;; 01:4e80 ????????
    db   $26, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:4e88 ????????
    db   $23, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:4e90 ????????
    db   $26, $08, $1e, $08, $28, $08, $1e, $08        ;; 01:4e98 ????????
    db   $26, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:4ea0 ????????
    db   $23                                           ;; 01:4ea8 ?

data_01_4ea9:
    db   $08, $1e, $08, $25, $08, $1e, $08, $26        ;; 01:4ea9 ????????
    db   $08, $1e, $08, $25, $08, $1e, $08, $23        ;; 01:4eb1 ????????
    db   $08, $1e, $08, $25, $08, $1e, $08, $26        ;; 01:4eb9 ????????
    db   $08, $1e, $08, $28, $08, $1e, $08, $26        ;; 01:4ec1 ????????
    db   $08, $1e, $08, $25, $08, $1e, $08, $23        ;; 01:4ec9 ????????
    db   $08, $1e, $08, $25, $08, $1e, $08, $26        ;; 01:4ed1 ????????
    db   $08, $1e, $08, $28, $08, $1e, $08, $26        ;; 01:4ed9 ????????
    db   $08, $1e, $08, $28, $08, $1e, $08, $51        ;; 01:4ee1 ????????
    db   $8c, $2a, $08, $29, $08, $2a, $08, $2b        ;; 01:4ee9 ????????
    db   $0d, $00, $03, $2a, $08, $29, $08, $2a        ;; 01:4ef1 ????????
    db   $09, $00, $07, $29, $08, $2a, $08, $2b        ;; 01:4ef9 ????????
    db   $0d, $00, $03, $2a, $08, $29, $10, $2a        ;; 01:4f01 ????????
    db   $08, $29, $08, $2a, $08, $2b, $0d, $00        ;; 01:4f09 ????????
    db   $03, $2a, $08, $29, $08, $2a, $08, $00        ;; 01:4f11 ????????
    db   $08, $2b, $08, $00, $08, $2c, $08, $00        ;; 01:4f19 ????????
    db   $08, $2d, $08, $00, $08, $2e, $08, $2f        ;; 01:4f21 ????????
    db   $80, $51, $88, $26, $08, $1e, $08, $25        ;; 01:4f29 ????????
    db   $08, $1e, $08, $23, $08, $1e, $08, $25        ;; 01:4f31 ????????
    db   $08, $1e, $08, $26, $08, $1e, $08, $28        ;; 01:4f39 ????????
    db   $08, $1e, $08, $26, $08, $1e, $08, $25        ;; 01:4f41 ????????
    db   $08, $1e, $08, $51, $88, $23, $08, $1e        ;; 01:4f49 ????????
    db   $08, $25, $08, $1e, $08, $26, $08, $1e        ;; 01:4f51 ????????
    db   $08, $25, $08, $1e, $08, $23, $08, $1e        ;; 01:4f59 ????????
    db   $08, $25, $08, $1e, $08, $26, $08, $1e        ;; 01:4f61 ????????
    db   $08, $28, $08, $1e, $08, $26, $08, $1e        ;; 01:4f69 ????????
    db   $08, $25, $08, $1e, $08, $23, $08, $1e        ;; 01:4f71 ????????
    db   $08, $25, $08, $1e, $08, $26, $08, $1e        ;; 01:4f79 ????????
    db   $08, $28, $08, $1e, $08, $26, $08, $1e        ;; 01:4f81 ????????
    db   $08, $28, $08, $1e, $08, $51, $8c, $2a        ;; 01:4f89 ????????
    db   $08, $28, $08, $26, $08, $28, $0e, $00        ;; 01:4f91 ????????
    db   $02, $26, $08, $25, $0a, $00, $06, $26        ;; 01:4f99 ????????
    db   $08, $25, $08, $23, $08, $25, $0e, $00        ;; 01:4fa1 ????????
    db   $02, $23, $08, $22, $0a, $00, $06, $28        ;; 01:4fa9 ????????
    db   $08, $26, $08, $25, $08, $26, $0e, $00        ;; 01:4fb1 ????????
    db   $02, $25, $08, $23, $0a, $00, $06, $25        ;; 01:4fb9 ????????
    db   $08, $23, $08, $22, $08, $23, $0e, $00        ;; 01:4fc1 ????????
    db   $02, $22, $08, $20, $08, $22, $08, $51        ;; 01:4fc9 ????????
    db   $88, $23, $08, $1e, $08, $25, $08, $1e        ;; 01:4fd1 ????????
    db   $08, $26, $08, $1e, $08, $25, $08, $1e        ;; 01:4fd9 ????????
    db   $08, $23, $08, $1e, $08, $25, $08, $1e        ;; 01:4fe1 ????????
    db   $08, $26, $08, $1e, $08, $28, $08, $1e        ;; 01:4fe9 ????????
    db   $08, $26, $08, $1e, $08, $25, $08, $1e        ;; 01:4ff1 ????????
    db   $08, $23, $08, $1e, $08, $25, $08, $1e        ;; 01:4ff9 ????????
    db   $08, $26, $08, $1e, $08, $28, $08, $1e        ;; 01:5001 ????????
    db   $08, $26, $08, $1e, $08, $25, $08, $1e        ;; 01:5009 ????????
    db   $08, $50, $85, $17, $20, $1e, $20, $26        ;; 01:5011 ????????
    db   $20, $25, $20, $28, $40, $26, $35, $00        ;; 01:5019 ????????
    db   $03, $26, $04, $28, $04, $2a, $40, $28        ;; 01:5021 ????????
    db   $40, $2d, $40, $28, $40, $00, $20, $17        ;; 01:5029 ????????
    db   $20, $1e, $20, $1c, $20, $25, $40, $21        ;; 01:5031 ????????
    db   $25, $00, $03, $2a, $07, $00, $01, $28        ;; 01:5039 ????????
    db   $07, $00, $01, $26, $07, $00, $01, $25        ;; 01:5041 ????????
    db   $7e, $00, $02, $25, $40, $31, $40, $ff        ;; 01:5049 ????????
    db   $08, $00, $20, $80, $b0, $51, $89, $b1        ;; 01:5051 ????????
    db   $0b, $08, $00, $10, $0b, $08, $00, $10        ;; 01:5059 ????????
    db   $0b, $08, $00, $08, $00, $08, $17, $08        ;; 01:5061 ????????
    db   $19, $08, $1a, $08, $1c, $08, $1a, $08        ;; 01:5069 ????????
    db   $19, $08, $15, $08, $0b, $08, $00, $10        ;; 01:5071 ????????
    db   $0b, $08, $00, $10, $0b, $08, $00, $08        ;; 01:5079 ????????
    db   $00, $08, $17, $08, $19, $08, $1a, $08        ;; 01:5081 ????????
    db   $1c, $08, $1a, $08, $1c, $08, $1e, $08        ;; 01:5089 ????????
    db   $0b, $08, $00, $10, $0b, $08, $00, $10        ;; 01:5091 ????????
    db   $0b, $08, $00, $08, $00, $08, $17, $08        ;; 01:5099 ????????
    db   $19, $08, $1a, $08, $1c, $08, $1a, $08        ;; 01:50a1 ????????
    db   $19, $08, $15, $08, $0b, $08, $00, $10        ;; 01:50a9 ????????
    db   $0b, $08, $00, $10, $0b, $08, $00, $08        ;; 01:50b1 ????????
    db   $00, $08, $17, $08, $19, $08, $1a, $08        ;; 01:50b9 ????????
    db   $1c, $08, $1a, $08, $1c, $08, $1f, $08        ;; 01:50c1 ????????
    db   $22, $08, $21, $08, $22, $08, $23, $0d        ;; 01:50c9 ????????
    db   $00, $03, $22, $08, $21, $08, $22, $09        ;; 01:50d1 ????????
    db   $00, $07, $21, $08, $22, $08, $23, $0d        ;; 01:50d9 ????????
    db   $00, $03, $22, $08, $21, $10, $22, $08        ;; 01:50e1 ????????
    db   $21, $08, $22, $08, $23, $0d, $00, $03        ;; 01:50e9 ????????
    db   $22, $08, $21, $08, $22, $08, $00, $08        ;; 01:50f1 ????????
    db   $23, $08, $00, $08, $24, $08, $00, $08        ;; 01:50f9 ????????
    db   $25, $08, $00, $08, $26, $08, $51, $88        ;; 01:5101 ????????
    db   $23, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:5109 ????????
    db   $26, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:5111 ????????
    db   $23, $08, $1e, $08, $25, $08, $1e, $08        ;; 01:5119 ????????
    db   $26, $08, $1e, $08, $28, $08, $1e, $08        ;; 01:5121 ????????
    db   $51, $89, $0b, $08, $00, $10, $0b, $08        ;; 01:5129 ????????
    db   $00, $10, $0b, $08, $00, $08, $00, $08        ;; 01:5131 ????????
    db   $17, $08, $19, $08, $1a, $08, $1c, $08        ;; 01:5139 ????????
    db   $1a, $08, $1c, $08, $1e, $08, $0b, $08        ;; 01:5141 ????????
    db   $00, $10, $0b, $08, $00, $10, $0b, $08        ;; 01:5149 ????????
    db   $00, $08, $00, $08, $17, $08, $19, $08        ;; 01:5151 ????????
    db   $1a, $08, $1c, $08, $1a, $08, $19, $08        ;; 01:5159 ????????
    db   $15, $08, $0b, $08, $00, $10, $0b, $08        ;; 01:5161 ????????
    db   $00, $10, $0b, $08, $00, $08, $00, $08        ;; 01:5169 ????????
    db   $17, $08, $19, $08, $1a, $08, $1c, $08        ;; 01:5171 ????????
    db   $1a, $08, $1c, $08, $1f, $08, $51, $84        ;; 01:5179 ????????
    db   $19, $08, $00, $10, $23, $08, $00, $10        ;; 01:5181 ????????
    db   $00, $08, $19, $08, $00, $10, $00, $08        ;; 01:5189 ????????
    db   $23, $08, $00, $08, $23, $08, $22, $04        ;; 01:5191 ????????
    db   $23, $04, $25, $04, $26, $04, $19, $08        ;; 01:5199 ????????
    db   $00, $10, $17, $08, $00, $10, $00, $08        ;; 01:51a1 ????????
    db   $19, $08, $00, $10, $00, $08, $17, $08        ;; 01:51a9 ????????
    db   $00, $08, $19, $10, $00, $08, $51, $89        ;; 01:51b1 ????????
    db   $0b, $08, $00, $10, $0b, $08, $00, $10        ;; 01:51b9 ????????
    db   $0b, $08, $00, $08, $00, $08, $17, $08        ;; 01:51c1 ????????
    db   $19, $08, $1a, $08, $1c, $08, $1a, $08        ;; 01:51c9 ????????
    db   $19, $08, $15, $08, $0b, $08, $00, $10        ;; 01:51d1 ????????
    db   $0b, $08, $00, $10, $0b, $08, $00, $08        ;; 01:51d9 ????????
    db   $00, $08, $17, $08, $19, $08, $1a, $08        ;; 01:51e1 ????????
    db   $1c, $08, $1a, $08, $1c, $08, $1e, $08        ;; 01:51e9 ????????
    db   $51, $83, $17, $08, $19, $08, $1a, $08        ;; 01:51f1 ????????
    db   $17, $08, $19, $08, $1a, $08, $17, $08        ;; 01:51f9 ????????
    db   $19, $08, $1a, $08, $17, $08, $19, $08        ;; 01:5201 ????????
    db   $1a, $08, $1c, $08, $1a, $08, $19, $08        ;; 01:5209 ????????
    db   $1a, $08, $17, $08, $19, $08, $1a, $08        ;; 01:5211 ????????
    db   $17, $08, $19, $08, $1a, $08, $17, $08        ;; 01:5219 ????????
    db   $19, $08, $1a, $08, $17, $08, $19, $08        ;; 01:5221 ????????
    db   $1a, $08, $1c, $08, $1a, $08, $1c, $08        ;; 01:5229 ????????
    db   $1e, $08, $19, $08, $1a, $08, $1c, $08        ;; 01:5231 ????????
    db   $19, $08, $1a, $08, $1c, $08, $19, $08        ;; 01:5239 ????????
    db   $1a, $08, $1c, $08, $19, $08, $1a, $08        ;; 01:5241 ????????
    db   $1c, $08, $1e, $08, $1c, $08, $1a, $08        ;; 01:5249 ????????
    db   $1c, $08, $19, $08, $1a, $08, $1c, $08        ;; 01:5251 ????????
    db   $19, $08, $1a, $08, $1c, $08, $19, $08        ;; 01:5259 ????????
    db   $1a, $08, $1c, $08, $19, $08, $1a, $08        ;; 01:5261 ????????
    db   $1c, $08, $1e, $08, $1c, $08, $1e, $08        ;; 01:5269 ????????
    db   $1f, $08, $1a, $08, $1c, $08, $1e, $08        ;; 01:5271 ????????
    db   $1a, $08, $1c, $08, $1e, $08, $1a, $08        ;; 01:5279 ????????
    db   $1c, $08, $1e, $08, $1a, $08, $1c, $08        ;; 01:5281 ????????
    db   $1e, $08, $1f, $08, $1e, $08, $1c, $08        ;; 01:5289 ????????
    db   $1e, $08, $1a, $08, $1c, $08, $1e, $08        ;; 01:5291 ????????
    db   $1a, $08, $1c, $08, $1e, $08, $1a, $08        ;; 01:5299 ????????
    db   $1c, $08, $1e, $08, $1a, $08, $1c, $08        ;; 01:52a1 ????????
    db   $1e, $08, $1f, $08, $1e, $08, $1f, $08        ;; 01:52a9 ????????
    db   $21, $08, $1f, $08, $1e, $08, $1f, $08        ;; 01:52b1 ????????
    db   $21, $08, $1f, $08, $21, $08, $23, $08        ;; 01:52b9 ????????
    db   $21, $08, $23, $08, $25, $08, $23, $08        ;; 01:52c1 ????????
    db   $25, $08, $26, $08, $25, $08, $26, $08        ;; 01:52c9 ????????
    db   $28, $08, $26, $08, $28, $08, $2a, $08        ;; 01:52d1 ????????
    db   $28, $08, $2a, $08, $2b, $08, $2a, $08        ;; 01:52d9 ????????
    db   $2b, $08, $2d, $08, $2b, $08, $2d, $08        ;; 01:52e1 ????????
    db   $2f, $08, $2d, $08, $2f, $08, $31, $08        ;; 01:52e9 ????????
    db   $32, $08, $ff, $80, $00, $20, $80, $a1        ;; 01:52f1 ????????
    db   $b0, $a1, $51, $b1, $17, $08, $00, $10        ;; 01:52f9 ????????
    db   $17, $08, $00, $10, $17, $08, $00, $08        ;; 01:5301 ????????
    db   $00, $08, $17, $08, $00, $08, $17, $08        ;; 01:5309 ????????
    db   $00, $08, $17, $08, $12, $08, $00, $08        ;; 01:5311 ????????
    db   $17, $08, $00, $10, $17, $08, $00, $10        ;; 01:5319 ????????
    db   $17, $08, $00, $08, $00, $08, $17, $08        ;; 01:5321 ????????
    db   $00, $08, $17, $08, $00, $08, $17, $08        ;; 01:5329 ????????
    db   $12, $08, $00, $08, $17, $08, $00, $10        ;; 01:5331 ????????
    db   $17, $08, $00, $10, $17, $08, $00, $08        ;; 01:5339 ????????
    db   $00, $08, $17, $08, $00, $08, $17, $08        ;; 01:5341 ????????
    db   $00, $08, $17, $08, $12, $08, $00, $08        ;; 01:5349 ????????
    db   $17, $08, $00, $10, $17, $08, $00, $10        ;; 01:5351 ????????
    db   $17, $08, $00, $08, $00, $08, $17, $08        ;; 01:5359 ????????
    db   $00, $08, $17, $08, $00, $08, $17, $08        ;; 01:5361 ????????
    db   $13, $08, $00, $08, $12, $08, $00, $10        ;; 01:5369 ????????
    db   $13, $08, $00, $10, $00, $08, $12, $08        ;; 01:5371 ????????
    db   $00, $10, $00, $08, $13, $08, $00, $08        ;; 01:5379 ????????
    db   $13, $08, $00, $10, $12, $08, $00, $10        ;; 01:5381 ????????
    db   $13, $08, $00, $10, $00, $08, $12, $08        ;; 01:5389 ????????
    db   $00                                           ;; 01:5391 ?

data_01_5392:
    db   $10, $00, $08, $12, $08, $00, $10, $12        ;; 01:5392 ????????
    db   $08, $00, $08, $17, $08, $00, $10, $17        ;; 01:539a ????????
    db   $08, $00, $10, $17, $08, $00, $08, $00        ;; 01:53a2 ????????
    db   $08, $17, $08, $00, $08, $17, $08, $00        ;; 01:53aa ????????
    db   $08, $17, $08, $12, $08, $00, $08, $17        ;; 01:53b2 ????????
    db   $08, $00, $10, $17, $08, $00, $10, $17        ;; 01:53ba ????????
    db   $08, $00, $08, $00, $08, $17, $08, $00        ;; 01:53c2 ????????
    db   $08, $17, $08, $00, $08, $17, $08, $12        ;; 01:53ca ????????
    db   $08, $00, $08, $17, $08, $00, $10, $17        ;; 01:53d2 ????????
    db   $08, $00, $10, $17, $08, $00, $08, $00        ;; 01:53da ????????
    db   $08, $17, $08, $00, $08, $17, $08, $00        ;; 01:53e2 ????????
    db   $08, $17, $08, $12, $08, $00, $08, $17        ;; 01:53ea ????????
    db   $08, $00, $10, $17, $08, $00, $10, $17        ;; 01:53f2 ????????
    db   $08, $00, $08, $00, $08, $17, $08, $00        ;; 01:53fa ????????
    db   $08, $17, $08, $00, $08, $17, $08, $13        ;; 01:5402 ????????
    db   $08, $00, $08, $12, $08, $00, $10, $13        ;; 01:540a ????????
    db   $08, $00, $10, $00, $08, $12, $08, $00        ;; 01:5412 ????????
    db   $10, $00, $08, $13, $08, $00, $08, $13        ;; 01:541a ????????
    db   $08, $00, $10, $12, $08, $00, $10, $13        ;; 01:5422 ????????
    db   $08, $00, $10, $00, $08, $12, $08, $00        ;; 01:542a ????????
    db   $10, $00, $08, $12, $08, $00, $10, $12        ;; 01:5432 ????????
    db   $08, $00, $08, $17, $08, $00, $10, $17        ;; 01:543a ????????
    db   $08, $00, $10, $17, $08, $00, $08, $00        ;; 01:5442 ????????
    db   $08, $17, $08, $00, $08, $17, $08, $00        ;; 01:544a ????????
    db   $08, $17, $08, $12, $08, $00, $08, $17        ;; 01:5452 ????????
    db   $08, $00, $10, $17, $08, $00, $10, $17        ;; 01:545a ????????
    db   $08, $00, $08, $00, $08, $17, $08, $00        ;; 01:5462 ????????
    db   $08, $17, $08, $00, $08, $17, $08, $12        ;; 01:546a ????????
    db   $08, $00, $08, $17, $08, $00, $10, $17        ;; 01:5472 ????????
    db   $08, $00, $10, $00, $08, $12, $08, $17        ;; 01:547a ????????
    db   $08, $00, $10, $17, $08, $00, $08, $17        ;; 01:5482 ????????
    db   $08, $00, $08, $12, $08, $17, $08, $00        ;; 01:548a ????????
    db   $10, $17, $08, $00, $10, $00, $08, $12        ;; 01:5492 ????????
    db   $08, $17, $08, $00, $10, $17, $08, $00        ;; 01:549a ????????
    db   $08, $17, $08, $00, $08, $12, $08, $15        ;; 01:54a2 ????????
    db   $08, $00, $10, $15, $08, $00, $10, $10        ;; 01:54aa ????????
    db   $08, $00, $08, $15, $08, $00, $10, $15        ;; 01:54b2 ????????
    db   $08, $00, $08, $15, $08, $00, $08, $10        ;; 01:54ba ????????
    db   $08, $15, $08, $00, $10, $15, $08, $00        ;; 01:54c2 ????????
    db   $10, $00, $08, $10, $08, $15, $08, $00        ;; 01:54ca ????????
    db   $10, $15, $08, $00, $08, $15, $08, $00        ;; 01:54d2 ????????
    db   $08, $10, $08, $13, $08, $00, $10, $13        ;; 01:54da ????????
    db   $08, $00, $10, $00, $08, $0e, $08, $13        ;; 01:54e2 ????????
    db   $08, $00, $10, $13, $08, $00, $08, $13        ;; 01:54ea ????????
    db   $08, $00, $08, $0e, $08, $13, $08, $00        ;; 01:54f2 ????????
    db   $10, $13, $08, $00, $10, $00, $08, $0e        ;; 01:54fa ????????
    db   $08, $13, $08, $00, $10, $13, $08, $00        ;; 01:5502 ????????
    db   $08, $13, $08, $00, $08, $0e, $08, $12        ;; 01:550a ????????
    db   $08, $00, $10, $12, $08, $00, $10, $00        ;; 01:5512 ????????
    db   $08, $0d, $08, $12, $08, $00, $10, $12        ;; 01:551a ????????
    db   $08, $00, $08, $12, $08, $00, $08, $19        ;; 01:5522 ????????
    db   $08, $12, $08, $00, $10, $12, $08, $00        ;; 01:552a ????????
    db   $10, $00, $08, $19, $08, $12, $08, $00        ;; 01:5532 ????????
    db   $10, $12, $08, $00, $08, $12, $08, $00        ;; 01:553a ????????
    db   $08, $0d, $08, $ff, $00, $00, $00, $80        ;; 01:5542 ????????
    db   $b0, $1c, $1c, $1c, $1c, $1d, $1c, $1c        ;; 01:554a ????????
    db   $1c, $1c, $1d, $1c, $1c, $1e, $1e, $1e        ;; 01:5552 ????????
    db   $1e, $ff, $64, $55, $54, $56, $35, $57        ;; 01:555a ????????
    db   $3a, $58, $08, $00, $20, $80, $b0, $50        ;; 01:5562 ????????
    db   $8b, $25, $1e, $26, $1e, $28, $1e, $2d        ;; 01:556a ????????
    db   $1e, $28, $37, $00, $05, $25, $14, $26        ;; 01:5572 ????????
    db   $0a, $28, $0a, $2d, $0a, $2f, $0a, $31        ;; 01:557a ????????
    db   $3c, $34, $50, $00, $0a, $34, $1e, $32        ;; 01:5582 ????????
    db   $1e, $31, $1e, $32, $55, $00, $05, $2a        ;; 01:558a ????????
    db   $1e, $31, $1e, $2f, $1d, $00, $01, $2d        ;; 01:5592 ????????
    db   $1e, $2f, $1e, $2f, $3c, $31, $78, $1c        ;; 01:559a ????????
    db   $1e, $00, $1e, $25, $1e, $26, $1e, $28        ;; 01:55a2 ????????
    db   $1e, $2d, $1e, $28, $37, $00, $05, $25        ;; 01:55aa ????????
    db   $14, $26, $0a, $28, $0a, $2d, $0a, $2f        ;; 01:55b2 ????????
    db   $0a, $31, $3c, $34, $50, $00, $0a, $31        ;; 01:55ba ????????
    db   $1e, $32, $1e, $34, $1e, $34, $50, $00        ;; 01:55c2 ????????
    db   $0a, $32, $1e, $32, $14, $31, $14, $2f        ;; 01:55ca ????????
    db   $14, $2f, $14, $2d, $14, $2c, $14, $2c        ;; 01:55d2 ????????
    db   $3b, $00, $01, $2d, $6e, $00, $0a, $2d        ;; 01:55da ????????
    db   $1e, $2b, $1e, $2a, $1e, $26, $1e, $21        ;; 01:55e2 ????????
    db   $1d, $00, $01, $2a, $3c, $26, $1e, $21        ;; 01:55ea ????????
    db   $1e, $29, $1e, $28, $59, $00, $01, $26        ;; 01:55f2 ????????
    db   $1e, $25, $32, $00, $0a, $2d, $1e, $2b        ;; 01:55fa ????????
    db   $1e, $2a, $1e, $26, $1e, $21, $1d, $00        ;; 01:5602 ????????
    db   $01, $2a, $3c, $2c, $1e, $2d, $14, $2f        ;; 01:560a ????????
    db   $14, $31, $14, $31, $3c, $32, $3a, $00        ;; 01:5612 ????????
    db   $02, $2a, $3c, $2c, $37, $00, $05, $25        ;; 01:561a ????????
    db   $1e, $26, $1e, $28, $1e, $2d, $1e, $28        ;; 01:5622 ????????
    db   $37, $00, $05, $25, $14, $26, $0a, $28        ;; 01:562a ????????
    db   $0a, $2d, $0a, $2f, $0a, $31, $3b, $00        ;; 01:5632 ????????
    db   $01, $32, $3c, $34, $3b, $00, $01, $36        ;; 01:563a ????????
    db   $3c, $2f, $5a, $31, $1e, $32, $3c, $2c        ;; 01:5642 ????????
    db   $3b, $00, $01, $2c, $91, $2d, $a0, $01        ;; 01:564a ????????
    db   $05, $ff, $08, $00, $f0, $80, $b0, $51        ;; 01:5652 ????????
    db   $8b, $b1, $00, $1e, $15, $1e, $1c, $1e        ;; 01:565a ????????
    db   $15, $1e, $21, $1e, $15, $1e, $1c, $1e        ;; 01:5662 ????????
    db   $15, $1e, $00, $1e, $15, $1e, $1c, $1e        ;; 01:566a ????????
    db   $15, $1e, $25, $1e, $15, $1e, $22, $1e        ;; 01:5672 ????????
    db   $16, $1e, $00, $1e, $17, $1e, $23, $1e        ;; 01:567a ????????
    db   $17, $1e, $1c, $1e, $14, $1e, $1c, $1e        ;; 01:5682 ????????
    db   $14, $1e, $00, $1e, $15, $1e, $21, $1e        ;; 01:568a ????????
    db   $15, $1e, $23, $1e, $14, $1e, $20, $1e        ;; 01:5692 ????????
    db   $14, $1e, $00, $1e, $15, $1e, $1c, $1e        ;; 01:569a ????????
    db   $15, $1e, $21, $1e, $15, $1e, $1c, $1e        ;; 01:56a2 ????????
    db   $15, $1e, $00, $1e, $15, $1e, $1c, $1e        ;; 01:56aa ????????
    db   $15, $1e, $25, $1e, $16, $1e, $22, $1e        ;; 01:56b2 ????????
    db   $16, $1e, $00, $1e, $17, $1e, $1e, $1e        ;; 01:56ba ????????
    db   $17, $1e, $20, $1e, $17, $1e, $1c, $1e        ;; 01:56c2 ????????
    db   $10, $1e, $00, $1e, $15, $1e, $1a, $1e        ;; 01:56ca ????????
    db   $15, $1e, $19, $1e, $15, $1e, $15, $1e        ;; 01:56d2 ????????
    db   $15, $1e, $21, $78, $1d, $78, $1c, $78        ;; 01:56da ????????
    db   $19, $3c, $21, $1e, $1f, $1e, $21, $78        ;; 01:56e2 ????????
    db   $1d, $78, $23, $3c, $21, $3c, $26, $3c        ;; 01:56ea ????????
    db   $20, $3c, $19, $37, $00, $05, $19, $37        ;; 01:56f2 ????????
    db   $00, $05, $1c, $37, $00, $05, $1c, $37        ;; 01:56fa ????????
    db   $00, $05, $1c, $37, $00, $05, $1c, $37        ;; 01:5702 ????????
    db   $00, $05, $16, $37, $00, $05, $19, $37        ;; 01:570a ????????
    db   $00, $05, $1e, $37, $00, $05, $1a, $37        ;; 01:5712 ????????
    db   $00, $05, $14, $37, $00, $05, $17, $37        ;; 01:571a ????????
    db   $00, $05, $1a, $44, $00, $02, $1c, $25        ;; 01:5722 ????????
    db   $00, $01, $1a, $24, $00, $01, $19, $a0        ;; 01:572a ????????
    db   $01, $05, $ff, $80, $00, $20, $80, $a1        ;; 01:5732 ????????
    db   $b0, $a1, $51, $15, $1e, $00, $1e, $25        ;; 01:573a ????????
    db   $1e, $00, $1e, $28, $1e, $00, $1e, $25        ;; 01:5742 ????????
    db   $1e, $10, $1e, $15, $1e, $00, $1e, $25        ;; 01:574a ????????
    db   $1e, $00, $1e, $28, $1e, $00, $1e, $25        ;; 01:5752 ????????
    db   $1e, $00, $1e, $17, $1e, $00, $1e, $2a        ;; 01:575a ????????
    db   $1e, $00, $1e, $10, $1e, $00, $1e, $2c        ;; 01:5762 ????????
    db   $1e, $00, $1e, $15, $1e, $00, $1e, $28        ;; 01:576a ????????
    db   $1e, $00, $1e, $10, $1e, $12, $1e, $14        ;; 01:5772 ????????
    db   $1e, $17, $1e, $15, $1e, $00, $1e, $25        ;; 01:577a ????????
    db   $1e, $00, $1e, $25, $1e, $00, $1e, $25        ;; 01:5782 ????????
    db   $1e, $10, $1e, $15, $1e, $00, $1e, $25        ;; 01:578a ????????
    db   $1e, $00, $1e, $16, $1e, $00, $1e, $2a        ;; 01:5792 ????????
    db   $1e, $00, $1e, $17, $1e, $00, $1e, $26        ;; 01:579a ????????
    db   $1e, $00, $1e, $10, $1e, $00, $1e, $20        ;; 01:57a2 ????????
    db   $1e, $00, $1e, $15, $1e, $00, $1e, $21        ;; 01:57aa ????????
    db   $1e, $00, $1e, $21, $1e, $00, $1e, $25        ;; 01:57b2 ????????
    db   $1e, $10, $1e, $1a, $37, $00, $05, $1a        ;; 01:57ba ????????
    db   $37, $00, $05, $1a, $37, $00, $05, $1a        ;; 01:57c2 ????????
    db   $37, $00, $05, $15, $37, $00, $05, $15        ;; 01:57ca ????????
    db   $37, $00, $05, $15, $37, $00, $05, $15        ;; 01:57d2 ????????
    db   $37, $00, $05, $1a, $37, $00, $05, $1a        ;; 01:57da ????????
    db   $37, $00, $05, $1a, $37, $00, $05, $1a        ;; 01:57e2 ????????
    db   $37, $00, $05, $17, $37, $00, $05, $17        ;; 01:57ea ????????
    db   $37, $00, $05, $1c, $37, $00, $05, $1c        ;; 01:57f2 ????????
    db   $37, $00, $05, $15, $37, $00, $05, $21        ;; 01:57fa ????????
    db   $37, $00, $05, $15, $37, $00, $05, $15        ;; 01:5802 ????????
    db   $1e, $10, $1e, $15, $37, $00, $05, $21        ;; 01:580a ????????
    db   $37, $00, $05, $12, $37, $00, $05, $16        ;; 01:5812 ????????
    db   $37, $00, $05, $17, $37, $00, $05, $23        ;; 01:581a ????????
    db   $37, $00, $05, $28, $37, $00, $05, $1c        ;; 01:5822 ????????
    db   $37, $00, $05, $15, $44, $00, $02, $21        ;; 01:582a ????????
    db   $4a, $00, $01, $15, $a0, $01, $05, $ff        ;; 01:5832 ????????
    db   $00, $00, $f1, $80, $b0, $0e, $ff, $49        ;; 01:583a ????????
    db   $58, $2c, $59, $95, $59, $e0, $59, $08        ;; 01:5842 ????????
    db   $00, $f0, $80, $b0, $51, $86, $71, $ef        ;; 01:584a ????????
    db   $36, $12, $01, $03, $36, $15, $01, $0c        ;; 01:5852 ????????
    db   $00, $1e, $71, $fe, $2d, $12, $01, $03        ;; 01:585a ????????
    db   $2d, $15, $01, $0c, $00, $1e, $71, $ef        ;; 01:5862 ????????
    db   $36, $12, $01, $03, $36, $15, $01, $0c        ;; 01:586a ????????
    db   $00, $1e, $71, $fe, $2d, $12, $01, $03        ;; 01:5872 ????????
    db   $2d, $15, $01, $0c, $00, $1e, $34, $12        ;; 01:587a ????????
    db   $01, $03, $34, $15, $01, $0c, $00, $1e        ;; 01:5882 ????????
    db   $71, $ef, $2d, $12, $01, $03, $2d, $15        ;; 01:588a ????????
    db   $01, $0c, $00, $1e, $71, $fe, $34, $12        ;; 01:5892 ????????
    db   $01, $03, $34, $15, $01, $0c, $00, $1e        ;; 01:589a ????????
    db   $71, $ef, $2d, $12, $01, $03, $2d, $15        ;; 01:58a2 ????????
    db   $01, $0c, $00, $1e, $00, $2a, $36, $12        ;; 01:58aa ????????
    db   $01, $03, $36, $12, $01, $03, $71, $fe        ;; 01:58b2 ????????
    db   $2d, $12, $01, $03, $2d, $12, $01, $03        ;; 01:58ba ????????
    db   $71, $ef, $2f, $12, $01, $03, $2f, $12        ;; 01:58c2 ????????
    db   $01, $03, $00, $2a, $36, $12, $01, $03        ;; 01:58ca ????????
    db   $36, $12, $01, $03, $71, $fe, $2d, $12        ;; 01:58d2 ????????
    db   $01, $03, $2d, $12, $01, $03, $71, $ef        ;; 01:58da ????????
    db   $2f, $12, $01, $03, $2f, $12, $01, $03        ;; 01:58e2 ????????
    db   $71, $fe, $00, $2a, $34, $12, $01, $03        ;; 01:58ea ????????
    db   $34, $12, $01, $03, $71, $ef, $2b, $12        ;; 01:58f2 ????????
    db   $01, $03, $2b, $12, $01, $03, $71, $fe        ;; 01:58fa ????????
    db   $2d, $12, $01, $03, $2d, $12, $01, $03        ;; 01:5902 ????????
    db   $71, $fe, $00, $2a, $34, $12, $01, $03        ;; 01:590a ????????
    db   $34, $12, $01, $03, $71, $ef, $2b, $12        ;; 01:5912 ????????
    db   $01, $03, $2b, $12, $01, $03, $71, $fe        ;; 01:591a ????????
    db   $2d, $12, $01, $03, $2d, $12, $01, $03        ;; 01:5922 ????????
    db   $ff, $ff, $08, $00, $f0, $80, $b0, $54        ;; 01:592a ????????
    db   $88, $1e, $0e, $21, $0e, $25, $0e, $26        ;; 01:5932 ????????
    db   $0e, $21, $0e, $25, $0e, $26, $0e, $21        ;; 01:593a ????????
    db   $0e, $25, $0e, $26, $0e, $25, $0e, $21        ;; 01:5942 ????????
    db   $0e, $1e, $0e, $21, $0e, $25, $0e, $26        ;; 01:594a ????????
    db   $0e, $21, $0e, $25, $0e, $26, $0e, $21        ;; 01:5952 ????????
    db   $0e, $25, $0e, $26, $0e, $25, $0e, $21        ;; 01:595a ????????
    db   $0e, $1c, $0e, $1f, $0e, $23, $0e, $24        ;; 01:5962 ????????
    db   $0e, $1f, $0e, $23, $0e, $24, $0e, $1f        ;; 01:596a ????????
    db   $0e, $23, $0e, $24, $0e, $23, $0e, $1f        ;; 01:5972 ????????
    db   $0e, $1c, $0e, $1f, $0e, $23, $0e, $24        ;; 01:597a ????????
    db   $0e, $1f, $0e, $23, $0e, $24, $0e, $1f        ;; 01:5982 ????????
    db   $0e, $23, $0e, $24, $0e, $23, $0e, $1f        ;; 01:598a ????????
    db   $0e, $ff, $ff, $80, $00, $20, $80, $a1        ;; 01:5992 ????????
    db   $b0, $b1, $51, $00, $a8, $00, $a8, $00        ;; 01:599a ????????
    db   $a8, $00, $a8, $b2, $00, $a8, $00, $a8        ;; 01:59a2 ????????
    db   $00, $a8, $00, $a8, $b3, $00, $a8, $00        ;; 01:59aa ????????
    db   $a8, $00, $a8, $00, $a8, $00, $2a, $1e        ;; 01:59b2 ????????
    db   $2a, $25, $3f, $26, $15, $21, $69, $1e        ;; 01:59ba ????????
    db   $15, $21, $2a, $1f, $7e, $1e, $2a, $1f        ;; 01:59c2 ????????
    db   $a8, $00, $2a, $1e, $2a, $25, $3f, $26        ;; 01:59ca ????????
    db   $15, $21, $69, $1e, $15, $21, $2a, $1f        ;; 01:59d2 ????????
    db   $7e, $1e, $2a, $1f, $a8, $ff, $00, $00        ;; 01:59da ????????
    db   $f1, $80, $b0, $0e, $ff, $20, $20, $20        ;; 01:59e2 ????????
    db   $20, $20, $20, $21, $22, $23, $22, $23        ;; 01:59ea ????????
    db   $22, $23, $22, $23, $ff                       ;; 01:59f2 ?????

data_01_59f7:
    dw   data_01_59ff                                  ;; 01:59f7 pP
    dw   data_01_5b37                                  ;; 01:59f9 pP
    dw   data_01_5cf3                                  ;; 01:59fb pP
    dw   data_01_5ecc                                  ;; 01:59fd pP

data_01_59ff:
    db   $08, $00, $f0, $80, $51, $8c, $21, $20        ;; 01:59ff ........
    db   $26, $2b, $00, $02, $2f, $0f, $2d, $57        ;; 01:5a07 ........
    db   $00, $03, $2d, $0a, $2b, $0a, $2d, $0a        ;; 01:5a0f ........
    db   $2f, $46, $01, $05, $2f, $0f, $2d, $0f        ;; 01:5a17 ........
    db   $2b, $0f, $2d, $85, $01, $02, $00, $19        ;; 01:5a1f ........
    db   $21, $20, $26, $2b, $00, $02, $2f, $0f        ;; 01:5a27 ........
    db   $2d, $55, $00, $05, $2d, $0b, $2b, $0b        ;; 01:5a2f ........
    db   $2d, $0b, $2f, $46, $01, $05, $2f, $0f        ;; 01:5a37 ........
    db   $2d, $0f, $2b, $0f, $2d, $7a, $01, $05        ;; 01:5a3f ........
    db   $00, $55, $1e, $0a, $1f, $0a, $21, $0a        ;; 01:5a47 ........
    db   $1f, $0f, $00, $0f, $1f, $0f, $00, $0f        ;; 01:5a4f ......??
    db   $1f, $0f, $00, $0f, $1f, $0a, $1f, $0a        ;; 01:5a57 ????????
    db   $1f, $0a, $1f, $0f, $00, $0f, $1f, $0a        ;; 01:5a5f ????????
    db   $1f, $0a, $1f, $0a, $1f, $0f, $1f, $0f        ;; 01:5a67 ????????
    db   $1f, $0f, $1f, $0f, $1f, $0f, $00, $0f        ;; 01:5a6f ????????
    db   $1f, $0f, $00, $0f, $1f, $0f, $00, $0f        ;; 01:5a77 ????????
    db   $1f, $0a, $1f, $0a, $1f, $0a, $1f, $0f        ;; 01:5a7f ????????
    db   $b0, $00, $0f, $1a, $1e, $1f, $2b, $00        ;; 01:5a87 ????????
    db   $02, $28, $0f, $26, $55, $00, $05, $26        ;; 01:5a8f ????????
    db   $0a, $24, $0a, $26, $0a, $28, $49, $00        ;; 01:5a97 ????????
    db   $02, $28, $0f, $26, $0f, $24, $0f, $26        ;; 01:5a9f ????????
    db   $28, $00, $05, $26, $08, $28, $07, $26        ;; 01:5aa7 ????????
    db   $69, $00, $0f, $00, $1e, $1a, $08, $00        ;; 01:5aaf ????????
    db   $02, $1f, $08, $00, $02, $28, $08, $00        ;; 01:5ab7 ????????
    db   $02, $26, $55, $00, $05, $26, $0a, $24        ;; 01:5abf ????????
    db   $0a, $26, $0a, $28, $48, $00, $03, $28        ;; 01:5ac7 ????????
    db   $0f, $26, $0f, $24, $0f, $26, $10, $00        ;; 01:5acf ????????
    db   $07, $2b, $07, $2b, $3c, $2d, $1e, $2b        ;; 01:5ad7 ????????
    db   $57, $00, $03, $2b, $0a, $29, $0a, $2b        ;; 01:5adf ????????
    db   $0a, $2d, $10, $00, $07, $29, $07, $29        ;; 01:5ae7 ????????
    db   $3a, $00, $02, $2d, $1e, $30, $48, $00        ;; 01:5aef ????????
    db   $03, $30, $0f, $2f, $0f, $2d, $0f, $2f        ;; 01:5af7 ????????
    db   $10, $00, $07, $2b, $07, $2b, $3b, $00        ;; 01:5aff ????????
    db   $01, $26, $10, $00, $07, $28, $07, $26        ;; 01:5b07 ????????
    db   $58, $00, $02, $2b, $0a, $29, $0a, $2b        ;; 01:5b0f ????????
    db   $0a, $2d, $10, $00, $06, $29, $08, $29        ;; 01:5b17 ????????
    db   $3b, $00, $01, $2d, $1e, $30, $48, $00        ;; 01:5b1f ????????
    db   $03, $30, $0f, $2f, $0f, $2d, $0f, $2f        ;; 01:5b27 ????????
    db   $11, $00, $06, $2b, $07, $2b, $69, $ff        ;; 01:5b2f ????????

data_01_5b37:
    db   $08, $00, $00, $80, $51, $84, $b0, $b1        ;; 01:5b37 ........
    db   $1e, $20, $2a, $2b, $00, $02, $2b, $0f        ;; 01:5b3f ........
    db   $2a, $55, $00, $05, $2a, $0a, $28, $0a        ;; 01:5b47 ........
    db   $2a, $0a, $2b, $46, $01, $05, $2b, $0f        ;; 01:5b4f ........
    db   $2a, $0f, $28, $0f, $2a, $85, $01, $08        ;; 01:5b57 ........
    db   $00, $13, $1e, $20, $2a, $2b, $00, $02        ;; 01:5b5f ........
    db   $2b, $0f, $2a, $55, $00, $05, $2a, $0b        ;; 01:5b67 ........
    db   $28, $0b, $2a, $0b, $2b, $46, $01, $05        ;; 01:5b6f ........
    db   $2b, $0f, $2a, $0f, $28, $0f, $2a, $7a        ;; 01:5b77 ........
    db   $01, $08, $00, $52, $1a, $0a, $1a, $0a        ;; 01:5b7f ........
    db   $18, $0a, $17, $0f, $00, $0f, $17, $0f        ;; 01:5b87 ........
    db   $00, $0f, $17, $0f, $00, $0f, $17, $0a        ;; 01:5b8f ????????
    db   $17, $0a, $17, $0a, $17, $0f, $00, $0f        ;; 01:5b97 ????????
    db   $17, $0a, $17, $0a, $17, $0a, $17, $0f        ;; 01:5b9f ????????
    db   $17, $0f, $17, $0f, $17, $0f, $17, $0f        ;; 01:5ba7 ????????
    db   $00, $0f, $17, $0f, $00, $0f, $17, $0f        ;; 01:5baf ????????
    db   $00, $0f, $17, $0a, $17, $0a, $17, $0a        ;; 01:5bb7 ????????
    db   $17, $0f, $00, $0f, $17, $0a, $17, $0a        ;; 01:5bbf ????????
    db   $17, $0a, $17, $0f, $17, $0f, $17, $0f        ;; 01:5bc7 ????????
    db   $17, $0f, $b0, $17, $0f, $00, $0f, $17        ;; 01:5bcf ????????
    db   $0f, $00, $0f, $17, $0f, $00, $0f, $17        ;; 01:5bd7 ????????
    db   $0a, $17, $0a, $17, $0a, $18, $0f, $00        ;; 01:5bdf ????????
    db   $0f, $18, $0a, $18, $0a, $18, $0a, $18        ;; 01:5be7 ????????
    db   $0f, $18, $0f, $18, $0f, $18, $0f, $17        ;; 01:5bef ????????
    db   $0f, $00, $0f, $17, $0f, $00, $0f, $17        ;; 01:5bf7 ????????
    db   $0f, $00, $0f, $17, $0a, $17, $0a, $17        ;; 01:5bff ????????
    db   $0a, $17, $0f, $00, $0f, $17, $0a, $17        ;; 01:5c07 ????????
    db   $0a, $17, $0a, $17, $0f, $17, $0f, $17        ;; 01:5c0f ????????
    db   $0f, $17, $0f, $17, $0f, $00, $0f, $17        ;; 01:5c17 ????????
    db   $0f, $00, $0f, $17, $0f, $00, $0f, $17        ;; 01:5c1f ????????
    db   $0a, $17, $0a, $17, $0a, $18, $0f, $00        ;; 01:5c27 ????????
    db   $0f, $18, $0a, $18, $0a, $18, $0a, $18        ;; 01:5c2f ????????
    db   $0f, $18, $0f, $18, $0f, $18, $0f, $17        ;; 01:5c37 ????????
    db   $0f, $00, $0f, $17, $0f, $00, $0f, $17        ;; 01:5c3f ????????
    db   $0f, $00, $0f, $17, $0a, $17, $0a, $17        ;; 01:5c47 ????????
    db   $0a, $17, $0f, $00, $0f, $17, $0a, $17        ;; 01:5c4f ????????
    db   $0a, $17, $0a, $17, $0f, $17, $0f, $17        ;; 01:5c57 ????????
    db   $0f, $17, $0f, $18, $0f, $00, $0f, $18        ;; 01:5c5f ????????
    db   $0f, $00, $0f, $18, $0f, $00, $0f, $18        ;; 01:5c67 ????????
    db   $0a, $18, $0a, $18, $0a, $18, $0f, $00        ;; 01:5c6f ????????
    db   $0f, $18, $0a, $18, $0a, $18, $0a, $18        ;; 01:5c77 ????????
    db   $0f, $18, $0f, $18, $0f, $18, $0f, $17        ;; 01:5c7f ????????
    db   $0f, $00, $0f, $17, $0f, $00, $0f, $17        ;; 01:5c87 ????????
    db   $0f, $00, $0f, $17, $0a, $17, $0a, $17        ;; 01:5c8f ????????
    db   $0a, $17, $0f, $00, $0f, $17, $0a, $17        ;; 01:5c97 ????????
    db   $0a, $17, $0a, $17, $0f, $17, $0f, $17        ;; 01:5c9f ????????
    db   $0f, $17, $0f, $18, $0f, $00, $0f, $18        ;; 01:5ca7 ????????
    db   $0f, $00, $0f, $18, $0f, $00, $0f, $18        ;; 01:5caf ????????
    db   $0a, $18, $0a, $18, $0a, $18, $0f, $00        ;; 01:5cb7 ????????
    db   $0f, $18, $0a, $18, $0a, $18, $0a, $18        ;; 01:5cbf ????????
    db   $0f, $18, $0f, $18, $0f, $18, $0f, $17        ;; 01:5cc7 ????????
    db   $0f, $00, $0f, $17, $0f, $00, $0f, $17        ;; 01:5ccf ????????
    db   $0f, $00, $0f, $17, $0a, $17, $0a, $17        ;; 01:5cd7 ????????
    db   $0a, $17, $0f, $00, $0f, $17, $0a, $17        ;; 01:5cdf ????????
    db   $0a, $17, $0a, $17, $0f, $17, $0f, $17        ;; 01:5ce7 ????????
    db   $0f, $17, $0f, $ff                            ;; 01:5cef ????

data_01_5cf3:
    db   $80, $00, $20, $80, $51, $1a, $1e, $00        ;; 01:5cf3 ........
    db   $02, $21, $28, $00, $05, $26, $0d, $00        ;; 01:5cfb ........
    db   $02, $26, $53, $00, $07, $26, $09, $00        ;; 01:5d03 ........
    db   $01, $26, $09, $00, $01, $26, $09, $00        ;; 01:5d0b ........
    db   $01, $26, $44, $01, $07, $1a, $0d, $00        ;; 01:5d13 ........
    db   $02, $1a, $0d, $00, $02, $1a, $0d, $00        ;; 01:5d1b ........
    db   $02, $1a, $85, $01, $08, $00, $13, $1a        ;; 01:5d23 ........
    db   $1e, $00, $02, $21, $28, $00, $05, $26        ;; 01:5d2b ........
    db   $0d, $00, $02, $26, $53, $00, $07, $26        ;; 01:5d33 ........
    db   $0a, $00, $01, $26, $0a, $00, $01, $26        ;; 01:5d3b ........
    db   $0a, $00, $01, $26, $44, $01, $07, $26        ;; 01:5d43 ........
    db   $0d, $00, $02, $26, $0d, $00, $02, $26        ;; 01:5d4b ........
    db   $0d, $00, $02, $26, $7a, $01, $08, $00        ;; 01:5d53 ........
    db   $52, $18, $0a, $18, $0a, $15, $0a, $13        ;; 01:5d5b ........
    db   $0f, $00, $0f, $13, $0f, $00, $0f, $13        ;; 01:5d63 .....???
    db   $0f, $00, $0f, $13, $0a, $13, $0a, $13        ;; 01:5d6b ????????
    db   $0a, $13, $0f, $00, $0f, $13, $0a, $13        ;; 01:5d73 ????????
    db   $0a, $13, $0a, $13, $0f, $13, $0f, $13        ;; 01:5d7b ????????
    db   $0f, $13, $0f, $13, $0f, $00, $0f, $13        ;; 01:5d83 ????????
    db   $0f, $00, $0f, $13, $0f, $00, $0f, $13        ;; 01:5d8b ????????
    db   $0a, $13, $0a, $13, $0a, $13, $0f, $00        ;; 01:5d93 ????????
    db   $0f, $13, $0a, $13, $0a, $13, $0a, $13        ;; 01:5d9b ????????
    db   $0f, $13, $0f, $13, $0f, $13, $0f, $b0        ;; 01:5da3 ????????
    db   $13, $0f, $00, $0f, $13, $0f, $00, $0f        ;; 01:5dab ????????
    db   $13, $0f, $00, $0f, $13, $0a, $13, $0a        ;; 01:5db3 ????????
    db   $13, $0a, $13, $0f, $00, $0f, $13, $0a        ;; 01:5dbb ????????
    db   $13, $0a, $13, $0a, $13, $0f, $13, $0f        ;; 01:5dc3 ????????
    db   $13, $0f, $13, $0f, $13, $0f, $00, $0f        ;; 01:5dcb ????????
    db   $13, $0f, $00, $0f, $13, $0f, $00, $0f        ;; 01:5dd3 ????????
    db   $13, $0a, $13, $0a, $13, $0a, $13, $0f        ;; 01:5ddb ????????
    db   $00, $0f, $13, $0a, $13, $0a, $13, $0a        ;; 01:5de3 ????????
    db   $13, $0f, $13, $0f, $13, $0f, $13, $0f        ;; 01:5deb ????????
    db   $13, $0f, $00, $0f, $13, $0f, $00, $0f        ;; 01:5df3 ????????
    db   $13, $0f, $00, $0f, $13, $0a, $13, $0a        ;; 01:5dfb ????????
    db   $13, $0a, $13, $0f, $00, $0f, $13, $0a        ;; 01:5e03 ????????
    db   $13, $0a, $13, $0a, $13, $0f, $13, $0f        ;; 01:5e0b ????????
    db   $13, $0f, $13, $0f, $13, $0f, $00, $0f        ;; 01:5e13 ????????
    db   $13, $0f, $00, $0f, $13, $0f, $00, $0f        ;; 01:5e1b ????????
    db   $13, $0a, $13, $0a, $13, $0a, $13, $0f        ;; 01:5e23 ????????
    db   $00, $0f, $13, $0a, $13, $0a, $13, $0a        ;; 01:5e2b ????????
    db   $13, $0f, $13, $0f, $13, $0f, $13, $0f        ;; 01:5e33 ????????
    db   $11, $0f, $00, $0f, $11, $0f, $00, $0f        ;; 01:5e3b ????????
    db   $11, $0f, $00, $0f, $11, $0a, $11, $0a        ;; 01:5e43 ????????
    db   $11, $0a, $11, $0f, $00, $0f, $11, $0a        ;; 01:5e4b ????????
    db   $11, $0a, $11, $0a, $11, $0f, $11, $0f        ;; 01:5e53 ????????
    db   $11, $0f, $11, $0f, $13, $0f, $00, $0f        ;; 01:5e5b ????????
    db   $13, $0f, $00, $0f, $13, $0f, $00, $0f        ;; 01:5e63 ????????
    db   $13, $0a, $13, $0a, $13, $0a, $13, $0f        ;; 01:5e6b ????????
    db   $00, $0f, $13, $0a, $13, $0a, $13, $0a        ;; 01:5e73 ????????
    db   $13, $0f, $13, $0f, $13, $0f, $13, $0f        ;; 01:5e7b ????????
    db   $11, $0f, $00, $0f, $11, $0f, $00, $0f        ;; 01:5e83 ????????
    db   $11, $0f, $00, $0f, $11, $0a, $11, $0a        ;; 01:5e8b ????????
    db   $11, $0a, $11, $0f, $00, $0f, $11, $0a        ;; 01:5e93 ????????
    db   $11, $0a, $11, $0a, $11, $0f, $11, $0f        ;; 01:5e9b ????????
    db   $11, $0f, $11, $0f, $13, $0f, $00, $0f        ;; 01:5ea3 ????????
    db   $13, $0f, $00, $0f, $13, $0f, $00, $0f        ;; 01:5eab ????????
    db   $13, $0a, $13, $0a, $13, $0a, $13, $0f        ;; 01:5eb3 ????????
    db   $00, $0f, $13, $0a, $13, $0a, $13, $0a        ;; 01:5ebb ????????
    db   $13, $0f, $13, $0f, $13, $0f, $13, $0f        ;; 01:5ec3 ????????
    db   $ff                                           ;; 01:5ecb ?

data_01_5ecc:
    db   $00, $00, $19, $80, $b0, $1f, $b0, $20        ;; 01:5ecc ......??
    db   $ff                                           ;; 01:5ed4 ?

data_01_5ed5:
    dw   data_01_5edd                                  ;; 01:5ed5 pP
    dw   data_01_5f46                                  ;; 01:5ed7 pP
    dw   data_01_5f97                                  ;; 01:5ed9 pP
    dw   data_01_5fe9                                  ;; 01:5edb pP

data_01_5edd:
    db   $08, $00, $f0, $80, $51, $85, $b0, $b1        ;; 01:5edd ........
    db   $1e, $24, $23, $48, $00, $12, $23, $12        ;; 01:5ee5 ........
    db   $22, $0c, $23, $0c, $25, $0c, $23, $48        ;; 01:5eed ????????
    db   $00, $12, $23, $12, $22, $0c, $23, $0c        ;; 01:5ef5 ????????
    db   $25, $0c, $23, $2a, $00, $0c, $23, $12        ;; 01:5efd ????????
    db   $21, $24, $20, $14, $00, $07, $21, $09        ;; 01:5f05 ????????
    db   $1e, $5f, $00, $0d, $1e, $24, $27, $48        ;; 01:5f0d ????????
    db   $00, $12, $27, $12, $25, $0c, $27, $0c        ;; 01:5f15 ????????
    db   $28, $0c, $27, $48, $00, $12, $27, $12        ;; 01:5f1d ????????
    db   $25, $0c, $27, $0c, $28, $0c, $b2, $27        ;; 01:5f25 ????????
    db   $24, $25, $24, $23, $24, $25, $24, $23        ;; 01:5f2d ????????
    db   $5f, $00, $0d, $b3, $27, $24, $25, $24        ;; 01:5f35 ????????
    db   $28, $24, $22, $24, $23, $5f, $00, $0d        ;; 01:5f3d ????????
    db   $ff                                           ;; 01:5f45 ?

data_01_5f46:
    db   $08, $00, $90, $80, $b0, $51, $86, $00        ;; 01:5f46 ........
    db   $24, $b1, $1b, $24, $27, $24, $1b, $24        ;; 01:5f4e ........
    db   $25, $24, $1b, $24, $27, $24, $1b, $24        ;; 01:5f56 ????????
    db   $25, $24, $1b, $24, $27, $24, $25, $24        ;; 01:5f5e ????????
    db   $23, $24, $1c, $24, $28, $24, $1c, $24        ;; 01:5f66 ????????
    db   $28, $24, $1e, $24, $2a, $24, $1e, $24        ;; 01:5f6e ????????
    db   $1c, $24, $1e, $24, $2a, $24, $1e, $24        ;; 01:5f76 ????????
    db   $1c, $24, $1e, $24, $2a, $24, $1c, $24        ;; 01:5f7e ????????
    db   $1c, $24, $b2, $1e, $24, $2a, $24, $1e        ;; 01:5f86 ????????
    db   $48, $b3, $27, $24, $27, $24, $27, $24        ;; 01:5f8e ????????
    db   $ff                                           ;; 01:5f96 ?

data_01_5f97:
    db   $80, $00, $20, $80, $a2, $b0, $a2, $52        ;; 01:5f97 ........
    db   $00, $24, $b1, $17, $36, $17, $12, $17        ;; 01:5f9f ........
    db   $24, $12, $24, $17, $36, $17, $12, $17        ;; 01:5fa7 .???????
    db   $24, $12, $24, $17, $36, $17, $12, $15        ;; 01:5faf ????????
    db   $24, $10, $24, $12, $24, $19, $24, $16        ;; 01:5fb7 ????????
    db   $24, $12, $24, $17, $36, $17, $12, $17        ;; 01:5fbf ????????
    db   $24, $12, $24, $17, $36, $17, $12, $17        ;; 01:5fc7 ????????
    db   $24, $12, $24, $17, $36, $17, $12, $12        ;; 01:5fcf ????????
    db   $24, $16, $24, $b2, $17, $24, $12, $24        ;; 01:5fd7 ????????
    db   $0b, $48, $b3, $17, $24, $12, $24, $0b        ;; 01:5fdf ????????
    db   $24, $ff                                      ;; 01:5fe7 ??

data_01_5fe9:
    db   $00, $00, $f1, $80, $b0, $2a, $2b, $2c        ;; 01:5fe9 ......??
    db   $ff, $fa, $5f, $7e, $60, $84, $61, $0b        ;; 01:5ff1 ????????
    db   $62, $08, $00, $f0, $80, $b0, $51, $8c        ;; 01:5ff9 ????????
    db   $21, $82, $21, $1a, $26, $1a, $29, $1a        ;; 01:6001 ????????
    db   $28, $34, $24, $68, $28, $34, $26, $82        ;; 01:6009 ????????
    db   $26, $1a, $24, $1a, $22, $1a, $24, $34        ;; 01:6011 ????????
    db   $1d, $68, $21, $34, $22, $1a, $21, $1a        ;; 01:6019 ????????
    db   $22, $4e, $22, $1a, $21, $1a, $1f, $1a        ;; 01:6021 ????????
    db   $21, $34, $26, $34, $28, $34, $29, $34        ;; 01:6029 ????????
    db   $2b, $82, $29, $1a, $28, $1a, $26, $1a        ;; 01:6031 ????????
    db   $28, $d0, $21, $82, $21, $1a, $26, $1a        ;; 01:6039 ????????
    db   $29, $1a, $28, $34, $2d, $68, $28, $34        ;; 01:6041 ????????
    db   $26, $82, $26, $1a, $24, $1a, $22, $1a        ;; 01:6049 ????????
    db   $24, $9c, $24, $34, $22, $1a, $21, $1a        ;; 01:6051 ????????
    db   $22, $4e, $22, $1a, $21, $1a, $1f, $1a        ;; 01:6059 ????????
    db   $21, $1a, $1f, $1a, $21, $4e, $21, $1a        ;; 01:6061 ????????
    db   $26, $1a, $29, $1a, $2b, $1a, $29, $1a        ;; 01:6069 ????????
    db   $28, $1a, $29, $1a, $28, $4e, $28, $1a        ;; 01:6071 ????????
    db   $26, $9c, $00, $34, $ff, $08, $00, $f0        ;; 01:6079 ????????
    db   $80, $51, $86, $b0, $0e, $1a, $15, $1a        ;; 01:6081 ????????
    db   $1a, $1a, $15, $1a, $1c, $1a, $15, $1a        ;; 01:6089 ????????
    db   $1d, $1a, $15, $1a, $0c, $1a, $15, $1a        ;; 01:6091 ????????
    db   $18, $1a, $15, $1a, $1c, $1a, $15, $1a        ;; 01:6099 ????????
    db   $1d, $1a, $15, $1a, $0a, $1a, $15, $1a        ;; 01:60a1 ????????
    db   $1a, $1a, $15, $1a, $1d, $1a, $1a, $1a        ;; 01:60a9 ????????
    db   $15, $1a, $1a, $1a, $09, $1a, $11, $1a        ;; 01:60b1 ????????
    db   $18, $1a, $1d, $1a, $1f, $1a, $1d, $1a        ;; 01:60b9 ????????
    db   $18, $1a, $11, $1a, $07, $1a, $16, $1a        ;; 01:60c1 ????????
    db   $1a, $1a, $16, $1a, $1d, $1a, $16, $1a        ;; 01:60c9 ????????
    db   $1a, $1a, $16, $1a, $05, $1a, $11, $1a        ;; 01:60d1 ????????
    db   $15, $1a, $1c, $1a, $1a, $1a, $15, $1a        ;; 01:60d9 ????????
    db   $11, $1a, $15, $1a, $04, $1a, $14, $1a        ;; 01:60e1 ????????
    db   $1a, $1a, $14, $1a, $1c, $1a, $14, $1a        ;; 01:60e9 ????????
    db   $1a, $1a, $14, $1a, $09, $1a, $13, $1a        ;; 01:60f1 ????????
    db   $17, $1a, $1a, $1a, $09, $1a, $13, $1a        ;; 01:60f9 ????????
    db   $19, $1a, $1c, $1a, $0e, $1a, $15, $1a        ;; 01:6101 ????????
    db   $1a, $1a, $15, $1a, $1c, $1a, $15, $1a        ;; 01:6109 ????????
    db   $1d, $1a, $15, $1a, $0c, $1a, $15, $1a        ;; 01:6111 ????????
    db   $18, $1a, $15, $1a, $1c, $1a, $15, $1a        ;; 01:6119 ????????
    db   $1d, $1a, $15, $1a, $22, $1a, $1d, $1a        ;; 01:6121 ????????
    db   $1a, $1a, $16, $1a, $15, $1a, $16, $1a        ;; 01:6129 ????????
    db   $1a, $1a, $1d, $1a, $1f, $1a, $1c, $1a        ;; 01:6131 ????????
    db   $18, $1a, $15, $1a, $11, $1a, $15, $1a        ;; 01:6139 ????????
    db   $1a, $1a, $1d, $1a, $13, $1a, $16, $1a        ;; 01:6141 ????????
    db   $1a, $1a, $1d, $1a, $0c, $1a, $16, $1a        ;; 01:6149 ????????
    db   $1a, $1a, $1c, $1a, $05, $1a, $15, $1a        ;; 01:6151 ????????
    db   $18, $1a, $1c, $1a, $1d, $1a, $1a, $1a        ;; 01:6159 ????????
    db   $21, $1a, $1d, $1a, $16, $1a, $1a, $1a        ;; 01:6161 ????????
    db   $1f, $1a, $16, $1a, $15, $1a, $19, $1a        ;; 01:6169 ????????
    db   $1c, $1a, $1f, $1a, $0e, $1a, $15, $1a        ;; 01:6171 ????????
    db   $1a, $1a, $1c, $1a, $1e, $34, $01, $08        ;; 01:6179 ????????
    db   $00, $2c, $ff, $80, $00, $20, $80, $a1        ;; 01:6181 ????????
    db   $b0, $a1, $52, $1a, $34, $00, $34, $00        ;; 01:6189 ????????
    db   $34, $1a, $34, $18, $34, $00, $34, $00        ;; 01:6191 ????????
    db   $34, $18, $34, $16, $34, $00, $34, $00        ;; 01:6199 ????????
    db   $34, $16, $34, $15, $34, $00, $34, $00        ;; 01:61a1 ????????
    db   $34, $15, $34, $13, $34, $00, $34, $00        ;; 01:61a9 ????????
    db   $34, $13, $34, $11, $34, $00, $34, $00        ;; 01:61b1 ????????
    db   $34, $11, $34, $10, $34, $00, $34, $00        ;; 01:61b9 ????????
    db   $34, $10, $34, $15, $34, $00, $34, $15        ;; 01:61c1 ????????
    db   $34, $00, $34, $1a, $34, $00, $34, $00        ;; 01:61c9 ????????
    db   $34, $1a, $34, $18, $34, $00, $34, $00        ;; 01:61d1 ????????
    db   $34, $18, $34, $16, $34, $00, $34, $00        ;; 01:61d9 ????????
    db   $34, $16, $34, $15, $34, $00, $34, $0e        ;; 01:61e1 ????????
    db   $34, $00, $34, $13, $34, $00, $34, $18        ;; 01:61e9 ????????
    db   $34, $00, $34, $11, $34, $00, $34, $16        ;; 01:61f1 ????????
    db   $34, $00, $34, $10, $34, $00, $34, $15        ;; 01:61f9 ????????
    db   $34, $00, $34, $1a, $4e, $09, $1a, $1a        ;; 01:6201 ????????
    db   $68, $ff, $00, $00, $f1, $80, $b0, $0e        ;; 01:6209 ????????
    db   $ff, $ff, $1b, $62, $9b, $62, $89, $63        ;; 01:6211 ????????
    db   $90, $64, $08, $00, $f0, $80, $b0, $51        ;; 01:6219 ????????
    db   $83, $26, $07, $28, $07, $29, $07, $2b        ;; 01:6221 ????????
    db   $07, $b0, $b1, $2d, $54, $2b, $1c, $29        ;; 01:6229 ????????
    db   $07, $28, $07, $29, $38, $26, $0e, $29        ;; 01:6231 ????????
    db   $0e, $2d, $0e, $30, $2a, $2e, $07, $2d        ;; 01:6239 ????????
    db   $07, $2e, $4a, $00, $42, $b2, $26, $07        ;; 01:6241 ????????
    db   $28, $07, $29, $07, $2b, $07, $b3, $2e        ;; 01:6249 ????????
    db   $1c, $2d, $1c, $34, $38, $32, $1c, $2d        ;; 01:6251 ????????
    db   $07, $2b, $07, $2d, $32, $00, $06, $26        ;; 01:6259 ????????
    db   $0e, $29, $0e, $2d, $0e, $30, $2a, $2e        ;; 01:6261 ????????
    db   $07, $2d, $07, $2e, $4a, $00, $42, $2e        ;; 01:6269 ????????
    db   $1c, $2d, $1c, $34, $38, $32, $1c, $2d        ;; 01:6271 ????????
    db   $07, $2b, $07, $2d, $32, $00, $06, $26        ;; 01:6279 ????????
    db   $0e, $28, $0e, $29, $0e, $2b, $46, $29        ;; 01:6281 ????????
    db   $0e, $28, $0e, $26, $0e, $28, $4a, $00        ;; 01:6289 ????????
    db   $0a, $26, $07, $28, $07, $29, $07, $2b        ;; 01:6291 ????????
    db   $07, $ff, $08, $00, $a0, $80, $b0, $51        ;; 01:6299 ????????
    db   $83, $00, $1c, $b0, $b1, $00, $0e, $15        ;; 01:62a1 ????????
    db   $0e, $15, $0e, $00, $0e, $15, $0e, $15        ;; 01:62a9 ????????
    db   $0e, $00, $0e, $15, $0e, $00, $0e, $15        ;; 01:62b1 ????????
    db   $0e, $15, $0e, $00, $0e, $15, $0e, $15        ;; 01:62b9 ????????
    db   $0e, $00, $0e, $15, $0e, $b2, $00, $0e        ;; 01:62c1 ????????
    db   $16, $0e, $16, $0e, $00, $0e, $16, $0e        ;; 01:62c9 ????????
    db   $16, $0e, $00, $0e, $16, $0e, $00, $0e        ;; 01:62d1 ????????
    db   $1f, $0e, $1f, $0e, $00, $0e, $1f, $0e        ;; 01:62d9 ????????
    db   $1f, $0e, $00, $0e, $1f, $0e, $b3, $00        ;; 01:62e1 ????????
    db   $0e, $1f, $0e, $1f, $0e, $00, $0e, $1f        ;; 01:62e9 ????????
    db   $0e, $1f, $0e, $00, $0e, $1f, $0e, $00        ;; 01:62f1 ????????
    db   $0e, $1f, $0e, $1f, $0e, $00, $0e, $1f        ;; 01:62f9 ????????
    db   $0e, $1f, $0e, $00, $0e, $1f, $0e, $00        ;; 01:6301 ????????
    db   $0e, $15, $0e, $15, $0e, $00, $0e, $15        ;; 01:6309 ????????
    db   $0e, $15, $0e, $00, $0e, $15, $0e, $00        ;; 01:6311 ????????
    db   $0e, $15, $0e, $15, $0e, $00, $0e, $15        ;; 01:6319 ????????
    db   $0e, $15, $0e, $00, $0e, $15, $0e, $00        ;; 01:6321 ????????
    db   $0e, $16, $0e, $16, $0e, $00, $0e, $16        ;; 01:6329 ????????
    db   $0e, $16, $0e, $00, $0e, $16, $0e, $00        ;; 01:6331 ????????
    db   $0e, $16, $0e, $16, $0e, $00, $0e, $16        ;; 01:6339 ????????
    db   $0e, $16, $0e, $00, $0e, $16, $0e, $00        ;; 01:6341 ????????
    db   $0e, $15, $0e, $15, $0e, $00, $0e, $15        ;; 01:6349 ????????
    db   $0e, $15, $0e, $00, $0e, $15, $0e, $00        ;; 01:6351 ????????
    db   $0e, $15, $0e, $15, $0e, $00, $0e, $15        ;; 01:6359 ????????
    db   $0e, $15, $0e, $00, $0e, $15, $0e, $00        ;; 01:6361 ????????
    db   $0e, $13, $0e, $13, $0e, $00, $0e, $13        ;; 01:6369 ????????
    db   $0e, $13, $0e, $00, $0e, $13, $0e, $00        ;; 01:6371 ????????
    db   $0e, $13, $0e, $13, $0e, $00, $0e, $13        ;; 01:6379 ????????
    db   $0e, $13, $0e, $00, $0e, $13, $0e, $ff        ;; 01:6381 ????????
    db   $80, $00, $20, $80, $a1, $b0, $a1, $51        ;; 01:6389 ????????
    db   $00, $1c, $b0, $b1, $0e, $0e, $29, $0e        ;; 01:6391 ????????
    db   $29, $0e, $0e, $0e, $29, $0e, $29, $0e        ;; 01:6399 ????????
    db   $15, $0e, $29, $0e, $0e, $0e, $29, $0e        ;; 01:63a1 ????????
    db   $29, $0e, $0e, $0e, $29, $0e, $29, $0e        ;; 01:63a9 ????????
    db   $15, $0e, $29, $0e, $b2, $0f, $0e, $2b        ;; 01:63b1 ????????
    db   $0e, $2b, $0e, $0f, $0e, $2b, $0e, $2b        ;; 01:63b9 ????????
    db   $0e, $16, $0e, $2b, $0e, $0f, $0e, $32        ;; 01:63c1 ????????
    db   $07, $32, $07, $32, $07, $32, $07, $0f        ;; 01:63c9 ????????
    db   $0e, $32, $07, $32, $07, $32, $07, $32        ;; 01:63d1 ????????
    db   $07, $16, $0e, $00, $0e, $b3, $0d, $0e        ;; 01:63d9 ????????
    db   $27, $0e, $27, $0e, $0d, $0e, $27, $0e        ;; 01:63e1 ????????
    db   $27, $0e, $13, $0e, $27, $0e, $0d, $0e        ;; 01:63e9 ????????
    db   $32, $07, $32, $07, $32, $07, $32, $07        ;; 01:63f1 ????????
    db   $0d, $0e, $32, $07, $32, $07, $32, $07        ;; 01:63f9 ????????
    db   $32, $07, $07, $0e, $00, $0e, $0e, $0e        ;; 01:6401 ????????
    db   $29, $0e, $29, $0e, $0e, $0e, $29, $0e        ;; 01:6409 ????????
    db   $29, $0e, $15, $0e, $29, $0e, $0e, $0e        ;; 01:6411 ????????
    db   $29, $0e, $29, $0e, $0e, $0e, $29, $0e        ;; 01:6419 ????????
    db   $29, $0e, $15, $0e, $29, $0e, $0f, $0e        ;; 01:6421 ????????
    db   $2b, $0e, $2b, $0e, $0f, $0e, $2b, $0e        ;; 01:6429 ????????
    db   $2b, $0e, $16, $0e, $2b, $0e, $0f, $0e        ;; 01:6431 ????????
    db   $32, $07, $32, $07, $32, $07, $32, $07        ;; 01:6439 ????????
    db   $0f, $0e, $32, $07, $32, $07, $32, $07        ;; 01:6441 ????????
    db   $32, $07, $16, $0e, $00, $0e, $0e, $0e        ;; 01:6449 ????????
    db   $29, $0e, $29, $0e, $0e, $0e, $29, $0e        ;; 01:6451 ????????
    db   $29, $0e, $0c, $0e, $29, $0e, $0b, $0e        ;; 01:6459 ????????
    db   $29, $0e, $29, $0e, $0b, $0e, $29, $0e        ;; 01:6461 ????????
    db   $29, $0e, $0b, $0e, $29, $0e, $10, $0e        ;; 01:6469 ????????
    db   $26, $0e, $26, $0e, $10, $0e, $26, $0e        ;; 01:6471 ????????
    db   $26, $0e, $10, $0e, $26, $0e, $09, $0e        ;; 01:6479 ????????
    db   $25, $0e, $25, $0e, $09, $0e, $25, $0e        ;; 01:6481 ????????
    db   $25, $0e, $09, $0e, $25, $0e, $ff, $00        ;; 01:6489 ????????
    db   $00, $20, $80, $0b, $b0, $0c, $ff, $a0        ;; 01:6491 ????????
    db   $64, $45, $65, $d2, $66, $4f, $67, $08        ;; 01:6499 ????????
    db   $00, $f0, $80, $51, $8c, $1c, $1a, $01        ;; 01:64a1 ????????
    db   $1a, $1c, $1a, $01, $1a, $1c, $1a, $01        ;; 01:64a9 ????????
    db   $1a, $1c, $1a, $01, $1a, $1c, $1a, $01        ;; 01:64b1 ????????
    db   $1a, $1c, $1a, $01, $1a, $1d, $1a, $01        ;; 01:64b9 ????????
    db   $1a, $1d, $1a, $01, $1a, $1d, $1a, $01        ;; 01:64c1 ????????
    db   $1a, $1c, $1a, $01, $1a, $1c, $1a, $01        ;; 01:64c9 ????????
    db   $1a, $1c, $1a, $01, $1a, $1a, $1a, $01        ;; 01:64d1 ????????
    db   $1a, $1a, $1a, $01, $1a, $1a, $1a, $01        ;; 01:64d9 ????????
    db   $1a, $1c, $1a, $01, $1a, $1c, $1a, $01        ;; 01:64e1 ????????
    db   $1a, $1c, $1a, $01, $1a, $1a, $1a, $01        ;; 01:64e9 ????????
    db   $1a, $1a, $1a, $01, $1a, $1a, $1a, $01        ;; 01:64f1 ????????
    db   $1a, $1c, $1a, $01, $1a, $1c, $1a, $01        ;; 01:64f9 ????????
    db   $1a, $51, $89, $1c, $0d, $1a, $0d, $18        ;; 01:6501 ????????
    db   $0d, $17, $0d, $15, $82, $17, $0d, $18        ;; 01:6509 ????????
    db   $0d, $1a, $68, $15, $34, $14, $82, $15        ;; 01:6511 ????????
    db   $0d, $17, $0d, $18, $68, $15, $34, $8c        ;; 01:6519 ????????
    db   $34, $06, $35, $06, $37, $07, $39, $07        ;; 01:6521 ????????
    db   $34, $0c, $00, $0e, $83, $1d, $34, $1f        ;; 01:6529 ????????
    db   $34, $8c, $34, $06, $35, $06, $37, $07        ;; 01:6531 ????????
    db   $39, $07, $34, $0d, $00, $0d, $83, $1d        ;; 01:6539 ????????
    db   $34, $1c, $34, $ff, $08, $00, $a0, $80        ;; 01:6541 ????????
    db   $51, $86, $09, $15, $01, $05, $15, $0f        ;; 01:6549 ????????
    db   $01, $0b, $15, $0f, $01, $0b, $21, $0f        ;; 01:6551 ????????
    db   $01, $0b, $2d, $09, $01, $04, $2d, $09        ;; 01:6559 ????????
    db   $01, $04, $2d, $09, $01, $04, $2d, $09        ;; 01:6561 ????????
    db   $01, $04, $09, $15, $01, $05, $15, $0f        ;; 01:6569 ????????
    db   $01, $0b, $15, $0f, $01, $0b, $21, $0f        ;; 01:6571 ????????
    db   $01, $0b, $2d, $09, $01, $04, $2d, $09        ;; 01:6579 ????????
    db   $01, $04, $2d, $09, $01, $04, $2d, $09        ;; 01:6581 ????????
    db   $01, $04, $09, $15, $01, $05, $15, $0f        ;; 01:6589 ????????
    db   $01, $0b, $15, $0f, $01, $0b, $21, $0f        ;; 01:6591 ????????
    db   $01, $0b, $2d, $09, $01, $04, $2d, $09        ;; 01:6599 ????????
    db   $01, $04, $2d, $09, $01, $04, $2d, $09        ;; 01:65a1 ????????
    db   $01, $04, $09, $15, $01, $05, $15, $0f        ;; 01:65a9 ????????
    db   $01, $0b, $15, $0f, $01, $0b, $21, $0f        ;; 01:65b1 ????????
    db   $01, $0b, $2d, $09, $01, $04, $2d, $09        ;; 01:65b9 ????????
    db   $01, $04, $2d, $09, $01, $04, $2d, $09        ;; 01:65c1 ????????
    db   $01, $04, $08, $10, $01, $0a, $14, $0f        ;; 01:65c9 ????????
    db   $01, $0b, $14, $0f, $01, $0b, $20, $0f        ;; 01:65d1 ????????
    db   $01, $0b, $2c, $09, $01, $04, $2c, $09        ;; 01:65d9 ????????
    db   $01, $04, $2c, $09, $01, $04, $2c, $09        ;; 01:65e1 ????????
    db   $01, $04, $08, $10, $01, $0a, $14, $0f        ;; 01:65e9 ????????
    db   $01, $0b, $14, $0f, $01, $0b, $20, $0f        ;; 01:65f1 ????????
    db   $01, $0b, $2c, $09, $01, $04, $2c, $09        ;; 01:65f9 ????????
    db   $01, $04, $2c, $09, $01, $04, $2c, $09        ;; 01:6601 ????????
    db   $01, $04, $08, $10, $01, $0a, $14, $0f        ;; 01:6609 ????????
    db   $01, $0b, $14, $0f, $01, $0b, $20, $0f        ;; 01:6611 ????????
    db   $01, $0b, $2c, $09, $01, $04, $2c, $09        ;; 01:6619 ????????
    db   $01, $04, $2c, $09, $01, $04, $2c, $09        ;; 01:6621 ????????
    db   $01, $04, $04, $10, $01, $0a, $14, $0f        ;; 01:6629 ????????
    db   $01, $0b, $14, $0f, $01, $0b, $20, $0f        ;; 01:6631 ????????
    db   $01, $0b, $2c, $09, $01, $04, $2c, $09        ;; 01:6639 ????????
    db   $01, $04, $2c, $09, $01, $04, $2c, $09        ;; 01:6641 ????????
    db   $01, $04, $00, $10, $01, $0a, $15, $0f        ;; 01:6649 ????????
    db   $01, $0b, $15, $0f, $01, $0b, $21, $0f        ;; 01:6651 ????????
    db   $01, $0b, $2d, $09, $01, $04, $2d, $09        ;; 01:6659 ????????
    db   $01, $04, $2d, $09, $01, $04, $2d, $09        ;; 01:6661 ????????
    db   $01, $04, $00, $10, $01, $0a, $15, $0f        ;; 01:6669 ????????
    db   $01, $0b, $15, $0f, $01, $0b, $21, $0f        ;; 01:6671 ????????
    db   $01, $0b, $2d, $09, $01, $04, $2d, $09        ;; 01:6679 ????????
    db   $01, $04, $2d, $09, $01, $04, $2d, $09        ;; 01:6681 ????????
    db   $01, $04, $00, $10, $01, $0a, $10, $0f        ;; 01:6689 ????????
    db   $01, $0b, $10, $0f, $01, $0b, $1c, $0f        ;; 01:6691 ????????
    db   $01, $0b, $28, $09, $01, $04, $28, $09        ;; 01:6699 ????????
    db   $01, $04, $28, $09, $01, $04, $28, $09        ;; 01:66a1 ????????
    db   $01, $04, $00, $1a, $10, $0f, $01, $0b        ;; 01:66a9 ????????
    db   $1c, $0f, $01, $0b, $28, $1a, $01, $1a        ;; 01:66b1 ????????
    db   $00, $1a, $86, $10, $1a, $00, $1a, $8b        ;; 01:66b9 ????????
    db   $0e, $34, $10, $33, $00, $01, $86, $10        ;; 01:66c1 ????????
    db   $1a, $00, $1a, $8b, $0e, $34, $14, $34        ;; 01:66c9 ????????
    db   $ff, $80, $00, $20, $80, $a1, $51, $23        ;; 01:66d1 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:66d9 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:66e1 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $24        ;; 01:66e9 ????????
    db   $1a, $00, $1a, $24, $1a, $00, $1a, $24        ;; 01:66f1 ????????
    db   $1a, $00, $1a, $24, $1a, $00, $1a, $24        ;; 01:66f9 ????????
    db   $1a, $00, $1a, $24, $1a, $00, $1a, $23        ;; 01:6701 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:6709 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:6711 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:6719 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:6721 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $23        ;; 01:6729 ????????
    db   $1a, $00, $1a, $23, $1a, $00, $1a, $00        ;; 01:6731 ????????
    db   $9c, $00, $9c, $00, $9c, $00, $9c, $00        ;; 01:6739 ????????
    db   $34, $00, $01, $21, $33, $22, $34, $00        ;; 01:6741 ????????
    db   $34, $21, $34, $23, $34, $ff, $00, $00        ;; 01:6749 ????????
    db   $f1, $80, $b0, $0e, $ff, $5e, $67, $72        ;; 01:6751 ????????
    db   $69, $9f, $6c, $5b, $6e, $08, $00, $ff        ;; 01:6759 ????????
    db   $80, $51, $87, $12, $30, $18, $30, $1d        ;; 01:6761 ????????
    db   $30, $23, $30, $28, $60, $85, $51, $b0        ;; 01:6769 ????????
    db   $b1, $00, $18, $12, $0c, $00, $0c, $14        ;; 01:6771 ????????
    db   $22, $00, $02, $16, $0c, $17, $0c, $00        ;; 01:6779 ????????
    db   $06, $19, $06, $1a, $30, $1e, $18, $1c        ;; 01:6781 ????????
    db   $0c, $00, $06, $1f, $06, $23, $22, $00        ;; 01:6789 ????????
    db   $02, $23, $0c, $21, $0c, $23, $0c, $26        ;; 01:6791 ????????
    db   $18, $34, $06, $31, $06, $2c, $06, $30        ;; 01:6799 ????????
    db   $06, $29, $06, $2a, $06, $35, $06, $31        ;; 01:67a1 ????????
    db   $06, $30, $06, $31, $06, $2c, $06, $2d        ;; 01:67a9 ????????
    db   $06, $00, $18, $12, $0c, $00, $0c, $14        ;; 01:67b1 ????????
    db   $22, $00, $02, $16, $0c, $17, $0c, $00        ;; 01:67b9 ????????
    db   $06, $19, $06, $1a, $30, $1e, $18, $1c        ;; 01:67c1 ????????
    db   $30, $00, $0c, $1c, $0c, $1f, $0c, $00        ;; 01:67c9 ????????
    db   $06, $23, $06, $26, $30, $20, $06, $24        ;; 01:67d1 ????????
    db   $06, $23, $06, $29, $06, $2c, $06, $1b        ;; 01:67d9 ????????
    db   $06, $22, $06, $26, $06, $83, $b2, $25        ;; 01:67e1 ????????
    db   $06, $2a, $06, $2a, $06, $2e, $06, $2e        ;; 01:67e9 ????????
    db   $06, $31, $06, $31, $06, $36, $06, $37        ;; 01:67f1 ????????
    db   $06, $32, $06, $32, $06, $2f, $06, $2f        ;; 01:67f9 ????????
    db   $06, $2b, $06, $2b, $06, $26, $06, $27        ;; 01:6801 ????????
    db   $06, $2c, $06, $2c, $06, $30, $06, $30        ;; 01:6809 ????????
    db   $06, $33, $06, $33, $06, $38, $06, $39        ;; 01:6811 ????????
    db   $06, $34, $06, $34, $06, $31, $06, $31        ;; 01:6819 ????????
    db   $06, $2d, $06, $2d, $06, $28, $06, $29        ;; 01:6821 ????????
    db   $06, $2e, $06, $2e, $06, $32, $06, $32        ;; 01:6829 ????????
    db   $06, $35, $06, $35, $06, $3a, $06, $3b        ;; 01:6831 ????????
    db   $06, $36, $06, $36, $06, $33, $06, $33        ;; 01:6839 ????????
    db   $06, $2f, $06, $2f, $06, $2a, $06, $2b        ;; 01:6841 ????????
    db   $06, $30, $06, $30, $06, $34, $06, $34        ;; 01:6849 ????????
    db   $06, $37, $06, $37, $06, $3c, $06, $37        ;; 01:6851 ????????
    db   $06, $34, $06, $34, $06, $30, $06, $30        ;; 01:6859 ????????
    db   $06, $2e, $06, $2b, $06, $28, $06, $b3        ;; 01:6861 ????????
    db   $83, $25, $06, $2a, $06, $2a, $06, $2e        ;; 01:6869 ????????
    db   $06, $2e, $06, $31, $06, $31, $06, $36        ;; 01:6871 ????????
    db   $06, $37, $06, $32, $06, $32, $06, $2f        ;; 01:6879 ????????
    db   $06, $2f, $06, $2b, $06, $2b, $06, $26        ;; 01:6881 ????????
    db   $06, $27, $06, $2c, $06, $2c, $06, $30        ;; 01:6889 ????????
    db   $06, $30, $06, $33, $06, $33, $06, $38        ;; 01:6891 ????????
    db   $06, $39, $06, $34, $06, $34, $06, $31        ;; 01:6899 ????????
    db   $06, $31, $06, $2d, $06, $2d, $06, $28        ;; 01:68a1 ????????
    db   $06, $29, $06, $2e, $06, $2e, $06, $32        ;; 01:68a9 ????????
    db   $06, $32, $06, $35, $06, $35, $06, $3a        ;; 01:68b1 ????????
    db   $06, $3b, $06, $36, $06, $36, $06, $33        ;; 01:68b9 ????????
    db   $06, $33, $06, $2f, $06, $2f, $06, $2a        ;; 01:68c1 ????????
    db   $06, $2b, $06, $30, $06, $30, $06, $34        ;; 01:68c9 ????????
    db   $06, $34, $06, $37, $06, $37, $06, $3c        ;; 01:68d1 ????????
    db   $06, $37, $06, $34, $06, $34, $06, $30        ;; 01:68d9 ????????
    db   $06, $30, $06, $2e, $06, $2b, $06, $28        ;; 01:68e1 ????????
    db   $06, $8b, $00, $0c, $2b, $0c, $2d, $0c        ;; 01:68e9 ????????
    db   $2f, $0c, $32, $24, $36, $0c, $34, $24        ;; 01:68f1 ????????
    db   $31, $0c, $2d, $30, $00, $0c, $2b, $0c        ;; 01:68f9 ????????
    db   $2d, $0c, $2f, $0c, $32, $24, $36, $0c        ;; 01:6901 ????????
    db   $34, $18, $39, $48, $00, $0c, $28, $0c        ;; 01:6909 ????????
    db   $29, $0c, $2b, $0c, $2d, $24, $30, $0c        ;; 01:6911 ????????
    db   $34, $24, $32, $0c, $2f, $24, $2d, $0c        ;; 01:6919 ????????
    db   $00, $18, $29, $0c, $2b, $0c, $2d, $18        ;; 01:6921 ????????
    db   $30, $18, $2f, $24, $2d, $0c, $2b, $30        ;; 01:6929 ????????
    db   $00, $0c, $2a, $0c, $2b, $0c, $2d, $0c        ;; 01:6931 ????????
    db   $2f, $24, $32, $0c, $36, $24, $34, $0c        ;; 01:6939 ????????
    db   $39, $30, $00, $18, $3b, $24, $39, $0c        ;; 01:6941 ????????
    db   $38, $0c, $39, $0c, $3c, $24, $3e, $0c        ;; 01:6949 ????????
    db   $3b, $30, $00, $18, $2a, $0c, $2b, $0c        ;; 01:6951 ????????
    db   $2f, $24, $32, $0c, $36, $24, $34, $0c        ;; 01:6959 ????????
    db   $39, $24, $3b, $0c, $36, $38, $00, $04        ;; 01:6961 ????????
    db   $34, $0c, $36, $0c, $37, $0c, $36, $60        ;; 01:6969 ????????
    db   $ff, $08, $00, $00, $80, $51, $87, $15        ;; 01:6971 ????????
    db   $06, $16, $06, $17, $06, $18, $06, $17        ;; 01:6979 ????????
    db   $06, $18, $06, $19, $06, $1a, $06, $19        ;; 01:6981 ????????
    db   $06, $1a, $06, $1b, $06, $1c, $06, $1b        ;; 01:6989 ????????
    db   $06, $1c, $06, $1d, $06, $1e, $06, $1d        ;; 01:6991 ????????
    db   $06, $1e, $06, $1f, $06, $20, $06, $1f        ;; 01:6999 ????????
    db   $06, $20, $06, $21, $06, $22, $06, $21        ;; 01:69a1 ????????
    db   $06, $22, $06, $23, $06, $24, $06, $23        ;; 01:69a9 ????????
    db   $06, $24, $06, $25, $06, $26, $06, $25        ;; 01:69b1 ????????
    db   $06, $26, $06, $27, $06, $28, $06, $27        ;; 01:69b9 ????????
    db   $06, $28, $06, $29, $06, $2a, $06, $29        ;; 01:69c1 ????????
    db   $06, $2a, $06, $2b, $06, $2c, $06, $2b        ;; 01:69c9 ????????
    db   $06, $2c, $06, $2d, $06, $2e, $06, $83        ;; 01:69d1 ????????
    db   $b0, $b1, $83, $1e, $06, $20, $06, $1e        ;; 01:69d9 ????????
    db   $06, $20, $06, $1e, $06, $20, $06, $1e        ;; 01:69e1 ????????
    db   $06, $20, $06, $1e, $06, $20, $06, $1e        ;; 01:69e9 ????????
    db   $06, $20, $06, $1e, $06, $20, $06, $1e        ;; 01:69f1 ????????
    db   $06, $20, $06, $1e, $06, $20, $06, $1e        ;; 01:69f9 ????????
    db   $06, $20, $06, $1e, $06, $20, $06, $1e        ;; 01:6a01 ????????
    db   $06, $20, $06, $1e, $06, $20, $06, $22        ;; 01:6a09 ????????
    db   $06, $23, $06, $22, $06, $20, $06, $1e        ;; 01:6a11 ????????
    db   $06, $1a, $06, $1c, $06, $1e, $06, $1c        ;; 01:6a19 ????????
    db   $06, $1e, $06, $1c, $06, $1e, $06, $1c        ;; 01:6a21 ????????
    db   $06, $1e, $06, $1c, $06, $1e, $06, $1c        ;; 01:6a29 ????????
    db   $06, $1e, $06, $1c, $06, $1e, $06, $1c        ;; 01:6a31 ????????
    db   $06, $1e, $06, $1c, $06, $1e, $06, $1c        ;; 01:6a39 ????????
    db   $06, $1e, $06, $85, $29, $06, $26, $06        ;; 01:6a41 ????????
    db   $23, $06, $26, $06, $21, $06, $22, $06        ;; 01:6a49 ????????
    db   $2b, $06, $1b, $06, $28, $06, $29, $06        ;; 01:6a51 ????????
    db   $24, $06, $23, $06, $83, $1e, $06, $20        ;; 01:6a59 ????????
    db   $06, $1e, $06, $20, $06, $1e, $06, $20        ;; 01:6a61 ????????
    db   $06, $1e, $06, $20, $06, $1e, $06, $20        ;; 01:6a69 ????????
    db   $06, $1e, $06, $20, $06, $1e, $06, $20        ;; 01:6a71 ????????
    db   $06, $1e, $06, $20, $06, $1e, $06, $20        ;; 01:6a79 ????????
    db   $06, $1e, $06, $20, $06, $1e, $06, $20        ;; 01:6a81 ????????
    db   $06, $1e, $06, $20, $06, $1e, $06, $20        ;; 01:6a89 ????????
    db   $06, $22, $06, $23, $06, $22, $06, $20        ;; 01:6a91 ????????
    db   $06, $1e, $06, $1a, $06, $1c, $06, $1e        ;; 01:6a99 ????????
    db   $06, $1c, $06, $1e, $06, $1c, $06, $1e        ;; 01:6aa1 ????????
    db   $06, $1c, $06, $1e, $06, $1c, $06, $1e        ;; 01:6aa9 ????????
    db   $06, $1c, $06, $1e, $06, $1c, $06, $1e        ;; 01:6ab1 ????????
    db   $06, $1c, $06, $1e, $06, $1c, $06, $1e        ;; 01:6ab9 ????????
    db   $06, $1c, $06, $1e, $06, $1c, $06, $1e        ;; 01:6ac1 ????????
    db   $06, $1c, $06, $1e, $06, $8c, $21, $06        ;; 01:6ac9 ????????
    db   $25, $06, $27, $06, $2b, $06, $2e, $06        ;; 01:6ad1 ????????
    db   $1e, $06, $23, $06, $27, $06, $b2, $16        ;; 01:6ad9 ????????
    db   $24, $16, $06, $16, $06, $17, $30, $18        ;; 01:6ae1 ????????
    db   $24, $18, $06, $18, $06, $19, $30, $1a        ;; 01:6ae9 ????????
    db   $24, $1a, $06, $1a, $06, $1b, $24, $1b        ;; 01:6af1 ????????
    db   $0c, $1c, $54, $1c, $0c, $b3, $19, $24        ;; 01:6af9 ????????
    db   $19, $06, $19, $06, $1a, $30, $1b, $24        ;; 01:6b01 ????????
    db   $1b, $06, $1b, $06, $1c, $30, $1d, $24        ;; 01:6b09 ????????
    db   $1d, $06, $1d, $06, $1e, $24, $1e, $0c        ;; 01:6b11 ????????
    db   $1f, $54, $1f, $0c, $83, $1f, $08, $23        ;; 01:6b19 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b21 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b29 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b31 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b39 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b41 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b49 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b51 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b59 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b61 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b69 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6b71 ????????
    db   $08, $1f, $08, $23, $08, $1d, $08, $21        ;; 01:6b79 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6b81 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6b89 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6b91 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6b99 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6ba1 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6ba9 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6bb1 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6bb9 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6bc1 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6bc9 ????????
    db   $08, $1d, $08, $21, $08, $1d, $08, $21        ;; 01:6bd1 ????????
    db   $08, $1d, $08, $21, $08, $1f, $08, $23        ;; 01:6bd9 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6be1 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6be9 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6bf1 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6bf9 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6c01 ????????
    db   $08, $1f, $08, $23, $08, $1e, $08, $23        ;; 01:6c09 ????????
    db   $08, $1e, $08, $23, $08, $1e, $08, $23        ;; 01:6c11 ????????
    db   $08, $1e, $08, $21, $08, $1e, $08, $21        ;; 01:6c19 ????????
    db   $08, $1e, $08, $21, $08, $21, $08, $24        ;; 01:6c21 ????????
    db   $08, $21, $08, $24, $08, $21, $08, $24        ;; 01:6c29 ????????
    db   $08, $21, $08, $24, $08, $21, $08, $24        ;; 01:6c31 ????????
    db   $08, $21, $08, $24, $08, $1f, $08, $23        ;; 01:6c39 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6c41 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6c49 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6c51 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6c59 ????????
    db   $08, $1f, $08, $23, $08, $1f, $08, $23        ;; 01:6c61 ????????
    db   $08, $1f, $08, $23, $08, $20, $08, $23        ;; 01:6c69 ????????
    db   $08, $20, $08, $23, $08, $20, $08, $23        ;; 01:6c71 ????????
    db   $08, $20, $08, $23, $08, $20, $08, $23        ;; 01:6c79 ????????
    db   $08, $20, $08, $23, $08, $1f, $08, $22        ;; 01:6c81 ????????
    db   $08, $1f, $08, $22, $08, $1f, $08, $22        ;; 01:6c89 ????????
    db   $08, $1f, $08, $22, $08, $1f, $08, $22        ;; 01:6c91 ????????
    db   $08, $1f, $08, $22, $08, $ff, $80, $00        ;; 01:6c99 ????????
    db   $20, $80, $a1, $51, $06, $30, $0c, $30        ;; 01:6ca1 ????????
    db   $11, $30, $17, $30, $1c, $60, $b0, $a1        ;; 01:6ca9 ????????
    db   $52, $b1, $0b, $0c, $12, $18, $06, $0c        ;; 01:6cb1 ????????
    db   $0b, $0c, $12, $18, $06, $0c, $0b, $0c        ;; 01:6cb9 ????????
    db   $12, $18, $06, $0c, $0b, $0c, $12, $18        ;; 01:6cc1 ????????
    db   $06, $0c, $09, $0c, $10, $18, $09, $0c        ;; 01:6cc9 ????????
    db   $09, $0c, $10, $18, $09, $0c, $1c, $08        ;; 01:6cd1 ????????
    db   $16, $08, $1d, $08, $00, $08, $1e, $08        ;; 01:6cd9 ????????
    db   $10, $08, $19, $08, $1b, $08, $0e, $08        ;; 01:6ce1 ????????
    db   $16, $08, $15, $08, $11, $08, $0b, $0c        ;; 01:6ce9 ????????
    db   $12, $18, $06, $0c, $0b, $0c, $12, $18        ;; 01:6cf1 ????????
    db   $06, $0c, $0b, $0c, $12, $18, $06, $0c        ;; 01:6cf9 ????????
    db   $0b, $0c, $12, $18, $06, $0c, $09, $0c        ;; 01:6d01 ????????
    db   $10, $18, $09, $0c, $09, $0c, $10, $18        ;; 01:6d09 ????????
    db   $09, $0c, $09, $0c, $10, $18, $09, $0c        ;; 01:6d11 ????????
    db   $19, $06, $20, $06, $1f, $06, $1e, $06        ;; 01:6d19 ????????
    db   $25, $06, $24, $06, $21, $06, $27, $06        ;; 01:6d21 ????????
    db   $b2, $12, $0c, $1e, $18, $12, $0c, $12        ;; 01:6d29 ????????
    db   $0c, $1e, $18, $12, $0c, $12, $0c, $1e        ;; 01:6d31 ????????
    db   $18, $12, $0c, $12, $0c, $1e, $18, $12        ;; 01:6d39 ????????
    db   $0c, $12, $0c, $1e, $18, $12, $0c, $12        ;; 01:6d41 ????????
    db   $0c, $1e, $18, $12, $0c, $12, $0c, $1e        ;; 01:6d49 ????????
    db   $18, $12, $0c, $18, $10, $24, $10, $18        ;; 01:6d51 ????????
    db   $10, $b3, $12, $0c, $1e, $18, $12, $0c        ;; 01:6d59 ????????
    db   $12, $0c, $1e, $18, $12, $0c, $12, $0c        ;; 01:6d61 ????????
    db   $1e, $18, $12, $0c, $12, $0c, $1e, $18        ;; 01:6d69 ????????
    db   $12, $0c, $12, $0c, $1e, $18, $12, $0c        ;; 01:6d71 ????????
    db   $12, $0c, $1e, $18, $12, $0c, $12, $0c        ;; 01:6d79 ????????
    db   $1e, $18, $12, $0c, $18, $10, $24, $10        ;; 01:6d81 ????????
    db   $18, $10, $50, $1c, $08, $00, $0a, $1c        ;; 01:6d89 ????????
    db   $06, $00, $0c, $1c, $24, $00, $18, $15        ;; 01:6d91 ????????
    db   $08, $00, $0a, $15, $06, $00, $0c, $15        ;; 01:6d99 ????????
    db   $24, $00, $18, $1c, $08, $00, $0a, $1c        ;; 01:6da1 ????????
    db   $06, $00, $0c, $1c, $24, $00, $18, $00        ;; 01:6da9 ????????
    db   $0c, $15, $06, $00, $12, $15, $06, $00        ;; 01:6db1 ????????
    db   $06, $15, $24, $00, $0c, $1a, $08, $00        ;; 01:6db9 ????????
    db   $0a, $1a, $06, $00, $0c, $1a, $24, $00        ;; 01:6dc1 ????????
    db   $18, $13, $08, $00, $0a, $13, $06, $00        ;; 01:6dc9 ????????
    db   $0c, $13, $24, $00, $18, $1a, $08, $00        ;; 01:6dd1 ????????
    db   $0a, $1a, $06, $00, $0c, $1a, $24, $00        ;; 01:6dd9 ????????
    db   $18, $13, $06, $00, $0c, $13, $06, $00        ;; 01:6de1 ????????
    db   $0c, $13, $06, $00, $06, $1f, $18, $1d        ;; 01:6de9 ????????
    db   $16, $00, $02, $1c, $08, $00, $0a, $1c        ;; 01:6df1 ????????
    db   $06, $00, $0c, $1c, $30, $00, $0c, $15        ;; 01:6df9 ????????
    db   $08, $00, $0a, $15, $06, $00, $0c, $15        ;; 01:6e01 ????????
    db   $24, $13, $18, $12, $08, $00, $0a, $12        ;; 01:6e09 ????????
    db   $06, $00, $0c, $12, $24, $18, $18, $17        ;; 01:6e11 ????????
    db   $08, $00, $0a, $17, $06, $00, $0c, $17        ;; 01:6e19 ????????
    db   $24, $1b, $16, $00, $02, $1c, $08, $00        ;; 01:6e21 ????????
    db   $0a, $1c, $06, $00, $0c, $1c, $30, $00        ;; 01:6e29 ????????
    db   $0c, $15, $08, $00, $0a, $15, $06, $00        ;; 01:6e31 ????????
    db   $0c, $15, $24, $13, $18, $12, $08, $00        ;; 01:6e39 ????????
    db   $0a, $12, $06, $00, $0c, $12, $24, $1d        ;; 01:6e41 ????????
    db   $05, $1e, $0d, $00, $06, $12, $08, $00        ;; 01:6e49 ????????
    db   $0a, $12, $06, $00, $0c, $12, $34, $00        ;; 01:6e51 ????????
    db   $08, $ff, $00, $00, $f1, $80, $4c, $b0        ;; 01:6e59 ????????
    db   $b1, $4d, $4d, $4d, $3b, $4d, $4d, $4d        ;; 01:6e61 ????????
    db   $3b, $4d, $3b, $b2, $4d, $3b, $b3, $4d        ;; 01:6e69 ????????
    db   $3b, $0d, $0d, $0d, $13, $0d, $0d, $0d        ;; 01:6e71 ????????
    db   $11, $0d, $0d, $0d, $11, $0d, $0d, $0d        ;; 01:6e79 ????????
    db   $12, $ff                                      ;; 01:6e81 ??

data_01_6e83:
    db   $00, $00                                      ;; 01:6e83 ..
    dw   .data_01_6e8b                                 ;; 01:6e85 pP
    db   $00, $00, $00, $00                            ;; 01:6e87 ....
.data_01_6e8b:
    db   $08, $80, $f0, $80, $50, $29, $02, $2e        ;; 01:6e8b ........
    db   $03, $32, $04, $35, $05, $01, $05, $f0        ;; 01:6e93 ........

data_01_6e9b:
    db   $00, $00                                      ;; 01:6e9b ..
    dw   .data_01_6ea3                                 ;; 01:6e9d pP
    db   $00, $00, $00, $00                            ;; 01:6e9f ....
.data_01_6ea3:
    db   $08, $80, $f0, $80, $52, $31, $01, $32        ;; 01:6ea3 ........
    db   $02, $01, $03, $f0, $ff                       ;; 01:6eab ....?

data_01_6eb0:
    db   $00, $00                                      ;; 01:6eb0 ..
    dw   .data_01_6eb8                                 ;; 01:6eb2 pP
    db   $00, $00, $00, $00                            ;; 01:6eb4 ....
.data_01_6eb8:
    db   $08, $80, $f0, $80, $51, $2e, $02, $2d        ;; 01:6eb8 ........
    db   $04, $01, $04, $f0, $00, $00, $00, $00        ;; 01:6ec0 ....????
    db   $00, $00, $cc, $6e, $00, $00, $ff, $80        ;; 01:6ec8 ????????
    db   $14, $f0, $00, $00, $00, $00, $00, $00        ;; 01:6ed0 ????????
    db   $da, $6e, $00, $00, $ff, $80, $17, $f0        ;; 01:6ed8 ????????
    db   $00, $00, $00, $00, $00, $00, $e8, $6e        ;; 01:6ee0 ????????
    db   $00, $00, $f8, $80, $18, $f0, $00, $00        ;; 01:6ee8 ????????
    db   $f6, $6e, $00, $00, $00, $00, $08, $80        ;; 01:6ef0 ????????
    db   $f0, $80, $88, $51, $2b, $04, $2f, $04        ;; 01:6ef8 ????????
    db   $37, $04, $32, $05, $2f, $06, $01, $07        ;; 01:6f00 ????????
    db   $f0, $00, $00, $11, $6f, $00, $00, $00        ;; 01:6f08 ????????
    db   $00, $08, $80, $f0, $80, $50, $23, $02        ;; 01:6f10 ????????
    db   $3b, $02, $36, $02, $3d, $03, $3f, $02        ;; 01:6f18 ????????
    db   $42, $02, $01, $05, $f0                       ;; 01:6f20 ?????

data_01_6f25:
    db   $00, $00, $00, $00, $00, $00                  ;; 01:6f25 ......
    dw   .data_01_6f2d                                 ;; 01:6f2b pP
.data_01_6f2d:
    db   $00, $00, $f1, $80, $15, $f0, $00, $00        ;; 01:6f2d ......??
    db   $00, $00, $00, $00, $3b, $6f, $00, $00        ;; 01:6f35 ????????
    db   $ff, $80, $16, $f0, $00, $00, $00, $00        ;; 01:6f3d ????????
    db   $00, $00, $49, $6f, $00, $00, $ff, $80        ;; 01:6f45 ????????
    db   $02, $f0, $00, $00, $00, $00, $00, $00        ;; 01:6f4d ????????
    db   $57, $6f, $00, $00, $f0, $80, $03, $f0        ;; 01:6f55 ????????
    db   $00, $00, $00, $00, $00, $00, $65, $6f        ;; 01:6f5d ????????
    db   $00, $00, $ff, $80, $01, $f0                  ;; 01:6f65 ??????

data_01_6f6b:
    db   $00, $00, $00, $00, $00, $00                  ;; 01:6f6b ......
    dw   .data_01_6f73                                 ;; 01:6f71 pP
.data_01_6f73:
    db   $00, $00, $ff, $80, $04, $f0, $81, $6f        ;; 01:6f73 ......??
    db   $00, $00, $00, $00, $00, $00, $17, $80        ;; 01:6f7b ????????
    db   $f0, $80, $50, $1b, $05, $1d, $05, $22        ;; 01:6f83 ????????
    db   $05, $24, $05, $27, $05, $29, $05, $2e        ;; 01:6f8b ????????
    db   $05, $30, $05, $33, $05, $f0, $00, $00        ;; 01:6f93 ????????
    db   $00, $00, $00, $00, $a1, $6f, $00, $00        ;; 01:6f9b ????????
    db   $ff, $80, $19, $f0, $00, $00, $00, $00        ;; 01:6fa3 ????????
    db   $af, $6f, $00, $00, $80, $00, $90, $80        ;; 01:6fab ????????
    db   $51, $84, $30, $06, $00, $04, $38, $14        ;; 01:6fb3 ????????
    db   $f0, $00, $00, $c4, $6f, $00, $00, $00        ;; 01:6fbb ????????
    db   $00, $17, $80, $f0, $80, $16, $03, $23        ;; 01:6fc3 ????????
    db   $03, $1b, $03, $1d, $04, $2a, $05, $f0        ;; 01:6fcb ????????
    db   $00, $00, $00, $00, $00, $00, $db, $6f        ;; 01:6fd3 ????????
    db   $00, $00, $ff, $80, $1a, $f0, $00, $00        ;; 01:6fdb ????????
    db   $00, $00, $00, $00, $e9, $6f, $00, $00        ;; 01:6fe3 ????????
    db   $ff, $80, $1b, $f0, $f7, $6f, $1e, $70        ;; 01:6feb ????????
    db   $00, $00, $00, $00, $08, $80, $f0, $80        ;; 01:6ff3 ????????
    db   $89, $50, $23, $04, $28, $04, $2a, $04        ;; 01:6ffb ????????
    db   $2f, $04, $26, $04, $2a, $04, $2f, $04        ;; 01:7003 ????????
    db   $32, $04, $2a, $04, $2b, $04, $2f, $04        ;; 01:700b ????????
    db   $32, $04, $2f, $04, $31, $04, $36, $04        ;; 01:7013 ????????
    db   $3a, $04, $f0, $08, $80, $f0, $80, $8d        ;; 01:701b ????????
    db   $50, $17, $04, $1c, $04, $1e, $04, $23        ;; 01:7023 ????????
    db   $04, $0e, $04, $12, $04, $17, $04, $1a        ;; 01:702b ????????
    db   $04, $1e, $04, $1f, $04, $23, $04, $26        ;; 01:7033 ????????
    db   $04, $23, $04, $25, $04, $2a, $04, $36        ;; 01:703b ????????
    db   $04, $f0                                      ;; 01:7043 ??

data_01_7045:
    db   $00, $00                                      ;; 01:7045 ..
    dw   .data_01_704d                                 ;; 01:7047 pP
    db   $00, $00, $00, $00                            ;; 01:7049 ....
.data_01_704d:
    db   $08, $80, $ff, $80, $85, $51, $17, $05        ;; 01:704d ........
    db   $17, $0a, $f0                                 ;; 01:7055 ...

data_01_7058:
    dw   data_01_7060                                  ;; 01:7058 pP
    dw   data_01_7075                                  ;; 01:705a pP
    db   $00, $00, $00, $00                            ;; 01:705c ....

data_01_7060:
    db   $08, $80, $f0, $80, $85, $51, $2d, $18        ;; 01:7060 ........
    db   $00, $0c, $2d, $04, $00, $04, $2d, $08        ;; 01:7068 ........
    db   $00, $10, $2a, $24, $f0                       ;; 01:7070 .....

data_01_7075:
    db   $08, $80, $f0, $80, $8d, $50, $12, $04        ;; 01:7075 ........
    db   $13, $04, $15, $04, $17, $04, $19, $04        ;; 01:707d ........
    db   $1a, $04, $1c, $04, $1e, $04, $1f, $04        ;; 01:7085 ........
    db   $21, $04, $23, $04, $25, $04, $26, $04        ;; 01:708d ........
    db   $28, $04, $2a, $04, $2b, $04, $2d, $04        ;; 01:7095 ........
    db   $1a, $24, $f0                                 ;; 01:709d ...

data_01_70a0:
    dw   data_01_70a8                                  ;; 01:70a0 pP
    dw   data_01_70d1                                  ;; 01:70a2 pP
    db   $00, $00, $00, $00                            ;; 01:70a4 ....

data_01_70a8:
    db   $08, $80, $ff, $80, $89, $51, $1f, $07        ;; 01:70a8 ........
    db   $00, $02, $24, $07, $00, $02, $28, $07        ;; 01:70b0 ........
    db   $00, $02, $2b, $07, $00, $02, $30, $07        ;; 01:70b8 ........
    db   $00, $0e, $34, $07, $00, $0e, $36, $07        ;; 01:70c0 ........
    db   $00, $0e, $32, $07, $00, $0e, $32, $0e        ;; 01:70c8 ........
    db   $f0                                           ;; 01:70d0 .

data_01_70d1:
    db   $08, $80, $ff, $80, $84, $51, $17, $07        ;; 01:70d1 ........
    db   $00, $02, $1c, $07, $00, $02, $1f, $07        ;; 01:70d9 ........
    db   $00, $02, $23, $07, $00, $02, $28, $07        ;; 01:70e1 ........
    db   $00, $0e, $30, $07, $00, $0e, $2d, $07        ;; 01:70e9 ........
    db   $00, $0e, $2a, $07, $00, $0e, $2a, $0e        ;; 01:70f1 ........
    db   $f0, $02, $71, $25, $71, $00, $00, $00        ;; 01:70f9 .???????
    db   $00, $08, $80, $ff, $80, $8c, $51, $2d        ;; 01:7101 ????????
    db   $18, $34, $18, $32, $18, $31, $18, $2d        ;; 01:7109 ????????
    db   $18, $2b, $18, $2a, $18, $2b, $18, $2d        ;; 01:7111 ????????
    db   $19, $28, $19, $26, $1a, $28, $1a, $25        ;; 01:7119 ????????
    db   $32, $01, $02, $f0, $08, $80, $ff, $80        ;; 01:7121 ????????
    db   $83, $51, $19, $30, $15, $30, $1e, $30        ;; 01:7129 ????????
    db   $1a, $30, $1c, $19, $1e, $19, $20, $1a        ;; 01:7131 ????????
    db   $1c, $1a, $21, $32, $01, $02, $f0, $00        ;; 01:7139 ????????
    db   $00, $48, $71, $00, $00, $00, $00, $17        ;; 01:7141 ????????
    db   $80, $f0, $80, $50, $21, $02, $2f, $02        ;; 01:7149 ????????
    db   $25, $02, $2a, $04, $34, $05, $39, $03        ;; 01:7151 ????????
    db   $f0, $00, $00, $00, $00, $00, $00, $62        ;; 01:7159 ????????
    db   $71, $00, $00, $ff, $80, $22, $f0, $00        ;; 01:7161 ????????
    db   $00, $70, $71, $00, $00, $00, $00, $17        ;; 01:7169 ????????
    db   $80, $f0, $80, $50, $3b, $04, $3a, $04        ;; 01:7171 ????????
    db   $39, $04, $38, $03, $37, $03, $36, $03        ;; 01:7179 ????????
    db   $35, $03, $34, $03, $33, $03, $32, $03        ;; 01:7181 ????????
    db   $31, $03, $30, $03, $2f, $03, $2d, $03        ;; 01:7189 ????????
    db   $2b, $03, $2a, $03, $28, $03, $26, $03        ;; 01:7191 ????????
    db   $25, $03, $f0, $00, $00, $00, $00, $00        ;; 01:7199 ????????
    db   $00, $a4, $71, $00, $00, $ff, $80, $23        ;; 01:71a1 ????????
    db   $f0                                           ;; 01:71a9 ?

data_01_71aa:
    db   $00, $00, $00, $00, $00, $00                  ;; 01:71aa ......
    dw   .data_01_71b2                                 ;; 01:71b0 pP
.data_01_71b2:
    db   $00, $00, $ff, $80, $25, $f0, $00, $00        ;; 01:71b2 ......??
    db   $00, $00, $00, $00, $c0, $71, $00, $00        ;; 01:71ba ????????
    db   $ff, $80, $26, $f0                            ;; 01:71c2 ????

data_01_71c6:
    db   $00, $00, $00, $00, $00, $00                  ;; 01:71c6 ......
    dw   .data_01_71ce                                 ;; 01:71cc pP
.data_01_71ce:
    db   $00, $00, $ff, $80, $27, $f0                  ;; 01:71ce ......

data_01_71d4:
    db   $00, $00                                      ;; 01:71d4 ..
    dw   .data_01_71dc                                 ;; 01:71d6 pP
    db   $00, $00, $00, $00                            ;; 01:71d8 ....
.data_01_71dc:
    db   $17, $80, $f0, $80, $27, $05, $28, $05        ;; 01:71dc ........
    db   $2a, $05, $2e, $05, $2f, $05, $01, $08        ;; 01:71e4 ........
    db   $f0, $00, $00, $f5, $71, $00, $00, $00        ;; 01:71ec .???????
    db   $00, $17, $80, $f0, $80, $8b, $31, $05        ;; 01:71f4 ????????
    db   $32, $05, $34, $05, $31, $05, $32, $05        ;; 01:71fc ????????
    db   $34, $05, $36, $05, $01, $08, $f0, $00        ;; 01:7204 ????????
    db   $00, $00, $00, $00, $00, $13, $72, $00        ;; 01:720c ????????
    db   $00, $ff, $80, $29, $f0, $00, $00, $00        ;; 01:7214 ????????
    db   $00, $00, $00, $21, $72, $00, $00, $ff        ;; 01:721c ????????
    db   $80, $04, $f0, $00, $00, $00, $00, $00        ;; 01:7224 ????????
    db   $00, $2f, $72, $00, $00, $ff, $80, $31        ;; 01:722c ????????
    db   $f0                                           ;; 01:7234 ?

data_01_7235:
    dw   data_01_6e83                                  ;; 01:7235 pP
    dw   data_01_6e9b                                  ;; 01:7237 pP
    dw   data_01_6eb0                                  ;; 01:7239 pP
    db   $c4, $6e, $d2, $6e, $e0, $6e, $ee, $6e        ;; 01:723b ????????
    db   $09, $6f                                      ;; 01:7243 ??
    dw   data_01_6f25                                  ;; 01:7245 pP
    db   $33, $6f, $41, $6f, $4f, $6f, $5d, $6f        ;; 01:7247 ????????
    dw   data_01_6f6b                                  ;; 01:724f pP
    db   $79, $6f, $99, $6f, $a7, $6f, $bc, $6f        ;; 01:7251 ????????
    db   $d3, $6f, $e1, $6f, $ef, $6f                  ;; 01:7259 ??????
    dw   data_01_7045                                  ;; 01:725f pP
    dw   data_01_7058                                  ;; 01:7261 pP
    dw   data_01_70a0                                  ;; 01:7263 pP
    db   $fa, $70, $40, $71, $5a, $71, $68, $71        ;; 01:7265 ????????
    db   $9c, $71                                      ;; 01:726d ??
    dw   data_01_71aa                                  ;; 01:726f pP
    db   $b8, $71                                      ;; 01:7271 ??
    dw   data_01_71c6                                  ;; 01:7273 pP
    dw   data_01_71d4                                  ;; 01:7275 pP
    db   $ed, $71, $0b, $72, $19, $72, $27, $72        ;; 01:7277 ????????

data_01_727f:
    dw   data_01_48e8                                  ;; 01:727f pP
    db   $df, $4c, $58, $4e, $5c, $55, $41, $58        ;; 01:7281 ????????
    dw   data_01_59f7                                  ;; 01:7289 pP
    dw   data_01_5ed5                                  ;; 01:728b pP
    db   $f2, $5f, $13, $62, $98, $64, $56, $67        ;; 01:728d ????????
    db   $00, $40, $f4, $43                            ;; 01:7295 ????
    dw   $471c                                         ;; 01:7299 pP
    db   $db, $48                                      ;; 01:729b ??
    dw   data_01_4ea9                                  ;; 01:729d pP
    db   $ec, $4f, $31, $53                            ;; 01:729f ????
    dw   data_01_5392                                  ;; 01:72a3 pP
    db   $47, $54, $ed, $56, $76, $59, $d9, $5a        ;; 01:72a5 ????????

data_01_72ad:
    db   $c9, $72, $e3, $72, $ee, $72                  ;; 01:72ad ??????
    dw   .data_01_72ff                                 ;; 01:72b3 pP
    dw   .data_01_7319                                 ;; 01:72b5 pP
    dw   .data_01_7333                                 ;; 01:72b7 pP
    dw   .data_01_7350                                 ;; 01:72b9 pP
    dw   .data_01_736a                                 ;; 01:72bb pP
    db   $84, $73                                      ;; 01:72bd ??
    dw   .data_01_7398                                 ;; 01:72bf pP
    db   $a6, $73                                      ;; 01:72c1 ??
    dw   .data_01_73bd                                 ;; 01:72c3 pP
    dw   .data_01_73ce                                 ;; 01:72c5 pP
    dw   .data_01_73e8                                 ;; 01:72c7 pP
    db   $c0, $a8, $01, $80, $c8, $01, $40, $d8        ;; 01:72c9 ????????
    db   $01, $00, $f8, $01, $00, $c8, $02, $00        ;; 01:72d1 ????????
    db   $b8, $02, $fe, $00, $a8, $07, $00, $98        ;; 01:72d9 ????????
    db   $07, $ff, $00, $f8, $03, $fe, $00, $58        ;; 01:72e1 ????????
    db   $01, $00, $68, $01, $ff, $80, $c8, $01        ;; 01:72e9 ????????
    db   $40, $e8, $02, $40, $f8, $03, $fe, $80        ;; 01:72f1 ????????
    db   $c8, $05, $80, $b8, $05, $ff                  ;; 01:72f9 ??????
.data_01_72ff:
    db   $c0, $88, $01, $80, $58, $01, $40, $78        ;; 01:72ff ........
    db   $01, $40, $98, $01, $40, $a8, $01, $40        ;; 01:7307 ........
    db   $b8, $01, $fe, $40, $98, $03, $40, $78        ;; 01:730f ........
    db   $02, $ff                                      ;; 01:7317 ..
.data_01_7319:
    db   $c0, $b8, $01, $c0, $98, $01, $c0, $68        ;; 01:7319 ........
    db   $02, $40, $58, $02, $40, $48, $03, $40        ;; 01:7321 ........
    db   $38, $04, $fe, $40, $28, $06, $40, $38        ;; 01:7329 ........
    db   $06, $ff                                      ;; 01:7331 ..
.data_01_7333:
    db   $c0, $a8, $01, $80, $c8, $01, $80, $d8        ;; 01:7333 ........
    db   $01, $00, $f8, $01, $40, $c8, $01, $40        ;; 01:733b ........
    db   $b8, $01, $40, $a8, $01, $fe, $40, $98        ;; 01:7343 ........
    db   $05, $40, $88, $19, $ff                       ;; 01:734b .....
.data_01_7350:
    db   $40, $c8, $02, $40, $a8, $02, $40, $88        ;; 01:7350 ........
    db   $02, $40, $68, $02, $40, $58, $02, $40        ;; 01:7358 ........
    db   $48, $02, $fe, $00, $28, $02, $00, $18        ;; 01:7360 ........
    db   $02, $ff                                      ;; 01:7368 ..
.data_01_736a:
    db   $80, $88, $01, $40, $a8, $01, $00, $e8        ;; 01:736a ........
    db   $01, $00, $c8, $01, $00, $b8, $02, $00        ;; 01:7372 ........
    db   $a8, $02, $fe, $40, $98, $06, $40, $88        ;; 01:737a ........
    db   $06, $ff, $80, $f8, $01, $80, $d8, $01        ;; 01:7382 ..??????
    db   $80, $c8, $01, $80, $b8, $01, $fe, $80        ;; 01:738a ????????
    db   $78, $08, $80, $68, $08, $ff                  ;; 01:7392 ??????
.data_01_7398:
    db   $00, $98, $01, $00, $f8, $01, $00, $b8        ;; 01:7398 ........
    db   $01, $fe, $40, $c8, $ff, $ff, $40, $f8        ;; 01:73a0 .....???
    db   $01, $40, $e8, $02, $80, $d8, $01, $80        ;; 01:73a8 ????????
    db   $c8, $01, $80, $d8, $01, $fe, $00, $68        ;; 01:73b0 ????????
    db   $08, $00, $58, $08, $ff                       ;; 01:73b8 ?????
.data_01_73bd:
    db   $40, $78, $01, $40, $a8, $02, $40, $c8        ;; 01:73bd ........
    db   $03, $fe, $80, $a8, $04, $80, $88, $04        ;; 01:73c5 ........
    db   $ff                                           ;; 01:73cd .
.data_01_73ce:
    db   $c0, $f8, $01, $c0, $d8, $01, $c0, $b8        ;; 01:73ce ........
    db   $02, $40, $98, $02, $40, $88, $03, $40        ;; 01:73d6 ........
    db   $78, $04, $fe, $40, $68, $06, $40, $78        ;; 01:73de ........
    db   $06, $ff                                      ;; 01:73e6 ..
.data_01_73e8:
    db   $40, $28, $01, $40, $78, $01, $80, $c8        ;; 01:73e8 ........
    db   $02, $80, $88, $01, $c0, $68, $01, $c0        ;; 01:73f0 ........
    db   $48, $01, $fe, $40, $58, $06, $40, $68        ;; 01:73f8 ........
    db   $06, $ff, $00, $08, $46, $f1, $27, $f1        ;; 01:7400 ........
    db   $01, $c1, $01, $f8, $5f, $f2, $47, $fb        ;; 01:7408 ....????
    db   $27, $fd, $07, $ff, $b4, $74, $b7, $74        ;; 01:7410 ????????
    db   $c9, $74, $e1, $74                            ;; 01:7418 ????
    dw   .data_01_74f6                                 ;; 01:741c pP
    db   $02, $75, $2a, $75, $70, $75, $92, $75        ;; 01:741e ????????
    db   $96, $75, $d8, $75, $db, $75, $df, $75        ;; 01:7426 ????????
    db   $fb, $75                                      ;; 01:742e ??
    dw   .data_01_760b                                 ;; 01:7430 pP
    db   $0f, $76, $19, $76, $65, $76, $7b, $76        ;; 01:7432 ????????
    db   $99, $76, $b2, $76                            ;; 01:743a ????
    dw   .data_01_76ba                                 ;; 01:743e pP
    db   $be, $76, $c4, $76, $c8, $76, $d4, $76        ;; 01:7440 ????????
    db   $ec, $76, $f8, $76, $04, $77, $2c, $77        ;; 01:7448 ????????
    db   $72, $77                                      ;; 01:7450 ??
    dw   .data_01_7794                                 ;; 01:7452 pP
    db   $b9, $77, $f3, $77, $f7, $77, $21, $78        ;; 01:7454 ????????
    db   $27, $78                                      ;; 01:745c ??
    dw   .data_01_785d                                 ;; 01:745e pP
    db   $6b, $78                                      ;; 01:7460 ??
    dw   .data_01_789b                                 ;; 01:7462 pP
    db   $b7, $78, $c3, $78                            ;; 01:7464 ????
    dw   .data_01_78c3                                 ;; 01:7468 pP
    db   $47, $79, $c9, $79, $bb, $7a, $eb, $7a        ;; 01:746a ????????
    dw   .data_01_7b17                                 ;; 01:7472 pP
    db   $27, $7b, $27, $7b, $27, $7b, $27, $7b        ;; 01:7474 ????????
    db   $27, $7b, $27, $7b, $27, $7b, $27, $7b        ;; 01:747c ????????
    db   $27, $7b, $27, $7b, $27, $7b, $27, $7b        ;; 01:7484 ????????
    db   $3d, $7b, $3d, $7b, $3d, $7b, $3d, $7b        ;; 01:748c ????????
    db   $3d, $7b, $3d, $7b, $3d, $7b, $3d, $7b        ;; 01:7494 ????????
    db   $3d, $7b, $3d, $7b, $3d, $7b, $3d, $7b        ;; 01:749c ????????
    db   $3d, $7b, $3d, $7b, $3d, $7b                  ;; 01:74a4 ??????
    dw   .data_01_7b3d                                 ;; 01:74aa pP
    db   $73, $7b, $a5, $7b, $b7, $7b, $d3, $7b        ;; 01:74ac ????????
    db   $00, $ff, $ff, $51, $01, $02, $01, $02        ;; 01:74b4 ????????
    db   $04, $0c, $04, $08, $04, $05, $04, $05        ;; 01:74bc ????????
    db   $04, $05, $04, $03, $ff, $50, $01, $02        ;; 01:74c4 ????????
    db   $01, $02, $03, $02, $03, $02, $04, $03        ;; 01:74cc ????????
    db   $04, $03, $04, $03, $04, $03, $04, $03        ;; 01:74d4 ????????
    db   $04, $03, $04, $06, $ff, $53, $01, $02        ;; 01:74dc ????????
    db   $00, $01, $02, $02, $00, $01, $01, $02        ;; 01:74e4 ????????
    db   $00, $01, $02, $02, $00, $01, $50, $01        ;; 01:74ec ????????
    db   $14, $ff                                      ;; 01:74f4 ??
.data_01_74f6:
    db   $50, $01, $08, $01, $02, $01, $04, $01        ;; 01:74f6 ........
    db   $08, $01, $02, $ff, $50, $03, $05, $00        ;; 01:74fe ....????
    db   $0d, $03, $05, $03, $04, $03, $04, $03        ;; 01:7506 ????????
    db   $05, $03, $05, $00, $0d, $03, $05, $00        ;; 01:750e ????????
    db   $0d, $00, $09, $03, $05, $03, $04, $03        ;; 01:7516 ????????
    db   $09, $03, $09, $00, $12, $03, $09, $03        ;; 01:751e ????????
    db   $05, $03, $04, $ff, $50, $00, $12, $03        ;; 01:7526 ????????
    db   $05, $00, $0d, $03, $06, $00, $03, $03        ;; 01:752e ????????
    db   $06, $00, $03, $03, $05, $00, $0d, $00        ;; 01:7536 ????????
    db   $12, $03, $05, $00, $0d, $03, $06, $00        ;; 01:753e ????????
    db   $03, $03, $06, $00, $03, $03, $05, $00        ;; 01:7546 ????????
    db   $0d, $00, $12, $03, $05, $00, $0d, $03        ;; 01:754e ????????
    db   $06, $00, $03, $03, $06, $00, $03, $03        ;; 01:7556 ????????
    db   $05, $00, $0d, $00, $12, $03, $05, $00        ;; 01:755e ????????
    db   $0d, $03, $09, $03, $09, $03, $09, $03        ;; 01:7566 ????????
    db   $09, $ff, $53, $03, $12, $04, $12, $03        ;; 01:756e ????????
    db   $12, $04, $12, $03, $12, $04, $12, $03        ;; 01:7576 ????????
    db   $12, $04, $12, $03, $12, $04, $12, $03        ;; 01:757e ????????
    db   $12, $04, $12, $03, $12, $04, $12, $03        ;; 01:7586 ????????
    db   $12, $04, $12, $ff, $51, $00, $60, $ff        ;; 01:758e ????????
    db   $51, $03, $03, $00, $05, $03, $03, $00        ;; 01:7596 ????????
    db   $05, $03, $03, $00, $05, $03, $18, $03        ;; 01:759e ????????
    db   $03, $00, $05, $03, $03, $00, $05, $03        ;; 01:75a6 ????????
    db   $03, $00, $05, $03, $18, $03, $03, $00        ;; 01:75ae ????????
    db   $05, $03, $03, $00, $05, $03, $03, $00        ;; 01:75b6 ????????
    db   $05, $03, $18, $03, $03, $00, $05, $03        ;; 01:75be ????????
    db   $03, $00, $05, $03, $03, $00, $05, $03        ;; 01:75c6 ????????
    db   $08, $03, $03, $00, $05, $03, $03, $00        ;; 01:75ce ????????
    db   $05, $ff, $00, $18, $ff, $53, $00, $1c        ;; 01:75d6 ????????
    db   $ff, $53, $00, $0e, $03, $07, $03, $07        ;; 01:75de ????????
    db   $03, $07, $00, $07, $00, $0e, $03, $07        ;; 01:75e6 ????????
    db   $03, $07, $03, $07, $00, $07, $00, $0e        ;; 01:75ee ????????
    db   $03, $07, $00, $07, $ff, $51, $01, $03        ;; 01:75f6 ????????
    db   $00, $0f, $01, $03, $00, $0f, $01, $03        ;; 01:75fe ????????
    db   $00, $21, $03, $18, $ff                       ;; 01:7606 ?????
.data_01_760b:
    db   $52, $00, $0c, $ff, $00, $6c, $00, $5a        ;; 01:760b ....????
    db   $03, $09, $03, $09, $ff, $ff, $50, $03        ;; 01:7613 ????????
    db   $12, $03, $09, $03, $09, $03, $12, $03        ;; 01:761b ????????
    db   $12, $03, $12, $03, $12, $03, $12, $03        ;; 01:7623 ????????
    db   $09, $03, $09, $03, $12, $03, $09, $03        ;; 01:762b ????????
    db   $09, $03, $09, $03, $09, $03, $09, $03        ;; 01:7633 ????????
    db   $09, $00, $09, $03, $09, $00, $09, $03        ;; 01:763b ????????
    db   $0a, $03, $08, $00, $09, $03, $12, $03        ;; 01:7643 ????????
    db   $09, $03, $12, $03, $09, $03, $09, $03        ;; 01:764b ????????
    db   $09, $00, $08, $03, $0a, $03, $09, $03        ;; 01:7653 ????????
    db   $09, $03, $12, $03, $12, $03, $09, $03        ;; 01:765b ????????
    db   $09, $ff, $51, $01, $03, $00, $0f, $01        ;; 01:7663 ????????
    db   $03, $00, $0f, $01, $03, $00, $21, $03        ;; 01:766b ????????
    db   $06, $00, $06, $03, $06, $03, $06, $ff        ;; 01:7673 ????????
    db   $51, $01, $03, $00, $0f, $01, $03, $00        ;; 01:767b ????????
    db   $0f, $01, $03, $00, $09, $03, $06, $00        ;; 01:7683 ????????
    db   $06, $03, $06, $00, $06, $03, $06, $00        ;; 01:768b ????????
    db   $06, $03, $06, $03, $06, $ff, $52, $00        ;; 01:7693 ????????
    db   $0c, $01, $03, $00, $15, $01, $03, $00        ;; 01:769b ????????
    db   $09, $01, $03, $00, $15, $50, $03, $08        ;; 01:76a3 ????????
    db   $00, $04, $03, $06, $03, $06, $ff, $51        ;; 01:76ab ????????
    db   $50, $01, $05, $51, $02, $03, $ff             ;; 01:76b3 ???????
.data_01_76ba:
    db   $51, $02, $08, $ff, $50, $01, $05, $01        ;; 01:76ba ....????
    db   $05, $ff, $50, $04, $35, $ff, $50, $01        ;; 01:76c2 ????????
    db   $05, $01, $05, $01, $02, $01, $05, $01        ;; 01:76ca ????????
    db   $05, $ff, $50, $02, $02, $01, $02, $01        ;; 01:76d2 ????????
    db   $03, $02, $06, $02, $04, $02, $02, $02        ;; 01:76da ????????
    db   $05, $02, $02, $02, $04, $02, $02, $02        ;; 01:76e2 ????????
    db   $05, $ff, $50, $01, $02, $01, $02, $01        ;; 01:76ea ????????
    db   $05, $06, $04, $05, $02, $ff, $50, $04        ;; 01:76f2 ????????
    db   $08, $04, $06, $04, $08, $04, $08, $04        ;; 01:76fa ????????
    db   $08, $ff, $50, $03, $03, $00, $0d, $03        ;; 01:7702 ????????
    db   $04, $03, $04, $03, $04, $03, $04, $03        ;; 01:770a ????????
    db   $03, $00, $0d, $03, $03, $00, $0d, $00        ;; 01:7712 ????????
    db   $08, $03, $04, $03, $04, $03, $08, $03        ;; 01:771a ????????
    db   $08, $00, $10, $03, $08, $03, $04, $03        ;; 01:7722 ????????
    db   $04, $ff, $50, $00, $10, $03, $05, $00        ;; 01:772a ????????
    db   $0b, $03, $05, $00, $03, $03, $05, $00        ;; 01:7732 ????????
    db   $03, $03, $05, $00, $0b, $00, $10, $03        ;; 01:773a ????????
    db   $05, $00, $0b, $03, $05, $00, $03, $03        ;; 01:7742 ????????
    db   $05, $00, $03, $03, $05, $00, $0b, $00        ;; 01:774a ????????
    db   $10, $03, $05, $00, $0b, $03, $05, $00        ;; 01:7752 ????????
    db   $03, $03, $05, $00, $03, $03, $05, $00        ;; 01:775a ????????
    db   $0b, $00, $10, $03, $03, $00, $0d, $03        ;; 01:7762 ????????
    db   $08, $03, $08, $03, $08, $03, $08, $ff        ;; 01:776a ????????
    db   $53, $03, $10, $04, $10, $03, $10, $04        ;; 01:7772 ????????
    db   $10, $03, $10, $04, $10, $03, $10, $04        ;; 01:777a ????????
    db   $10, $03, $10, $04, $10, $03, $10, $04        ;; 01:7782 ????????
    db   $10, $03, $10, $04, $10, $03, $10, $04        ;; 01:778a ????????
    db   $10, $ff                                      ;; 01:7792 ??
.data_01_7794:
    db   $50, $00, $64, $00, $64, $00, $64, $00        ;; 01:7794 ........
    db   $20, $00, $64, $00, $23, $00, $64, $00        ;; 01:779c ........
    db   $64, $00, $64, $00, $64, $00, $54, $00        ;; 01:77a4 ........
    db   $5a, $04, $05, $00, $05, $04, $05, $00        ;; 01:77ac ........
    db   $05, $04, $05, $00, $05, $51, $04, $05        ;; 01:77b4 ........
    db   $00, $19, $04, $05, $00, $19, $04, $05        ;; 01:77bc ......??
    db   $00, $19, $04, $05, $00, $05, $04, $05        ;; 01:77c4 ????????
    db   $00, $05, $04, $05, $00, $05, $04, $05        ;; 01:77cc ????????
    db   $00, $19, $04, $05, $00, $05, $04, $05        ;; 01:77d4 ????????
    db   $00, $05, $04, $05, $00, $05, $04, $05        ;; 01:77dc ????????
    db   $00, $0a, $04, $05, $00, $0a, $04, $05        ;; 01:77e4 ????????
    db   $00, $0a, $04, $05, $00, $0a, $ff, $53        ;; 01:77ec ????????
    db   $00, $20, $ff, $51, $05, $03, $05, $03        ;; 01:77f4 ????????
    db   $05, $03, $05, $03, $05, $03, $05, $03        ;; 01:77fc ????????
    db   $05, $03, $05, $03, $05, $03, $05, $03        ;; 01:7804 ????????
    db   $05, $03, $05, $03, $05, $03, $05, $03        ;; 01:780c ????????
    db   $05, $03, $05, $03, $05, $03, $05, $03        ;; 01:7814 ????????
    db   $05, $03, $05, $03, $ff, $50, $02, $04        ;; 01:781c ????????
    db   $01, $14, $ff, $50, $00, $6c, $00, $6c        ;; 01:7824 ????????
    db   $00, $6c, $00, $6c, $00, $6c, $00, $6c        ;; 01:782c ????????
    db   $00, $6c, $00, $6c, $00, $6c, $00, $6c        ;; 01:7834 ????????
    db   $00, $6c, $00, $6c, $00, $6c, $00, $6c        ;; 01:783c ????????
    db   $00, $6c, $00, $6c, $00, $6c, $00, $6c        ;; 01:7844 ????????
    db   $00, $6c, $00, $6c, $00, $6c, $00, $6c        ;; 01:784c ????????
    db   $00, $6c, $00, $5a, $03, $09, $03, $09        ;; 01:7854 ????????
    db   $ff                                           ;; 01:785c ?
.data_01_785d:
    db   $50, $02, $04, $01, $02, $01, $02, $03        ;; 01:785d ........
    db   $01, $01, $01, $01, $02, $ff, $50, $03        ;; 01:7865 ......??
    db   $02, $03, $02, $04, $03, $04, $03, $04        ;; 01:786d ????????
    db   $03, $04, $03, $04, $03, $04, $03, $04        ;; 01:7875 ????????
    db   $06, $04, $03, $04, $03, $04, $03, $04        ;; 01:787d ????????
    db   $03, $04, $03, $04, $03, $04, $06, $04        ;; 01:7885 ????????
    db   $03, $04, $03, $04, $03, $04, $03, $04        ;; 01:788d ????????
    db   $03, $04, $03, $04, $06, $ff                  ;; 01:7895 ??????
.data_01_789b:
    db   $50, $02, $01, $01, $02, $02, $02, $01        ;; 01:789b ........
    db   $04, $02, $02, $01, $05, $02, $01, $02        ;; 01:78a3 ........
    db   $01, $01, $02, $01, $02, $01, $02, $01        ;; 01:78ab ........
    db   $02, $01, $0a, $ff, $51, $00, $12, $03        ;; 01:78b3 ....????
    db   $05, $00, $0d, $03, $05, $00, $0d, $ff        ;; 01:78bb ????????
.data_01_78c3:
    db   $52, $00, $24, $01, $05, $00, $0d, $03        ;; 01:78c3 ........
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:78cb ........
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:78d3 ........
    db   $0a, $00, $08, $03, $09, $03, $09, $03        ;; 01:78db .???????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:78e3 ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:78eb ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:78f3 ????????
    db   $0a, $00, $08, $03, $09, $03, $09, $03        ;; 01:78fb ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:7903 ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:790b ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:7913 ????????
    db   $0a, $00, $08, $03, $09, $03, $09, $03        ;; 01:791b ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:7923 ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:792b ????????
    db   $0a, $00, $08, $01, $05, $00, $0d, $03        ;; 01:7933 ????????
    db   $0a, $00, $08, $03, $0a, $00, $08, $03        ;; 01:793b ????????
    db   $09, $03, $09, $ff, $52, $01, $05, $00        ;; 01:7943 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:794b ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7953 ????????
    db   $0d, $03, $0a, $00, $08, $03, $09, $03        ;; 01:795b ????????
    db   $09, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7963 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:796b ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7973 ????????
    db   $0d, $03, $0a, $00, $08, $03, $09, $03        ;; 01:797b ????????
    db   $09, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7983 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:798b ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7993 ????????
    db   $0d, $03, $0a, $00, $08, $03, $09, $03        ;; 01:799b ????????
    db   $09, $03, $09, $00, $09, $01, $05, $00        ;; 01:79a3 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:79ab ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:79b3 ????????
    db   $0d, $03, $0a, $00, $08, $03, $09, $03        ;; 01:79bb ????????
    db   $09, $03, $09, $03, $09, $ff, $52, $01        ;; 01:79c3 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $03        ;; 01:79cb ????????
    db   $0a, $00, $08, $03, $0a, $00, $08, $01        ;; 01:79d3 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:79db ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:79e3 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $03        ;; 01:79eb ????????
    db   $0a, $00, $08, $03, $0a, $00, $08, $01        ;; 01:79f3 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $03        ;; 01:79fb ????????
    db   $0a, $00, $08, $03, $0a, $00, $08, $01        ;; 01:7a03 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a0b ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a13 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a1b ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a23 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a2b ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a33 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $03        ;; 01:7a3b ????????
    db   $0a, $00, $08, $03, $09, $03, $09, $01        ;; 01:7a43 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a4b ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a53 ????????
    db   $05, $00, $0d, $03, $0a, $00, $08, $01        ;; 01:7a5b ????????
    db   $05, $00, $0d, $03, $12, $01, $05, $00        ;; 01:7a63 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7a6b ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7a73 ????????
    db   $0d, $03, $0a, $00, $08, $03, $09, $03        ;; 01:7a7b ????????
    db   $09, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7a83 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7a8b ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7a93 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7a9b ????????
    db   $0d, $03, $09, $03, $09, $01, $05, $00        ;; 01:7aa3 ????????
    db   $0d, $03, $0a, $00, $08, $01, $05, $00        ;; 01:7aab ????????
    db   $0d, $03, $0a, $00, $08, $03, $24, $ff        ;; 01:7ab3 ????????
    db   $53, $03, $06, $00, $12, $03, $08, $03        ;; 01:7abb ????????
    db   $08, $03, $08, $03, $06, $00, $12, $03        ;; 01:7ac3 ????????
    db   $08, $03, $08, $03, $08, $03, $06, $00        ;; 01:7acb ????????
    db   $12, $03, $08, $03, $08, $03, $08, $03        ;; 01:7ad3 ????????
    db   $06, $00, $06, $03, $06, $00, $06, $03        ;; 01:7adb ????????
    db   $06, $00, $06, $03, $06, $00, $06, $ff        ;; 01:7ae3 ????????
    db   $53, $03, $06, $00, $12, $03, $08, $03        ;; 01:7aeb ????????
    db   $08, $03, $08, $03, $06, $00, $12, $03        ;; 01:7af3 ????????
    db   $08, $03, $08, $03, $08, $03, $06, $00        ;; 01:7afb ????????
    db   $12, $03, $08, $03, $08, $03, $08, $03        ;; 01:7b03 ????????
    db   $08, $03, $08, $03, $08, $03, $08, $03        ;; 01:7b0b ????????
    db   $08, $03, $08, $ff                            ;; 01:7b13 ????
.data_01_7b17:
    db   $53, $00, $60, $00, $60, $00, $60, $00        ;; 01:7b17 ........
    db   $60, $00, $60, $00, $60, $00, $60, $ff        ;; 01:7b1f ........
    db   $51, $01, $03, $00, $15, $03, $0c, $00        ;; 01:7b27 ????????
    db   $0c, $01, $03, $00, $09, $01, $03, $00        ;; 01:7b2f ????????
    db   $09, $03, $0c, $00, $0c, $ff                  ;; 01:7b37 ??????
.data_01_7b3d:
    db   $50, $03, $03, $00, $07, $03, $03, $00        ;; 01:7b3d ........
    db   $07, $03, $03, $00, $07, $03, $03, $00        ;; 01:7b45 ........
    db   $07, $03, $03, $00, $07, $03, $03, $00        ;; 01:7b4d ........
    db   $07, $03, $03, $00, $07, $03, $03, $00        ;; 01:7b55 ........
    db   $07, $03, $02, $00, $03, $03, $02, $00        ;; 01:7b5d ........
    db   $03, $03, $03, $00, $07, $03, $03, $00        ;; 01:7b65 ........
    db   $07, $03, $03, $00, $07, $ff, $52, $01        ;; 01:7b6d ......??
    db   $06, $00, $12, $01, $03, $00, $15, $01        ;; 01:7b75 ????????
    db   $03, $00, $15, $01, $03, $00, $15, $01        ;; 01:7b7d ????????
    db   $06, $00, $12, $01, $03, $00, $15, $01        ;; 01:7b85 ????????
    db   $03, $00, $15, $01, $03, $00, $15, $01        ;; 01:7b8d ????????
    db   $06, $00, $12, $01, $03, $00, $15, $01        ;; 01:7b95 ????????
    db   $03, $00, $15, $01, $03, $00, $15, $ff        ;; 01:7b9d ????????
    db   $51, $01, $03, $00, $15, $03, $0c, $00        ;; 01:7ba5 ????????
    db   $0c, $01, $03, $00, $15, $03, $0c, $00        ;; 01:7bad ????????
    db   $0c, $ff, $50, $05, $0a, $06, $14, $07        ;; 01:7bb5 ????????
    db   $46, $05, $3c, $06, $14, $06, $1e, $07        ;; 01:7bbd ????????
    db   $28, $05, $3c, $06, $0a, $07, $28, $05        ;; 01:7bc5 ????????
    db   $3c, $07, $28, $01, $3c, $ff                  ;; 01:7bcd ??????
