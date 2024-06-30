;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank04", ROMX[$4000], BANK[$04]

call_04_4000:
    and  A, A                                          ;; 04:4000 $a7
    ret  Z                                             ;; 04:4001 $c8
    cp   A, $80                                        ;; 04:4002 $fe $80
    jr   C, .jr_04_400c                                ;; 04:4004 $38 $06
    cp   A, $90                                        ;; 04:4006 $fe $90
    jp   NC, .jp_04_4083                               ;; 04:4008 $d2 $83 $40
    ret                                                ;; 04:400b $c9
.jr_04_400c:
    cp   A, $60                                        ;; 04:400c $fe $60
    ret  C                                             ;; 04:400e $d8
    ld   B, A                                          ;; 04:400f $47
    ld   A, [wD5D6]                                    ;; 04:4010 $fa $d6 $d5
    add  A, $03                                        ;; 04:4013 $c6 $03
    cp   A, $24                                        ;; 04:4015 $fe $24
    ret  NC                                            ;; 04:4017 $d0
    ld   A, B                                          ;; 04:4018 $78
    sub  A, $60                                        ;; 04:4019 $d6 $60
    ld   C, A                                          ;; 04:401b $4f
    call call_00_1394                                  ;; 04:401c $cd $94 $13
    ld   B, $00                                        ;; 04:401f $06 $00
    ld   HL, wC355                                     ;; 04:4021 $21 $55 $c3
    add  HL, BC                                        ;; 04:4024 $09
    ld   A, [HL]                                       ;; 04:4025 $7e
    bit  0, A                                          ;; 04:4026 $cb $47
    ret  NZ                                            ;; 04:4028 $c0
    bit  1, A                                          ;; 04:4029 $cb $4f
    ret  NZ                                            ;; 04:402b $c0
    set  1, [HL]                                       ;; 04:402c $cb $ce
    ld   E, C                                          ;; 04:402e $59
    ld   A, [wD5D7]                                    ;; 04:402f $fa $d7 $d5
    ld   C, A                                          ;; 04:4032 $4f
    ld   HL, wCF36                                     ;; 04:4033 $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 04:4036 $cd $7a $06
    ld   A, [wD5D7]                                    ;; 04:4039 $fa $d7 $d5
    inc  A                                             ;; 04:403c $3c
    ld   [wD5D7], A                                    ;; 04:403d $ea $d7 $d5
    ld   A, $02                                        ;; 04:4040 $3e $02
    ld   [HL+], A                                      ;; 04:4042 $22
    ld   A, E                                          ;; 04:4043 $7b
    ld   [HL+], A                                      ;; 04:4044 $22
    ld   A, $03                                        ;; 04:4045 $3e $03
    ld   [HL+], A                                      ;; 04:4047 $22
    ld   A, [wD5D6]                                    ;; 04:4048 $fa $d6 $d5
    ld   [HL+], A                                      ;; 04:404b $22
    ld   A, [wD5D6]                                    ;; 04:404c $fa $d6 $d5
    ld   B, A                                          ;; 04:404f $47
    add  A, A                                          ;; 04:4050 $87
    add  A, A                                          ;; 04:4051 $87
    ld   C, A                                          ;; 04:4052 $4f
    ld   A, $03                                        ;; 04:4053 $3e $03
    add  A, B                                          ;; 04:4055 $80
    ld   [wD5D6], A                                    ;; 04:4056 $ea $d6 $d5
    ld   DE, wShadowOAM                                ;; 04:4059 $11 $00 $c0
    ld   A, C                                          ;; 04:405c $79
    add  A, E                                          ;; 04:405d $83
    ld   E, A                                          ;; 04:405e $5f
    ld   A, $00                                        ;; 04:405f $3e $00
    adc  A, D                                          ;; 04:4061 $8a
    ld   D, A                                          ;; 04:4062 $57
    ld   A, D                                          ;; 04:4063 $7a
    ld   [HL+], A                                      ;; 04:4064 $22
    ld   A, E                                          ;; 04:4065 $7b
    ld   [HL+], A                                      ;; 04:4066 $22
    ld   A, $00                                        ;; 04:4067 $3e $00
    ld   [HL+], A                                      ;; 04:4069 $22
    ld   A, $1a                                        ;; 04:406a $3e $1a
    ld   [HL+], A                                      ;; 04:406c $22
    ld   A, $57                                        ;; 04:406d $3e $57
    ld   [HL+], A                                      ;; 04:406f $22
    ld   A, $ee                                        ;; 04:4070 $3e $ee
    ld   [HL+], A                                      ;; 04:4072 $22
    xor  A, A                                          ;; 04:4073 $af
    ld   [HL+], A                                      ;; 04:4074 $22
    ld   [HL+], A                                      ;; 04:4075 $22
    ld   A, $00                                        ;; 04:4076 $3e $00
    ld   [wD83A], A                                    ;; 04:4078 $ea $3a $d8
    ld   A, $88                                        ;; 04:407b $3e $88
    ld   [wD83B], A                                    ;; 04:407d $ea $3b $d8
    jp   .jp_04_4124                                   ;; 04:4080 $c3 $24 $41
.jp_04_4083:
    cp   A, $b0                                        ;; 04:4083 $fe $b0
    ret  NC                                            ;; 04:4085 $d0
    ld   B, A                                          ;; 04:4086 $47
    ld   A, [wD5D6]                                    ;; 04:4087 $fa $d6 $d5
    add  A, $02                                        ;; 04:408a $c6 $02
    cp   A, $24                                        ;; 04:408c $fe $24
    ret  NC                                            ;; 04:408e $d0
    ld   A, B                                          ;; 04:408f $78
    sub  A, $90                                        ;; 04:4090 $d6 $90
    add  A, A                                          ;; 04:4092 $87
    ld   C, A                                          ;; 04:4093 $4f
    call call_00_13b8                                  ;; 04:4094 $cd $b8 $13
    ld   A, B                                          ;; 04:4097 $78
    ld   [wD839], A                                    ;; 04:4098 $ea $39 $d8
    sla  A                                             ;; 04:409b $cb $27
    sla  A                                             ;; 04:409d $cb $27
    ld   B, $00                                        ;; 04:409f $06 $00
    ld   HL, wC255                                     ;; 04:40a1 $21 $55 $c2
    add  HL, BC                                        ;; 04:40a4 $09
    or   A, [HL]                                       ;; 04:40a5 $b6
    ld   [HL], A                                       ;; 04:40a6 $77
    bit  1, [HL]                                       ;; 04:40a7 $cb $4e
    ret  NZ                                            ;; 04:40a9 $c0
    set  1, [HL]                                       ;; 04:40aa $cb $ce
    ld   A, [HL]                                       ;; 04:40ac $7e
    ld   [wD837], A                                    ;; 04:40ad $ea $37 $d8
    ld   A, C                                          ;; 04:40b0 $79
    ld   [wD838], A                                    ;; 04:40b1 $ea $38 $d8
    ld   HL, wD5D7                                     ;; 04:40b4 $21 $d7 $d5
    ld   C, [HL]                                       ;; 04:40b7 $4e
    inc  [HL]                                          ;; 04:40b8 $34
    ld   HL, wCF36                                     ;; 04:40b9 $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 04:40bc $cd $7a $06
    ld   A, $01                                        ;; 04:40bf $3e $01
    ld   [HL+], A                                      ;; 04:40c1 $22
    ld   A, [wD838]                                    ;; 04:40c2 $fa $38 $d8
    ld   [HL+], A                                      ;; 04:40c5 $22
    ld   A, $02                                        ;; 04:40c6 $3e $02
    ld   [HL+], A                                      ;; 04:40c8 $22
    ld   A, [wD5D6]                                    ;; 04:40c9 $fa $d6 $d5
    ld   [HL+], A                                      ;; 04:40cc $22
    ld   A, [wD5D6]                                    ;; 04:40cd $fa $d6 $d5
    ld   B, A                                          ;; 04:40d0 $47
    add  A, A                                          ;; 04:40d1 $87
    add  A, A                                          ;; 04:40d2 $87
    ld   C, A                                          ;; 04:40d3 $4f
    ld   A, $02                                        ;; 04:40d4 $3e $02
    add  A, B                                          ;; 04:40d6 $80
    ld   [wD5D6], A                                    ;; 04:40d7 $ea $d6 $d5
    ld   DE, wShadowOAM                                ;; 04:40da $11 $00 $c0
    ld   A, C                                          ;; 04:40dd $79
    add  A, E                                          ;; 04:40de $83
    ld   E, A                                          ;; 04:40df $5f
    ld   A, $00                                        ;; 04:40e0 $3e $00
    adc  A, D                                          ;; 04:40e2 $8a
    ld   D, A                                          ;; 04:40e3 $57
    ld   A, D                                          ;; 04:40e4 $7a
    ld   [HL+], A                                      ;; 04:40e5 $22
    ld   A, E                                          ;; 04:40e6 $7b
    ld   [HL+], A                                      ;; 04:40e7 $22
    ld   A, $00                                        ;; 04:40e8 $3e $00
    ld   [HL+], A                                      ;; 04:40ea $22
    ld   A, $1a                                        ;; 04:40eb $3e $1a
    ld   [HL+], A                                      ;; 04:40ed $22
    ld   A, [wD837]                                    ;; 04:40ee $fa $37 $d8
    bit  0, A                                          ;; 04:40f1 $cb $47
    jr   NZ, .jr_04_410e                               ;; 04:40f3 $20 $19
    ld   A, $57                                        ;; 04:40f5 $3e $57
    ld   [HL+], A                                      ;; 04:40f7 $22
    ld   A, $c6                                        ;; 04:40f8 $3e $c6
    ld   [HL+], A                                      ;; 04:40fa $22
    ld   A, [wD839]                                    ;; 04:40fb $fa $39 $d8
    add  A, A                                          ;; 04:40fe $87
    add  A, $7d                                        ;; 04:40ff $c6 $7d
    ld   E, A                                          ;; 04:4101 $5f
    ld   A, $00                                        ;; 04:4102 $3e $00
    adc  A, $41                                        ;; 04:4104 $ce $41
    ld   D, A                                          ;; 04:4106 $57
    ld   A, [DE]                                       ;; 04:4107 $1a
    ld   [HL+], A                                      ;; 04:4108 $22
    inc  DE                                            ;; 04:4109 $13
    ld   A, [DE]                                       ;; 04:410a $1a
    ld   [HL+], A                                      ;; 04:410b $22
    jr   .jr_04_411a                                   ;; 04:410c $18 $0c
.jr_04_410e:
    ld   A, $57                                        ;; 04:410e $3e $57
    ld   [HL+], A                                      ;; 04:4110 $22
    ld   A, $da                                        ;; 04:4111 $3e $da
    ld   [HL+], A                                      ;; 04:4113 $22
    ld   A, $41                                        ;; 04:4114 $3e $41
    ld   [HL+], A                                      ;; 04:4116 $22
    ld   A, $e6                                        ;; 04:4117 $3e $e6
    ld   [HL+], A                                      ;; 04:4119 $22
.jr_04_411a:
    ld   A, $01                                        ;; 04:411a $3e $01
    ld   [wD83A], A                                    ;; 04:411c $ea $3a $d8
    ld   A, $8c                                        ;; 04:411f $3e $8c
    ld   [wD83B], A                                    ;; 04:4121 $ea $3b $d8
.jp_04_4124:
    ld   D, H                                          ;; 04:4124 $54
    ld   E, L                                          ;; 04:4125 $5d
    ld   HL, wCEC6                                     ;; 04:4126 $21 $c6 $ce
    ld   A, [HL+]                                      ;; 04:4129 $2a
    ld   L, [HL]                                       ;; 04:412a $6e
    ld   H, A                                          ;; 04:412b $67
    add  HL, HL                                        ;; 04:412c $29
    add  HL, HL                                        ;; 04:412d $29
    add  HL, HL                                        ;; 04:412e $29
    call call_00_0673                                  ;; 04:412f $cd $73 $06
    ld   A, L                                          ;; 04:4132 $7d
    ld   [wD837], A                                    ;; 04:4133 $ea $37 $d8
    push DE                                            ;; 04:4136 $d5
    ld   HL, wCEC8                                     ;; 04:4137 $21 $c8 $ce
    ld   A, [HL+]                                      ;; 04:413a $2a
    ld   E, [HL]                                       ;; 04:413b $5e
    ld   D, A                                          ;; 04:413c $57
    ld   HL, wRoomWidthTiles                           ;; 04:413d $21 $a7 $d5
    ld   A, [HL+]                                      ;; 04:4140 $2a
    ld   C, [HL]                                       ;; 04:4141 $4e
    ld   B, A                                          ;; 04:4142 $47
    call call_00_0578                                  ;; 04:4143 $cd $78 $05
    add  HL, HL                                        ;; 04:4146 $29
    add  HL, HL                                        ;; 04:4147 $29
    add  HL, HL                                        ;; 04:4148 $29
    pop  DE                                            ;; 04:4149 $d1
    call call_00_0673                                  ;; 04:414a $cd $73 $06
    ld   A, [wCEB5]                                    ;; 04:414d $fa $b5 $ce
    ld   B, A                                          ;; 04:4150 $47
    ld   A, L                                          ;; 04:4151 $7d
    sub  A, B                                          ;; 04:4152 $90
    add  A, $10                                        ;; 04:4153 $c6 $10
    ld   [DE], A                                       ;; 04:4155 $12
    inc  DE                                            ;; 04:4156 $13
    ld   A, [wCEB3]                                    ;; 04:4157 $fa $b3 $ce
    ld   B, A                                          ;; 04:415a $47
    ld   A, [wD837]                                    ;; 04:415b $fa $37 $d8
    sub  A, B                                          ;; 04:415e $90
    add  A, $08                                        ;; 04:415f $c6 $08
    ld   [DE], A                                       ;; 04:4161 $12
    inc  DE                                            ;; 04:4162 $13
    ld   H, D                                          ;; 04:4163 $62
    ld   L, E                                          ;; 04:4164 $6b
    xor  A, A                                          ;; 04:4165 $af
    ld   [HL+], A                                      ;; 04:4166 $22
    ld   A, $01                                        ;; 04:4167 $3e $01
    ld   [HL+], A                                      ;; 04:4169 $22
    ld   [HL+], A                                      ;; 04:416a $22
    ld   [HL+], A                                      ;; 04:416b $22
    xor  A, A                                          ;; 04:416c $af
    ld   [HL+], A                                      ;; 04:416d $22
    ld   DE, $03                                       ;; 04:416e $11 $03 $00
    add  HL, DE                                        ;; 04:4171 $19
    ld   A, [wD83A]                                    ;; 04:4172 $fa $3a $d8
    ld   [HL+], A                                      ;; 04:4175 $22
    ld   A, [wD83B]                                    ;; 04:4176 $fa $3b $d8
    ld   [HL+], A                                      ;; 04:4179 $22
    ld   [HL], $00                                     ;; 04:417a $36 $00
    ret                                                ;; 04:417c $c9
    db   $41, $e6, $40, $00, $40, $1b, $40, $35        ;; 04:417d ????????
    db   $40, $4f, $40, $6c, $40, $8a, $40, $a1        ;; 04:4185 ????..??
    db   $40, $bb, $00, $00, $40, $da, $40, $f5        ;; 04:418d ????????
    db   $41, $11, $41, $27, $41, $43, $41, $5f        ;; 04:4195 ????????
    db   $41, $7b, $41, $99                            ;; 04:419d ????

call_04_41a1:
    ld   A, [wD5D7]                                    ;; 04:41a1 $fa $d7 $d5
    and  A, A                                          ;; 04:41a4 $a7
    ret  Z                                             ;; 04:41a5 $c8
    ld   B, A                                          ;; 04:41a6 $47
    ld   C, $00                                        ;; 04:41a7 $0e $00
.jr_04_41a9:
    push BC                                            ;; 04:41a9 $c5
    ld   HL, wCF36                                     ;; 04:41aa $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 04:41ad $cd $7a $06
    inc  HL                                            ;; 04:41b0 $23
    inc  HL                                            ;; 04:41b1 $23
    ld   A, [HL+]                                      ;; 04:41b2 $2a
    ld   D, A                                          ;; 04:41b3 $57
    ld   A, [HL+]                                      ;; 04:41b4 $2a
    ld   E, A                                          ;; 04:41b5 $5f
    push DE                                            ;; 04:41b6 $d5
    ld   DE, $08                                       ;; 04:41b7 $11 $08 $00
    add  HL, DE                                        ;; 04:41ba $19
    inc  HL                                            ;; 04:41bb $23
    ld   A, [HL+]                                      ;; 04:41bc $2a
    ld   D, A                                          ;; 04:41bd $57
    inc  HL                                            ;; 04:41be $23
    ld   A, [wCEB5]                                    ;; 04:41bf $fa $b5 $ce
    ld   C, A                                          ;; 04:41c2 $4f
    ld   A, [HL+]                                      ;; 04:41c3 $2a
    sub  A, C                                          ;; 04:41c4 $91
    add  A, $10                                        ;; 04:41c5 $c6 $10
    ld   [HL+], A                                      ;; 04:41c7 $22
    ld   E, A                                          ;; 04:41c8 $5f
    ld   A, [wCEB3]                                    ;; 04:41c9 $fa $b3 $ce
    ld   C, A                                          ;; 04:41cc $4f
    ld   A, D                                          ;; 04:41cd $7a
    sub  A, C                                          ;; 04:41ce $91
    add  A, $08                                        ;; 04:41cf $c6 $08
    ld   [HL], A                                       ;; 04:41d1 $77
    cp   A, $a9                                        ;; 04:41d2 $fe $a9
    jr   C, .jr_04_41ee                                ;; 04:41d4 $38 $18
    cp   A, $f8                                        ;; 04:41d6 $fe $f8
    jr   NC, .jr_04_41ee                               ;; 04:41d8 $30 $14
.jr_04_41da:
    pop  DE                                            ;; 04:41da $d1
    pop  BC                                            ;; 04:41db $c1
    dec  B                                             ;; 04:41dc $05
    call call_04_41fe                                  ;; 04:41dd $cd $fe $41
    call call_04_422e                                  ;; 04:41e0 $cd $2e $42
    call call_04_4258                                  ;; 04:41e3 $cd $58 $42
    call call_04_42a1                                  ;; 04:41e6 $cd $a1 $42
    ld   A, B                                          ;; 04:41e9 $78
    and  A, A                                          ;; 04:41ea $a7
    jr   NZ, .jr_04_41a9                               ;; 04:41eb $20 $bc
    ret                                                ;; 04:41ed $c9
.jr_04_41ee:
    ld   A, E                                          ;; 04:41ee $7b
    cp   A, $a1                                        ;; 04:41ef $fe $a1
    jr   C, .jr_04_41f7                                ;; 04:41f1 $38 $04
    cp   A, $f9                                        ;; 04:41f3 $fe $f9
    jr   C, .jr_04_41da                                ;; 04:41f5 $38 $e3
.jr_04_41f7:
    pop  DE                                            ;; 04:41f7 $d1
    pop  BC                                            ;; 04:41f8 $c1
    inc  C                                             ;; 04:41f9 $0c
    dec  B                                             ;; 04:41fa $05
    jr   NZ, .jr_04_41a9                               ;; 04:41fb $20 $ac
    ret                                                ;; 04:41fd $c9

call_04_41fe:
    push BC                                            ;; 04:41fe $c5
    ld   HL, wCF36                                     ;; 04:41ff $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 04:4202 $cd $7a $06
    ld   A, [HL+]                                      ;; 04:4205 $2a
    cp   A, $01                                        ;; 04:4206 $fe $01
    jr   C, .jr_04_4223                                ;; 04:4208 $38 $19
    jr   Z, .jr_04_4218                                ;; 04:420a $28 $0c
    cp   A, $03                                        ;; 04:420c $fe $03
    jr   C, .jr_04_4212                                ;; 04:420e $38 $02
    pop  BC                                            ;; 04:4210 $c1
    ret                                                ;; 04:4211 $c9
.jr_04_4212:
    ld   C, [HL]                                       ;; 04:4212 $4e
    ld   HL, wC355                                     ;; 04:4213 $21 $55 $c3
    jr   .jr_04_421c                                   ;; 04:4216 $18 $04
.jr_04_4218:
    ld   C, [HL]                                       ;; 04:4218 $4e
    ld   HL, wC255                                     ;; 04:4219 $21 $55 $c2
.jr_04_421c:
    ld   B, $00                                        ;; 04:421c $06 $00
    add  HL, BC                                        ;; 04:421e $09
    res  1, [HL]                                       ;; 04:421f $cb $8e
    pop  BC                                            ;; 04:4221 $c1
    ret                                                ;; 04:4222 $c9
.jr_04_4223:
    ld   C, [HL]                                       ;; 04:4223 $4e
    ld   HL, $323                                      ;; 04:4224 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 04:4227 $cd $7a $06
    ld   [HL], $00                                     ;; 04:422a $36 $00
    pop  BC                                            ;; 04:422c $c1
    ret                                                ;; 04:422d $c9

call_04_422e:
    push BC                                            ;; 04:422e $c5
    ld   A, [wD5D7]                                    ;; 04:422f $fa $d7 $d5
    ld   B, A                                          ;; 04:4232 $47
    ld   C, $00                                        ;; 04:4233 $0e $00
.jr_04_4235:
    push BC                                            ;; 04:4235 $c5
    ld   HL, wCF36                                     ;; 04:4236 $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 04:4239 $cd $7a $06
    ld   BC, $03                                       ;; 04:423c $01 $03 $00
    add  HL, BC                                        ;; 04:423f $09
    ld   A, [HL]                                       ;; 04:4240 $7e
    cp   A, E                                          ;; 04:4241 $bb
    jr   C, .jr_04_4251                                ;; 04:4242 $38 $0d
    sub  A, D                                          ;; 04:4244 $92
    ld   [HL+], A                                      ;; 04:4245 $22
    inc  HL                                            ;; 04:4246 $23
    add  A, A                                          ;; 04:4247 $87
    add  A, A                                          ;; 04:4248 $87
    add  A, $00                                        ;; 04:4249 $c6 $00
    ld   [HL-], A                                      ;; 04:424b $32
    ld   A, $00                                        ;; 04:424c $3e $00
    adc  A, $c0                                        ;; 04:424e $ce $c0
    ld   [HL], A                                       ;; 04:4250 $77
.jr_04_4251:
    pop  BC                                            ;; 04:4251 $c1
    inc  C                                             ;; 04:4252 $0c
    dec  B                                             ;; 04:4253 $05
    jr   NZ, .jr_04_4235                               ;; 04:4254 $20 $df
    pop  BC                                            ;; 04:4256 $c1
    ret                                                ;; 04:4257 $c9

call_04_4258:
    push DE                                            ;; 04:4258 $d5
    push BC                                            ;; 04:4259 $c5
    ld   A, [wD5D6]                                    ;; 04:425a $fa $d6 $d5
    ld   H, A                                          ;; 04:425d $67
    sub  A, D                                          ;; 04:425e $92
    ld   [wD5D6], A                                    ;; 04:425f $ea $d6 $d5
    ld   A, H                                          ;; 04:4262 $7c
    sub  A, E                                          ;; 04:4263 $93
    cp   A, D                                          ;; 04:4264 $ba
    jr   NZ, .jr_04_4274                               ;; 04:4265 $20 $0d
    ld   C, E                                          ;; 04:4267 $4b
    sla  C                                             ;; 04:4268 $cb $21
    sla  C                                             ;; 04:426a $cb $21
    ld   B, $00                                        ;; 04:426c $06 $00
    ld   HL, wShadowOAM                                ;; 04:426e $21 $00 $c0
    add  HL, BC                                        ;; 04:4271 $09
    jr   .jr_04_4296                                   ;; 04:4272 $18 $22
.jr_04_4274:
    ld   C, E                                          ;; 04:4274 $4b
    sla  C                                             ;; 04:4275 $cb $21
    sla  C                                             ;; 04:4277 $cb $21
    ld   B, $00                                        ;; 04:4279 $06 $00
    ld   HL, wShadowOAM                                ;; 04:427b $21 $00 $c0
    add  HL, BC                                        ;; 04:427e $09
    push HL                                            ;; 04:427f $e5
    ld   C, D                                          ;; 04:4280 $4a
    sla  C                                             ;; 04:4281 $cb $21
    sla  C                                             ;; 04:4283 $cb $21
    add  HL, BC                                        ;; 04:4285 $09
    pop  BC                                            ;; 04:4286 $c1
    ld   A, $23                                        ;; 04:4287 $3e $23
    sub  A, D                                          ;; 04:4289 $92
    sub  A, E                                          ;; 04:428a $93
    add  A, A                                          ;; 04:428b $87
    add  A, A                                          ;; 04:428c $87
    ld   E, A                                          ;; 04:428d $5f
.jr_04_428e:
    ld   A, [HL+]                                      ;; 04:428e $2a
    ld   [BC], A                                       ;; 04:428f $02
    inc  BC                                            ;; 04:4290 $03
    dec  E                                             ;; 04:4291 $1d
    jr   NZ, .jr_04_428e                               ;; 04:4292 $20 $fa
    ld   H, B                                          ;; 04:4294 $60
    ld   L, C                                          ;; 04:4295 $69
.jr_04_4296:
    xor  A, A                                          ;; 04:4296 $af
.jr_04_4297:
    ld   [HL+], A                                      ;; 04:4297 $22
    ld   [HL+], A                                      ;; 04:4298 $22
    ld   [HL+], A                                      ;; 04:4299 $22
    ld   [HL+], A                                      ;; 04:429a $22
    dec  D                                             ;; 04:429b $15
    jr   NZ, .jr_04_4297                               ;; 04:429c $20 $f9
    pop  BC                                            ;; 04:429e $c1
    pop  DE                                            ;; 04:429f $d1
    ret                                                ;; 04:42a0 $c9

call_04_42a1:
    ld   HL, wD5D7                                     ;; 04:42a1 $21 $d7 $d5
    dec  [HL]                                          ;; 04:42a4 $35
    ld   A, B                                          ;; 04:42a5 $78
    and  A, A                                          ;; 04:42a6 $a7
    ret  Z                                             ;; 04:42a7 $c8
    push DE                                            ;; 04:42a8 $d5
    push BC                                            ;; 04:42a9 $c5
    ld   HL, wCF36                                     ;; 04:42aa $21 $36 $cf
    ld   E, C                                          ;; 04:42ad $59
    sla  E                                             ;; 04:42ae $cb $23
    ld   D, $00                                        ;; 04:42b0 $16 $00
    add  HL, DE                                        ;; 04:42b2 $19
    ld   A, [HL+]                                      ;; 04:42b3 $2a
    ld   D, A                                          ;; 04:42b4 $57
    ld   A, [HL+]                                      ;; 04:42b5 $2a
    ld   E, A                                          ;; 04:42b6 $5f
    push DE                                            ;; 04:42b7 $d5
    ld   D, H                                          ;; 04:42b8 $54
    ld   E, L                                          ;; 04:42b9 $5d
    dec  HL                                            ;; 04:42ba $2b
    dec  HL                                            ;; 04:42bb $2b
    sla  B                                             ;; 04:42bc $cb $20
.jr_04_42be:
    ld   A, [DE]                                       ;; 04:42be $1a
    ld   [HL+], A                                      ;; 04:42bf $22
    inc  DE                                            ;; 04:42c0 $13
    dec  B                                             ;; 04:42c1 $05
    jr   NZ, .jr_04_42be                               ;; 04:42c2 $20 $fa
    pop  DE                                            ;; 04:42c4 $d1
    ld   A, D                                          ;; 04:42c5 $7a
    ld   [HL+], A                                      ;; 04:42c6 $22
    ld   [HL], E                                       ;; 04:42c7 $73
    pop  BC                                            ;; 04:42c8 $c1
    pop  DE                                            ;; 04:42c9 $d1
    ret                                                ;; 04:42ca $c9

call_04_42cb:
    ld   A, [wD5D8]                                    ;; 04:42cb $fa $d8 $d5
    inc  A                                             ;; 04:42ce $3c
    ld   B, A                                          ;; 04:42cf $47
    ld   C, $00                                        ;; 04:42d0 $0e $00
.jp_04_42d2:
    ld   A, [wD5CA]                                    ;; 04:42d2 $fa $ca $d5
    cp   A, C                                          ;; 04:42d5 $b9
    jp   Z, .jp_04_4379                                ;; 04:42d6 $ca $79 $43
    push BC                                            ;; 04:42d9 $c5
    ld   HL, $321                                      ;; 04:42da $21 $21 $03
    call ld_HL_from_HL_add_2C                          ;; 04:42dd $cd $7a $06
    ld   A, [HL]                                       ;; 04:42e0 $7e
    cp   A, $40                                        ;; 04:42e1 $fe $40
    jp   Z, .jp_04_4378                                ;; 04:42e3 $ca $78 $43
    ld   BC, $09                                       ;; 04:42e6 $01 $09 $00
    add  HL, BC                                        ;; 04:42e9 $09
    ld   A, [HL+]                                      ;; 04:42ea $2a
    ld   D, A                                          ;; 04:42eb $57
    ld   A, [HL+]                                      ;; 04:42ec $2a
    ld   E, A                                          ;; 04:42ed $5f
    ld   A, [HL+]                                      ;; 04:42ee $2a
    ld   B, A                                          ;; 04:42ef $47
    ld   A, [HL+]                                      ;; 04:42f0 $2a
    ld   C, A                                          ;; 04:42f1 $4f
    push BC                                            ;; 04:42f2 $c5
    ld   B, D                                          ;; 04:42f3 $42
    ld   C, E                                          ;; 04:42f4 $4b
    ld   A, $0f                                        ;; 04:42f5 $3e $0f
    add  A, E                                          ;; 04:42f7 $83
    ld   E, A                                          ;; 04:42f8 $5f
    ld   A, $00                                        ;; 04:42f9 $3e $00
    adc  A, D                                          ;; 04:42fb $8a
    ld   D, A                                          ;; 04:42fc $57
    call divide_DE_8                                   ;; 04:42fd $cd $b4 $06
    ld   HL, wD5BC                                     ;; 04:4300 $21 $bc $d5
    ld   A, [HL+]                                      ;; 04:4303 $2a
    ld   L, [HL]                                       ;; 04:4304 $6e
    ld   H, A                                          ;; 04:4305 $67
    call divide_HL_8                                   ;; 04:4306 $cd $a7 $06
    ld   A, L                                          ;; 04:4309 $7d
    cp   A, E                                          ;; 04:430a $bb
    jr   Z, .jr_04_4326                                ;; 04:430b $28 $19
    jp   NC, .jp_04_4377                               ;; 04:430d $d2 $77 $43
    call divide_BC_8                                   ;; 04:4310 $cd $c1 $06
    ld   HL, wD5BC                                     ;; 04:4313 $21 $bc $d5
    ld   A, [HL+]                                      ;; 04:4316 $2a
    ld   L, [HL]                                       ;; 04:4317 $6e
    ld   H, A                                          ;; 04:4318 $67
    ld   DE, $0f                                       ;; 04:4319 $11 $0f $00
    add  HL, DE                                        ;; 04:431c $19
    call divide_HL_8                                   ;; 04:431d $cd $a7 $06
    ld   A, L                                          ;; 04:4320 $7d
    cp   A, C                                          ;; 04:4321 $b9
    jr   Z, .jr_04_4326                                ;; 04:4322 $28 $02
    jr   C, .jp_04_4377                                ;; 04:4324 $38 $51
.jr_04_4326:
    pop  BC                                            ;; 04:4326 $c1
    ld   D, B                                          ;; 04:4327 $50
    ld   E, C                                          ;; 04:4328 $59
    ld   A, $0f                                        ;; 04:4329 $3e $0f
    add  A, E                                          ;; 04:432b $83
    ld   E, A                                          ;; 04:432c $5f
    ld   A, $00                                        ;; 04:432d $3e $00
    adc  A, D                                          ;; 04:432f $8a
    ld   D, A                                          ;; 04:4330 $57
    call divide_DE_8                                   ;; 04:4331 $cd $b4 $06
    ld   HL, wD5BE                                     ;; 04:4334 $21 $be $d5
    ld   A, [HL+]                                      ;; 04:4337 $2a
    ld   L, [HL]                                       ;; 04:4338 $6e
    ld   H, A                                          ;; 04:4339 $67
    call divide_HL_8                                   ;; 04:433a $cd $a7 $06
    ld   A, L                                          ;; 04:433d $7d
    cp   A, E                                          ;; 04:433e $bb
    jr   Z, .jr_04_4359                                ;; 04:433f $28 $18
    jr   NC, .jp_04_4378                               ;; 04:4341 $30 $35
    call divide_BC_8                                   ;; 04:4343 $cd $c1 $06
    ld   HL, wD5BE                                     ;; 04:4346 $21 $be $d5
    ld   A, [HL+]                                      ;; 04:4349 $2a
    ld   L, [HL]                                       ;; 04:434a $6e
    ld   H, A                                          ;; 04:434b $67
    ld   DE, $0f                                       ;; 04:434c $11 $0f $00
    add  HL, DE                                        ;; 04:434f $19
    call divide_HL_8                                   ;; 04:4350 $cd $a7 $06
    ld   A, L                                          ;; 04:4353 $7d
    cp   A, C                                          ;; 04:4354 $b9
    jr   Z, .jr_04_4359                                ;; 04:4355 $28 $02
    jr   C, .jp_04_4378                                ;; 04:4357 $38 $1f
.jr_04_4359:
    ld   A, [wD5CA]                                    ;; 04:4359 $fa $ca $d5
    and  A, A                                          ;; 04:435c $a7
    jr   NZ, .jr_04_4365                               ;; 04:435d $20 $06
    xor  A, A                                          ;; 04:435f $af
    ld   [wC45B], A                                    ;; 04:4360 $ea $5b $c4
    pop  BC                                            ;; 04:4363 $c1
    ret                                                ;; 04:4364 $c9
.jr_04_4365:
    dec  A                                             ;; 04:4365 $3d
    ld   C, A                                          ;; 04:4366 $4f
    ld   HL, $323                                      ;; 04:4367 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 04:436a $cd $7a $06
    ld   DE, $0d                                       ;; 04:436d $11 $0d $00
    add  HL, DE                                        ;; 04:4370 $19
    inc  [HL]                                          ;; 04:4371 $34
    call call_00_0c9d                                  ;; 04:4372 $cd $9d $0c
    pop  BC                                            ;; 04:4375 $c1
    ret                                                ;; 04:4376 $c9
.jp_04_4377:
    pop  DE                                            ;; 04:4377 $d1
.jp_04_4378:
    pop  BC                                            ;; 04:4378 $c1
.jp_04_4379:
    inc  C                                             ;; 04:4379 $0c
    dec  B                                             ;; 04:437a $05
    jp   NZ, .jp_04_42d2                               ;; 04:437b $c2 $d2 $42
    ret                                                ;; 04:437e $c9

call_04_437f:
    ld   HL, wShadowOAM.30                             ;; 04:437f $21 $30 $c0
    ld   A, [wC45C]                                    ;; 04:4382 $fa $5c $c4
    ld   [HL+], A                                      ;; 04:4385 $22
    ld   A, [wC45D]                                    ;; 04:4386 $fa $5d $c4
    ld   [HL+], A                                      ;; 04:4389 $22
    ld   A, $2c                                        ;; 04:438a $3e $2c
    ld   [HL+], A                                      ;; 04:438c $22
    xor  A, A                                          ;; 04:438d $af
    ld   [HL+], A                                      ;; 04:438e $22
    ld   HL, wShadowOAM.3C                             ;; 04:438f $21 $3c $c0
    ld   A, [wC45C]                                    ;; 04:4392 $fa $5c $c4
    ld   [HL+], A                                      ;; 04:4395 $22
    ld   A, [wC45D]                                    ;; 04:4396 $fa $5d $c4
    add  A, $08                                        ;; 04:4399 $c6 $08
    ld   [HL+], A                                      ;; 04:439b $22
    ld   A, $2c                                        ;; 04:439c $3e $2c
    ld   [HL+], A                                      ;; 04:439e $22
    ld   A, $20                                        ;; 04:439f $3e $20
    ld   [HL+], A                                      ;; 04:43a1 $22
    ret                                                ;; 04:43a2 $c9

call_04_43a3:
    ld   HL, wD1BD                                     ;; 04:43a3 $21 $bd $d1
    ld   A, $d1                                        ;; 04:43a6 $3e $d1
    ld   [HL+], A                                      ;; 04:43a8 $22
    ld   A, $09                                        ;; 04:43a9 $3e $09
    ld   [HL+], A                                      ;; 04:43ab $22
    ld   HL, wD109                                     ;; 04:43ac $21 $09 $d1
    ld   A, $ff                                        ;; 04:43af $3e $ff
    ld   [HL+], A                                      ;; 04:43b1 $22
    xor  A, A                                          ;; 04:43b2 $af
    ld   [HL+], A                                      ;; 04:43b3 $22
    ld   A, $04                                        ;; 04:43b4 $3e $04
    ld   [HL+], A                                      ;; 04:43b6 $22
    xor  A, A                                          ;; 04:43b7 $af
    ld   [HL+], A                                      ;; 04:43b8 $22
    ld   A, $c0                                        ;; 04:43b9 $3e $c0
    ld   [HL+], A                                      ;; 04:43bb $22
    ld   A, $00                                        ;; 04:43bc $3e $00
    ld   [HL+], A                                      ;; 04:43be $22
    ld   DE, $06                                       ;; 04:43bf $11 $06 $00
    add  HL, DE                                        ;; 04:43c2 $19
    xor  A, A                                          ;; 04:43c3 $af
    ld   [HL+], A                                      ;; 04:43c4 $22
    ld   [HL+], A                                      ;; 04:43c5 $22
    inc  HL                                            ;; 04:43c6 $23
    ld   A, $01                                        ;; 04:43c7 $3e $01
    ld   [HL+], A                                      ;; 04:43c9 $22
    xor  A, A                                          ;; 04:43ca $af
    ld   [HL+], A                                      ;; 04:43cb $22
    ld   [HL+], A                                      ;; 04:43cc $22
    ld   [HL+], A                                      ;; 04:43cd $22
    ret                                                ;; 04:43ce $c9

call_04_43cf:
    ld   A, [wCC52]                                    ;; 04:43cf $fa $52 $cc
    cp   A, $03                                        ;; 04:43d2 $fe $03
    jr   Z, .jr_04_43fb                                ;; 04:43d4 $28 $25
    cp   A, $04                                        ;; 04:43d6 $fe $04
    jr   Z, .jr_04_43df                                ;; 04:43d8 $28 $05
    cp   A, $05                                        ;; 04:43da $fe $05
    jr   Z, .jr_04_43ed                                ;; 04:43dc $28 $0f
    ret  NZ                                            ;; 04:43de $c0
.jr_04_43df:
    ld   A, [wCC60]                                    ;; 04:43df $fa $60 $cc
    and  A, A                                          ;; 04:43e2 $a7
    ret  Z                                             ;; 04:43e3 $c8
    xor  A, A                                          ;; 04:43e4 $af
    ld   [wCC60], A                                    ;; 04:43e5 $ea $60 $cc
    ld   A, $14                                        ;; 04:43e8 $3e $14
    jp   call_00_11a8                                  ;; 04:43ea $c3 $a8 $11
.jr_04_43ed:
    ld   A, [wCC60]                                    ;; 04:43ed $fa $60 $cc
    and  A, A                                          ;; 04:43f0 $a7
    ret  Z                                             ;; 04:43f1 $c8
    xor  A, A                                          ;; 04:43f2 $af
    ld   [wCC60], A                                    ;; 04:43f3 $ea $60 $cc
    ld   A, $21                                        ;; 04:43f6 $3e $21
    jp   call_00_11a8                                  ;; 04:43f8 $c3 $a8 $11
.jr_04_43fb:
    ld   A, [wJoypadPressed]                           ;; 04:43fb $fa $7f $d5
    bit  0, A                                          ;; 04:43fe $cb $47
    jr   NZ, .jr_04_441c                               ;; 04:4400 $20 $1a
    ld   A, [wJoypadPressed]                           ;; 04:4402 $fa $7f $d5
    bit  4, A                                          ;; 04:4405 $cb $67
    jp   NZ, .jp_04_44f3                               ;; 04:4407 $c2 $f3 $44
    bit  5, A                                          ;; 04:440a $cb $6f
    jp   NZ, .jp_04_44fa                               ;; 04:440c $c2 $fa $44
    bit  6, A                                          ;; 04:440f $cb $77
    jp   NZ, .jp_04_44e6                               ;; 04:4411 $c2 $e6 $44
    bit  7, A                                          ;; 04:4414 $cb $7f
    jp   NZ, .jp_04_44ec                               ;; 04:4416 $c2 $ec $44
    jp   .jp_04_4503                                   ;; 04:4419 $c3 $03 $45
.jr_04_441c:
    ld   A, $04                                        ;; 04:441c $3e $04
    ld   [wBackupRomBank], A                           ;; 04:441e $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 04:4421 $ea $b7 $d5
    ld   [$2000], A                                    ;; 04:4424 $ea $00 $20
    ld   A, [wCC53]                                    ;; 04:4427 $fa $53 $cc
    ld   B, A                                          ;; 04:442a $47
    ld   A, [wCC54]                                    ;; 04:442b $fa $54 $cc
    add  A, A                                          ;; 04:442e $87
    add  A, B                                          ;; 04:442f $80
    ld   C, A                                          ;; 04:4430 $4f
    ld   HL, data_04_4a2a                              ;; 04:4431 $21 $2a $4a
    call ld_HL_from_HL_add_2C                          ;; 04:4434 $cd $7a $06
    push HL                                            ;; 04:4437 $e5
    ld   HL, data_04_4a22                              ;; 04:4438 $21 $22 $4a
    add  HL, BC                                        ;; 04:443b $09
    ld   A, [HL+]                                      ;; 04:443c $2a
    ld   [wCC5C], A                                    ;; 04:443d $ea $5c $cc
    ld   A, [HL+]                                      ;; 04:4440 $2a
    ld   [wCC5D], A                                    ;; 04:4441 $ea $5d $cc
    pop  HL                                            ;; 04:4444 $e1
    ld   A, [HL]                                       ;; 04:4445 $7e
    cp   A, $32                                        ;; 04:4446 $fe $32
    jr   C, .jr_04_444f                                ;; 04:4448 $38 $05
    ld   A, $16                                        ;; 04:444a $3e $16
    jp   call_00_11a8                                  ;; 04:444c $c3 $a8 $11
.jr_04_444f:
    inc  [HL]                                          ;; 04:444f $34
    ld   A, [wMainGameState]                           ;; 04:4450 $fa $86 $d5
    cp   A, $01                                        ;; 04:4453 $fe $01
    jr   Z, .jr_04_44a0                                ;; 04:4455 $28 $49
    ld   A, $21                                        ;; 04:4457 $3e $21
    call call_00_11a8                                  ;; 04:4459 $cd $a8 $11
    ld   HL, wD1BD                                     ;; 04:445c $21 $bd $d1
    ld   A, [HL+]                                      ;; 04:445f $2a
    ld   L, [HL]                                       ;; 04:4460 $6e
    ld   H, A                                          ;; 04:4461 $67
    ld   [HL], $fe                                     ;; 04:4462 $36 $fe
    ld   DE, $06                                       ;; 04:4464 $11 $06 $00
    add  HL, DE                                        ;; 04:4467 $19
    ld   A, $00                                        ;; 04:4468 $3e $00
    ld   [HL+], A                                      ;; 04:446a $22
    ld   A, $1a                                        ;; 04:446b $3e $1a
    ld   [HL+], A                                      ;; 04:446d $22
    ld   A, $59                                        ;; 04:446e $3e $59
    ld   [HL+], A                                      ;; 04:4470 $22
    ld   A, $76                                        ;; 04:4471 $3e $76
    ld   [HL+], A                                      ;; 04:4473 $22
    ld   DE, $06                                       ;; 04:4474 $11 $06 $00
    add  HL, DE                                        ;; 04:4477 $19
    ld   A, [wCC5C]                                    ;; 04:4478 $fa $5c $cc
    ld   [HL+], A                                      ;; 04:447b $22
    ld   A, [wCC5D]                                    ;; 04:447c $fa $5d $cc
    ld   [HL+], A                                      ;; 04:447f $22
    inc  HL                                            ;; 04:4480 $23
    ld   A, $01                                        ;; 04:4481 $3e $01
    ld   [HL+], A                                      ;; 04:4483 $22
    ld   [HL+], A                                      ;; 04:4484 $22
    ld   [HL+], A                                      ;; 04:4485 $22
    ld   [HL], $00                                     ;; 04:4486 $36 $00
    ld   DE, $04                                       ;; 04:4488 $11 $04 $00
    add  HL, DE                                        ;; 04:448b $19
    xor  A, A                                          ;; 04:448c $af
    ld   [HL+], A                                      ;; 04:448d $22
    ld   [HL], $a8                                     ;; 04:448e $36 $a8
    ld   A, $40                                        ;; 04:4490 $3e $40
    ld   [wCC5E], A                                    ;; 04:4492 $ea $5e $cc
    ld   A, $05                                        ;; 04:4495 $3e $05
    ld   [wCC52], A                                    ;; 04:4497 $ea $52 $cc
    ld   A, $04                                        ;; 04:449a $3e $04
    ld   [wCC5F], A                                    ;; 04:449c $ea $5f $cc
    ret                                                ;; 04:449f $c9
.jr_04_44a0:
    ld   A, $14                                        ;; 04:44a0 $3e $14
    call call_00_11a8                                  ;; 04:44a2 $cd $a8 $11
    ld   HL, wD1BD                                     ;; 04:44a5 $21 $bd $d1
    ld   A, [HL+]                                      ;; 04:44a8 $2a
    ld   L, [HL]                                       ;; 04:44a9 $6e
    ld   H, A                                          ;; 04:44aa $67
    inc  HL                                            ;; 04:44ab $23
    ld   A, [HL+]                                      ;; 04:44ac $2a
    push HL                                            ;; 04:44ad $e5
    ld   C, A                                          ;; 04:44ae $4f
    ld   B, $00                                        ;; 04:44af $06 $00
    ld   HL, wC355                                     ;; 04:44b1 $21 $55 $c3
    add  HL, BC                                        ;; 04:44b4 $09
    set  0, [HL]                                       ;; 04:44b5 $cb $c6
    res  1, [HL]                                       ;; 04:44b7 $cb $8e
    pop  HL                                            ;; 04:44b9 $e1
    ld   DE, $06                                       ;; 04:44ba $11 $06 $00
    add  HL, DE                                        ;; 04:44bd $19
    ld   A, $59                                        ;; 04:44be $3e $59
    ld   [HL+], A                                      ;; 04:44c0 $22
    ld   A, $06                                        ;; 04:44c1 $3e $06
    ld   [HL+], A                                      ;; 04:44c3 $22
    ld   DE, $09                                       ;; 04:44c4 $11 $09 $00
    add  HL, DE                                        ;; 04:44c7 $19
    ld   A, $01                                        ;; 04:44c8 $3e $01
    ld   [HL+], A                                      ;; 04:44ca $22
    ld   [HL+], A                                      ;; 04:44cb $22
    ld   [HL+], A                                      ;; 04:44cc $22
    ld   [HL], $00                                     ;; 04:44cd $36 $00
    ld   HL, wC080                                     ;; 04:44cf $21 $80 $c0
    ld   B, $08                                        ;; 04:44d2 $06 $08
    call memzeroSmall                                  ;; 04:44d4 $cd $8b $05
    xor  A, A                                          ;; 04:44d7 $af
    ld   [wCC5B], A                                    ;; 04:44d8 $ea $5b $cc
    ld   A, $04                                        ;; 04:44db $3e $04
    ld   [wCC52], A                                    ;; 04:44dd $ea $52 $cc
    ld   A, $01                                        ;; 04:44e0 $3e $01
    ld   [wCC5F], A                                    ;; 04:44e2 $ea $5f $cc
    ret                                                ;; 04:44e5 $c9
.jp_04_44e6:
    xor  A, A                                          ;; 04:44e6 $af
    ld   [wCC54], A                                    ;; 04:44e7 $ea $54 $cc
    jr   .jr_04_44fe                                   ;; 04:44ea $18 $12
.jp_04_44ec:
    ld   A, $01                                        ;; 04:44ec $3e $01
    ld   [wCC54], A                                    ;; 04:44ee $ea $54 $cc
    jr   .jr_04_44fe                                   ;; 04:44f1 $18 $0b
.jp_04_44f3:
    ld   A, $01                                        ;; 04:44f3 $3e $01
    ld   [wCC53], A                                    ;; 04:44f5 $ea $53 $cc
    jr   .jr_04_44fe                                   ;; 04:44f8 $18 $04
.jp_04_44fa:
    xor  A, A                                          ;; 04:44fa $af
    ld   [wCC53], A                                    ;; 04:44fb $ea $53 $cc
.jr_04_44fe:
    ld   A, $02                                        ;; 04:44fe $3e $02
    call call_00_11a8                                  ;; 04:4500 $cd $a8 $11
.jp_04_4503:
    ld   A, $04                                        ;; 04:4503 $3e $04
    ld   [wBackupRomBank], A                           ;; 04:4505 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 04:4508 $ea $b7 $d5
    ld   [$2000], A                                    ;; 04:450b $ea $00 $20
    ld   A, [wCC53]                                    ;; 04:450e $fa $53 $cc
    ld   B, A                                          ;; 04:4511 $47
    ld   A, [wCC54]                                    ;; 04:4512 $fa $54 $cc
    add  A, A                                          ;; 04:4515 $87
    add  A, B                                          ;; 04:4516 $80
    add  A, A                                          ;; 04:4517 $87
    add  A, A                                          ;; 04:4518 $87
    add  A, A                                          ;; 04:4519 $87
    ld   C, A                                          ;; 04:451a $4f
    ld   B, $00                                        ;; 04:451b $06 $00
    ld   HL, data_04_4a02                              ;; 04:451d $21 $02 $4a
    add  HL, BC                                        ;; 04:4520 $09
    ld   DE, wC080                                     ;; 04:4521 $11 $80 $c0
    ld   B, $08                                        ;; 04:4524 $06 $08
    call memcopySmall                                  ;; 04:4526 $cd $91 $05
    ret                                                ;; 04:4529 $c9
    db   $3e, $00, $e0, $4f, $21, $55, $cc, $11        ;; 04:452a ????????
    db   $57, $cc, $06, $30, $0e, $04, $cd, $fa        ;; 04:4532 ????????
    db   $05, $fa, $59, $cc, $d6, $06, $ea, $59        ;; 04:453a ????????
    db   $cc, $c0, $3e, $01, $ea, $52, $cc, $c9        ;; 04:4542 ????????
    db   $3e, $00, $e0, $4f, $3e, $04, $ea, $b5        ;; 04:454a ????????
    db   $d5, $ea, $b7, $d5, $ea, $00, $20, $08        ;; 04:4552 ????????
    db   $8e, $d5, $21, $9e, $49, $f9, $21, $00        ;; 04:455a ????????
    db   $9c, $06, $05, $0e, $0a, $d1, $7b, $22        ;; 04:4562 ????????
    db   $7a, $22, $0d, $20, $f8, $11, $0c, $00        ;; 04:456a ????????
    db   $19, $05, $20, $ef, $21, $8e, $d5, $2a        ;; 04:4572 ????????
    db   $66, $6f, $f9, $21, $52, $cc, $34, $3e        ;; 04:457a ????????
    db   $07, $e0, $4b, $ea, $8a, $d5, $3e, $90        ;; 04:4582 ????????
    db   $e0, $4a, $ea, $89, $d5, $f0, $40, $f6        ;; 04:458a ????????
    db   $20, $e0, $40, $f0, $fe, $a7, $c8, $3e        ;; 04:4592 ????????
    db   $01, $e0, $4f, $21, $00, $9c, $06, $c0        ;; 04:459a ????????
    db   $cd, $8b, $05, $3e, $02, $ea, $2b, $9c        ;; 04:45a2 ????????
    db   $3e, $03, $ea, $6b, $9c, $3e, $01, $ea        ;; 04:45aa ????????
    db   $2f, $9c, $3e, $00, $ea, $6f, $9c, $3e        ;; 04:45b2 ????????
    db   $00, $e0, $4f, $c9, $f0, $4a, $fe, $68        ;; 04:45ba ????????
    db   $20, $05, $21, $52, $cc, $34, $c9, $d6        ;; 04:45c2 ????????
    db   $04, $e0, $4a, $ea, $89, $d5, $c9, $fa        ;; 04:45ca ????????
    db   $0e, $c1, $21, $2c, $9c, $1e, $98, $cd        ;; 04:45d2 ????????
    db   $1b, $47, $fa, $10, $c1, $21, $30, $9c        ;; 04:45da ????????
    db   $cd, $1b, $47, $fa, $0f, $c1, $21, $6c        ;; 04:45e2 ????????
    db   $9c, $cd, $1b, $47, $fa, $11, $c1, $21        ;; 04:45ea ????????
    db   $70, $9c, $cd, $1b, $47, $fa, $5a, $cc        ;; 04:45f2 ????????
    db   $3c, $e6, $1f, $ea, $5a, $cc, $fe, $10        ;; 04:45fa ????????
    db   $d8, $21, $80, $c0, $06, $08, $c3, $8b        ;; 04:4602 ????????
    db   $05, $fa, $5b, $cc, $a7, $20, $49, $21        ;; 04:460a ????????
    db   $80, $c0, $06, $08, $cd, $8b, $05, $21        ;; 04:4612 ????????
    db   $bd, $d1, $2a, $6e, $67, $e5, $11, $10        ;; 04:461a ????????
    db   $00, $19, $7e, $fe, $a0, $30, $05, $d6        ;; 04:4622 ????????
    db   $02, $77, $e1, $c9, $e1, $11, $08, $00        ;; 04:462a ????????
    db   $19, $3e, $59, $22, $3e, $2e, $22, $11        ;; 04:4632 ????????
    db   $06, $00, $19, $3e, $00, $22, $fa, $5d        ;; 04:463a ????????
    db   $cc, $22, $11, $09, $00, $19, $36, $a4        ;; 04:4642 ????????
    db   $3e, $01, $ea, $5b, $cc, $3e, $3c, $ea        ;; 04:464a ????????
    db   $5e, $cc, $3e, $01, $ea, $60, $cc, $c9        ;; 04:4652 ????????
    db   $21, $bd, $d1, $2a, $6e, $67, $36, $fe        ;; 04:465a ????????
    db   $e5, $fa, $5c, $cc, $47, $11, $10, $00        ;; 04:4662 ????????
    db   $19, $7e, $b8, $30, $05, $c6, $02, $77        ;; 04:466a ????????
    db   $e1, $c9, $e1, $11, $08, $00, $19, $3e        ;; 04:4672 ????????
    db   $59, $22, $3e, $76, $22, $11, $09, $00        ;; 04:467a ????????
    db   $19, $3e, $01, $22, $22, $22, $36, $00        ;; 04:4682 ????????
    db   $11, $05, $00, $19, $36, $a8, $3e, $05        ;; 04:468a ????????
    db   $ea, $52, $cc, $3e, $01, $ea, $60, $cc        ;; 04:4692 ????????
    db   $c9, $21, $5e, $cc, $35, $28, $27, $fa        ;; 04:469a ????????
    db   $0e, $c1, $21, $2c, $9c, $1e, $98, $cd        ;; 04:46a2 ????????
    db   $1b, $47, $fa, $10, $c1, $21, $30, $9c        ;; 04:46aa ????????
    db   $cd, $1b, $47, $fa, $0f, $c1, $21, $6c        ;; 04:46b2 ????????
    db   $9c, $cd, $1b, $47, $fa, $11, $c1, $21        ;; 04:46ba ????????
    db   $70, $9c, $cd, $1b, $47, $c9, $21, $bd        ;; 04:46c2 ????????
    db   $d1, $2a, $6e, $67, $3e, $ff, $22, $23        ;; 04:46ca ????????
    db   $2a, $87, $87, $47, $23, $2a, $6e, $67        ;; 04:46d2 ????????
    db   $cd, $8b, $05, $3e, $06, $ea, $52, $cc        ;; 04:46da ????????
    db   $c9, $f0, $4a, $fe, $90, $20, $23, $e0        ;; 04:46e2 ????????
    db   $4a, $ea, $89, $d5, $fa, $5f, $cc, $ea        ;; 04:46ea ????????
    db   $8b, $d5, $f0, $fe, $a7, $c8, $3e, $01        ;; 04:46f2 ????????
    db   $e0, $4f, $af, $ea, $2b, $9c, $ea, $6b        ;; 04:46fa ????????
    db   $9c, $ea, $2f, $9c, $ea, $6f, $9c, $e0        ;; 04:4702 ????????
    db   $4f, $c9, $c6, $04, $e0, $4a, $ea, $89        ;; 04:470a ????????
    db   $d5, $21, $80, $c0, $06, $08, $c3, $8b        ;; 04:4712 ????????
    db   $05, $cd, $db, $0f, $78, $83, $22, $79        ;; 04:471a ????????
    db   $83, $22, $c9                                 ;; 04:4722 ???

call_04_4725:
    ld   HL, wC10E                                     ;; 04:4725 $21 $0e $c1
    ld   A, [HL+]                                      ;; 04:4728 $2a
    ld   B, A                                          ;; 04:4729 $47
    ld   A, [HL+]                                      ;; 04:472a $2a
    add  A, B                                          ;; 04:472b $80
    ld   B, A                                          ;; 04:472c $47
    ld   A, [HL+]                                      ;; 04:472d $2a
    add  A, B                                          ;; 04:472e $80
    add  A, [HL]                                       ;; 04:472f $86
    cp   A, $c8                                        ;; 04:4730 $fe $c8
    ret  NC                                            ;; 04:4732 $d0
    ld   HL, wCC52                                     ;; 04:4733 $21 $52 $cc
    ld   B, $0f                                        ;; 04:4736 $06 $0f
    call memzeroSmall                                  ;; 04:4738 $cd $8b $05
    ld   A, $24                                        ;; 04:473b $3e $24
    ld   [wCC59], A                                    ;; 04:473d $ea $59 $cc
    ld   HL, wCC55                                     ;; 04:4740 $21 $55 $cc
    ld   A, $47                                        ;; 04:4743 $3e $47
    ld   [HL+], A                                      ;; 04:4745 $22
    ld   A, $5e                                        ;; 04:4746 $3e $5e
    ld   [HL+], A                                      ;; 04:4748 $22
    ld   HL, $8900                                     ;; 04:4749 $21 $00 $89
    ld   A, H                                          ;; 04:474c $7c
    ld   [wCC57], A                                    ;; 04:474d $ea $57 $cc
    ld   A, L                                          ;; 04:4750 $7d
    ld   [wCC58], A                                    ;; 04:4751 $ea $58 $cc
    ld   A, $06                                        ;; 04:4754 $3e $06
    ld   [wD58B], A                                    ;; 04:4756 $ea $8b $d5
    ld   A, $1e                                        ;; 04:4759 $3e $1e
    jp   call_00_11a8                                  ;; 04:475b $c3 $a8 $11
    db   $1c, $1c, $22, $22, $20, $20, $18, $18        ;; 04:475e ????????
    db   $06, $06, $22, $22, $1c, $1c, $00, $00        ;; 04:4766 ????????
    db   $7e, $7e, $40, $40, $40, $40, $7c, $7c        ;; 04:476e ????????
    db   $40, $40, $40, $40, $7e, $7e, $00, $00        ;; 04:4776 ????????
    db   $20, $20, $20, $20, $20, $20, $20, $20        ;; 04:477e ????????
    db   $20, $20, $20, $20, $3e, $3e, $00, $00        ;; 04:4786 ????????
    db   $3c, $3c, $42, $42, $40, $40, $40, $40        ;; 04:478e ????????
    db   $40, $40, $42, $42, $3c, $3c, $00, $00        ;; 04:4796 ????????
    db   $7e, $7e, $08, $08, $08, $08, $08, $08        ;; 04:479e ????????
    db   $08, $08, $08, $08, $08, $08, $00, $00        ;; 04:47a6 ????????
    db   $10, $10, $28, $28, $28, $28, $44, $44        ;; 04:47ae ????????
    db   $7c, $7c, $82, $82, $82, $82, $00, $00        ;; 04:47b6 ????????
    db   $42, $42, $62, $62, $52, $52, $4a, $4a        ;; 04:47be ????????
    db   $46, $46, $42, $42, $42, $42, $00, $00        ;; 04:47c6 ????????
    db   $82, $82, $c6, $c6, $aa, $aa, $92, $92        ;; 04:47ce ????????
    db   $82, $82, $82, $82, $82, $82, $00, $00        ;; 04:47d6 ????????
    db   $38, $38, $4c, $4c, $c6, $c6, $c6, $c6        ;; 04:47de ????????
    db   $c6, $c6, $64, $64, $38, $38, $00, $00        ;; 04:47e6 ????????
    db   $18, $18, $38, $38, $18, $18, $18, $18        ;; 04:47ee ????????
    db   $18, $18, $18, $18, $7e, $7e, $00, $00        ;; 04:47f6 ????????
    db   $3c, $3c, $42, $42, $06, $06, $1c, $1c        ;; 04:47fe ????????
    db   $38, $38, $60, $60, $7e, $7e, $00, $00        ;; 04:4806 ????????
    db   $7e, $7e, $0c, $0c, $18, $18, $3c, $3c        ;; 04:480e ????????
    db   $06, $06, $c6, $c6, $7c, $7c, $00, $00        ;; 04:4816 ????????
    db   $1c, $1c, $3c, $3c, $6c, $6c, $cc, $cc        ;; 04:481e ????????
    db   $fe, $fe, $0c, $0c, $0c, $0c, $00, $00        ;; 04:4826 ????????
    db   $fc, $fc, $c0, $c0, $fc, $fc, $06, $06        ;; 04:482e ????????
    db   $06, $06, $c6, $c6, $7c, $7c, $00, $00        ;; 04:4836 ????????
    db   $3c, $3c, $60, $60, $c0, $c0, $fc, $fc        ;; 04:483e ????????
    db   $c6, $c6, $c6, $c6, $7c, $7c, $00, $00        ;; 04:4846 ????????
    db   $7e, $7e, $46, $46, $0c, $0c, $18, $18        ;; 04:484e ????????
    db   $30, $30, $30, $30, $30, $30, $00, $00        ;; 04:4856 ????????
    db   $78, $78, $c4, $c4, $e4, $e4, $78, $78        ;; 04:485e ????????
    db   $9e, $9e, $86, $86, $7c, $7c, $00, $00        ;; 04:4866 ????????
    db   $7c, $7c, $c6, $c6, $c6, $c6, $7e, $7e        ;; 04:486e ????????
    db   $06, $06, $0c, $0c, $78, $78, $00, $00        ;; 04:4876 ????????
    db   $1e, $1e, $1e, $1e, $18, $18, $18, $18        ;; 04:487e ????????
    db   $18, $18, $18, $18, $1e, $1e, $1e, $1e        ;; 04:4886 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:488e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:4896 ????????
    db   $00, $10, $10, $28, $00, $10, $00, $08        ;; 04:489e ????????
    db   $08, $16, $02, $2d, $20, $52, $00, $20        ;; 04:48a6 ????????
    db   $00, $08, $08, $14, $08, $36, $3e, $41        ;; 04:48ae ????????
    db   $08, $36, $08, $14, $00, $08, $00, $00        ;; 04:48b6 ????????
    db   $00, $02, $02, $05, $00, $22, $20, $50        ;; 04:48be ????????
    db   $00, $20, $00, $00, $00, $04, $04, $0a        ;; 04:48c6 ????????
    db   $00, $44, $40, $a8, $08, $54, $1c, $22        ;; 04:48ce ????????
    db   $08, $14, $00, $08, $00, $00, $00, $00        ;; 04:48d6 ????????
    db   $00, $00, $00, $00, $00, $01, $02, $05        ;; 04:48de ????????
    db   $01, $0e, $18, $27, $07, $18, $01, $1e        ;; 04:48e6 ????????
    db   $1f, $20, $03, $0c, $0d, $32, $01, $0e        ;; 04:48ee ????????
    db   $02, $05, $00, $02, $00, $00, $00, $00        ;; 04:48f6 ????????
    db   $00, $00, $00, $95, $95, $6a, $57, $a8        ;; 04:48fe ????????
    db   $66, $81, $c1, $02, $81, $00, $00, $00        ;; 04:4906 ????????
    db   $00, $00, $81, $00, $c1, $02, $67, $80        ;; 04:490e ????????
    db   $54, $ab, $14, $43, $00, $14, $00, $00        ;; 04:4916 ????????
    db   $00, $00, $00, $00, $00, $e0, $40, $a0        ;; 04:491e ????????
    db   $80, $70, $70, $88, $c0, $30, $f0, $08        ;; 04:4926 ????????
    db   $c0, $38, $f8, $04, $e0, $18, $90, $68        ;; 04:492e ????????
    db   $40, $b0, $00, $40, $00, $00, $00, $00        ;; 04:4936 ????????
    db   $00, $06, $02, $05, $09, $16, $06, $09        ;; 04:493e ????????
    db   $03, $1c, $1d, $22, $07, $38, $3f, $c0        ;; 04:4946 ????????
    db   $07, $38, $7f, $80, $03, $7c, $1f, $20        ;; 04:494e ????????
    db   $01, $7e, $06, $09, $08, $17, $00, $18        ;; 04:4956 ????????
    db   $00, $aa, $aa, $55, $6a, $95, $ff, $00        ;; 04:495e ????????
    db   $67, $80, $83, $40, $00, $81, $00, $00        ;; 04:4966 ????????
    db   $00, $00, $81, $00, $82, $41, $e3, $04        ;; 04:496e ????????
    db   $fe, $01, $a9, $56, $a9, $42, $00, $a9        ;; 04:4976 ????????
    db   $00, $00, $00, $c0, $80, $30, $20, $d0        ;; 04:497e ????????
    db   $c0, $38, $98, $64, $e0, $18, $c0, $3c        ;; 04:4986 ????????
    db   $fc, $02, $e0, $18, $98, $66, $60, $90        ;; 04:498e ????????
    db   $90, $68, $40, $b8, $00, $60, $00, $00        ;; 04:4996 ????????
    db   $c8, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 04:499e ????????
    db   $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 04:49a6 ????????
    db   $cd, $cd, $cd, $c9, $cc, $00, $90, $91        ;; 04:49ae ????????
    db   $92, $91, $93, $94, $00, $00, $00, $c2        ;; 04:49b6 ????????
    db   $00, $00, $00, $c4, $00, $00, $00, $cc        ;; 04:49be ????????
    db   $cc, $00, $00, $00, $95, $96, $00, $00        ;; 04:49c6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:49ce ????????
    db   $00, $00, $00, $cc, $cc, $00, $91, $92        ;; 04:49d6 ????????
    db   $91, $97, $91, $96, $94, $00, $00, $c3        ;; 04:49de ????????
    db   $00, $00, $00, $c5, $00, $00, $00, $cc        ;; 04:49e6 ????????
    db   $ca, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 04:49ee ????????
    db   $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 04:49f6 ????????
    db   $cd, $cd, $cd, $cb                            ;; 04:49fe ????

data_04_4a02:
    db   $80, $58, $a2, $00, $80, $78, $a2, $20        ;; 04:4a02 ????????
    db   $80, $78, $a2, $00, $80, $98, $a2, $20        ;; 04:4a0a ????????
    db   $90, $58, $a2, $00, $90, $78, $a2, $20        ;; 04:4a12 ????????
    db   $90, $78, $a2, $00, $90, $98, $a2, $20        ;; 04:4a1a ????????

data_04_4a22:
    db   $80, $60, $80, $80, $90, $60, $90, $80        ;; 04:4a22 ????????

data_04_4a2a:
    db   $c1, $0e, $c1, $10, $c1, $0f, $c1, $11        ;; 04:4a2a ????????

call_04_4a32:
    push HL                                            ;; 04:4a32 $e5
    ld   HL, wD5E3                                     ;; 04:4a33 $21 $e3 $d5
    ld   A, [HL+]                                      ;; 04:4a36 $2a
    ld   L, [HL]                                       ;; 04:4a37 $6e
    ld   H, A                                          ;; 04:4a38 $67
    ld   DE, $39                                       ;; 04:4a39 $11 $39 $00
    add  HL, DE                                        ;; 04:4a3c $19
    ld   A, [HL+]                                      ;; 04:4a3d $2a
    and  A, A                                          ;; 04:4a3e $a7
    jr   NZ, .jr_04_4a50                               ;; 04:4a3f $20 $0f
    inc  HL                                            ;; 04:4a41 $23
    ld   A, [HL+]                                      ;; 04:4a42 $2a
    and  A, A                                          ;; 04:4a43 $a7
    jr   NZ, .jr_04_4a50                               ;; 04:4a44 $20 $0a
    ld   A, [HL+]                                      ;; 04:4a46 $2a
    and  A, A                                          ;; 04:4a47 $a7
    jr   NZ, .jr_04_4a50                               ;; 04:4a48 $20 $06
    xor  A, A                                          ;; 04:4a4a $af
    ld   [wShadowOAM.30], A                            ;; 04:4a4b $ea $30 $c0
    pop  HL                                            ;; 04:4a4e $e1
    ret                                                ;; 04:4a4f $c9
.jr_04_4a50:
    ld   A, $01                                        ;; 04:4a50 $3e $01
    pop  HL                                            ;; 04:4a52 $e1
    ret                                                ;; 04:4a53 $c9

call_04_4a54:
    ld   A, [HL]                                       ;; 04:4a54 $7e
    and  A, $7f                                        ;; 04:4a55 $e6 $7f
    dec  A                                             ;; 04:4a57 $3d
    ld   B, A                                          ;; 04:4a58 $47
    ld   A, [HL]                                       ;; 04:4a59 $7e
    and  A, $80                                        ;; 04:4a5a $e6 $80
    or   A, B                                          ;; 04:4a5c $b0
    ld   [HL], A                                       ;; 04:4a5d $77
    ret                                                ;; 04:4a5e $c9

call_04_4a5f:
    ld   A, [HL]                                       ;; 04:4a5f $7e
    and  A, $80                                        ;; 04:4a60 $e6 $80
    ld   B, A                                          ;; 04:4a62 $47
    ld   [HL], $00                                     ;; 04:4a63 $36 $00
    ret                                                ;; 04:4a65 $c9

call_04_4a66:
    ld   HL, wD5E3                                     ;; 04:4a66 $21 $e3 $d5
    ld   A, [HL+]                                      ;; 04:4a69 $2a
    ld   L, [HL]                                       ;; 04:4a6a $6e
    ld   H, A                                          ;; 04:4a6b $67
    add  HL, DE                                        ;; 04:4a6c $19
    ld   A, [HL+]                                      ;; 04:4a6d $2a
    ld   E, [HL]                                       ;; 04:4a6e $5e
    ld   D, A                                          ;; 04:4a6f $57
    ret                                                ;; 04:4a70 $c9

call_04_4a71:
    ld   A, E                                          ;; 04:4a71 $7b
    ld   [HL-], A                                      ;; 04:4a72 $32
    ld   [HL], D                                       ;; 04:4a73 $72
    ret                                                ;; 04:4a74 $c9

call_04_4a75:
    bit  7, B                                          ;; 04:4a75 $cb $78
    jr   Z, .jr_04_4a8a                                ;; 04:4a77 $28 $11
    push HL                                            ;; 04:4a79 $e5
    push DE                                            ;; 04:4a7a $d5
    ld   BC, $03                                       ;; 04:4a7b $01 $03 $00
    call call_00_0578                                  ;; 04:4a7e $cd $78 $05
    pop  DE                                            ;; 04:4a81 $d1
    ld   A, E                                          ;; 04:4a82 $7b
    sub  A, L                                          ;; 04:4a83 $95
    ld   E, A                                          ;; 04:4a84 $5f
    ld   A, D                                          ;; 04:4a85 $7a
    sbc  A, H                                          ;; 04:4a86 $9c
    ld   D, A                                          ;; 04:4a87 $57
    pop  HL                                            ;; 04:4a88 $e1
    ret                                                ;; 04:4a89 $c9
.jr_04_4a8a:
    push HL                                            ;; 04:4a8a $e5
    push DE                                            ;; 04:4a8b $d5
    ld   BC, $04                                       ;; 04:4a8c $01 $04 $00
    call call_00_0578                                  ;; 04:4a8f $cd $78 $05
    pop  DE                                            ;; 04:4a92 $d1
    ld   A, E                                          ;; 04:4a93 $7b
    sub  A, L                                          ;; 04:4a94 $95
    ld   E, A                                          ;; 04:4a95 $5f
    ld   A, D                                          ;; 04:4a96 $7a
    sbc  A, H                                          ;; 04:4a97 $9c
    ld   D, A                                          ;; 04:4a98 $57
    pop  HL                                            ;; 04:4a99 $e1
    ret                                                ;; 04:4a9a $c9

call_04_4a9b:
    ld   A, H                                          ;; 04:4a9b $7c
    ld   [wD5E3], A                                    ;; 04:4a9c $ea $e3 $d5
    ld   A, L                                          ;; 04:4a9f $7d
    ld   [wD5E4], A                                    ;; 04:4aa0 $ea $e4 $d5
    ld   DE, $30                                       ;; 04:4aa3 $11 $30 $00
    add  HL, DE                                        ;; 04:4aa6 $19
    ld   A, [HL]                                       ;; 04:4aa7 $7e
    and  A, A                                          ;; 04:4aa8 $a7
    jr   Z, .jr_04_4aaf                                ;; 04:4aa9 $28 $04
    dec  [HL]                                          ;; 04:4aab $35
    ld   B, $01                                        ;; 04:4aac $06 $01
    ret                                                ;; 04:4aae $c9
.jr_04_4aaf:
    inc  HL                                            ;; 04:4aaf $23
    ld   A, [HL]                                       ;; 04:4ab0 $7e
    and  A, A                                          ;; 04:4ab1 $a7
    jr   Z, .jr_04_4ab5                                ;; 04:4ab2 $28 $01
    dec  [HL]                                          ;; 04:4ab4 $35
.jr_04_4ab5:
    inc  HL                                            ;; 04:4ab5 $23
    ld   A, [HL]                                       ;; 04:4ab6 $7e
    and  A, A                                          ;; 04:4ab7 $a7
    jr   Z, .jr_04_4acc                                ;; 04:4ab8 $28 $12
    dec  [HL]                                          ;; 04:4aba $35
    jr   NZ, .jr_04_4acc                               ;; 04:4abb $20 $0f
    push HL                                            ;; 04:4abd $e5
    ld   DE, $1b                                       ;; 04:4abe $11 $1b $00
    call call_04_4a66                                  ;; 04:4ac1 $cd $66 $4a
    sla  E                                             ;; 04:4ac4 $cb $23
    rl   D                                             ;; 04:4ac6 $cb $12
    call call_04_4a71                                  ;; 04:4ac8 $cd $71 $4a
    pop  HL                                            ;; 04:4acb $e1
.jr_04_4acc:
    inc  HL                                            ;; 04:4acc $23
    ld   A, [HL]                                       ;; 04:4acd $7e
    and  A, A                                          ;; 04:4ace $a7
    jr   Z, .jr_04_4afd                                ;; 04:4acf $28 $2c
    call call_04_4a54                                  ;; 04:4ad1 $cd $54 $4a
    and  A, $7f                                        ;; 04:4ad4 $e6 $7f
    jr   NZ, .jr_04_4afd                               ;; 04:4ad6 $20 $25
    call call_04_4a5f                                  ;; 04:4ad8 $cd $5f $4a
    push HL                                            ;; 04:4adb $e5
    ld   DE, $1d                                       ;; 04:4adc $11 $1d $00
    call call_04_4a66                                  ;; 04:4adf $cd $66 $4a
    bit  7, B                                          ;; 04:4ae2 $cb $78
    jr   Z, .jr_04_4aec                                ;; 04:4ae4 $28 $06
    sla  E                                             ;; 04:4ae6 $cb $23
    rl   D                                             ;; 04:4ae8 $cb $12
    jr   .jr_04_4af9                                   ;; 04:4aea $18 $0d
.jr_04_4aec:
    push HL                                            ;; 04:4aec $e5
    push DE                                            ;; 04:4aed $d5
    ld   BC, $03                                       ;; 04:4aee $01 $03 $00
    call call_00_0578                                  ;; 04:4af1 $cd $78 $05
    pop  DE                                            ;; 04:4af4 $d1
    add  HL, DE                                        ;; 04:4af5 $19
    ld   D, H                                          ;; 04:4af6 $54
    ld   E, L                                          ;; 04:4af7 $5d
    pop  HL                                            ;; 04:4af8 $e1
.jr_04_4af9:
    call call_04_4a71                                  ;; 04:4af9 $cd $71 $4a
    pop  HL                                            ;; 04:4afc $e1
.jr_04_4afd:
    inc  HL                                            ;; 04:4afd $23
    ld   A, [HL]                                       ;; 04:4afe $7e
    and  A, A                                          ;; 04:4aff $a7
    jr   Z, .jr_04_4b07                                ;; 04:4b00 $28 $05
    dec  [HL]                                          ;; 04:4b02 $35
    jr   NZ, .jr_04_4b07                               ;; 04:4b03 $20 $02
    ld   [HL], $ff                                     ;; 04:4b05 $36 $ff
.jr_04_4b07:
    inc  HL                                            ;; 04:4b07 $23
    ld   A, [HL]                                       ;; 04:4b08 $7e
    and  A, A                                          ;; 04:4b09 $a7
    jr   Z, .jr_04_4b2b                                ;; 04:4b0a $28 $1f
    call call_04_4a54                                  ;; 04:4b0c $cd $54 $4a
    and  A, $7f                                        ;; 04:4b0f $e6 $7f
    jr   NZ, .jr_04_4b2b                               ;; 04:4b11 $20 $18
    call call_04_4a5f                                  ;; 04:4b13 $cd $5f $4a
    push HL                                            ;; 04:4b16 $e5
    ld   HL, wD5E3                                     ;; 04:4b17 $21 $e3 $d5
    ld   A, [HL+]                                      ;; 04:4b1a $2a
    ld   L, [HL]                                       ;; 04:4b1b $6e
    ld   H, A                                          ;; 04:4b1c $67
    ld   DE, $1b                                       ;; 04:4b1d $11 $1b $00
    add  HL, DE                                        ;; 04:4b20 $19
    ld   A, [HL+]                                      ;; 04:4b21 $2a
    ld   E, [HL]                                       ;; 04:4b22 $5e
    ld   D, A                                          ;; 04:4b23 $57
    call call_04_4a75                                  ;; 04:4b24 $cd $75 $4a
    call call_04_4a71                                  ;; 04:4b27 $cd $71 $4a
    pop  HL                                            ;; 04:4b2a $e1
.jr_04_4b2b:
    inc  HL                                            ;; 04:4b2b $23
    ld   A, [HL]                                       ;; 04:4b2c $7e
    and  A, A                                          ;; 04:4b2d $a7
    jr   Z, .jr_04_4b4f                                ;; 04:4b2e $28 $1f
    call call_04_4a54                                  ;; 04:4b30 $cd $54 $4a
    and  A, $7f                                        ;; 04:4b33 $e6 $7f
    jr   NZ, .jr_04_4b4f                               ;; 04:4b35 $20 $18
    call call_04_4a5f                                  ;; 04:4b37 $cd $5f $4a
    push HL                                            ;; 04:4b3a $e5
    ld   HL, wD5E3                                     ;; 04:4b3b $21 $e3 $d5
    ld   A, [HL+]                                      ;; 04:4b3e $2a
    ld   L, [HL]                                       ;; 04:4b3f $6e
    ld   H, A                                          ;; 04:4b40 $67
    ld   DE, $1d                                       ;; 04:4b41 $11 $1d $00
    add  HL, DE                                        ;; 04:4b44 $19
    ld   A, [HL+]                                      ;; 04:4b45 $2a
    ld   E, [HL]                                       ;; 04:4b46 $5e
    ld   D, A                                          ;; 04:4b47 $57
    call call_04_4a75                                  ;; 04:4b48 $cd $75 $4a
    call call_04_4a71                                  ;; 04:4b4b $cd $71 $4a
    pop  HL                                            ;; 04:4b4e $e1
.jr_04_4b4f:
    inc  HL                                            ;; 04:4b4f $23
    ld   A, [HL]                                       ;; 04:4b50 $7e
    and  A, A                                          ;; 04:4b51 $a7
    jr   Z, .jr_04_4b73                                ;; 04:4b52 $28 $1f
    call call_04_4a54                                  ;; 04:4b54 $cd $54 $4a
    and  A, $7f                                        ;; 04:4b57 $e6 $7f
    jr   NZ, .jr_04_4b73                               ;; 04:4b59 $20 $18
    call call_04_4a5f                                  ;; 04:4b5b $cd $5f $4a
    push HL                                            ;; 04:4b5e $e5
    ld   HL, wD5E3                                     ;; 04:4b5f $21 $e3 $d5
    ld   A, [HL+]                                      ;; 04:4b62 $2a
    ld   L, [HL]                                       ;; 04:4b63 $6e
    ld   H, A                                          ;; 04:4b64 $67
    ld   DE, $1f                                       ;; 04:4b65 $11 $1f $00
    add  HL, DE                                        ;; 04:4b68 $19
    ld   A, [HL+]                                      ;; 04:4b69 $2a
    ld   E, [HL]                                       ;; 04:4b6a $5e
    ld   D, A                                          ;; 04:4b6b $57
    call call_04_4a75                                  ;; 04:4b6c $cd $75 $4a
    call call_04_4a71                                  ;; 04:4b6f $cd $71 $4a
    pop  HL                                            ;; 04:4b72 $e1
.jr_04_4b73:
    inc  HL                                            ;; 04:4b73 $23
    ld   A, [HL]                                       ;; 04:4b74 $7e
    and  A, A                                          ;; 04:4b75 $a7
    jr   Z, .jr_04_4b79                                ;; 04:4b76 $28 $01
    dec  [HL]                                          ;; 04:4b78 $35
.jr_04_4b79:
    inc  HL                                            ;; 04:4b79 $23
    ld   A, [HL]                                       ;; 04:4b7a $7e
    and  A, A                                          ;; 04:4b7b $a7
    jr   Z, .jr_04_4bb1                                ;; 04:4b7c $28 $33
    ld   A, $01                                        ;; 04:4b7e $3e $01
    ld   [wC51A], A                                    ;; 04:4b80 $ea $1a $c5
    dec  [HL]                                          ;; 04:4b83 $35
    jr   NZ, .jr_04_4bb1                               ;; 04:4b84 $20 $2b
    xor  A, A                                          ;; 04:4b86 $af
    ld   [wC51B], A                                    ;; 04:4b87 $ea $1b $c5
    call call_04_4a32                                  ;; 04:4b8a $cd $32 $4a
    ld   [wC51A], A                                    ;; 04:4b8d $ea $1a $c5
    and  A, A                                          ;; 04:4b90 $a7
    jr   Z, .jr_04_4bb1                                ;; 04:4b91 $28 $1e
    ld   A, [wC51E]                                    ;; 04:4b93 $fa $1e $c5
    cp   A, $01                                        ;; 04:4b96 $fe $01
    jr   NZ, .jr_04_4bb1                               ;; 04:4b98 $20 $17
    ld   A, [wC51C]                                    ;; 04:4b9a $fa $1c $c5
    and  A, A                                          ;; 04:4b9d $a7
    jr   Z, .jr_04_4ba7                                ;; 04:4b9e $28 $07
    ld   A, $02                                        ;; 04:4ba0 $3e $02
    ld   [wC51E], A                                    ;; 04:4ba2 $ea $1e $c5
    jr   .jr_04_4bb1                                   ;; 04:4ba5 $18 $0a
.jr_04_4ba7:
    ld   A, [wC51D]                                    ;; 04:4ba7 $fa $1d $c5
    and  A, A                                          ;; 04:4baa $a7
    jr   Z, .jr_04_4bb1                                ;; 04:4bab $28 $04
    xor  A, A                                          ;; 04:4bad $af
    ld   [wC51E], A                                    ;; 04:4bae $ea $1e $c5
.jr_04_4bb1:
    inc  HL                                            ;; 04:4bb1 $23
    ld   A, [HL]                                       ;; 04:4bb2 $7e
    and  A, A                                          ;; 04:4bb3 $a7
    jr   Z, .jr_04_4bca                                ;; 04:4bb4 $28 $14
    dec  [HL]                                          ;; 04:4bb6 $35
    jr   NZ, .jr_04_4bca                               ;; 04:4bb7 $20 $11
    ld   A, $01                                        ;; 04:4bb9 $3e $01
    ld   [wC517], A                                    ;; 04:4bbb $ea $17 $c5
    ld   A, [wC108]                                    ;; 04:4bbe $fa $08 $c1
    ld   [wC5F2], A                                    ;; 04:4bc1 $ea $f2 $c5
    ld   A, [wC109]                                    ;; 04:4bc4 $fa $09 $c1
    ld   [wC5F3], A                                    ;; 04:4bc7 $ea $f3 $c5
.jr_04_4bca:
    inc  HL                                            ;; 04:4bca $23
    ld   A, [HL]                                       ;; 04:4bcb $7e
    and  A, A                                          ;; 04:4bcc $a7
    jr   Z, .jr_04_4c02                                ;; 04:4bcd $28 $33
    ld   A, $01                                        ;; 04:4bcf $3e $01
    ld   [wC51A], A                                    ;; 04:4bd1 $ea $1a $c5
    dec  [HL]                                          ;; 04:4bd4 $35
    jr   NZ, .jr_04_4c02                               ;; 04:4bd5 $20 $2b
    xor  A, A                                          ;; 04:4bd7 $af
    ld   [wC51C], A                                    ;; 04:4bd8 $ea $1c $c5
    call call_04_4a32                                  ;; 04:4bdb $cd $32 $4a
    ld   [wC51A], A                                    ;; 04:4bde $ea $1a $c5
    and  A, A                                          ;; 04:4be1 $a7
    jr   Z, .jr_04_4c02                                ;; 04:4be2 $28 $1e
    ld   A, [wC51E]                                    ;; 04:4be4 $fa $1e $c5
    cp   A, $02                                        ;; 04:4be7 $fe $02
    jr   NZ, .jr_04_4c02                               ;; 04:4be9 $20 $17
    ld   A, [wC51B]                                    ;; 04:4beb $fa $1b $c5
    and  A, A                                          ;; 04:4bee $a7
    jr   Z, .jr_04_4bf8                                ;; 04:4bef $28 $07
    ld   A, $01                                        ;; 04:4bf1 $3e $01
    ld   [wC51E], A                                    ;; 04:4bf3 $ea $1e $c5
    jr   .jr_04_4c02                                   ;; 04:4bf6 $18 $0a
.jr_04_4bf8:
    ld   A, [wC51D]                                    ;; 04:4bf8 $fa $1d $c5
    and  A, A                                          ;; 04:4bfb $a7
    jr   Z, .jr_04_4c02                                ;; 04:4bfc $28 $04
    xor  A, A                                          ;; 04:4bfe $af
    ld   [wC51E], A                                    ;; 04:4bff $ea $1e $c5
.jr_04_4c02:
    ld   B, $00                                        ;; 04:4c02 $06 $00
    inc  HL                                            ;; 04:4c04 $23
    ld   A, [HL]                                       ;; 04:4c05 $7e
    and  A, A                                          ;; 04:4c06 $a7
    ret  Z                                             ;; 04:4c07 $c8
    ld   A, $01                                        ;; 04:4c08 $3e $01
    ld   [wC51A], A                                    ;; 04:4c0a $ea $1a $c5
    dec  [HL]                                          ;; 04:4c0d $35
    ret  NZ                                            ;; 04:4c0e $c0
    xor  A, A                                          ;; 04:4c0f $af
    ld   [wC51D], A                                    ;; 04:4c10 $ea $1d $c5
    call call_04_4a32                                  ;; 04:4c13 $cd $32 $4a
    ld   [wC51A], A                                    ;; 04:4c16 $ea $1a $c5
    and  A, A                                          ;; 04:4c19 $a7
    ret  Z                                             ;; 04:4c1a $c8
    ld   A, [wC51E]                                    ;; 04:4c1b $fa $1e $c5
    and  A, A                                          ;; 04:4c1e $a7
    ret  NZ                                            ;; 04:4c1f $c0
    ld   A, [wC51C]                                    ;; 04:4c20 $fa $1c $c5
    and  A, A                                          ;; 04:4c23 $a7
    jr   Z, .jr_04_4c2c                                ;; 04:4c24 $28 $06
    ld   A, $02                                        ;; 04:4c26 $3e $02
    ld   [wC51E], A                                    ;; 04:4c28 $ea $1e $c5
    ret                                                ;; 04:4c2b $c9
.jr_04_4c2c:
    ld   A, [wC51B]                                    ;; 04:4c2c $fa $1b $c5
    and  A, A                                          ;; 04:4c2f $a7
    ret  Z                                             ;; 04:4c30 $c8
    ld   A, $01                                        ;; 04:4c31 $3e $01
    ld   [wC51E], A                                    ;; 04:4c33 $ea $1e $c5
    ret                                                ;; 04:4c36 $c9

data_04_4c37:
    db   $08, $32, $47, $4d, $08, $2d, $5f, $50        ;; 04:4c37 ????????
    db   $08, $2d, $2f, $53                            ;; 04:4c3f ????

call_04_4c43:
    ld   A, [wD502]                                    ;; 04:4c43 $fa $02 $d5
    cp   A, $01                                        ;; 04:4c46 $fe $01
    ret  C                                             ;; 04:4c48 $d8
    jp   Z, .jp_04_4c50                                ;; 04:4c49 $ca $50 $4c
    cp   A, $03                                        ;; 04:4c4c $fe $03
    jr   C, .jr_04_4c9a                                ;; 04:4c4e $38 $4a
.jp_04_4c50:
    ld   A, [wD503]                                    ;; 04:4c50 $fa $03 $d5
    inc  A                                             ;; 04:4c53 $3c
    cp   A, $03                                        ;; 04:4c54 $fe $03
    jr   C, .jr_04_4c59                                ;; 04:4c56 $38 $01
    xor  A, A                                          ;; 04:4c58 $af
.jr_04_4c59:
    ld   [wD503], A                                    ;; 04:4c59 $ea $03 $d5
    add  A, A                                          ;; 04:4c5c $87
    add  A, A                                          ;; 04:4c5d $87
    ld   HL, data_04_4c37                              ;; 04:4c5e $21 $37 $4c
    add  A, L                                          ;; 04:4c61 $85
    ld   L, A                                          ;; 04:4c62 $6f
    jr   NC, .jr_04_4c66                               ;; 04:4c63 $30 $01
    inc  H                                             ;; 04:4c65 $24
.jr_04_4c66:
    ld   A, [HL+]                                      ;; 04:4c66 $2a
    ld   [wD504], A                                    ;; 04:4c67 $ea $04 $d5
    ld   A, [HL+]                                      ;; 04:4c6a $2a
    ld   [wD505], A                                    ;; 04:4c6b $ea $05 $d5
    ld   A, [HL+]                                      ;; 04:4c6e $2a
    ld   [wD507], A                                    ;; 04:4c6f $ea $07 $d5
    ld   A, [HL]                                       ;; 04:4c72 $7e
    ld   [wD506], A                                    ;; 04:4c73 $ea $06 $d5
    ld   HL, wSCY                                      ;; 04:4c76 $21 $87 $d5
    ld   A, [HL+]                                      ;; 04:4c79 $2a
    swap A                                             ;; 04:4c7a $cb $37
    rlca                                               ;; 04:4c7c $07
    and  A, $1f                                        ;; 04:4c7d $e6 $1f
    ld   [wD508], A                                    ;; 04:4c7f $ea $08 $d5
    ld   A, [HL]                                       ;; 04:4c82 $7e
    swap A                                             ;; 04:4c83 $cb $37
    rlca                                               ;; 04:4c85 $07
    and  A, $1f                                        ;; 04:4c86 $e6 $1f
    ld   [wD509], A                                    ;; 04:4c88 $ea $09 $d5
    call call_04_4ccc                                  ;; 04:4c8b $cd $cc $4c
    ld   A, $02                                        ;; 04:4c8e $3e $02
    ld   [wD502], A                                    ;; 04:4c90 $ea $02 $d5
    ldh  A, [rLCDC]                                    ;; 04:4c93 $f0 $40
    res  1, A                                          ;; 04:4c95 $cb $8f
    ldh  [rLCDC], A                                    ;; 04:4c97 $e0 $40
    ret                                                ;; 04:4c99 $c9
.jr_04_4c9a:
    ld   HL, wD505                                     ;; 04:4c9a $21 $05 $d5
    dec  [HL]                                          ;; 04:4c9d $35
    jr   Z, .jr_04_4cb9                                ;; 04:4c9e $28 $19
    ld   HL, wD506                                     ;; 04:4ca0 $21 $06 $d5
    ld   A, [HL+]                                      ;; 04:4ca3 $2a
    ld   L, [HL]                                       ;; 04:4ca4 $6e
    ld   H, A                                          ;; 04:4ca5 $67
    ld   A, [wD504]                                    ;; 04:4ca6 $fa $04 $d5
    add  A, A                                          ;; 04:4ca9 $87
    add  A, L                                          ;; 04:4caa $85
    jr   NC, .jr_04_4cae                               ;; 04:4cab $30 $01
    inc  H                                             ;; 04:4cad $24
.jr_04_4cae:
    ld   [wD507], A                                    ;; 04:4cae $ea $07 $d5
    ld   A, H                                          ;; 04:4cb1 $7c
    ld   [wD506], A                                    ;; 04:4cb2 $ea $06 $d5
    call call_04_4ccc                                  ;; 04:4cb5 $cd $cc $4c
    ret                                                ;; 04:4cb8 $c9
.jr_04_4cb9:
    xor  A, A                                          ;; 04:4cb9 $af
    ld   [wD502], A                                    ;; 04:4cba $ea $02 $d5
    xor  A, A                                          ;; 04:4cbd $af
    ld   [wD58B], A                                    ;; 04:4cbe $ea $8b $d5
    ld   A, $8f                                        ;; 04:4cc1 $3e $8f
    ld   [wD5D2], A                                    ;; 04:4cc3 $ea $d2 $d5
    ld   A, $02                                        ;; 04:4cc6 $3e $02
    ld   [wD58C], A                                    ;; 04:4cc8 $ea $8c $d5
    ret                                                ;; 04:4ccb $c9

call_04_4ccc:
    ld   HL, wD506                                     ;; 04:4ccc $21 $06 $d5
    ld   A, [HL+]                                      ;; 04:4ccf $2a
    ld   L, [HL]                                       ;; 04:4cd0 $6e
    ld   H, A                                          ;; 04:4cd1 $67
    ld   DE, wD50A                                     ;; 04:4cd2 $11 $0a $d5
    ld   A, [wD504]                                    ;; 04:4cd5 $fa $04 $d5
    ld   B, A                                          ;; 04:4cd8 $47
.jr_04_4cd9:
    ld   A, [HL+]                                      ;; 04:4cd9 $2a
    ld   C, A                                          ;; 04:4cda $4f
    ld   A, [wD509]                                    ;; 04:4cdb $fa $09 $d5
    add  A, C                                          ;; 04:4cde $81
    and  A, $1f                                        ;; 04:4cdf $e6 $1f
    ld   C, A                                          ;; 04:4ce1 $4f
    ld   A, [HL+]                                      ;; 04:4ce2 $2a
    push HL                                            ;; 04:4ce3 $e5
    push DE                                            ;; 04:4ce4 $d5
    ld   E, A                                          ;; 04:4ce5 $5f
    ld   A, [wD508]                                    ;; 04:4ce6 $fa $08 $d5
    add  A, E                                          ;; 04:4ce9 $83
    and  A, $1f                                        ;; 04:4cea $e6 $1f
    swap A                                             ;; 04:4cec $cb $37
    rlca                                               ;; 04:4cee $07
    ld   E, A                                          ;; 04:4cef $5f
    and  A, $0f                                        ;; 04:4cf0 $e6 $0f
    ld   D, A                                          ;; 04:4cf2 $57
    ld   A, E                                          ;; 04:4cf3 $7b
    and  A, $f0                                        ;; 04:4cf4 $e6 $f0
    add  A, C                                          ;; 04:4cf6 $81
    ld   E, A                                          ;; 04:4cf7 $5f
    jr   NC, .jr_04_4cfb                               ;; 04:4cf8 $30 $01
    inc  D                                             ;; 04:4cfa $14
.jr_04_4cfb:
    ld   HL, $9800                                     ;; 04:4cfb $21 $00 $98
    add  HL, DE                                        ;; 04:4cfe $19
    pop  DE                                            ;; 04:4cff $d1
    ld   A, L                                          ;; 04:4d00 $7d
    ld   [DE], A                                       ;; 04:4d01 $12
    inc  DE                                            ;; 04:4d02 $13
    ld   A, H                                          ;; 04:4d03 $7c
    ld   [DE], A                                       ;; 04:4d04 $12
    inc  DE                                            ;; 04:4d05 $13
    pop  HL                                            ;; 04:4d06 $e1
    dec  B                                             ;; 04:4d07 $05
    jr   NZ, .jr_04_4cd9                               ;; 04:4d08 $20 $cf
    ret                                                ;; 04:4d0a $c9
    db   $21, $00, $90, $3e, $ff, $06, $10, $22        ;; 04:4d0b ????????
    db   $05, $20, $fc, $3e, $01, $ea, $02, $d5        ;; 04:4d13 ????????
    db   $c9, $21, $0a, $d5, $e5, $fa, $04, $d5        ;; 04:4d1b ????????
    db   $47, $2a, $5f, $2a, $57, $af, $12, $05        ;; 04:4d23 ????????
    db   $20, $f7, $e1, $f0, $fe, $a7, $c8, $3e        ;; 04:4d2b ????????
    db   $01, $e0, $4f, $fa, $04, $d5, $47, $2a        ;; 04:4d33 ????????
    db   $5f, $2a, $57, $af, $12, $05, $20, $f7        ;; 04:4d3b ????????
    db   $af, $e0, $4f, $c9, $00, $00, $13, $00        ;; 04:4d43 ????????
    db   $13, $11, $00, $11, $01, $00, $13, $01        ;; 04:4d4b ????????
    db   $12, $11, $00, $10, $02, $00, $13, $02        ;; 04:4d53 ????????
    db   $11, $11, $00, $0f, $03, $00, $13, $03        ;; 04:4d5b ????????
    db   $10, $11, $00, $0e, $04, $00, $13, $04        ;; 04:4d63 ????????
    db   $0f, $11, $00, $0d, $05, $00, $13, $05        ;; 04:4d6b ????????
    db   $0e, $11, $00, $0c, $06, $00, $13, $06        ;; 04:4d73 ????????
    db   $0d, $11, $00, $0b, $07, $00, $13, $07        ;; 04:4d7b ????????
    db   $0c, $11, $00, $0a, $08, $00, $13, $08        ;; 04:4d83 ????????
    db   $0b, $11, $00, $09, $09, $00, $13, $09        ;; 04:4d8b ????????
    db   $0a, $11, $00, $08, $0a, $00, $13, $0a        ;; 04:4d93 ????????
    db   $09, $11, $00, $07, $0b, $00, $13, $0b        ;; 04:4d9b ????????
    db   $08, $11, $00, $06, $0c, $00, $13, $0c        ;; 04:4da3 ????????
    db   $07, $11, $00, $05, $0d, $00, $13, $0d        ;; 04:4dab ????????
    db   $06, $11, $00, $04, $0e, $00, $13, $0e        ;; 04:4db3 ????????
    db   $05, $11, $00, $03, $0f, $00, $13, $0f        ;; 04:4dbb ????????
    db   $04, $11, $00, $02, $10, $00, $13, $10        ;; 04:4dc3 ????????
    db   $03, $11, $00, $01, $11, $00, $13, $10        ;; 04:4dcb ????????
    db   $02, $11, $00, $01, $12, $00, $13, $10        ;; 04:4dd3 ????????
    db   $01, $11, $00, $01, $12, $01, $12, $10        ;; 04:4ddb ????????
    db   $01, $10, $01, $01, $12, $02, $11, $10        ;; 04:4de3 ????????
    db   $01, $0f, $02, $01, $12, $03, $10, $10        ;; 04:4deb ????????
    db   $01, $0e, $03, $01, $12, $04, $0f, $10        ;; 04:4df3 ????????
    db   $01, $0d, $04, $01, $12, $05, $0e, $10        ;; 04:4dfb ????????
    db   $01, $0c, $05, $01, $12, $06, $0d, $10        ;; 04:4e03 ????????
    db   $01, $0b, $06, $01, $12, $07, $0c, $10        ;; 04:4e0b ????????
    db   $01, $0a, $07, $01, $12, $08, $0b, $10        ;; 04:4e13 ????????
    db   $01, $09, $08, $01, $12, $09, $0a, $10        ;; 04:4e1b ????????
    db   $01, $08, $09, $01, $12, $0a, $09, $10        ;; 04:4e23 ????????
    db   $01, $07, $0a, $01, $12, $0b, $08, $10        ;; 04:4e2b ????????
    db   $01, $06, $0b, $01, $12, $0c, $07, $10        ;; 04:4e33 ????????
    db   $01, $05, $0c, $01, $12, $0d, $06, $10        ;; 04:4e3b ????????
    db   $01, $04, $0d, $01, $12, $0e, $05, $10        ;; 04:4e43 ????????
    db   $01, $03, $0e, $01, $12, $0f, $04, $10        ;; 04:4e4b ????????
    db   $01, $02, $0f, $01, $12, $0f, $03, $10        ;; 04:4e53 ????????
    db   $01, $02, $10, $01, $12, $0f, $02, $10        ;; 04:4e5b ????????
    db   $01, $02, $11, $01, $11, $0f, $02, $0f        ;; 04:4e63 ????????
    db   $02, $02, $11, $02, $10, $0f, $02, $0e        ;; 04:4e6b ????????
    db   $03, $02, $11, $03, $0f, $0f, $02, $0d        ;; 04:4e73 ????????
    db   $04, $02, $11, $04, $0e, $0f, $02, $0c        ;; 04:4e7b ????????
    db   $05, $02, $11, $05, $0d, $0f, $02, $0b        ;; 04:4e83 ????????
    db   $06, $02, $11, $06, $0c, $0f, $02, $0a        ;; 04:4e8b ????????
    db   $07, $02, $11, $07, $0b, $0f, $02, $09        ;; 04:4e93 ????????
    db   $08, $02, $11, $08, $0a, $0f, $02, $08        ;; 04:4e9b ????????
    db   $09, $02, $11, $09, $09, $0f, $02, $07        ;; 04:4ea3 ????????
    db   $0a, $02, $11, $0a, $08, $0f, $02, $06        ;; 04:4eab ????????
    db   $0b, $02, $11, $0b, $07, $0f, $02, $05        ;; 04:4eb3 ????????
    db   $0c, $02, $11, $0c, $06                       ;; 04:4ebb ?????

data_04_4ec0:
    db   $0f, $02, $04, $0d, $02, $11, $0d, $05        ;; 04:4ec0 ????????
    db   $0f, $02, $03, $0e, $02, $11, $0e, $04        ;; 04:4ec8 ????????
    db   $0f, $02, $03, $0f, $02, $11, $0e, $03        ;; 04:4ed0 ????????
    db   $0f, $02, $03, $10, $02, $11, $0e, $03        ;; 04:4ed8 ????????
    db   $0e, $03, $03, $10, $03, $10, $0e, $03        ;; 04:4ee0 ????????
    db   $0d, $04, $03, $10, $04, $0f, $0e, $03        ;; 04:4ee8 ????????
    db   $0c, $05, $03, $10                            ;; 04:4ef0 ????

data_04_4ef4:
    db   $05, $0e, $0e, $03, $0b, $06, $03, $10        ;; 04:4ef4 ????????
    db   $06, $0d, $0e, $03, $0a, $07, $03, $10        ;; 04:4efc ????????
    db   $07, $0c, $0e, $03, $09, $08, $03, $10        ;; 04:4f04 ????????
    db   $08, $0b, $0e, $03, $08, $09, $03, $10        ;; 04:4f0c ????????
    db   $09, $0a, $0e, $03, $07, $0a, $03, $10        ;; 04:4f14 ????????
    db   $0a, $09, $0e, $03, $06, $0b, $03, $10        ;; 04:4f1c ????????
    db   $0b, $08, $0e, $03, $05, $0c, $03, $10        ;; 04:4f24 ????????
    db   $0c, $07, $0e, $03, $04, $0d, $03, $10        ;; 04:4f2c ????????
    db   $0d, $06, $0e, $03, $04, $0e, $03, $10        ;; 04:4f34 ????????
    db   $0d, $05, $0e, $03, $04, $0f, $03, $10        ;; 04:4f3c ????????
    db   $0d, $04, $0e, $04, $04, $0f, $04, $0f        ;; 04:4f44 ????????
    db   $0d, $04, $0d, $05, $04, $0f, $05, $0e        ;; 04:4f4c ????????
    db   $0d, $04, $0c, $06, $04, $0f, $06, $0d        ;; 04:4f54 ????????
    db   $0d, $04, $0b, $07, $04, $0f, $07, $0c        ;; 04:4f5c ????????
    db   $0d, $04, $0a, $08, $04, $0f, $08, $0b        ;; 04:4f64 ????????
    db   $0d, $04, $09, $09, $04, $0f, $09, $0a        ;; 04:4f6c ????????
    db   $0d, $04, $08, $0a, $04, $0f, $0a, $09        ;; 04:4f74 ????????
    db   $0d, $04, $07, $0b, $04, $0f, $0b, $08        ;; 04:4f7c ????????
    db   $0d, $04, $06, $0c, $04, $0f, $0c, $07        ;; 04:4f84 ????????
    db   $0d, $04, $05, $0d, $04, $0f, $0c, $06        ;; 04:4f8c ????????
    db   $0d, $04, $05, $0e, $04, $0f, $0c, $05        ;; 04:4f94 ????????
    db   $0d, $04, $05, $0e, $05, $0e, $0c, $05        ;; 04:4f9c ????????
    db   $0c, $05, $05, $0e, $06, $0d, $0c, $05        ;; 04:4fa4 ????????
    db   $0b, $06, $05, $0e, $07, $0c, $0c, $05        ;; 04:4fac ????????
    db   $0a, $07, $05, $0e, $08, $0b, $0c, $05        ;; 04:4fb4 ????????
    db   $09, $08, $05, $0e, $09, $0a, $0c, $05        ;; 04:4fbc ????????
    db   $08, $09, $05, $0e, $0a, $09, $0c, $05        ;; 04:4fc4 ????????
    db   $07, $0a, $05, $0e, $0b, $08, $0c, $05        ;; 04:4fcc ????????
    db   $06, $0b, $05, $0e, $0b, $07, $0c, $05        ;; 04:4fd4 ????????
    db   $06, $0c, $05, $0e, $0b, $06, $0c, $05        ;; 04:4fdc ????????
    db   $06, $0d, $05, $0d, $0b, $06, $0b, $06        ;; 04:4fe4 ????????
    db   $06, $0d, $06, $0c, $0b, $06, $0a, $07        ;; 04:4fec ????????
    db   $06, $0d, $07, $0b, $0b, $06, $09, $08        ;; 04:4ff4 ????????
    db   $06, $0d, $08, $0a, $0b, $06, $08, $09        ;; 04:4ffc ????????
    db   $06, $0d, $09, $09, $0b, $06, $07, $0a        ;; 04:5004 ????????
    db   $06, $0d, $0a, $08, $0b, $06, $07, $0b        ;; 04:500c ????????
    db   $06, $0d, $0a, $07, $0b, $06, $07, $0c        ;; 04:5014 ????????
    db   $06, $0d, $0a, $07, $0a, $07, $07, $0c        ;; 04:501c ????????
    db   $07, $0c, $0a, $07, $09, $08, $07, $0c        ;; 04:5024 ????????
    db   $08, $0b, $0a, $07, $08, $09, $07, $0c        ;; 04:502c ????????
    db   $09, $0a, $0a, $07, $08, $0a, $07, $0c        ;; 04:5034 ????????
    db   $09, $09, $0a, $07, $08, $0b, $07, $0c        ;; 04:503c ????????
    db   $09, $08, $0a, $08, $08, $0b, $08, $0b        ;; 04:5044 ????????
    db   $09, $08, $09, $09, $08, $0b, $08, $0a        ;; 04:504c ????????
    db   $09, $08, $09, $0a, $08, $0b, $08, $09        ;; 04:5054 ????????
    db   $09, $08, $09, $0c, $00, $0e, $09, $07        ;; 04:505c ????????
    db   $07, $0b, $05, $0a, $0c, $0d, $06, $05        ;; 04:5064 ????????
    db   $10, $09, $11, $08, $03, $0f, $05, $11        ;; 04:506c ????????
    db   $11, $13, $03, $0c, $02, $10, $10, $06        ;; 04:5074 ????????
    db   $08, $05, $05, $01, $0d, $10, $02, $0e        ;; 04:507c ????????
    db   $0b, $0f, $07, $08, $08, $05, $0e, $09        ;; 04:5084 ????????
    db   $0d, $0d, $0f, $0f, $0b, $08, $02, $06        ;; 04:508c ????????
    db   $00, $0d, $04, $11, $0e, $13, $01, $0d        ;; 04:5094 ????????
    db   $08, $07, $03, $0b, $00, $04, $03, $12        ;; 04:509c ????????
    db   $10, $06, $0e, $05, $0d, $05, $0a, $0e        ;; 04:50a4 ????????
    db   $02, $02, $0c, $01, $0a, $02, $01, $0f        ;; 04:50ac ????????
    db   $11, $11, $09, $13, $05, $01, $05, $0a        ;; 04:50b4 ????????
    db   $0e, $0e, $0f, $0d, $07, $00, $0b, $11        ;; 04:50bc ????????
    db   $10, $13, $04, $02, $04, $0a, $0f, $00        ;; 04:50c4 ????????
    db   $05, $0c, $08, $0e, $0a, $04, $05, $05        ;; 04:50cc ????????
    db   $0c, $04, $0f, $0f, $08, $13, $02, $08        ;; 04:50d4 ????????
    db   $0a, $09, $0f, $0f, $03, $02, $08, $0c        ;; 04:50dc ????????
    db   $0a, $0a, $01, $0c, $0b, $13, $09, $12        ;; 04:50e4 ????????
    db   $03, $05, $04, $0c, $0c, $0d, $01, $12        ;; 04:50ec ????????
    db   $02, $06, $07, $02, $06, $03, $00, $03        ;; 04:50f4 ????????
    db   $10, $12, $07, $00, $0f, $0b, $0a, $00        ;; 04:50fc ????????
    db   $0c, $03, $0e, $11, $00, $12, $00, $07        ;; 04:5104 ????????
    db   $0d, $00, $03, $0e, $06, $00, $00, $01        ;; 04:510c ????????
    db   $0f, $09, $04, $10, $0c, $0b, $08, $11        ;; 04:5114 ????????
    db   $02, $0d, $02, $0d, $0d, $07, $0e, $09        ;; 04:511c ????????
    db   $00, $11, $0f, $12, $0e, $10, $01, $04        ;; 04:5124 ????????
    db   $06, $10, $0b, $00, $04, $08, $06, $09        ;; 04:512c ????????
    db   $08, $0e, $11, $01, $00, $03, $03, $09        ;; 04:5134 ????????
    db   $06, $04, $04, $01, $08, $12, $0c, $0d        ;; 04:513c ????????
    db   $03, $10, $05, $00, $08, $0e, $01, $03        ;; 04:5144 ????????
    db   $05, $13, $0b, $10, $0a, $10, $03, $0f        ;; 04:514c ????????
    db   $0c, $07, $0c, $03, $01, $12, $04, $0a        ;; 04:5154 ????????
    db   $07, $0c, $10, $05, $09, $08, $0e, $0b        ;; 04:515c ????????
    db   $06, $05, $11, $01, $06, $10, $0d, $09        ;; 04:5164 ????????
    db   $02, $10, $08, $03, $0d, $01, $02, $0e        ;; 04:516c ????????
    db   $04, $0d, $0e, $07, $0f, $11, $01, $08        ;; 04:5174 ????????
    db   $00, $03, $06, $0a, $06, $0c, $0d, $05        ;; 04:517c ????????
    db   $00, $13, $0d, $0a, $08, $06, $03, $01        ;; 04:5184 ????????
    db   $0b, $04, $08, $09, $10, $08, $11, $13        ;; 04:518c ????????
    db   $00, $03, $0f, $11, $03, $13, $0f, $13        ;; 04:5194 ????????
    db   $07, $09, $05, $0e, $0c, $0b, $0c, $09        ;; 04:519c ????????
    db   $09, $07, $06, $0a, $0b, $0a, $03, $07        ;; 04:51a4 ????????
    db   $04, $04, $0c, $10, $11, $02, $05, $11        ;; 04:51ac ????????
    db   $0d, $04, $07, $0f, $04, $00, $10, $07        ;; 04:51b4 ????????
    db   $10, $13, $0a, $02, $0b, $0d, $10, $13        ;; 04:51bc ????????
    db   $10, $08, $05, $0e, $0e, $0e, $10, $0f        ;; 04:51c4 ????????
    db   $06, $00, $01, $0c, $03, $06, $10, $12        ;; 04:51cc ????????
    db   $0f, $07, $09, $0b, $03, $0c, $06, $07        ;; 04:51d4 ????????
    db   $05, $01, $04, $13, $08, $11, $07, $05        ;; 04:51dc ????????
    db   $03, $0a, $0d, $09, $0a, $04, $09, $0f        ;; 04:51e4 ????????
    db   $00, $09, $07, $06, $0b, $03, $04, $00        ;; 04:51ec ????????
    db   $11, $0b, $07, $11, $0a, $13, $0e, $0e        ;; 04:51f4 ????????
    db   $0d, $0a, $10, $03, $11, $09, $01, $02        ;; 04:51fc ????????
    db   $02, $02, $11, $06, $01, $04, $0a, $07        ;; 04:5204 ????????
    db   $02, $06, $09, $11, $08, $11, $04, $0c        ;; 04:520c ????????
    db   $11, $0b, $10, $01, $10, $04, $0d, $05        ;; 04:5214 ????????
    db   $0f, $05, $08, $0c, $05, $02, $0a, $0d        ;; 04:521c ????????
    db   $0c, $10, $00, $07, $0a, $08, $10, $06        ;; 04:5224 ????????
    db   $0d, $07, $11, $05, $06, $01, $07, $0c        ;; 04:522c ????????
    db   $07, $02, $07, $11, $0b, $0b, $04, $0f        ;; 04:5234 ????????
    db   $0d, $12, $0b, $12, $01, $07, $01, $0b        ;; 04:523c ????????
    db   $09, $06, $02, $06, $04, $08, $0b, $00        ;; 04:5244 ????????
    db   $07, $00, $02, $0d, $0b, $03, $0b, $0a        ;; 04:524c ????????
    db   $09, $10, $09, $0a, $0a, $11, $0c, $0f        ;; 04:5254 ????????
    db   $02, $07, $0b, $03, $09, $0c, $0f, $04        ;; 04:525c ????????
    db   $01, $02, $00, $13, $11, $06, $11, $12        ;; 04:5264 ????????
    db   $08, $0f, $0a, $00, $09, $01, $01, $0d        ;; 04:526c ????????
    db   $09, $0e, $03, $00, $0e, $08, $09, $0a        ;; 04:5274 ????????
    db   $02, $06, $06, $0d, $00, $12, $09, $0e        ;; 04:527c ????????
    db   $07, $0b, $01, $0a, $11, $0b, $02, $01        ;; 04:5284 ????????
    db   $0c, $09, $0e, $06, $0a, $10, $0f, $08        ;; 04:528c ????????
    db   $0f, $0c, $01, $10, $04, $04, $0b, $0b        ;; 04:5294 ????????
    db   $0e, $02, $03, $03, $02, $11, $06, $11        ;; 04:529c ????????
    db   $05, $0c, $04, $0f, $10, $0b, $0b, $12        ;; 04:52a4 ????????
    db   $11, $00, $0a, $08, $01, $05, $07, $0f        ;; 04:52ac ????????
    db   $09, $08, $04, $0a, $00, $09, $03, $12        ;; 04:52b4 ????????
    db   $06, $0b, $0d, $07, $08, $0f, $01, $0a        ;; 04:52bc ????????
    db   $05, $01, $09, $07, $00, $0e, $05, $03        ;; 04:52c4 ????????
    db   $07, $03, $08, $12, $0d, $04, $02, $02        ;; 04:52cc ????????
    db   $0f, $12, $05, $05, $01, $04, $10, $0b        ;; 04:52d4 ????????
    db   $0f, $0d, $11, $10, $07, $13, $0c, $10        ;; 04:52dc ????????
    db   $0e, $0c, $09, $05, $02, $0a, $04, $0f        ;; 04:52e4 ????????
    db   $0e, $04, $0e, $00, $06, $01, $0e, $02        ;; 04:52ec ????????
    db   $0d, $02, $0e, $06, $0f, $04, $00, $0e        ;; 04:52f4 ????????
    db   $08, $13, $06, $0d, $0a, $03, $0c, $08        ;; 04:52fc ????????
    db   $0c, $08, $07, $01, $03, $0d, $05, $10        ;; 04:5304 ????????
    db   $06, $04, $11, $0f, $0f, $06, $05, $03        ;; 04:530c ????????
    db   $0a, $0b, $11, $08, $0d, $01, $11, $0e        ;; 04:5314 ????????
    db   $00, $12, $0a, $06, $0c, $09, $0b, $02        ;; 04:531c ????????
    db   $10, $09, $0c, $05, $0b, $00, $0d, $02        ;; 04:5324 ????????
    db   $09, $0c, $0e, $00, $00, $13, $10, $00        ;; 04:532c ????????
    db   $02, $13, $0e, $00, $04, $13, $0c, $00        ;; 04:5334 ????????
    db   $06, $13, $0a, $00, $08, $13, $08, $00        ;; 04:533c ????????
    db   $0a, $13, $06, $00, $0c, $13, $04, $00        ;; 04:5344 ????????
    db   $0e, $13, $02, $00, $10, $13, $00, $01        ;; 04:534c ????????
    db   $01, $12, $11, $01, $03, $12, $0f, $01        ;; 04:5354 ????????
    db   $05, $12, $0d, $01, $07, $12, $0b, $01        ;; 04:535c ????????
    db   $09, $12, $09, $01, $0b, $12, $07, $01        ;; 04:5364 ????????
    db   $0d, $12, $05, $01, $0f, $12, $03, $01        ;; 04:536c ????????
    db   $11, $12, $01, $02, $00, $11, $10, $02        ;; 04:5374 ????????
    db   $02, $11, $0e, $02, $04, $11, $0c, $02        ;; 04:537c ????????
    db   $06, $11, $0a, $02, $08, $11, $08, $02        ;; 04:5384 ????????
    db   $0a, $11, $06, $02, $0c, $11, $04, $02        ;; 04:538c ????????
    db   $0e, $11, $02, $02, $10, $11, $00, $03        ;; 04:5394 ????????
    db   $01, $10, $11, $03, $03, $10, $0f, $03        ;; 04:539c ????????
    db   $05, $10, $0d, $03, $07, $10, $0b, $03        ;; 04:53a4 ????????
    db   $09, $10, $09, $03, $0b, $10, $07, $03        ;; 04:53ac ????????
    db   $0d, $10, $05, $03, $0f, $10, $03, $03        ;; 04:53b4 ????????
    db   $11, $10, $01, $04, $00, $0f, $10, $04        ;; 04:53bc ????????
    db   $02, $0f, $0e, $04, $04, $0f, $0c, $04        ;; 04:53c4 ????????
    db   $06, $0f, $0a, $04, $08, $0f, $08, $04        ;; 04:53cc ????????
    db   $0a, $0f, $06, $04, $0c, $0f, $04, $04        ;; 04:53d4 ????????
    db   $0e, $0f, $02, $04, $10, $0f, $00, $05        ;; 04:53dc ????????
    db   $01, $0e, $11, $05, $03, $0e, $0f, $05        ;; 04:53e4 ????????
    db   $05, $0e, $0d, $05, $07, $0e, $0b, $05        ;; 04:53ec ????????
    db   $09, $0e, $09, $05, $0b, $0e, $07, $05        ;; 04:53f4 ????????
    db   $0d, $0e, $05, $05, $0f, $0e, $03, $05        ;; 04:53fc ????????
    db   $11, $0e, $01, $06, $00, $0d, $10, $06        ;; 04:5404 ????????
    db   $02, $0d, $0e, $06, $04, $0d, $0c, $06        ;; 04:540c ????????
    db   $06, $0d, $0a, $06, $08, $0d, $08, $06        ;; 04:5414 ????????
    db   $0a, $0d, $06, $06, $0c, $0d, $04, $06        ;; 04:541c ????????
    db   $0e, $0d, $02, $06, $10, $0d, $00, $07        ;; 04:5424 ????????
    db   $01, $0c, $11, $07, $03, $0c, $0f, $07        ;; 04:542c ????????
    db   $05, $0c, $0d, $07, $07, $0c, $0b, $07        ;; 04:5434 ????????
    db   $09, $0c, $09, $07, $0b, $0c, $07, $07        ;; 04:543c ????????
    db   $0d, $0c, $05, $07, $0f, $0c, $03, $07        ;; 04:5444 ????????
    db   $11, $0c, $01, $08, $00, $0b, $10, $08        ;; 04:544c ????????
    db   $02, $0b, $0e, $08, $04, $0b, $0c, $08        ;; 04:5454 ????????
    db   $06, $0b, $0a, $08, $08, $0b, $08, $08        ;; 04:545c ????????
    db   $0a, $0b, $06, $08, $0c, $0b, $04, $08        ;; 04:5464 ????????
    db   $0e, $0b, $02, $08, $10, $0b, $00, $09        ;; 04:546c ????????
    db   $01, $0a, $11, $09, $03, $0a, $0f, $09        ;; 04:5474 ????????
    db   $05, $0a, $0d, $09, $07, $0a, $0b, $09        ;; 04:547c ????????
    db   $09, $0a, $09, $09, $0b, $0a, $07, $09        ;; 04:5484 ????????
    db   $0d, $0a, $05, $09, $0f, $0a, $03, $09        ;; 04:548c ????????
    db   $11, $0a, $01, $0a, $00, $09, $10, $0a        ;; 04:5494 ????????
    db   $02, $09, $0e, $0a, $04, $09, $0c, $0a        ;; 04:549c ????????
    db   $06, $09, $0a, $0a, $08, $09, $08, $0a        ;; 04:54a4 ????????
    db   $0a, $09, $06, $0a, $0c, $09, $04, $0a        ;; 04:54ac ????????
    db   $0e, $09, $02, $0a, $10, $09, $00, $0b        ;; 04:54b4 ????????
    db   $01, $08, $11, $0b, $03, $08, $0f, $0b        ;; 04:54bc ????????
    db   $05, $08, $0d, $0b, $07, $08, $0b, $0b        ;; 04:54c4 ????????
    db   $09, $08, $09, $0b, $0b, $08, $07, $0b        ;; 04:54cc ????????
    db   $0d, $08, $05, $0b, $0f, $08, $03, $0b        ;; 04:54d4 ????????
    db   $11, $08, $01, $0c, $00, $07, $10, $0c        ;; 04:54dc ????????
    db   $02, $07, $0e, $0c, $04, $07, $0c, $0c        ;; 04:54e4 ????????
    db   $06, $07, $0a, $0c, $08, $07, $08, $0c        ;; 04:54ec ????????
    db   $0a, $07, $06, $0c, $0c, $07, $04, $0c        ;; 04:54f4 ????????
    db   $0e, $07, $02, $0c, $10, $07, $00, $0d        ;; 04:54fc ????????
    db   $01, $06, $11, $0d, $03, $06, $0f, $0d        ;; 04:5504 ????????
    db   $05, $06, $0d, $0d, $07, $06, $0b, $0d        ;; 04:550c ????????
    db   $09, $06, $09, $0d, $0b, $06, $07, $0d        ;; 04:5514 ????????
    db   $0d, $06, $05, $0d, $0f, $06, $03, $0d        ;; 04:551c ????????
    db   $11, $06, $01, $0e, $00, $05, $10, $0e        ;; 04:5524 ????????
    db   $02, $05, $0e, $0e, $04, $05, $0c, $0e        ;; 04:552c ????????
    db   $06, $05, $0a, $0e, $08, $05, $08, $0e        ;; 04:5534 ????????
    db   $0a, $05, $06, $0e, $0c, $05, $04, $0e        ;; 04:553c ????????
    db   $0e, $05, $02, $0e, $10, $05, $00, $0f        ;; 04:5544 ????????
    db   $01, $04, $11, $0f, $03, $04, $0f, $0f        ;; 04:554c ????????
    db   $05, $04, $0d, $0f, $07, $04, $0b, $0f        ;; 04:5554 ????????
    db   $09, $04, $09, $0f, $0b, $04, $07, $0f        ;; 04:555c ????????
    db   $0d, $04, $05, $0f, $0f, $04, $03, $0f        ;; 04:5564 ????????
    db   $11, $04, $01, $10, $00, $03, $10, $10        ;; 04:556c ????????
    db   $02, $03, $0e, $10, $04, $03, $0c, $10        ;; 04:5574 ????????
    db   $06, $03, $0a, $10, $08, $03, $08, $10        ;; 04:557c ????????
    db   $0a, $03, $06, $10, $0c, $03, $04, $10        ;; 04:5584 ????????
    db   $0e, $03, $02, $10, $10, $03, $00, $11        ;; 04:558c ????????
    db   $01, $02, $11, $11, $03, $02, $0f, $11        ;; 04:5594 ????????
    db   $05, $02, $0d, $11, $07, $02, $0b, $11        ;; 04:559c ????????
    db   $09, $02, $09, $11, $0b, $02, $07, $11        ;; 04:55a4 ????????
    db   $0d, $02, $05, $11, $0f, $02, $03, $11        ;; 04:55ac ????????
    db   $11, $02, $01, $12, $00, $01, $10, $12        ;; 04:55b4 ????????
    db   $02, $01, $0e, $12, $04, $01, $0c, $12        ;; 04:55bc ????????
    db   $06, $01, $0a, $12, $08, $01, $08, $12        ;; 04:55c4 ????????
    db   $0a, $01, $06, $12, $0c, $01, $04, $12        ;; 04:55cc ????????
    db   $0e, $01, $02, $12, $10, $01, $00, $13        ;; 04:55d4 ????????
    db   $01, $00, $11, $13, $03, $00, $0f, $13        ;; 04:55dc ????????
    db   $05, $00, $0d, $13, $07, $00, $0b, $13        ;; 04:55e4 ????????
    db   $09, $00, $09, $13, $0b, $00, $07, $13        ;; 04:55ec ????????
    db   $0d, $00, $05, $13, $0f, $00, $03, $13        ;; 04:55f4 ????????
    db   $11, $00, $01                                 ;; 04:55fc ???

data_04_55ff:
    db   $00, $00, $00, $00, $00, $00, $40, $40        ;; 04:55ff ????????
    db   $40, $40, $50, $50, $50, $50, $51, $51        ;; 04:5607 ????????
    db   $51, $51, $91, $91, $91, $91, $92, $92        ;; 04:560f ????????
    db   $92, $92, $d2, $d2, $d2, $d2, $d2, $d2        ;; 04:5617 ????????

data_04_561f:
    db   $00, $00, $00, $00, $00, $00, $40, $40        ;; 04:561f ????????
    db   $40, $40, $50, $50, $50, $50, $90, $90        ;; 04:5627 ????????
    db   $90, $90, $94, $94, $94, $94, $a4, $a4        ;; 04:562f ????????
    db   $a4, $a4, $e4, $e4, $e4, $e4, $e4, $e4        ;; 04:5637 ????????

data_04_563f:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ef, $ef        ;; 04:563f ????????
    db   $ef, $ef, $eb, $eb, $eb, $eb, $ea, $ea        ;; 04:5647 ????????
    db   $ea, $ea, $e6, $e6, $e6, $e6, $d6, $d6        ;; 04:564f ????????
    db   $d6, $d6, $d2, $d2, $d2, $d2, $d2, $d2        ;; 04:5657 ????????

data_04_565f:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe        ;; 04:565f ????????
    db   $fe, $fe, $fd, $fd, $fd, $fd, $f9, $f9        ;; 04:5667 ????????
    db   $f9, $f9, $e9, $e9, $e9, $e9, $e5, $e5        ;; 04:566f ????????
    db   $e5, $e5, $e4, $e4, $e4, $e4, $e4, $e4        ;; 04:5677 ????????

call_04_567f:
    ldh  A, [hIsGBC]                                   ;; 04:567f $f0 $fe
    and  A, A                                          ;; 04:5681 $a7
    jp   NZ, .jp_04_56d0                               ;; 04:5682 $c2 $d0 $56
    ld   A, [wD5D2]                                    ;; 04:5685 $fa $d2 $d5
    bit  7, A                                          ;; 04:5688 $cb $7f
    jr   NZ, .jr_04_56a5                               ;; 04:568a $20 $19
    xor  A, $1f                                        ;; 04:568c $ee $1f
    and  A, $7f                                        ;; 04:568e $e6 $7f
    ld   C, A                                          ;; 04:5690 $4f
    ld   B, $00                                        ;; 04:5691 $06 $00
    ld   HL, data_04_561f                              ;; 04:5693 $21 $1f $56
    add  HL, BC                                        ;; 04:5696 $09
    ld   A, [HL]                                       ;; 04:5697 $7e
    ld   [wBGP], A                                     ;; 04:5698 $ea $d4 $d5
    ld   HL, data_04_55ff                              ;; 04:569b $21 $ff $55
    add  HL, BC                                        ;; 04:569e $09
    ld   A, [HL]                                       ;; 04:569f $7e
    ld   [wOBP0], A                                    ;; 04:56a0 $ea $d5 $d5
    jr   .jp_04_56f8                                   ;; 04:56a3 $18 $53
.jr_04_56a5:
    ld   A, [wD5D2]                                    ;; 04:56a5 $fa $d2 $d5
    and  A, $01                                        ;; 04:56a8 $e6 $01
    jr   NZ, .jp_04_56f8                               ;; 04:56aa $20 $4c
    ld   A, [wBGP]                                     ;; 04:56ac $fa $d4 $d5
    ld   D, A                                          ;; 04:56af $57
    ld   A, [wOBP0]                                    ;; 04:56b0 $fa $d5 $d5
    ld   E, A                                          ;; 04:56b3 $5f
    ld   HL, rIE                                       ;; 04:56b4 $21 $ff $ff
    call call_00_05ea                                  ;; 04:56b7 $cd $ea $05
    jr   Z, .jp_04_56f8                                ;; 04:56ba $28 $3c
    ld   A, [wBGP]                                     ;; 04:56bc $fa $d4 $d5
    call call_04_5718                                  ;; 04:56bf $cd $18 $57
    ld   [wBGP], A                                     ;; 04:56c2 $ea $d4 $d5
    ld   A, [wOBP0]                                    ;; 04:56c5 $fa $d5 $d5
    call call_04_5718                                  ;; 04:56c8 $cd $18 $57
    ld   [wOBP0], A                                    ;; 04:56cb $ea $d5 $d5
    jr   .jp_04_56f8                                   ;; 04:56ce $18 $28
.jp_04_56d0:
    ld   A, [wD5D2]                                    ;; 04:56d0 $fa $d2 $d5
    bit  7, A                                          ;; 04:56d3 $cb $7f
    jr   Z, .jr_04_56e6                                ;; 04:56d5 $28 $0f
    ld   HL, wCDA5                                     ;; 04:56d7 $21 $a5 $cd
    call call_04_5774                                  ;; 04:56da $cd $74 $57
    ld   HL, wCDE5                                     ;; 04:56dd $21 $e5 $cd
    call call_04_5774                                  ;; 04:56e0 $cd $74 $57
    jp   .jp_04_56f8                                   ;; 04:56e3 $c3 $f8 $56
.jr_04_56e6:
    ld   DE, wBackgroundPalette                        ;; 04:56e6 $11 $25 $ce
    ld   HL, wCDA5                                     ;; 04:56e9 $21 $a5 $cd
    call call_04_57c9                                  ;; 04:56ec $cd $c9 $57
    ld   DE, wCE65                                     ;; 04:56ef $11 $65 $ce
    ld   HL, wCDE5                                     ;; 04:56f2 $21 $e5 $cd
    call call_04_57c9                                  ;; 04:56f5 $cd $c9 $57
.jp_04_56f8:
    ld   A, [wD5D2]                                    ;; 04:56f8 $fa $d2 $d5
    and  A, $80                                        ;; 04:56fb $e6 $80
    ld   B, A                                          ;; 04:56fd $47
    ld   A, [wD5D2]                                    ;; 04:56fe $fa $d2 $d5
    and  A, $7f                                        ;; 04:5701 $e6 $7f
    dec  A                                             ;; 04:5703 $3d
    or   A, B                                          ;; 04:5704 $b0
    ld   [wD5D2], A                                    ;; 04:5705 $ea $d2 $d5
    and  A, $7f                                        ;; 04:5708 $e6 $7f
    ret  NZ                                            ;; 04:570a $c0
    ld   A, [wD58D]                                    ;; 04:570b $fa $8d $d5
    ld   [wD58B], A                                    ;; 04:570e $ea $8b $d5
    ld   A, [wD58C]                                    ;; 04:5711 $fa $8c $d5
    ld   [wMainGameState], A                           ;; 04:5714 $ea $86 $d5
    ret                                                ;; 04:5717 $c9

call_04_5718:
    ld   B, A                                          ;; 04:5718 $47
    bit  7, A                                          ;; 04:5719 $cb $7f
    jr   NZ, .jr_04_573a                               ;; 04:571b $20 $1d
    bit  1, A                                          ;; 04:571d $cb $4f
    jr   NZ, .jr_04_5767                               ;; 04:571f $20 $46
    bit  5, A                                          ;; 04:5721 $cb $6f
    jr   NZ, .jr_04_5749                               ;; 04:5723 $20 $24
    bit  2, A                                          ;; 04:5725 $cb $57
    jr   NZ, .jr_04_5758                               ;; 04:5727 $20 $2f
    bit  4, A                                          ;; 04:5729 $cb $67
    jr   NZ, .jr_04_5749                               ;; 04:572b $20 $1c
    bit  6, A                                          ;; 04:572d $cb $77
    jr   NZ, .jr_04_573a                               ;; 04:572f $20 $09
    bit  3, A                                          ;; 04:5731 $cb $5f
    jr   NZ, .jr_04_5758                               ;; 04:5733 $20 $23
    bit  0, A                                          ;; 04:5735 $cb $47
    jr   NZ, .jr_04_5767                               ;; 04:5737 $20 $2e
    ret                                                ;; 04:5739 $c9
.jr_04_573a:
    and  A, $c0                                        ;; 04:573a $e6 $c0
    sub  A, $40                                        ;; 04:573c $d6 $40
    jr   NC, .jr_04_5741                               ;; 04:573e $30 $01
    xor  A, A                                          ;; 04:5740 $af
.jr_04_5741:
    and  A, $c0                                        ;; 04:5741 $e6 $c0
    ld   C, A                                          ;; 04:5743 $4f
    ld   A, B                                          ;; 04:5744 $78
    and  A, $3f                                        ;; 04:5745 $e6 $3f
    or   A, C                                          ;; 04:5747 $b1
    ret                                                ;; 04:5748 $c9
.jr_04_5749:
    and  A, $30                                        ;; 04:5749 $e6 $30
    sub  A, $10                                        ;; 04:574b $d6 $10
    jr   NC, .jr_04_5750                               ;; 04:574d $30 $01
    xor  A, A                                          ;; 04:574f $af
.jr_04_5750:
    and  A, $30                                        ;; 04:5750 $e6 $30
    ld   C, A                                          ;; 04:5752 $4f
    ld   A, B                                          ;; 04:5753 $78
    and  A, $cf                                        ;; 04:5754 $e6 $cf
    or   A, C                                          ;; 04:5756 $b1
    ret                                                ;; 04:5757 $c9
.jr_04_5758:
    and  A, $0c                                        ;; 04:5758 $e6 $0c
    sub  A, $04                                        ;; 04:575a $d6 $04
    jr   NC, .jr_04_575f                               ;; 04:575c $30 $01
    xor  A, A                                          ;; 04:575e $af
.jr_04_575f:
    and  A, $0c                                        ;; 04:575f $e6 $0c
    ld   C, A                                          ;; 04:5761 $4f
    ld   A, B                                          ;; 04:5762 $78
    and  A, $f3                                        ;; 04:5763 $e6 $f3
    or   A, C                                          ;; 04:5765 $b1
    ret                                                ;; 04:5766 $c9
.jr_04_5767:
    and  A, $03                                        ;; 04:5767 $e6 $03
    sub  A, $01                                        ;; 04:5769 $d6 $01
    jr   NC, .jr_04_576e                               ;; 04:576b $30 $01
    xor  A, A                                          ;; 04:576d $af
.jr_04_576e:
    ld   C, A                                          ;; 04:576e $4f
    ld   A, B                                          ;; 04:576f $78
    and  A, $fc                                        ;; 04:5770 $e6 $fc
    or   A, C                                          ;; 04:5772 $b1
    ret                                                ;; 04:5773 $c9

call_04_5774:
    ld   B, $20                                        ;; 04:5774 $06 $20
.jp_04_5776:
    ld   A, [HL]                                       ;; 04:5776 $7e
    and  A, $1f                                        ;; 04:5777 $e6 $1f
    add  A, $02                                        ;; 04:5779 $c6 $02
    cp   A, $20                                        ;; 04:577b $fe $20
    jr   C, .jr_04_5781                                ;; 04:577d $38 $02
    ld   A, $1f                                        ;; 04:577f $3e $1f
.jr_04_5781:
    ld   [wCEA5], A                                    ;; 04:5781 $ea $a5 $ce
    ld   A, [HL+]                                      ;; 04:5784 $2a
    and  A, $e0                                        ;; 04:5785 $e6 $e0
    rrca                                               ;; 04:5787 $0f
    rrca                                               ;; 04:5788 $0f
    ld   C, A                                          ;; 04:5789 $4f
    ld   A, [HL]                                       ;; 04:578a $7e
    and  A, $03                                        ;; 04:578b $e6 $03
    swap A                                             ;; 04:578d $cb $37
    rlca                                               ;; 04:578f $07
    rlca                                               ;; 04:5790 $07
    or   A, C                                          ;; 04:5791 $b1
    add  A, $10                                        ;; 04:5792 $c6 $10
    jr   NC, .jr_04_5798                               ;; 04:5794 $30 $02
    ld   A, $f8                                        ;; 04:5796 $3e $f8
.jr_04_5798:
    ld   [wCEA6], A                                    ;; 04:5798 $ea $a6 $ce
    ld   A, [HL]                                       ;; 04:579b $7e
    and  A, $7c                                        ;; 04:579c $e6 $7c
    add  A, $08                                        ;; 04:579e $c6 $08
    bit  7, A                                          ;; 04:57a0 $cb $7f
    jr   Z, .jr_04_57a6                                ;; 04:57a2 $28 $02
    ld   A, $7c                                        ;; 04:57a4 $3e $7c
.jr_04_57a6:
    ld   [wCEA7], A                                    ;; 04:57a6 $ea $a7 $ce
    ld   A, [wCEA6]                                    ;; 04:57a9 $fa $a6 $ce
    ld   E, A                                          ;; 04:57ac $5f
    ld   D, $00                                        ;; 04:57ad $16 $00
    sla  E                                             ;; 04:57af $cb $23
    rl   D                                             ;; 04:57b1 $cb $12
    sla  E                                             ;; 04:57b3 $cb $23
    rl   D                                             ;; 04:57b5 $cb $12
    ld   A, [wCEA5]                                    ;; 04:57b7 $fa $a5 $ce
    or   A, E                                          ;; 04:57ba $b3
    ld   E, A                                          ;; 04:57bb $5f
    ld   A, [wCEA7]                                    ;; 04:57bc $fa $a7 $ce
    or   A, D                                          ;; 04:57bf $b2
    ld   [HL-], A                                      ;; 04:57c0 $32
    ld   A, E                                          ;; 04:57c1 $7b
    ld   [HL+], A                                      ;; 04:57c2 $22
    inc  HL                                            ;; 04:57c3 $23
    dec  B                                             ;; 04:57c4 $05
    jp   NZ, .jp_04_5776                               ;; 04:57c5 $c2 $76 $57
    ret                                                ;; 04:57c8 $c9

call_04_57c9:
    ld   B, $20                                        ;; 04:57c9 $06 $20
.jp_04_57cb:
    ld   A, [DE]                                       ;; 04:57cb $1a
    and  A, $1f                                        ;; 04:57cc $e6 $1f
    ld   C, A                                          ;; 04:57ce $4f
    ld   A, [HL]                                       ;; 04:57cf $7e
    and  A, $1f                                        ;; 04:57d0 $e6 $1f
    sub  A, $02                                        ;; 04:57d2 $d6 $02
    jr   NC, .jr_04_57d9                               ;; 04:57d4 $30 $03
    ld   A, C                                          ;; 04:57d6 $79
    jr   .jr_04_57dd                                   ;; 04:57d7 $18 $04
.jr_04_57d9:
    cp   A, C                                          ;; 04:57d9 $b9
    jr   NC, .jr_04_57dd                               ;; 04:57da $30 $01
    ld   A, C                                          ;; 04:57dc $79
.jr_04_57dd:
    ld   [wCEA5], A                                    ;; 04:57dd $ea $a5 $ce
    ld   A, [HL+]                                      ;; 04:57e0 $2a
    and  A, $e0                                        ;; 04:57e1 $e6 $e0
    srl  A                                             ;; 04:57e3 $cb $3f
    srl  A                                             ;; 04:57e5 $cb $3f
    ld   C, A                                          ;; 04:57e7 $4f
    ld   A, [HL]                                       ;; 04:57e8 $7e
    and  A, $03                                        ;; 04:57e9 $e6 $03
    swap A                                             ;; 04:57eb $cb $37
    sla  A                                             ;; 04:57ed $cb $27
    sla  A                                             ;; 04:57ef $cb $27
    or   A, C                                          ;; 04:57f1 $b1
    ld   [wCEA6], A                                    ;; 04:57f2 $ea $a6 $ce
    ld   A, [DE]                                       ;; 04:57f5 $1a
    and  A, $e0                                        ;; 04:57f6 $e6 $e0
    srl  A                                             ;; 04:57f8 $cb $3f
    srl  A                                             ;; 04:57fa $cb $3f
    ld   C, A                                          ;; 04:57fc $4f
    inc  DE                                            ;; 04:57fd $13
    ld   A, [DE]                                       ;; 04:57fe $1a
    and  A, $03                                        ;; 04:57ff $e6 $03
    swap A                                             ;; 04:5801 $cb $37
    sla  A                                             ;; 04:5803 $cb $27
    sla  A                                             ;; 04:5805 $cb $27
    or   A, C                                          ;; 04:5807 $b1
    ld   C, A                                          ;; 04:5808 $4f
    ld   A, [wCEA6]                                    ;; 04:5809 $fa $a6 $ce
    sub  A, $10                                        ;; 04:580c $d6 $10
    jr   NC, .jr_04_5813                               ;; 04:580e $30 $03
    ld   A, C                                          ;; 04:5810 $79
    jr   .jr_04_5817                                   ;; 04:5811 $18 $04
.jr_04_5813:
    cp   A, C                                          ;; 04:5813 $b9
    jr   NC, .jr_04_5817                               ;; 04:5814 $30 $01
    ld   A, C                                          ;; 04:5816 $79
.jr_04_5817:
    ld   [wCEA6], A                                    ;; 04:5817 $ea $a6 $ce
    ld   A, [DE]                                       ;; 04:581a $1a
    and  A, $7c                                        ;; 04:581b $e6 $7c
    ld   C, A                                          ;; 04:581d $4f
    ld   A, [HL]                                       ;; 04:581e $7e
    and  A, $7c                                        ;; 04:581f $e6 $7c
    sub  A, $08                                        ;; 04:5821 $d6 $08
    jr   NC, .jr_04_5828                               ;; 04:5823 $30 $03
    ld   A, C                                          ;; 04:5825 $79
    jr   .jr_04_582c                                   ;; 04:5826 $18 $04
.jr_04_5828:
    cp   A, C                                          ;; 04:5828 $b9
    jr   NC, .jr_04_582c                               ;; 04:5829 $30 $01
    ld   A, C                                          ;; 04:582b $79
.jr_04_582c:
    ld   [wCEA7], A                                    ;; 04:582c $ea $a7 $ce
    push DE                                            ;; 04:582f $d5
    ld   A, [wCEA6]                                    ;; 04:5830 $fa $a6 $ce
    ld   E, A                                          ;; 04:5833 $5f
    ld   D, $00                                        ;; 04:5834 $16 $00
    sla  E                                             ;; 04:5836 $cb $23
    rl   D                                             ;; 04:5838 $cb $12
    sla  E                                             ;; 04:583a $cb $23
    rl   D                                             ;; 04:583c $cb $12
    ld   A, [wCEA5]                                    ;; 04:583e $fa $a5 $ce
    or   A, E                                          ;; 04:5841 $b3
    ld   E, A                                          ;; 04:5842 $5f
    ld   A, [wCEA7]                                    ;; 04:5843 $fa $a7 $ce
    or   A, D                                          ;; 04:5846 $b2
    ld   [HL-], A                                      ;; 04:5847 $32
    ld   A, E                                          ;; 04:5848 $7b
    ld   [HL+], A                                      ;; 04:5849 $22
    pop  DE                                            ;; 04:584a $d1
    inc  HL                                            ;; 04:584b $23
    inc  DE                                            ;; 04:584c $13
    dec  B                                             ;; 04:584d $05
    jp   NZ, .jp_04_57cb                               ;; 04:584e $c2 $cb $57
    ret                                                ;; 04:5851 $c9

call_04_5852:
    ldh  A, [hIsGBC]                                   ;; 04:5852 $f0 $fe
    and  A, A                                          ;; 04:5854 $a7
    jp   NZ, .jp_04_589f                               ;; 04:5855 $c2 $9f $58
    ld   A, [wD5D2]                                    ;; 04:5858 $fa $d2 $d5
    bit  7, A                                          ;; 04:585b $cb $7f
    jr   NZ, .jr_04_5879                               ;; 04:585d $20 $1a
    xor  A, $1f                                        ;; 04:585f $ee $1f
    and  A, $7f                                        ;; 04:5861 $e6 $7f
    ld   C, A                                          ;; 04:5863 $4f
    ld   B, $00                                        ;; 04:5864 $06 $00
    ld   HL, data_04_565f                              ;; 04:5866 $21 $5f $56
    add  HL, BC                                        ;; 04:5869 $09
    ld   A, [HL]                                       ;; 04:586a $7e
    ld   [wBGP], A                                     ;; 04:586b $ea $d4 $d5
    ld   HL, data_04_563f                              ;; 04:586e $21 $3f $56
    add  HL, BC                                        ;; 04:5871 $09
    ld   A, [HL]                                       ;; 04:5872 $7e
    ld   [wOBP0], A                                    ;; 04:5873 $ea $d5 $d5
    jp   .jp_04_58c7                                   ;; 04:5876 $c3 $c7 $58
.jr_04_5879:
    ld   A, [wD5D2]                                    ;; 04:5879 $fa $d2 $d5
    and  A, $01                                        ;; 04:587c $e6 $01
    jr   NZ, .jp_04_58c7                               ;; 04:587e $20 $47
    ld   A, [wBGP]                                     ;; 04:5880 $fa $d4 $d5
    ld   B, A                                          ;; 04:5883 $47
    ld   A, [wOBP0]                                    ;; 04:5884 $fa $d5 $d5
    or   A, B                                          ;; 04:5887 $b0
    jr   Z, .jp_04_58c7                                ;; 04:5888 $28 $3d
    ld   A, [wBGP]                                     ;; 04:588a $fa $d4 $d5
    call call_04_58e7                                  ;; 04:588d $cd $e7 $58
    ld   [wBGP], A                                     ;; 04:5890 $ea $d4 $d5
    ld   A, [wOBP0]                                    ;; 04:5893 $fa $d5 $d5
    call call_04_58e7                                  ;; 04:5896 $cd $e7 $58
    ld   [wOBP0], A                                    ;; 04:5899 $ea $d5 $d5
    jp   .jp_04_58c7                                   ;; 04:589c $c3 $c7 $58
.jp_04_589f:
    ld   A, [wD5D2]                                    ;; 04:589f $fa $d2 $d5
    bit  7, A                                          ;; 04:58a2 $cb $7f
    jr   Z, .jr_04_58b5                                ;; 04:58a4 $28 $0f
    ld   HL, wCDA5                                     ;; 04:58a6 $21 $a5 $cd
    call call_04_5947                                  ;; 04:58a9 $cd $47 $59
    ld   HL, wCDE5                                     ;; 04:58ac $21 $e5 $cd
    call call_04_5947                                  ;; 04:58af $cd $47 $59
    jp   .jp_04_58c7                                   ;; 04:58b2 $c3 $c7 $58
.jr_04_58b5:
    ld   DE, wBackgroundPalette                        ;; 04:58b5 $11 $25 $ce
    ld   HL, wCDA5                                     ;; 04:58b8 $21 $a5 $cd
    call call_04_5995                                  ;; 04:58bb $cd $95 $59
    ld   DE, wCE65                                     ;; 04:58be $11 $65 $ce
    ld   HL, wCDE5                                     ;; 04:58c1 $21 $e5 $cd
    call call_04_5995                                  ;; 04:58c4 $cd $95 $59
.jp_04_58c7:
    ld   A, [wD5D2]                                    ;; 04:58c7 $fa $d2 $d5
    and  A, $80                                        ;; 04:58ca $e6 $80
    ld   B, A                                          ;; 04:58cc $47
    ld   A, [wD5D2]                                    ;; 04:58cd $fa $d2 $d5
    and  A, $7f                                        ;; 04:58d0 $e6 $7f
    dec  A                                             ;; 04:58d2 $3d
    or   A, B                                          ;; 04:58d3 $b0
    ld   [wD5D2], A                                    ;; 04:58d4 $ea $d2 $d5
    and  A, $7f                                        ;; 04:58d7 $e6 $7f
    ret  NZ                                            ;; 04:58d9 $c0
    ld   A, [wD58D]                                    ;; 04:58da $fa $8d $d5
    ld   [wD58B], A                                    ;; 04:58dd $ea $8b $d5
    ld   A, [wD58C]                                    ;; 04:58e0 $fa $8c $d5
    ld   [wMainGameState], A                           ;; 04:58e3 $ea $86 $d5
    ret                                                ;; 04:58e6 $c9

call_04_58e7:
    ld   B, A                                          ;; 04:58e7 $47
    bit  7, A                                          ;; 04:58e8 $cb $7f
    jr   Z, .jr_04_5909                                ;; 04:58ea $28 $1d
    bit  1, A                                          ;; 04:58ec $cb $4f
    jr   Z, .jr_04_5939                                ;; 04:58ee $28 $49
    bit  5, A                                          ;; 04:58f0 $cb $6f
    jr   Z, .jr_04_5919                                ;; 04:58f2 $28 $25
    bit  2, A                                          ;; 04:58f4 $cb $57
    jr   Z, .jr_04_5929                                ;; 04:58f6 $28 $31
    bit  4, A                                          ;; 04:58f8 $cb $67
    jr   Z, .jr_04_5919                                ;; 04:58fa $28 $1d
    bit  6, A                                          ;; 04:58fc $cb $77
    jr   Z, .jr_04_5909                                ;; 04:58fe $28 $09
    bit  3, A                                          ;; 04:5900 $cb $5f
    jr   Z, .jr_04_5929                                ;; 04:5902 $28 $25
    bit  0, A                                          ;; 04:5904 $cb $47
    jr   Z, .jr_04_5939                                ;; 04:5906 $28 $31
    ret                                                ;; 04:5908 $c9
.jr_04_5909:
    and  A, $c0                                        ;; 04:5909 $e6 $c0
    add  A, $40                                        ;; 04:590b $c6 $40
    jr   NC, .jr_04_5911                               ;; 04:590d $30 $02
    ld   A, $c0                                        ;; 04:590f $3e $c0
.jr_04_5911:
    and  A, $c0                                        ;; 04:5911 $e6 $c0
    ld   C, A                                          ;; 04:5913 $4f
    ld   A, B                                          ;; 04:5914 $78
    and  A, $3f                                        ;; 04:5915 $e6 $3f
    or   A, C                                          ;; 04:5917 $b1
    ret                                                ;; 04:5918 $c9
.jr_04_5919:
    and  A, $30                                        ;; 04:5919 $e6 $30
    add  A, $10                                        ;; 04:591b $c6 $10
    jr   NC, .jr_04_5921                               ;; 04:591d $30 $02
    ld   A, $30                                        ;; 04:591f $3e $30
.jr_04_5921:
    and  A, $30                                        ;; 04:5921 $e6 $30
    ld   C, A                                          ;; 04:5923 $4f
    ld   A, B                                          ;; 04:5924 $78
    and  A, $cf                                        ;; 04:5925 $e6 $cf
    or   A, C                                          ;; 04:5927 $b1
    ret                                                ;; 04:5928 $c9
.jr_04_5929:
    and  A, $0c                                        ;; 04:5929 $e6 $0c
    add  A, $04                                        ;; 04:592b $c6 $04
    jr   NC, .jr_04_5931                               ;; 04:592d $30 $02
    ld   A, $0c                                        ;; 04:592f $3e $0c
.jr_04_5931:
    and  A, $0c                                        ;; 04:5931 $e6 $0c
    ld   C, A                                          ;; 04:5933 $4f
    ld   A, B                                          ;; 04:5934 $78
    and  A, $f3                                        ;; 04:5935 $e6 $f3
    or   A, C                                          ;; 04:5937 $b1
    ret                                                ;; 04:5938 $c9
.jr_04_5939:
    and  A, $03                                        ;; 04:5939 $e6 $03
    add  A, $01                                        ;; 04:593b $c6 $01
    jr   NC, .jr_04_5941                               ;; 04:593d $30 $02
    ld   A, $03                                        ;; 04:593f $3e $03
.jr_04_5941:
    ld   C, A                                          ;; 04:5941 $4f
    ld   A, B                                          ;; 04:5942 $78
    and  A, $fc                                        ;; 04:5943 $e6 $fc
    or   A, C                                          ;; 04:5945 $b1
    ret                                                ;; 04:5946 $c9

call_04_5947:
    ld   B, $20                                        ;; 04:5947 $06 $20
.jp_04_5949:
    ld   A, [HL]                                       ;; 04:5949 $7e
    and  A, $1f                                        ;; 04:594a $e6 $1f
    sub  A, $01                                        ;; 04:594c $d6 $01
    jr   NC, .jr_04_5951                               ;; 04:594e $30 $01
    xor  A, A                                          ;; 04:5950 $af
.jr_04_5951:
    ld   [wCEA5], A                                    ;; 04:5951 $ea $a5 $ce
    ld   A, [HL+]                                      ;; 04:5954 $2a
    and  A, $e0                                        ;; 04:5955 $e6 $e0
    rrca                                               ;; 04:5957 $0f
    rrca                                               ;; 04:5958 $0f
    ld   C, A                                          ;; 04:5959 $4f
    ld   A, [HL]                                       ;; 04:595a $7e
    and  A, $03                                        ;; 04:595b $e6 $03
    swap A                                             ;; 04:595d $cb $37
    rlca                                               ;; 04:595f $07
    rlca                                               ;; 04:5960 $07
    or   A, C                                          ;; 04:5961 $b1
    sub  A, $08                                        ;; 04:5962 $d6 $08
    jr   NC, .jr_04_5967                               ;; 04:5964 $30 $01
    xor  A, A                                          ;; 04:5966 $af
.jr_04_5967:
    ld   [wCEA6], A                                    ;; 04:5967 $ea $a6 $ce
    ld   A, [HL]                                       ;; 04:596a $7e
    and  A, $7c                                        ;; 04:596b $e6 $7c
    sub  A, $04                                        ;; 04:596d $d6 $04
    jr   NC, .jr_04_5972                               ;; 04:596f $30 $01
    xor  A, A                                          ;; 04:5971 $af
.jr_04_5972:
    ld   [wCEA7], A                                    ;; 04:5972 $ea $a7 $ce
    ld   A, [wCEA6]                                    ;; 04:5975 $fa $a6 $ce
    ld   E, A                                          ;; 04:5978 $5f
    ld   D, $00                                        ;; 04:5979 $16 $00
    sla  E                                             ;; 04:597b $cb $23
    rl   D                                             ;; 04:597d $cb $12
    sla  E                                             ;; 04:597f $cb $23
    rl   D                                             ;; 04:5981 $cb $12
    ld   A, [wCEA5]                                    ;; 04:5983 $fa $a5 $ce
    or   A, E                                          ;; 04:5986 $b3
    ld   E, A                                          ;; 04:5987 $5f
    ld   A, [wCEA7]                                    ;; 04:5988 $fa $a7 $ce
    or   A, D                                          ;; 04:598b $b2
    ld   [HL-], A                                      ;; 04:598c $32
    ld   A, E                                          ;; 04:598d $7b
    ld   [HL+], A                                      ;; 04:598e $22
    inc  HL                                            ;; 04:598f $23
    dec  B                                             ;; 04:5990 $05
    jp   NZ, .jp_04_5949                               ;; 04:5991 $c2 $49 $59
    ret                                                ;; 04:5994 $c9

call_04_5995:
    ld   B, $20                                        ;; 04:5995 $06 $20
.jp_04_5997:
    ld   A, [DE]                                       ;; 04:5997 $1a
    and  A, $1f                                        ;; 04:5998 $e6 $1f
    ld   C, A                                          ;; 04:599a $4f
    ld   A, [HL]                                       ;; 04:599b $7e
    and  A, $1f                                        ;; 04:599c $e6 $1f
    add  A, $01                                        ;; 04:599e $c6 $01
    cp   A, C                                          ;; 04:59a0 $b9
    jr   C, .jr_04_59a4                                ;; 04:59a1 $38 $01
    ld   A, C                                          ;; 04:59a3 $79
.jr_04_59a4:
    ld   [wCEA5], A                                    ;; 04:59a4 $ea $a5 $ce
    ld   A, [HL+]                                      ;; 04:59a7 $2a
    and  A, $e0                                        ;; 04:59a8 $e6 $e0
    srl  A                                             ;; 04:59aa $cb $3f
    srl  A                                             ;; 04:59ac $cb $3f
    ld   C, A                                          ;; 04:59ae $4f
    ld   A, [HL]                                       ;; 04:59af $7e
    and  A, $03                                        ;; 04:59b0 $e6 $03
    swap A                                             ;; 04:59b2 $cb $37
    sla  A                                             ;; 04:59b4 $cb $27
    sla  A                                             ;; 04:59b6 $cb $27
    or   A, C                                          ;; 04:59b8 $b1
    ld   [wCEA6], A                                    ;; 04:59b9 $ea $a6 $ce
    ld   A, [DE]                                       ;; 04:59bc $1a
    and  A, $e0                                        ;; 04:59bd $e6 $e0
    srl  A                                             ;; 04:59bf $cb $3f
    srl  A                                             ;; 04:59c1 $cb $3f
    ld   C, A                                          ;; 04:59c3 $4f
    inc  DE                                            ;; 04:59c4 $13
    ld   A, [DE]                                       ;; 04:59c5 $1a
    and  A, $03                                        ;; 04:59c6 $e6 $03
    swap A                                             ;; 04:59c8 $cb $37
    sla  A                                             ;; 04:59ca $cb $27
    sla  A                                             ;; 04:59cc $cb $27
    or   A, C                                          ;; 04:59ce $b1
    ld   C, A                                          ;; 04:59cf $4f
    ld   A, [wCEA6]                                    ;; 04:59d0 $fa $a6 $ce
    add  A, $08                                        ;; 04:59d3 $c6 $08
    cp   A, C                                          ;; 04:59d5 $b9
    jr   C, .jr_04_59d9                                ;; 04:59d6 $38 $01
    ld   A, C                                          ;; 04:59d8 $79
.jr_04_59d9:
    ld   [wCEA6], A                                    ;; 04:59d9 $ea $a6 $ce
    ld   A, [DE]                                       ;; 04:59dc $1a
    and  A, $7c                                        ;; 04:59dd $e6 $7c
    ld   C, A                                          ;; 04:59df $4f
    ld   A, [HL]                                       ;; 04:59e0 $7e
    and  A, $7c                                        ;; 04:59e1 $e6 $7c
    add  A, $04                                        ;; 04:59e3 $c6 $04
    cp   A, C                                          ;; 04:59e5 $b9
    jr   C, .jr_04_59e9                                ;; 04:59e6 $38 $01
    ld   A, C                                          ;; 04:59e8 $79
.jr_04_59e9:
    ld   [wCEA7], A                                    ;; 04:59e9 $ea $a7 $ce
    push DE                                            ;; 04:59ec $d5
    ld   A, [wCEA6]                                    ;; 04:59ed $fa $a6 $ce
    ld   E, A                                          ;; 04:59f0 $5f
    ld   D, $00                                        ;; 04:59f1 $16 $00
    sla  E                                             ;; 04:59f3 $cb $23
    rl   D                                             ;; 04:59f5 $cb $12
    sla  E                                             ;; 04:59f7 $cb $23
    rl   D                                             ;; 04:59f9 $cb $12
    ld   A, [wCEA5]                                    ;; 04:59fb $fa $a5 $ce
    or   A, E                                          ;; 04:59fe $b3
    ld   E, A                                          ;; 04:59ff $5f
    ld   A, [wCEA7]                                    ;; 04:5a00 $fa $a7 $ce
    or   A, D                                          ;; 04:5a03 $b2
    ld   [HL-], A                                      ;; 04:5a04 $32
    ld   A, E                                          ;; 04:5a05 $7b
    ld   [HL+], A                                      ;; 04:5a06 $22
    pop  DE                                            ;; 04:5a07 $d1
    inc  HL                                            ;; 04:5a08 $23
    inc  DE                                            ;; 04:5a09 $13
    dec  B                                             ;; 04:5a0a $05
    jp   NZ, .jp_04_5997                               ;; 04:5a0b $c2 $97 $59
    ret                                                ;; 04:5a0e $c9

data_04_5a0f:
    dw   `00001000                                     ;; 04:5a0f $08 $00
    dw   `00120020                                     ;; 04:5a11 $20 $12
    dw   `01200000                                     ;; 04:5a13 $40 $20
    dw   `02202202                                     ;; 04:5a15 $00 $6d
    dw   `02121220                                     ;; 04:5a17 $28 $56
    dw   `02111120                                     ;; 04:5a19 $3c $42
    dw   `01211220                                     ;; 04:5a1b $58 $26
    dw   `00122200                                     ;; 04:5a1d $20 $1c

    dw   `20021000                                     ;; 04:5a1f $08 $90
    dw   `02112000                                     ;; 04:5a21 $30 $48
    dw   `20222210                                     ;; 04:5a23 $02 $bc
    dw   `02111120                                     ;; 04:5a25 $3c $42
    dw   `20222210                                     ;; 04:5a27 $02 $bc
    dw   `02010121                                     ;; 04:5a29 $15 $42
    dw   `00211112                                     ;; 04:5a2b $1e $21
    dw   `00022222                                     ;; 04:5a2d $00 $1f

    dw   `00012000                                     ;; 04:5a2f $10 $08
    dw   `00022000                                     ;; 04:5a31 $00 $18
    dw   `00122100                                     ;; 04:5a33 $24 $18
    dw   `00212200                                     ;; 04:5a35 $10 $2c
    dw   `01101210                                     ;; 04:5a37 $6a $04
    dw   `01212210                                     ;; 04:5a39 $52 $2c
    dw   `01222210                                     ;; 04:5a3b $42 $3c
    dw   `00122100                                     ;; 04:5a3d $24 $18

    dw   `00022000                                     ;; 04:5a3f $00 $18
    dw   `00212200                                     ;; 04:5a41 $10 $2c
    dw   `02112220                                     ;; 04:5a43 $30 $4e
    dw   `21112222                                     ;; 04:5a45 $70 $8f
    dw   `22222222                                     ;; 04:5a47 $00 $ff
    dw   `02222220                                     ;; 04:5a49 $00 $7e
    dw   `00222200                                     ;; 04:5a4b $00 $3c
    dw   `00022000                                     ;; 04:5a4d $00 $18

    dw   `33300000                                     ;; 04:5a4f $e0 $e0
    dw   `32233000                                     ;; 04:5a51 $98 $f8
    dw   `32222330                                     ;; 04:5a53 $86 $fe
    dw   `32222223                                     ;; 04:5a55 $81 $ff
    dw   `32222223                                     ;; 04:5a57 $81 $ff
    dw   `32222330                                     ;; 04:5a59 $86 $fe
    dw   `32233000                                     ;; 04:5a5b $98 $f8
    dw   `33300000                                     ;; 04:5a5d $e0 $e0

    dw   `00000333                                     ;; 04:5a5f $07 $07
    dw   `33333223                                     ;; 04:5a61 $f9 $ff
    dw   `22232113                                     ;; 04:5a63 $17 $f9
    dw   `11321331                                     ;; 04:5a65 $ef $36
    dw   `11323111                                     ;; 04:5a67 $ef $38
    dw   `23332222                                     ;; 04:5a69 $70 $ff
    dw   `33333333                                     ;; 04:5a6b $ff $ff
    dw   `30000000                                     ;; 04:5a6d $80 $80

    dw   `00000000                                     ;; 04:5a6f $00 $00
    dw   `00033333                                     ;; 04:5a71 $1f $1f
    dw   `00322222                                     ;; 04:5a73 $20 $3f
    dw   `03221111                                     ;; 04:5a75 $4f $70
    dw   `03211111                                     ;; 04:5a77 $5f $60
    dw   `03211122                                     ;; 04:5a79 $5c $63
    dw   `03211233                                     ;; 04:5a7b $5b $67
    dw   `03211230                                     ;; 04:5a7d $5a $66

    dw   `00000000                                     ;; 04:5a7f $00 $00
    dw   `33333000                                     ;; 04:5a81 $f8 $f8
    dw   `22222300                                     ;; 04:5a83 $04 $fc
    dw   `11112230                                     ;; 04:5a85 $f2 $0e
    dw   `11111230                                     ;; 04:5a87 $fa $06
    dw   `22111230                                     ;; 04:5a89 $3a $c6
    dw   `33211230                                     ;; 04:5a8b $da $e6
    dw   `03211230                                     ;; 04:5a8d $5a $66

    dw   `03211230                                     ;; 04:5a8f $5a $66
    dw   `03211233                                     ;; 04:5a91 $5b $67
    dw   `03211122                                     ;; 04:5a93 $5c $63
    dw   `03211111                                     ;; 04:5a95 $5f $60
    dw   `03221111                                     ;; 04:5a97 $4f $70
    dw   `00322222                                     ;; 04:5a99 $20 $3f
    dw   `00033333                                     ;; 04:5a9b $1f $1f
    dw   `00000000                                     ;; 04:5a9d $00 $00

    dw   `03211230                                     ;; 04:5a9f $5a $66
    dw   `33211230                                     ;; 04:5aa1 $da $e6
    dw   `22111230                                     ;; 04:5aa3 $3a $c6
    dw   `11111230                                     ;; 04:5aa5 $fa $06
    dw   `11112230                                     ;; 04:5aa7 $f2 $0e
    dw   `22222300                                     ;; 04:5aa9 $04 $fc
    dw   `33333000                                     ;; 04:5aab $f8 $f8
    dw   `00000000                                     ;; 04:5aad $00 $00

    dw   `03211230                                     ;; 04:5aaf $5a $66
    dw   `03211230                                     ;; 04:5ab1 $5a $66
    dw   `03211230                                     ;; 04:5ab3 $5a $66
    dw   `03211230                                     ;; 04:5ab5 $5a $66
    dw   `03211230                                     ;; 04:5ab7 $5a $66
    dw   `03211230                                     ;; 04:5ab9 $5a $66
    dw   `03211230                                     ;; 04:5abb $5a $66
    dw   `03211230                                     ;; 04:5abd $5a $66

    dw   `00000000                                     ;; 04:5abf $00 $00
    dw   `33333333                                     ;; 04:5ac1 $ff $ff
    dw   `22222222                                     ;; 04:5ac3 $00 $ff
    dw   `11111111                                     ;; 04:5ac5 $ff $00
    dw   `11111111                                     ;; 04:5ac7 $ff $00
    dw   `22222222                                     ;; 04:5ac9 $00 $ff
    dw   `33333333                                     ;; 04:5acb $ff $ff
    dw   `00000000                                     ;; 04:5acd $00 $00


data_04_5acf:
    dw   `00000000                                     ;; 04:5acf $00 $00
    dw   `00000000                                     ;; 04:5ad1 $00 $00
    dw   `00000000                                     ;; 04:5ad3 $00 $00
    dw   `00000000                                     ;; 04:5ad5 $00 $00
    dw   `00000000                                     ;; 04:5ad7 $00 $00
    dw   `00003333                                     ;; 04:5ad9 $0f $0f
    dw   `00333333                                     ;; 04:5adb $3f $3f
    dw   `03333333                                     ;; 04:5add $7f $7f

    dw   `00333333                                     ;; 04:5adf $3f $3f
    dw   `00003333                                     ;; 04:5ae1 $0f $0f
    dw   `00000000                                     ;; 04:5ae3 $00 $00
    dw   `00000000                                     ;; 04:5ae5 $00 $00
    dw   `00000000                                     ;; 04:5ae7 $00 $00
    dw   `00000000                                     ;; 04:5ae9 $00 $00
    dw   `00000000                                     ;; 04:5aeb $00 $00
    dw   `00000000                                     ;; 04:5aed $00 $00

    dw   `00303000                                     ;; 04:5aef $28 $28
    dw   `03121000                                     ;; 04:5af1 $68 $50
    dw   `10221330                                     ;; 04:5af3 $8e $36
    dw   `32111113                                     ;; 04:5af5 $bf $c1
    dw   `03021230                                     ;; 04:5af7 $4a $56
    dw   `31201000                                     ;; 04:5af9 $c8 $a0
    dw   `03013030                                     ;; 04:5afb $5a $4a
    dw   `00333313                                     ;; 04:5afd $3f $3d

    dw   `03101330                                     ;; 04:5aff $6e $46
    dw   `00322030                                     ;; 04:5b01 $22 $3a
    dw   `00302313                                     ;; 04:5b03 $27 $2d
    dw   `00031030                                     ;; 04:5b05 $1a $12
    dw   `00003000                                     ;; 04:5b07 $08 $08
    dw   `00030000                                     ;; 04:5b09 $10 $10
    dw   `00313000                                     ;; 04:5b0b $38 $28
    dw   `00030000                                     ;; 04:5b0d $10 $10

    dw   `00000000                                     ;; 04:5b0f $00 $00
    dw   `00000000                                     ;; 04:5b11 $00 $00
    dw   `33333333                                     ;; 04:5b13 $ff $ff
    dw   `32322231                                     ;; 04:5b15 $a3 $fe
    dw   `32322231                                     ;; 04:5b17 $a3 $fe
    dw   `31322231                                     ;; 04:5b19 $e3 $be
    dw   `31322231                                     ;; 04:5b1b $e3 $be
    dw   `31322231                                     ;; 04:5b1d $e3 $be

    dw   `31322231                                     ;; 04:5b1f $e3 $be
    dw   `31333331                                     ;; 04:5b21 $ff $be
    dw   `31111233                                     ;; 04:5b23 $fb $87
    dw   `31111231                                     ;; 04:5b25 $fb $86
    dw   `33333333                                     ;; 04:5b27 $ff $ff
    dw   `33333331                                     ;; 04:5b29 $ff $fe
    dw   `32222233                                     ;; 04:5b2b $83 $ff
    dw   `33333333                                     ;; 04:5b2d $ff $ff

    dw   `33333333                                     ;; 04:5b2f $ff $ff
    dw   `31322231                                     ;; 04:5b31 $e3 $be
    dw   `31322231                                     ;; 04:5b33 $e3 $be
    dw   `31322231                                     ;; 04:5b35 $e3 $be
    dw   `33333333                                     ;; 04:5b37 $ff $ff
    dw   `33333331                                     ;; 04:5b39 $ff $fe
    dw   `33333333                                     ;; 04:5b3b $ff $ff
    dw   `32333333                                     ;; 04:5b3d $bf $ff

    dw   `32333333                                     ;; 04:5b3f $bf $ff
    dw   `33333333                                     ;; 04:5b41 $ff $ff
    dw   `31111111                                     ;; 04:5b43 $ff $80
    dw   `33333331                                     ;; 04:5b45 $ff $fe
    dw   `32222231                                     ;; 04:5b47 $83 $fe
    dw   `32222231                                     ;; 04:5b49 $83 $fe
    dw   `32222231                                     ;; 04:5b4b $83 $fe
    dw   `33333333                                     ;; 04:5b4d $ff $ff


data_04_5b4f:
    db   $a6, $3a, $3f, $53, $db, $01, $00, $00        ;; 04:5b4f ........
    db   $a6, $3a, $3f, $53, $1f, $00, $00, $00        ;; 04:5b57 ........

data_04_5b5f:
    db   $03, $03, $01, $01, $06, $07, $08, $0f        ;; 04:5b5f ????????
    db   $15, $1f, $1b, $1e, $1f, $1e, $0f, $0a        ;; 04:5b67 ????????
    db   $0f, $0c, $13, $1f, $3f, $3e, $3f, $27        ;; 04:5b6f ????????
    db   $7f, $67, $7f, $7f, $47, $7f, $3f, $3f        ;; 04:5b77 ????????
    db   $80, $80, $80, $80, $60, $e0, $10, $f0        ;; 04:5b7f ????????
    db   $a8, $f8, $d8, $78, $f8, $78, $f0, $50        ;; 04:5b87 ????????
    db   $f0, $30, $d8, $f8, $fc, $74, $fc, $fc        ;; 04:5b8f ????????
    db   $fc, $fc, $f4, $1c, $f4, $1c, $f8, $f8        ;; 04:5b97 ????????
    db   $01, $01, $01, $01, $03, $03, $04, $07        ;; 04:5b9f ????????
    db   $08, $0f, $10, $1f, $10, $1f, $08, $0f        ;; 04:5ba7 ????????
    db   $0f, $0f, $18, $1f, $3f, $2f, $38, $3f        ;; 04:5baf ????????
    db   $10, $1f, $2f, $3f, $2f, $38, $1f, $1f        ;; 04:5bb7 ????????
    db   $c0, $c0, $80, $80, $c0, $c0, $20, $e0        ;; 04:5bbf ????????
    db   $10, $f0, $08, $f8, $08, $f8, $10, $f0        ;; 04:5bc7 ????????
    db   $f0, $f0, $38, $f8, $f8, $f8, $3c, $e4        ;; 04:5bcf ????????
    db   $3c, $e4, $1c, $fc, $84, $fc, $f8, $f8        ;; 04:5bd7 ????????
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:5bdf ????????
    db   $1e, $1f, $1f, $1b, $0f, $0a, $0f, $0a        ;; 04:5be7 ????????
    db   $0f, $08, $07, $07, $07, $05, $07, $07        ;; 04:5bef ????????
    db   $07, $07, $0f, $0f, $0f, $09, $0f, $0f        ;; 04:5bf7 ????????
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:5bff ????????
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:5c07 ????????
    db   $f0, $f0, $08, $f8, $f8, $f8, $3c, $e4        ;; 04:5c0f ????????
    db   $3c, $e4, $9c, $fc, $c2, $fe, $fe, $fe        ;; 04:5c17 ????????
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:5c1f ????????
    db   $1e, $1f, $1f, $1b, $0f, $0a, $0f, $0a        ;; 04:5c27 ????????
    db   $0f, $08, $07, $07, $0f, $0f, $1e, $13        ;; 04:5c2f ????????
    db   $1e, $13, $0c, $0f, $04, $07, $07, $07        ;; 04:5c37 ????????
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:5c3f ????????
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:5c47 ????????
    db   $f0, $f0, $10, $f0, $f0, $f0, $08, $f8        ;; 04:5c4f ????????
    db   $08, $f8, $04, $fc, $02, $fe, $fe, $fe        ;; 04:5c57 ????????

data_04_5c5f:
    db   $0f, $0f, $03, $03, $04, $07, $0d, $0f        ;; 04:5c5f ????????
    db   $17, $1e, $17, $1c, $0e, $0b, $1f, $1c        ;; 04:5c67 ????????
    db   $23, $3f, $7f, $7e, $f6, $9f, $e7, $9c        ;; 04:5c6f ????????
    db   $6f, $7f, $2f, $33, $33, $3d, $0e, $0e        ;; 04:5c77 ????????
    db   $00, $00, $c0, $c0, $20, $e0, $b0, $f0        ;; 04:5c7f ????????
    db   $e8, $78, $e8, $38, $f0, $50, $f8, $38        ;; 04:5c87 ????????
    db   $c4, $fc, $fe, $7e, $6f, $f9, $e7, $39        ;; 04:5c8f ????????
    db   $f6, $fe, $f4, $cc, $cc, $bc, $70, $70        ;; 04:5c97 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5c9f ????????
    db   $00, $00, $00, $00, $c2, $c2, $bd, $ff        ;; 04:5ca7 ????????
    db   $bf, $c5, $7f, $47, $fd, $bf, $fc, $9f        ;; 04:5caf ????????
    db   $b6, $df, $7e, $73, $9f, $f3, $fc, $fc        ;; 04:5cb7 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5cbf ????????
    db   $00, $00, $19, $19, $e5, $fd, $ff, $5f        ;; 04:5cc7 ????????
    db   $fb, $0f, $f3, $5f, $eb, $5f, $f2, $be        ;; 04:5ccf ????????
    db   $e2, $fe, $c4, $fc, $b8, $b8, $00, $00        ;; 04:5cd7 ????????
    db   $0f, $0f, $03, $03, $04, $07, $0d, $0f        ;; 04:5cdf ????????
    db   $17, $1e, $17, $1c, $1e, $1b, $0b, $0c        ;; 04:5ce7 ????????
    db   $0f, $0f, $17, $18, $67, $78, $6f, $50        ;; 04:5cef ????????
    db   $6d, $5e, $7e, $53, $73, $7d, $1e, $1e        ;; 04:5cf7 ????????
    db   $00, $00, $c0, $c0, $20, $e0, $b0, $f0        ;; 04:5cff ????????
    db   $e8, $78, $e8, $38, $f8, $58, $d0, $30        ;; 04:5d07 ????????
    db   $f0, $f0, $e8, $18, $e6, $1e, $76, $8a        ;; 04:5d0f ????????
    db   $36, $fa, $7e, $ca, $ce, $be, $78, $78        ;; 04:5d17 ????????

data_04_5d1f:
    dw   `00000000                                     ;; 04:5d1f $00 $00
    dw   `00000000                                     ;; 04:5d21 $00 $00
    dw   `00000000                                     ;; 04:5d23 $00 $00
    dw   `00000000                                     ;; 04:5d25 $00 $00
    dw   `00000000                                     ;; 04:5d27 $00 $00
    dw   `00000000                                     ;; 04:5d29 $00 $00
    dw   `00000000                                     ;; 04:5d2b $00 $00
    dw   `00000000                                     ;; 04:5d2d $00 $00

    dw   `00000033                                     ;; 04:5d2f $03 $03
    dw   `00000003                                     ;; 04:5d31 $01 $01
    dw   `00000332                                     ;; 04:5d33 $06 $07
    dw   `00003222                                     ;; 04:5d35 $08 $0f
    dw   `00032323                                     ;; 04:5d37 $15 $1f
    dw   `00033231                                     ;; 04:5d39 $1b $1e
    dw   `00033331                                     ;; 04:5d3b $1f $1e
    dw   `00003131                                     ;; 04:5d3d $0f $0a

    dw   `00000000                                     ;; 04:5d3f $00 $00
    dw   `00000000                                     ;; 04:5d41 $00 $00
    dw   `00000000                                     ;; 04:5d43 $00 $00
    dw   `00000000                                     ;; 04:5d45 $00 $00
    dw   `00000000                                     ;; 04:5d47 $00 $00
    dw   `00000000                                     ;; 04:5d49 $00 $00
    dw   `00000000                                     ;; 04:5d4b $00 $00
    dw   `00000000                                     ;; 04:5d4d $00 $00

    dw   `30000000                                     ;; 04:5d4f $80 $80
    dw   `30000000                                     ;; 04:5d51 $80 $80
    dw   `23300000                                     ;; 04:5d53 $60 $e0
    dw   `22230000                                     ;; 04:5d55 $10 $f0
    dw   `32323000                                     ;; 04:5d57 $a8 $f8
    dw   `13233000                                     ;; 04:5d59 $d8 $78
    dw   `13333000                                     ;; 04:5d5b $f8 $78
    dw   `13130000                                     ;; 04:5d5d $f0 $50

    dw   `00003311                                     ;; 04:5d5f $0f $0c
    dw   `00032233                                     ;; 04:5d61 $13 $1f
    dw   `00333331                                     ;; 04:5d63 $3f $3e
    dw   `00311333                                     ;; 04:5d65 $3f $27
    dw   `03311333                                     ;; 04:5d67 $7f $67
    dw   `03333333                                     ;; 04:5d69 $7f $7f
    dw   `03222333                                     ;; 04:5d6b $47 $7f
    dw   `00333333                                     ;; 04:5d6d $3f $3f

    dw   `00000000                                     ;; 04:5d6f $00 $00
    dw   `00000000                                     ;; 04:5d71 $00 $00
    dw   `00000000                                     ;; 04:5d73 $00 $00
    dw   `00000000                                     ;; 04:5d75 $00 $00
    dw   `00000000                                     ;; 04:5d77 $00 $00
    dw   `00000000                                     ;; 04:5d79 $00 $00
    dw   `00000000                                     ;; 04:5d7b $00 $00
    dw   `00000000                                     ;; 04:5d7d $00 $00

    dw   `11330000                                     ;; 04:5d7f $f0 $30
    dw   `33233000                                     ;; 04:5d81 $d8 $f8
    dw   `13331300                                     ;; 04:5d83 $fc $74
    dw   `33333300                                     ;; 04:5d85 $fc $fc
    dw   `33333300                                     ;; 04:5d87 $fc $fc
    dw   `11132300                                     ;; 04:5d89 $f4 $1c
    dw   `11132300                                     ;; 04:5d8b $f4 $1c
    dw   `33333000                                     ;; 04:5d8d $f8 $f8

    dw   `00000000                                     ;; 04:5d8f $00 $00
    dw   `00000000                                     ;; 04:5d91 $00 $00
    dw   `00000000                                     ;; 04:5d93 $00 $00
    dw   `00000000                                     ;; 04:5d95 $00 $00
    dw   `00000000                                     ;; 04:5d97 $00 $00
    dw   `00000000                                     ;; 04:5d99 $00 $00
    dw   `00000000                                     ;; 04:5d9b $00 $00
    dw   `00000000                                     ;; 04:5d9d $00 $00

    dw   `00000000                                     ;; 04:5d9f $00 $00
    dw   `00000000                                     ;; 04:5da1 $00 $00
    dw   `00000000                                     ;; 04:5da3 $00 $00
    dw   `00000000                                     ;; 04:5da5 $00 $00
    dw   `00000000                                     ;; 04:5da7 $00 $00
    dw   `00000000                                     ;; 04:5da9 $00 $00
    dw   `00000000                                     ;; 04:5dab $00 $00
    dw   `00000000                                     ;; 04:5dad $00 $00

    dw   `00000003                                     ;; 04:5daf $01 $01
    dw   `00000003                                     ;; 04:5db1 $01 $01
    dw   `00000033                                     ;; 04:5db3 $03 $03
    dw   `00000322                                     ;; 04:5db5 $04 $07
    dw   `00003222                                     ;; 04:5db7 $08 $0f
    dw   `00032222                                     ;; 04:5db9 $10 $1f
    dw   `00032222                                     ;; 04:5dbb $10 $1f
    dw   `00003222                                     ;; 04:5dbd $08 $0f

    dw   `00000000                                     ;; 04:5dbf $00 $00
    dw   `00000000                                     ;; 04:5dc1 $00 $00
    dw   `00000000                                     ;; 04:5dc3 $00 $00
    dw   `00000000                                     ;; 04:5dc5 $00 $00
    dw   `00000000                                     ;; 04:5dc7 $00 $00
    dw   `00000000                                     ;; 04:5dc9 $00 $00
    dw   `00000000                                     ;; 04:5dcb $00 $00
    dw   `00000000                                     ;; 04:5dcd $00 $00

    dw   `33000000                                     ;; 04:5dcf $c0 $c0
    dw   `30000000                                     ;; 04:5dd1 $80 $80
    dw   `33000000                                     ;; 04:5dd3 $c0 $c0
    dw   `22300000                                     ;; 04:5dd5 $20 $e0
    dw   `22230000                                     ;; 04:5dd7 $10 $f0
    dw   `22223000                                     ;; 04:5dd9 $08 $f8
    dw   `22223000                                     ;; 04:5ddb $08 $f8
    dw   `22230000                                     ;; 04:5ddd $10 $f0

    dw   `00003333                                     ;; 04:5ddf $0f $0f
    dw   `00033222                                     ;; 04:5de1 $18 $1f
    dw   `00313333                                     ;; 04:5de3 $3f $2f
    dw   `00333222                                     ;; 04:5de5 $38 $3f
    dw   `00032222                                     ;; 04:5de7 $10 $1f
    dw   `00323333                                     ;; 04:5de9 $2f $3f
    dw   `00323111                                     ;; 04:5deb $2f $38
    dw   `00033333                                     ;; 04:5ded $1f $1f

    dw   `00000000                                     ;; 04:5def $00 $00
    dw   `00000000                                     ;; 04:5df1 $00 $00
    dw   `00000000                                     ;; 04:5df3 $00 $00
    dw   `00000000                                     ;; 04:5df5 $00 $00
    dw   `00000000                                     ;; 04:5df7 $00 $00
    dw   `00000000                                     ;; 04:5df9 $00 $00
    dw   `00000000                                     ;; 04:5dfb $00 $00
    dw   `00000000                                     ;; 04:5dfd $00 $00

    dw   `33330000                                     ;; 04:5dff $f0 $f0
    dw   `22333000                                     ;; 04:5e01 $38 $f8
    dw   `33333000                                     ;; 04:5e03 $f8 $f8
    dw   `22311300                                     ;; 04:5e05 $3c $e4
    dw   `22311300                                     ;; 04:5e07 $3c $e4
    dw   `22233300                                     ;; 04:5e09 $1c $fc
    dw   `32222300                                     ;; 04:5e0b $84 $fc
    dw   `33333000                                     ;; 04:5e0d $f8 $f8

    dw   `00000000                                     ;; 04:5e0f $00 $00
    dw   `00000000                                     ;; 04:5e11 $00 $00
    dw   `00000000                                     ;; 04:5e13 $00 $00
    dw   `00000000                                     ;; 04:5e15 $00 $00
    dw   `00000000                                     ;; 04:5e17 $00 $00
    dw   `00000000                                     ;; 04:5e19 $00 $00
    dw   `00000000                                     ;; 04:5e1b $00 $00
    dw   `00000000                                     ;; 04:5e1d $00 $00

    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e1f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e27 ........
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:5e2f ........
    db   $1e, $1f, $1f, $1b, $0f, $0a, $0f, $0a        ;; 04:5e37 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e3f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e47 ........
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:5e4f ........
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:5e57 ........
    db   $0f, $08, $07, $07, $07, $05, $07, $07        ;; 04:5e5f ........
    db   $07, $07, $0f, $0f, $0f, $09, $0f, $0f        ;; 04:5e67 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e6f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e77 ........
    db   $f0, $f0, $08, $f8, $f8, $f8, $3c, $e4        ;; 04:5e7f ........
    db   $3c, $e4, $9c, $fc, $c2, $fe, $fe, $fe        ;; 04:5e87 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e8f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e97 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5e9f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5ea7 ........
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:5eaf ........
    db   $1e, $1f, $1f, $1b, $0f, $0a, $0f, $0a        ;; 04:5eb7 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5ebf ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5ec7 ........
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:5ecf ........
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:5ed7 ........
    db   $0f, $08, $07, $07, $0f, $0f, $1e, $13        ;; 04:5edf ........
    db   $1e, $13, $0c, $0f, $04, $07, $07, $07        ;; 04:5ee7 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5eef ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5ef7 ........
    db   $f0, $f0, $10, $f0, $f0, $f0, $08, $f8        ;; 04:5eff ........
    db   $08, $f8, $04, $fc, $02, $fe, $fe, $fe        ;; 04:5f07 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5f0f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5f17 ........
    dw   `00000000                                     ;; 04:5f1f $00 $00
    dw   `00000000                                     ;; 04:5f21 $00 $00
    dw   `00000000                                     ;; 04:5f23 $00 $00
    dw   `00000000                                     ;; 04:5f25 $00 $00
    dw   `00000000                                     ;; 04:5f27 $00 $00
    dw   `00000000                                     ;; 04:5f29 $00 $00
    dw   `00000000                                     ;; 04:5f2b $00 $00
    dw   `00000000                                     ;; 04:5f2d $00 $00

    dw   `00003333                                     ;; 04:5f2f $0f $0f
    dw   `00000033                                     ;; 04:5f31 $03 $03
    dw   `00000322                                     ;; 04:5f33 $04 $07
    dw   `00003323                                     ;; 04:5f35 $0d $0f
    dw   `00032331                                     ;; 04:5f37 $17 $1e
    dw   `00032311                                     ;; 04:5f39 $17 $1c
    dw   `00003132                                     ;; 04:5f3b $0e $0b
    dw   `00033311                                     ;; 04:5f3d $1f $1c

    dw   `00000000                                     ;; 04:5f3f $00 $00
    dw   `00000000                                     ;; 04:5f41 $00 $00
    dw   `00000000                                     ;; 04:5f43 $00 $00
    dw   `00000000                                     ;; 04:5f45 $00 $00
    dw   `00000000                                     ;; 04:5f47 $00 $00
    dw   `00000000                                     ;; 04:5f49 $00 $00
    dw   `00000000                                     ;; 04:5f4b $00 $00
    dw   `00000000                                     ;; 04:5f4d $00 $00

    dw   `00000000                                     ;; 04:5f4f $00 $00
    dw   `33000000                                     ;; 04:5f51 $c0 $c0
    dw   `22300000                                     ;; 04:5f53 $20 $e0
    dw   `32330000                                     ;; 04:5f55 $b0 $f0
    dw   `13323000                                     ;; 04:5f57 $e8 $78
    dw   `11323000                                     ;; 04:5f59 $e8 $38
    dw   `13130000                                     ;; 04:5f5b $f0 $50
    dw   `11333000                                     ;; 04:5f5d $f8 $38

    dw   `00322233                                     ;; 04:5f5f $23 $3f
    dw   `03333331                                     ;; 04:5f61 $7f $7e
    dw   `31132332                                     ;; 04:5f63 $f6 $9f
    dw   `31122311                                     ;; 04:5f65 $e7 $9c
    dw   `03323333                                     ;; 04:5f67 $6f $7f
    dw   `00321133                                     ;; 04:5f69 $2f $33
    dw   `00332213                                     ;; 04:5f6b $33 $3d
    dw   `00003330                                     ;; 04:5f6d $0e $0e

    dw   `00000000                                     ;; 04:5f6f $00 $00
    dw   `00000000                                     ;; 04:5f71 $00 $00
    dw   `00000000                                     ;; 04:5f73 $00 $00
    dw   `00000000                                     ;; 04:5f75 $00 $00
    dw   `00000000                                     ;; 04:5f77 $00 $00
    dw   `00000000                                     ;; 04:5f79 $00 $00
    dw   `00000000                                     ;; 04:5f7b $00 $00
    dw   `00000000                                     ;; 04:5f7d $00 $00

    dw   `33222300                                     ;; 04:5f7f $c4 $fc
    dw   `13333330                                     ;; 04:5f81 $fe $7e
    dw   `23323113                                     ;; 04:5f83 $6f $f9
    dw   `11322113                                     ;; 04:5f85 $e7 $39
    dw   `33332330                                     ;; 04:5f87 $f6 $fe
    dw   `33112300                                     ;; 04:5f89 $f4 $cc
    dw   `31223300                                     ;; 04:5f8b $cc $bc
    dw   `03330000                                     ;; 04:5f8d $70 $70

    dw   `00000000                                     ;; 04:5f8f $00 $00
    dw   `00000000                                     ;; 04:5f91 $00 $00
    dw   `00000000                                     ;; 04:5f93 $00 $00
    dw   `00000000                                     ;; 04:5f95 $00 $00
    dw   `00000000                                     ;; 04:5f97 $00 $00
    dw   `00000000                                     ;; 04:5f99 $00 $00
    dw   `00000000                                     ;; 04:5f9b $00 $00
    dw   `00000000                                     ;; 04:5f9d $00 $00

    dw   `00000000                                     ;; 04:5f9f $00 $00
    dw   `00000000                                     ;; 04:5fa1 $00 $00
    dw   `00000000                                     ;; 04:5fa3 $00 $00
    dw   `00000000                                     ;; 04:5fa5 $00 $00
    dw   `00000000                                     ;; 04:5fa7 $00 $00
    dw   `00000000                                     ;; 04:5fa9 $00 $00
    dw   `00000000                                     ;; 04:5fab $00 $00
    dw   `00000000                                     ;; 04:5fad $00 $00

    dw   `00000000                                     ;; 04:5faf $00 $00
    dw   `00000000                                     ;; 04:5fb1 $00 $00
    dw   `00000000                                     ;; 04:5fb3 $00 $00
    dw   `00000000                                     ;; 04:5fb5 $00 $00
    dw   `00000000                                     ;; 04:5fb7 $00 $00
    dw   `00000000                                     ;; 04:5fb9 $00 $00
    dw   `33000030                                     ;; 04:5fbb $c2 $c2
    dw   `32333323                                     ;; 04:5fbd $bd $ff

    dw   `00000000                                     ;; 04:5fbf $00 $00
    dw   `00000000                                     ;; 04:5fc1 $00 $00
    dw   `00000000                                     ;; 04:5fc3 $00 $00
    dw   `00000000                                     ;; 04:5fc5 $00 $00
    dw   `00000000                                     ;; 04:5fc7 $00 $00
    dw   `00000000                                     ;; 04:5fc9 $00 $00
    dw   `00000000                                     ;; 04:5fcb $00 $00
    dw   `00000000                                     ;; 04:5fcd $00 $00

    dw   `00000000                                     ;; 04:5fcf $00 $00
    dw   `00000000                                     ;; 04:5fd1 $00 $00
    dw   `00000000                                     ;; 04:5fd3 $00 $00
    dw   `00000000                                     ;; 04:5fd5 $00 $00
    dw   `00000000                                     ;; 04:5fd7 $00 $00
    dw   `00033003                                     ;; 04:5fd9 $19 $19
    dw   `33322303                                     ;; 04:5fdb $e5 $fd
    dw   `13133333                                     ;; 04:5fdd $ff $5f

    db   $bf, $c5, $7f, $47, $fd, $bf, $fc, $9f        ;; 04:5fdf ........
    db   $b6, $df, $7e, $73, $9f, $f3, $fc, $fc        ;; 04:5fe7 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5fef ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:5ff7 ........
    db   $fb, $0f, $f3, $5f, $eb, $5f, $f2, $be        ;; 04:5fff ........
    db   $e2, $fe, $c4, $fc, $b8, $b8, $00, $00        ;; 04:6007 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:600f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6017 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:601f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6027 ........
    db   $0f, $0f, $03, $03, $04, $07, $0d, $0f        ;; 04:602f ........
    db   $17, $1e, $17, $1c, $1e, $1b, $0b, $0c        ;; 04:6037 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:603f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6047 ........
    db   $00, $00, $c0, $c0, $20, $e0, $b0, $f0        ;; 04:604f ........
    db   $e8, $78, $e8, $38, $f8, $58, $d0, $30        ;; 04:6057 ........
    db   $0f, $0f, $17, $18, $67, $78, $6f, $50        ;; 04:605f ........
    db   $6d, $5e, $7e, $53, $73, $7d, $1e, $1e        ;; 04:6067 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:606f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6077 ........
    db   $f0, $f0, $e8, $18, $e6, $1e, $76, $8a        ;; 04:607f ........
    db   $36, $fa, $7e, $ca, $ce, $be, $78, $78        ;; 04:6087 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:608f ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6097 ........

data_04_609f:
    db   $4a, $29, $ff, $7f, $b5, $56, $00, $00        ;; 04:609f ........

call_04_60a7:
    ldh  A, [hIsGBC]                                   ;; 04:60a7 $f0 $fe
    and  A, A                                          ;; 04:60a9 $a7
    jr   Z, .jr_04_60f5                                ;; 04:60aa $28 $49
    ld   HL, data_04_5d1f                              ;; 04:60ac $21 $1f $5d
    ld   A, $00                                        ;; 04:60af $3e $00
    ldh  [rVBK], A                                     ;; 04:60b1 $e0 $4f
    ld   DE, $8000                                     ;; 04:60b3 $11 $00 $80
    ld   BC, $100                                      ;; 04:60b6 $01 $00 $01
    call memcopy                                       ;; 04:60b9 $cd $4e $04
    ld   A, $01                                        ;; 04:60bc $3e $01
    ldh  [rVBK], A                                     ;; 04:60be $e0 $4f
    ld   DE, $8000                                     ;; 04:60c0 $11 $00 $80
    ld   BC, $100                                      ;; 04:60c3 $01 $00 $01
    call memcopy                                       ;; 04:60c6 $cd $4e $04
    ld   A, $00                                        ;; 04:60c9 $3e $00
    ldh  [rVBK], A                                     ;; 04:60cb $e0 $4f
    ld   DE, $87c0                                     ;; 04:60cd $11 $c0 $87
    ld   B, $c0                                        ;; 04:60d0 $06 $c0
    call memcopySmall                                  ;; 04:60d2 $cd $91 $05
    ld   A, $01                                        ;; 04:60d5 $3e $01
    ldh  [rVBK], A                                     ;; 04:60d7 $e0 $4f
    ld   DE, $87c0                                     ;; 04:60d9 $11 $c0 $87
    ld   B, $c0                                        ;; 04:60dc $06 $c0
    call memcopySmall                                  ;; 04:60de $cd $91 $05
    ld   A, $00                                        ;; 04:60e1 $3e $00
    ldh  [rVBK], A                                     ;; 04:60e3 $e0 $4f
    ld   HL, data_04_609f                              ;; 04:60e5 $21 $9f $60
    ld   DE, wCE9D                                     ;; 04:60e8 $11 $9d $ce
    ld   B, $08                                        ;; 04:60eb $06 $08
    call memcopySmall                                  ;; 04:60ed $cd $91 $05
    ld   HL, data_04_4ec0                              ;; 04:60f0 $21 $c0 $4e
    jr   .jr_04_610f                                   ;; 04:60f3 $18 $1a
.jr_04_60f5:
    ld   HL, data_04_5b5f                              ;; 04:60f5 $21 $5f $5b
    ld   DE, $8000                                     ;; 04:60f8 $11 $00 $80
    ld   BC, $100                                      ;; 04:60fb $01 $00 $01
    call memcopy                                       ;; 04:60fe $cd $4e $04
    ld   HL, data_04_5c5f                              ;; 04:6101 $21 $5f $5c
    ld   DE, $87c0                                     ;; 04:6104 $11 $c0 $87
    ld   B, $c0                                        ;; 04:6107 $06 $c0
    call memcopySmall                                  ;; 04:6109 $cd $91 $05
    ld   HL, data_04_4ef4                              ;; 04:610c $21 $f4 $4e
.jr_04_610f:
    ld   A, H                                          ;; 04:610f $7c
    ld   [wC46D], A                                    ;; 04:6110 $ea $6d $c4
    ld   A, L                                          ;; 04:6113 $7d
    ld   [wC46E], A                                    ;; 04:6114 $ea $6e $c4
    ld   HL, data_04_5acf                              ;; 04:6117 $21 $cf $5a
    ld   DE, $8880                                     ;; 04:611a $11 $80 $88
    ld   BC, $80                                       ;; 04:611d $01 $80 $00
    call memcopy                                       ;; 04:6120 $cd $4e $04
    ld   HL, data_04_5b4f                              ;; 04:6123 $21 $4f $5b
    ld   DE, wCE65                                     ;; 04:6126 $11 $65 $ce
    ld   B, $10                                        ;; 04:6129 $06 $10
    call memcopySmall                                  ;; 04:612b $cd $91 $05
    ld   HL, data_04_5a0f                              ;; 04:612e $21 $0f $5a
    ld   DE, $8c20                                     ;; 04:6131 $11 $20 $8c
    ld   B, $c0                                        ;; 04:6134 $06 $c0
    call memcopySmall                                  ;; 04:6136 $cd $91 $05
    ret                                                ;; 04:6139 $c9

call_04_613a:
    ld   HL, wPlayerX                                  ;; 04:613a $21 $44 $c1
    ld   A, [HL+]                                      ;; 04:613d $2a
    ld   L, [HL]                                       ;; 04:613e $6e
    ld   H, A                                          ;; 04:613f $67
    ld   DE, $49                                       ;; 04:6140 $11 $49 $00
    call call_00_05ea                                  ;; 04:6143 $cd $ea $05
    jr   C, .jr_04_6157                                ;; 04:6146 $38 $0f
    ld   B, $57                                        ;; 04:6148 $06 $57
    call call_00_2217                                  ;; 04:614a $cd $17 $22
    call call_00_05ea                                  ;; 04:614d $cd $ea $05
    jr   NC, .jr_04_615f                               ;; 04:6150 $30 $0d
    call call_00_21f1                                  ;; 04:6152 $cd $f1 $21
    jr   .jr_04_6171                                   ;; 04:6155 $18 $1a
.jr_04_6157:
    ld   HL, wCEB2                                     ;; 04:6157 $21 $b2 $ce
    xor  A, A                                          ;; 04:615a $af
    ld   [HL+], A                                      ;; 04:615b $22
    ld   [HL], A                                       ;; 04:615c $77
    jr   .jr_04_6171                                   ;; 04:615d $18 $12
.jr_04_615f:
    ld   HL, wRoomWidthPixels.low                      ;; 04:615f $21 $ac $d5
    ld   A, [HL-]                                      ;; 04:6162 $3a
    sub  A, $a0                                        ;; 04:6163 $d6 $a0
    ld   [wCEB3], A                                    ;; 04:6165 $ea $b3 $ce
    ld   [wSCX], A                                     ;; 04:6168 $ea $88 $d5
    ld   A, [HL]                                       ;; 04:616b $7e
    sbc  A, $00                                        ;; 04:616c $de $00
    ld   [wCEB2], A                                    ;; 04:616e $ea $b2 $ce
.jr_04_6171:
    call call_00_21d5                                  ;; 04:6171 $cd $d5 $21
    ld   HL, wPlayerY                                  ;; 04:6174 $21 $46 $c1
    ld   A, [HL+]                                      ;; 04:6177 $2a
    ld   L, [HL]                                       ;; 04:6178 $6e
    ld   H, A                                          ;; 04:6179 $67
    ld   DE, $41                                       ;; 04:617a $11 $41 $00
    call call_00_05ea                                  ;; 04:617d $cd $ea $05
    jp   C, .jp_04_6193                                ;; 04:6180 $da $93 $61
    ld   B, $4f                                        ;; 04:6183 $06 $4f
    call call_00_2223                                  ;; 04:6185 $cd $23 $22
    call call_00_05ea                                  ;; 04:6188 $cd $ea $05
    jp   NC, .jp_04_619b                               ;; 04:618b $d2 $9b $61
    call call_00_2204                                  ;; 04:618e $cd $04 $22
    jr   .jr_04_61ad                                   ;; 04:6191 $18 $1a
.jp_04_6193:
    ld   HL, wCEB4                                     ;; 04:6193 $21 $b4 $ce
    xor  A, A                                          ;; 04:6196 $af
    ld   [HL+], A                                      ;; 04:6197 $22
    ld   [HL], A                                       ;; 04:6198 $77
    jr   .jr_04_61ad                                   ;; 04:6199 $18 $12
.jp_04_619b:
    ld   HL, wRoomHeightPixels.low                     ;; 04:619b $21 $ae $d5
    ld   A, [HL-]                                      ;; 04:619e $3a
    sub  A, $90                                        ;; 04:619f $d6 $90
    ld   [wCEB5], A                                    ;; 04:61a1 $ea $b5 $ce
    ld   [wSCY], A                                     ;; 04:61a4 $ea $87 $d5
    ld   A, [HL]                                       ;; 04:61a7 $7e
    sbc  A, $00                                        ;; 04:61a8 $de $00
    ld   [wCEB4], A                                    ;; 04:61aa $ea $b4 $ce
.jr_04_61ad:
    call call_00_21e3                                  ;; 04:61ad $cd $e3 $21
    ret                                                ;; 04:61b0 $c9

call_04_61b1:
    xor  A, A                                          ;; 04:61b1 $af
    ld   [wC518], A                                    ;; 04:61b2 $ea $18 $c5
    ld   A, $01                                        ;; 04:61b5 $3e $01
    ld   [wC519], A                                    ;; 04:61b7 $ea $19 $c5
    ld   A, $0f                                        ;; 04:61ba $3e $0f
    ld   [wD5DC], A                                    ;; 04:61bc $ea $dc $d5
    ld   [wD5DD], A                                    ;; 04:61bf $ea $dd $d5
    xor  A, A                                          ;; 04:61c2 $af
    ld   [wC462], A                                    ;; 04:61c3 $ea $62 $c4
    ld   [wC45B], A                                    ;; 04:61c6 $ea $5b $c4
    ld   [wD5D7], A                                    ;; 04:61c9 $ea $d7 $d5
    ld   [wD5D6], A                                    ;; 04:61cc $ea $d6 $d5
    ld   A, $01                                        ;; 04:61cf $3e $01
    ld   [wC463], A                                    ;; 04:61d1 $ea $63 $c4
    ld   A, [wC148]                                    ;; 04:61d4 $fa $48 $c1
    ld   [wC460], A                                    ;; 04:61d7 $ea $60 $c4
    dec  A                                             ;; 04:61da $3d
    ld   [wC461], A                                    ;; 04:61db $ea $61 $c4
    ld   HL, wC090                                     ;; 04:61de $21 $90 $c0
    ld   A, H                                          ;; 04:61e1 $7c
    ld   [wC469], A                                    ;; 04:61e2 $ea $69 $c4
    ld   A, L                                          ;; 04:61e5 $7d
    ld   [wC46A], A                                    ;; 04:61e6 $ea $6a $c4
    ret                                                ;; 04:61e9 $c9

call_04_61ea:
    xor  A, A                                          ;; 04:61ea $af
    ld   [wD5C4], A                                    ;; 04:61eb $ea $c4 $d5
    ld   A, $02                                        ;; 04:61ee $3e $02
    ld   [wC53B], A                                    ;; 04:61f0 $ea $3b $c5
    ld   A, $10                                        ;; 04:61f3 $3e $10
    ld   [wC53C], A                                    ;; 04:61f5 $ea $3c $c5
    xor  A, A                                          ;; 04:61f8 $af
    ld   [wC557], A                                    ;; 04:61f9 $ea $57 $c5
    ld   HL, wC53F                                     ;; 04:61fc $21 $3f $c5
    ld   B, $18                                        ;; 04:61ff $06 $18
    ld   A, $ff                                        ;; 04:6201 $3e $ff
    call memsetSmall                                   ;; 04:6203 $cd $98 $05
    ld   A, [wD5D8]                                    ;; 04:6206 $fa $d8 $d5
    and  A, A                                          ;; 04:6209 $a7
    ret  Z                                             ;; 04:620a $c8
    ld   HL, wD5D8                                     ;; 04:620b $21 $d8 $d5
    ld   B, [HL]                                       ;; 04:620e $46
    ld   C, $00                                        ;; 04:620f $0e $00
    ld   [HL], C                                       ;; 04:6211 $71
.jr_04_6212:
    push BC                                            ;; 04:6212 $c5
    ld   HL, $323                                      ;; 04:6213 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 04:6216 $cd $7a $06
    ld   A, [HL]                                       ;; 04:6219 $7e
    cp   A, $40                                        ;; 04:621a $fe $40
    jr   Z, .jr_04_6262                                ;; 04:621c $28 $44
    xor  A, A                                          ;; 04:621e $af
    ld   [HL+], A                                      ;; 04:621f $22
    inc  HL                                            ;; 04:6220 $23
    inc  HL                                            ;; 04:6221 $23
    ld   A, [HL+]                                      ;; 04:6222 $2a
    ld   [wD5C0], A                                    ;; 04:6223 $ea $c0 $d5
    ld   DE, $03                                       ;; 04:6226 $11 $03 $00
    add  HL, DE                                        ;; 04:6229 $19
    ld   A, [HL+]                                      ;; 04:622a $2a
    ld   [wC560], A                                    ;; 04:622b $ea $60 $c5
    ld   A, [HL+]                                      ;; 04:622e $2a
    ld   [wC561], A                                    ;; 04:622f $ea $61 $c5
    ld   A, [HL+]                                      ;; 04:6232 $2a
    ld   [wD5BC], A                                    ;; 04:6233 $ea $bc $d5
    ld   A, [HL+]                                      ;; 04:6236 $2a
    ld   [wD5BD], A                                    ;; 04:6237 $ea $bd $d5
    ld   A, [HL+]                                      ;; 04:623a $2a
    ld   [wD5BE], A                                    ;; 04:623b $ea $be $d5
    ld   A, [HL+]                                      ;; 04:623e $2a
    ld   [wD5BF], A                                    ;; 04:623f $ea $bf $d5
    inc  HL                                            ;; 04:6242 $23
    ld   A, [HL+]                                      ;; 04:6243 $2a
    ld   [wC562], A                                    ;; 04:6244 $ea $62 $c5
    ld   A, [HL+]                                      ;; 04:6247 $2a
    ld   [wC563], A                                    ;; 04:6248 $ea $63 $c5
    ld   DE, $03                                       ;; 04:624b $11 $03 $00
    add  HL, DE                                        ;; 04:624e $19
    ld   A, [HL+]                                      ;; 04:624f $2a
    ld   [wC565], A                                    ;; 04:6250 $ea $65 $c5
    ld   DE, $03                                       ;; 04:6253 $11 $03 $00
    add  HL, DE                                        ;; 04:6256 $19
    ld   A, [HL+]                                      ;; 04:6257 $2a
    ld   [wC564], A                                    ;; 04:6258 $ea $64 $c5
    ld   A, [HL+]                                      ;; 04:625b $2a
    ld   [wC55F], A                                    ;; 04:625c $ea $5f $c5
    call call_00_09eb                                  ;; 04:625f $cd $eb $09
.jr_04_6262:
    pop  BC                                            ;; 04:6262 $c1
    inc  C                                             ;; 04:6263 $0c
    dec  B                                             ;; 04:6264 $05
    jr   NZ, .jr_04_6212                               ;; 04:6265 $20 $ab
    ret                                                ;; 04:6267 $c9

call_04_6268:
    ld   A, $01                                        ;; 04:6268 $3e $01
    ld   [wMainGameState], A                           ;; 04:626a $ea $86 $d5
    ld   [wD58C], A                                    ;; 04:626d $ea $8c $d5
    xor  A, A                                          ;; 04:6270 $af
    ld   [wD58B], A                                    ;; 04:6271 $ea $8b $d5
    ld   A, [wD318]                                    ;; 04:6274 $fa $18 $d3
    and  A, A                                          ;; 04:6277 $a7
    jr   Z, .jr_04_6282                                ;; 04:6278 $28 $08
    xor  A, A                                          ;; 04:627a $af
    ld   [wD318], A                                    ;; 04:627b $ea $18 $d3
    ld   A, $05                                        ;; 04:627e $3e $05
    jr   .jr_04_6284                                   ;; 04:6280 $18 $02
.jr_04_6282:
    ld   A, $01                                        ;; 04:6282 $3e $01
.jr_04_6284:
    ld   [wD58D], A                                    ;; 04:6284 $ea $8d $d5
    ld   A, $0f                                        ;; 04:6287 $3e $0f
    ld   [wD5D2], A                                    ;; 04:6289 $ea $d2 $d5
    ret                                                ;; 04:628c $c9
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:628d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6295 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:629d ????????
    db   $00, $00, $00, $00, $0a, $0a, $05, $05        ;; 04:62a5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:62ad ????????
    db   $00, $00, $02, $02, $05, $05, $02, $02        ;; 04:62b5 ????????
    db   $f0, $f0, $e1, $e1, $c3, $c3, $87, $87        ;; 04:62bd ????????
    db   $0f, $0f, $1e, $1e, $3c, $3c, $78, $78        ;; 04:62c5 ????????
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:62cd ????????
    db   $1e, $1f, $1f, $1b, $0f, $0a, $0f, $0a        ;; 04:62d5 ????????
    db   $0f, $08, $07, $07, $05, $05, $0f, $0f        ;; 04:62dd ????????
    db   $1b, $17, $13, $1f, $0f, $0c, $0f, $0f        ;; 04:62e5 ????????
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:62ed ????????
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:62f5 ????????
    db   $f0, $f0, $08, $f8, $fc, $fc, $1a, $fe        ;; 04:62fd ????????
    db   $ff, $e7, $ff, $e7, $9a, $fe, $fe, $fe        ;; 04:6305 ????????
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:630d ????????
    db   $1e, $1f, $1f, $1b, $6f, $6a, $df, $ba        ;; 04:6315 ????????
    db   $9f, $f8, $77, $77, $3f, $3f, $1e, $13        ;; 04:631d ????????
    db   $1e, $13, $0f, $0f, $09, $0f, $0f, $0f        ;; 04:6325 ????????
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:632d ????????
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:6335 ????????
    db   $f0, $f0, $10, $f0, $f0, $f0, $08, $f8        ;; 04:633d ????????
    db   $08, $f8, $04, $fc, $82, $fe, $fe, $fe        ;; 04:6345 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:634d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6355 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:635d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6365 ????????
    db   $03, $03, $01, $01, $06, $07, $08, $0f        ;; 04:636d ????????
    db   $13, $1f, $17, $1c, $0f, $0c, $0b, $0c        ;; 04:6375 ????????
    db   $0f, $0c, $17, $1f, $17, $1c, $0b, $0f        ;; 04:637d ????????
    db   $13, $1f, $17, $1f, $3f, $23, $3f, $3f        ;; 04:6385 ????????
    db   $06, $06, $8f, $89, $ef, $e9, $19, $ff        ;; 04:638d ????????
    db   $ae, $fe, $d6, $fe, $ee, $be, $fe, $9e        ;; 04:6395 ????????
    db   $de, $3e, $cf, $f9, $bf, $f9, $ce, $fe        ;; 04:639d ????????
    db   $c4, $fc, $e2, $fe, $f1, $9f, $fe, $fe        ;; 04:63a5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:63ad ????????
    db   $00, $00, $00, $01, $01, $02, $02, $05        ;; 04:63b5 ????????
    db   $07, $08, $0f, $10, $1c, $23, $3b, $47        ;; 04:63bd ????????
    db   $37, $4f, $08, $38, $00, $00, $00, $00        ;; 04:63c5 ????????
    db   $00, $00, $01, $01, $03, $0f, $04, $3f        ;; 04:63cd ????????
    db   $29, $de, $ce, $31, $3b, $c6, $e7, $1a        ;; 04:63d5 ????????
    db   $cf, $29, $06, $c7, $3c, $3f, $ff, $cf        ;; 04:63dd ????????
    db   $fe, $cf, $37, $35, $0f, $08, $0f, $0f        ;; 04:63e5 ????????
    db   $c0, $c0, $80, $8c, $c0, $f8, $70, $90        ;; 04:63ed ????????
    db   $88, $78, $48, $f8, $e8, $f8, $f0, $70        ;; 04:63f5 ????????
    db   $f0, $f0, $1e, $fe, $f2, $fe, $0f, $ff        ;; 04:63fd ????????
    db   $01, $ff, $c2, $fe, $64, $fc, $d8, $d8        ;; 04:6405 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:640d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6415 ????????
    db   $00, $00, $00, $00, $38, $38, $77, $4f        ;; 04:641d ????????
    db   $77, $4f, $38, $38, $00, $00, $00, $00        ;; 04:6425 ????????
    db   $01, $01, $01, $01, $07, $07, $0c, $0f        ;; 04:642d ????????
    db   $1e, $1f, $1f, $1b, $0f, $0a, $0f, $0a        ;; 04:6435 ????????
    db   $0f, $09, $06, $07, $3c, $3f, $ff, $cf        ;; 04:643d ????????
    db   $fe, $cf, $37, $35, $0f, $09, $0f, $0f        ;; 04:6445 ????????
    db   $c0, $c0, $80, $80, $e0, $e0, $10, $f0        ;; 04:644d ????????
    db   $88, $f8, $48, $f8, $e8, $f8, $f0, $70        ;; 04:6455 ????????
    db   $f0, $f0, $08, $f8, $f8, $f8, $04, $fc        ;; 04:645d ????????
    db   $12, $fe, $0d, $ff, $0f, $ff, $f0, $f0        ;; 04:6465 ????????
    db   $06, $07, $0c, $0f, $1e, $1f, $1f, $1b        ;; 04:646d ????????
    db   $0f, $08, $0f, $0b, $0f, $08, $07, $07        ;; 04:6475 ????????
    db   $07, $04, $0b, $0f, $0b, $0f, $17, $1f        ;; 04:647d ????????
    db   $17, $1f, $17, $1f, $0b, $0a, $01, $01        ;; 04:6485 ????????
    db   $78, $f8, $18, $f8, $bc, $e4, $7c, $e4        ;; 04:648d ????????
    db   $f8, $d8, $fc, $44, $d4, $ec, $48, $f8        ;; 04:6495 ????????
    db   $f8, $f8, $08, $f8, $24, $fc, $94, $fc        ;; 04:649d ????????
    db   $ca, $fe, $ea, $3e, $bc, $7c, $c0, $c0        ;; 04:64a5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:64ad ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:64b5 ????????
    db   $00, $1e, $0c, $33, $1e, $21, $1e, $21        ;; 04:64bd ????????
    db   $8c, $b3, $40, $5e, $6c, $6c, $ec, $ec        ;; 04:64c5 ????????
    db   $06, $07, $0c, $0f, $1e, $1f, $1f, $1b        ;; 04:64cd ????????
    db   $0f, $08, $0f, $0b, $0f, $08, $07, $07        ;; 04:64d5 ????????
    db   $07, $04, $0b, $0f, $0b, $0f, $0b, $0f        ;; 04:64dd ????????
    db   $05, $07, $07, $07, $03, $02, $01, $01        ;; 04:64e5 ????????
    db   $78, $f8, $18, $f8, $bc, $e4, $7c, $e4        ;; 04:64ed ????????
    db   $f8, $d8, $fc, $44, $d4, $ec, $48, $f8        ;; 04:64f5 ????????
    db   $f8, $f8, $04, $fc, $93, $ff, $c9, $ff        ;; 04:64fd ????????
    db   $e7, $ff, $f2, $3e, $ac, $6c, $c0, $c0        ;; 04:6505 ????????
    db   $00, $00, $03, $03, $00, $00, $01, $01        ;; 04:650d ????????
    db   $02, $03, $05, $07, $05, $07, $03, $03        ;; 04:6515 ????????
    db   $01, $01, $33, $33, $6f, $5e, $4f, $7e        ;; 04:651d ????????
    db   $3f, $39, $06, $05, $03, $03, $00, $00        ;; 04:6525 ????????
    db   $00, $00, $c0, $c0, $f8, $f8, $04, $fc        ;; 04:652d ????????
    db   $92, $fe, $ea, $fe, $f6, $1e, $fe, $6e        ;; 04:6535 ????????
    db   $fe, $0e, $f1, $9f, $ef, $7f, $c5, $7f        ;; 04:653d ????????
    db   $e9, $ff, $9a, $fe, $32, $fe, $fc, $fc        ;; 04:6545 ????????
    db   $00, $00, $00, $00, $3c, $3c, $0f, $0f        ;; 04:654d ????????
    db   $30, $3f, $49, $7f, $5c, $7f, $5e, $73        ;; 04:6555 ????????
    db   $3e, $37, $1f, $11, $1d, $1b, $26, $3f        ;; 04:655d ????????
    db   $6f, $7f, $df, $b3, $6f, $59, $3f, $3f        ;; 04:6565 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 04:656d ????????
    db   $40, $c0, $20, $e0, $a0, $e0, $a0, $e0        ;; 04:6575 ????????
    db   $e0, $e0, $f0, $f0, $10, $f0, $70, $f0        ;; 04:657d ????????
    db   $88, $f8, $e4, $3c, $e2, $3e, $fc, $fc        ;; 04:6585 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:658d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6595 ????????
    db   $00, $00, $00, $00, $00, $00, $0f, $0f        ;; 04:659d ????????
    db   $3f, $3f, $7f, $7f, $3f, $3f, $0f, $0f        ;; 04:65a5 ????????
    db   $00, $00, $38, $38, $74, $4c, $74, $4c        ;; 04:65ad ????????
    db   $ee, $fe, $10, $10, $38, $38, $44, $44        ;; 04:65b5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:65bd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:65c5 ????????
    db   $38, $38, $74, $4c, $74, $4c, $28, $38        ;; 04:65cd ????????
    db   $54, $54, $92, $92, $28, $28, $28, $28        ;; 04:65d5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:65dd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:65e5 ????????
    db   $1c, $1c, $23, $3f, $4e, $7f, $79, $7f        ;; 04:65ed ????????
    db   $33, $3c, $57, $78, $a1, $de, $cd, $bb        ;; 04:65f5 ????????
    db   $de, $a9, $b3, $ef, $78, $67, $2e, $31        ;; 04:65fd ????????
    db   $30, $3f, $2e, $3f, $13, $1f, $0f, $0f        ;; 04:6605 ????????
    db   $f0, $f0, $c8, $f8, $34, $dc, $dc, $ec        ;; 04:660d ????????
    db   $26, $fe, $85, $7f, $55, $ef, $d3, $ed        ;; 04:6615 ????????
    db   $7b, $cd, $a9, $df, $da, $3e, $7e, $fe        ;; 04:661d ????????
    db   $32, $fe, $c4, $fc, $f8, $f8, $00, $00        ;; 04:6625 ????????
    db   $c6, $c6, $ee, $aa, $fe, $92, $fe, $82        ;; 04:662d ????????
    db   $fe, $aa, $fe, $ba, $ee, $aa, $ee, $ee        ;; 04:6635 ????????
    db   $00, $00, $66, $66, $99, $ff, $42, $7e        ;; 04:663d ????????
    db   $24, $3c, $42, $7e, $99, $ff, $66, $66        ;; 04:6645 ????????
    db   $10, $10, $38, $28, $7c, $54, $7c, $54        ;; 04:664d ????????
    db   $fe, $82, $fe, $ba, $ee, $aa, $ee, $ee        ;; 04:6655 ????????
    db   $10, $10, $28, $38, $44, $7c, $82, $fe        ;; 04:665d ????????
    db   $ee, $fe, $28, $38, $28, $38, $38, $38        ;; 04:6665 ????????
    db   $10, $10, $38, $28, $7c, $54, $7c, $54        ;; 04:666d ????????
    db   $fe, $82, $fe, $ba, $ee, $aa, $ee, $ee        ;; 04:6675 ????????
    db   $38, $38, $28, $38, $28, $38, $ee, $fe        ;; 04:667d ????????
    db   $82, $fe, $44, $7c, $28, $38, $10, $10        ;; 04:6685 ????????
    db   $f8, $f8, $fc, $84, $fe, $b2, $ee, $aa        ;; 04:668d ????????
    db   $ee, $aa, $fe, $b2, $fc, $84, $f8, $f8        ;; 04:6695 ????????
    db   $10, $10, $28, $38, $44, $7c, $82, $fe        ;; 04:669d ????????
    db   $ee, $fe, $28, $38, $28, $38, $38, $38        ;; 04:66a5 ????????
    db   $f8, $f8, $fc, $84, $fe, $b2, $ee, $aa        ;; 04:66ad ????????
    db   $ee, $aa, $fe, $b2, $fc, $84, $f8, $f8        ;; 04:66b5 ????????
    db   $38, $38, $28, $38, $28, $38, $ee, $fe        ;; 04:66bd ????????
    db   $82, $fe, $44, $7c, $28, $38, $10, $10        ;; 04:66c5 ????????
    db   $c6, $c6, $ee, $aa, $fe, $92, $fe, $82        ;; 04:66cd ????????
    db   $fe, $aa, $fe, $ba, $ee, $aa, $ee, $ee        ;; 04:66d5 ????????
    db   $10, $10, $28, $38, $44, $7c, $82, $fe        ;; 04:66dd ????????
    db   $ee, $fe, $28, $38, $28, $38, $38, $38        ;; 04:66e5 ????????
    db   $c6, $c6, $ee, $aa, $fe, $92, $fe, $82        ;; 04:66ed ????????
    db   $fe, $aa, $fe, $ba, $ee, $aa, $ee, $ee        ;; 04:66f5 ????????
    db   $38, $38, $28, $38, $28, $38, $ee, $fe        ;; 04:66fd ????????
    db   $82, $fe, $44, $7c, $28, $38, $10, $10        ;; 04:6705 ????????
    db   $c6, $c6, $ee, $aa, $fe, $92, $fe, $82        ;; 04:670d ????????
    db   $fe, $aa, $fe, $ba, $ee, $aa, $ee, $ee        ;; 04:6715 ????????
    db   $38, $38, $7c, $44, $fe, $ba, $ac, $dc        ;; 04:671d ????????
    db   $7a, $66, $fe, $ba, $7c, $44, $38, $38        ;; 04:6725 ????????
    db   $7c, $7c, $7c, $44, $38, $28, $38, $28        ;; 04:672d ????????
    db   $38, $28, $38, $28, $7c, $44, $7c, $7c        ;; 04:6735 ????????
    db   $38, $38, $7c, $44, $fe, $ba, $ac, $dc        ;; 04:673d ????????
    db   $7a, $66, $fe, $ba, $7c, $44, $38, $38        ;; 04:6745 ????????
    db   $00, $00, $00, $00, $1c, $1c, $3e, $22        ;; 04:674d ????????
    db   $7f, $49, $77, $55, $77, $55, $77, $55        ;; 04:6755 ????????
    db   $77, $55, $77, $55, $77, $55, $7f, $49        ;; 04:675d ????????
    db   $3e, $22, $1c, $1c, $00, $00, $00, $00        ;; 04:6765 ????????
    db   $00, $00, $00, $00, $0c, $0c, $3c, $34        ;; 04:676d ????????
    db   $7c, $44, $7c, $74, $1c, $14, $1c, $14        ;; 04:6775 ????????
    db   $1c, $14, $1c, $14, $1c, $14, $7f, $77        ;; 04:677d ????????
    db   $7f, $41, $7f, $7f, $00, $00, $00, $00        ;; 04:6785 ????????
    db   $00, $00, $00, $00, $1c, $1c, $3e, $22        ;; 04:678d ????????
    db   $7f, $49, $77, $55, $67, $65, $07, $05        ;; 04:6795 ????????
    db   $1f, $19, $3e, $22, $7c, $4c, $7f, $5f        ;; 04:679d ????????
    db   $7f, $41, $7f, $7f, $00, $00, $00, $00        ;; 04:67a5 ????????
    db   $00, $00, $00, $00, $1c, $1c, $3e, $22        ;; 04:67ad ????????
    db   $7f, $59, $67, $65, $0f, $0d, $1e, $12        ;; 04:67b5 ????????
    db   $1f, $19, $67, $65, $77, $55, $7f, $49        ;; 04:67bd ????????
    db   $3e, $22, $1c, $1c, $00, $00, $00, $00        ;; 04:67c5 ????????
    db   $00, $00, $00, $00, $0e, $0e, $0e, $0a        ;; 04:67cd ????????
    db   $1e, $12, $1e, $12, $3e, $2a, $3e, $2a        ;; 04:67d5 ????????
    db   $7e, $5a, $7f, $41, $7f, $7b, $0e, $0a        ;; 04:67dd ????????
    db   $0e, $0a, $0e, $0e, $00, $00, $00, $00        ;; 04:67e5 ????????
    db   $00, $00, $00, $00, $7f, $7f, $7f, $41        ;; 04:67ed ????????
    db   $7f, $5f, $7c, $5c, $7e, $42, $7f, $59        ;; 04:67f5 ????????
    db   $67, $65, $07, $05, $67, $65, $7f, $59        ;; 04:67fd ????????
    db   $3e, $22, $1c, $1c, $00, $00, $00, $00        ;; 04:6805 ????????
    db   $00, $00, $00, $00, $1c, $1c, $3e, $22        ;; 04:680d ????????
    db   $7f, $4d, $73, $53, $7c, $5c, $7e, $42        ;; 04:6815 ????????
    db   $7f, $59, $77, $55, $77, $55, $7f, $49        ;; 04:681d ????????
    db   $3e, $22, $1c, $1c, $00, $00, $00, $00        ;; 04:6825 ????????
    db   $00, $00, $00, $00, $7f, $7f, $7f, $41        ;; 04:682d ????????
    db   $7f, $5d, $67, $65, $0d, $0b, $0e, $0a        ;; 04:6835 ????????
    db   $1a, $16, $1c, $14, $1c, $14, $1c, $14        ;; 04:683d ????????
    db   $1c, $14, $1c, $1c, $00, $00, $00, $00        ;; 04:6845 ????????
    db   $00, $00, $00, $00, $1c, $1c, $3e, $22        ;; 04:684d ????????
    db   $7f, $49, $77, $55, $7f, $49, $3e, $22        ;; 04:6855 ????????
    db   $6b, $5d, $77, $55, $77, $55, $7f, $49        ;; 04:685d ????????
    db   $3e, $22, $1c, $1c, $00, $00, $00, $00        ;; 04:6865 ????????
    db   $00, $00, $00, $00, $1c, $1c, $3e, $22        ;; 04:686d ????????
    db   $7f, $49, $77, $55, $77, $55, $7f, $4d        ;; 04:6875 ????????
    db   $3f, $21, $1f, $1d, $67, $65, $7f, $59        ;; 04:687d ????????
    db   $3e, $22, $1c, $1c, $00, $00, $00, $00        ;; 04:6885 ????????
    db   $38, $38, $7c, $44, $fe, $ba, $ac, $dc        ;; 04:688d ????????
    db   $7a, $66, $fe, $ba, $7c, $44, $38, $38        ;; 04:6895 ????????
    db   $10, $10, $28, $38, $44, $7c, $82, $fe        ;; 04:689d ????????
    db   $ee, $fe, $28, $38, $28, $38, $38, $38        ;; 04:68a5 ????????
    db   $06, $24, $2b, $3d, $ba, $d5, $5d, $62        ;; 04:68ad ????????
    db   $37, $4a, $dd, $e7, $7a, $8e, $9c, $e4        ;; 04:68b5 ????????
    db   $e2, $1e, $5c, $64, $fc, $8e, $3d, $e1        ;; 04:68bd ????????
    db   $7a, $55, $b7, $e8, $0a, $3d, $0d, $09        ;; 04:68c5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:68cd ????????
    db   $fd, $fd, $ff, $86, $ff, $bd, $ff, $84        ;; 04:68d5 ????????
    db   $fe, $bf, $ff, $bd, $ff, $86, $fd, $fd        ;; 04:68dd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:68e5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:68ed ????????
    db   $8e, $8e, $df, $51, $f7, $af, $f8, $e8        ;; 04:68f5 ????????
    db   $b8, $68, $f7, $af, $ff, $71, $8e, $8e        ;; 04:68fd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6905 ????????
    db   $a6, $3a, $3f, $53, $db, $01, $00, $00        ;; 04:690d ????????
    db   $a6, $3a, $b5, $56, $8c, $31, $63, $0c        ;; 04:6915 ????????
    db   $a6, $3a, $1f, $7f, $fe, $4c, $18, $18        ;; 04:691d ????????
    db   $11, $02, $ff, $4f, $1a, $03, $00, $00        ;; 04:6925 ????????
    db   $a6, $3a, $1f, $02, $5f, $3f, $ff, $7f        ;; 04:692d ????????

data_04_6935:
    db   $01, $00, $00, $50, $88, $00, $00, $00        ;; 04:6935 ????????
    db   $00, $06, $01, $00, $00, $00, $02, $00        ;; 04:693d ????????
    db   $03, $4e, $f4, $00, $00, $10, $10, $00        ;; 04:6945 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:694d ????????
    db   $00, $05, $00, $00, $00, $00, $00, $00        ;; 04:6955 ????????
    db   $00, $00, $00, $00, $c0, $34, $00, $00        ;; 04:695d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 04:6965 ????????
    db   $00, $00, $00, $00, $00                       ;; 04:696d ?????

call_04_6972:
    ld   A, $b8                                        ;; 04:6972 $3e $b8
    ldh  [rOBP1], A                                    ;; 04:6974 $e0 $49
    ld   HL, wShadowOAM                                ;; 04:6976 $21 $00 $c0
    ld   B, $a0                                        ;; 04:6979 $06 $a0
    call memzeroSmall                                  ;; 04:697b $cd $8b $05
    ld   A, $10                                        ;; 04:697e $3e $10
    ld   [wD5D6], A                                    ;; 04:6980 $ea $d6 $d5
    xor  A, A                                          ;; 04:6983 $af
    ld   [wD5D7], A                                    ;; 04:6984 $ea $d7 $d5
    ld   [wC588], A                                    ;; 04:6987 $ea $88 $c5
    ld   [wCA4D], A                                    ;; 04:698a $ea $4d $ca
    ld   [wSCY], A                                     ;; 04:698d $ea $87 $d5
    ld   [wSCX], A                                     ;; 04:6990 $ea $88 $d5
    ld   A, $07                                        ;; 04:6993 $3e $07
    ld   [wD58A], A                                    ;; 04:6995 $ea $8a $d5
    ldh  [rWX], A                                      ;; 04:6998 $e0 $4b
    ld   A, $88                                        ;; 04:699a $3e $88
    ld   [wD589], A                                    ;; 04:699c $ea $89 $d5
    ldh  [rWY], A                                      ;; 04:699f $e0 $4a
    ld   HL, wCEBA                                     ;; 04:69a1 $21 $ba $ce
    ld   B, $1a                                        ;; 04:69a4 $06 $1a
    call memzeroSmall                                  ;; 04:69a6 $cd $8b $05
    ld   HL, wC58A                                     ;; 04:69a9 $21 $8a $c5
    ld   B, $10                                        ;; 04:69ac $06 $10
    call memzeroSmall                                  ;; 04:69ae $cd $8b $05
    ld   A, $05                                        ;; 04:69b1 $3e $05
    ld   [wC53B], A                                    ;; 04:69b3 $ea $3b $c5
    ld   A, $64                                        ;; 04:69b6 $3e $64
    ld   [wC53C], A                                    ;; 04:69b8 $ea $3c $c5
    ld   HL, wC53F                                     ;; 04:69bb $21 $3f $c5
    ld   B, $18                                        ;; 04:69be $06 $18
    ld   A, $ff                                        ;; 04:69c0 $3e $ff
    call memsetSmall                                   ;; 04:69c2 $cd $98 $05
    xor  A, A                                          ;; 04:69c5 $af
    ld   [wC567], A                                    ;; 04:69c6 $ea $67 $c5
    ld   [wC5BB], A                                    ;; 04:69c9 $ea $bb $c5
    ld   [wC5BA], A                                    ;; 04:69cc $ea $ba $c5
    ld   [wC56A], A                                    ;; 04:69cf $ea $6a $c5
    ld   [wC56B], A                                    ;; 04:69d2 $ea $6b $c5
    ld   [wCC22], A                                    ;; 04:69d5 $ea $22 $cc
    ld   [wC574], A                                    ;; 04:69d8 $ea $74 $c5
    ld   [wC56C], A                                    ;; 04:69db $ea $6c $c5
    ld   [wC585], A                                    ;; 04:69de $ea $85 $c5
    ld   [wD1C9], A                                    ;; 04:69e1 $ea $c9 $d1
    ld   [wC587], A                                    ;; 04:69e4 $ea $87 $c5
    ld   [wC45A], A                                    ;; 04:69e7 $ea $5a $c4
    ld   [wC51B], A                                    ;; 04:69ea $ea $1b $c5
    ld   [wC51C], A                                    ;; 04:69ed $ea $1c $c5
    ld   [wC51D], A                                    ;; 04:69f0 $ea $1d $c5
    ld   [wC51E], A                                    ;; 04:69f3 $ea $1e $c5
    ld   [wC573], A                                    ;; 04:69f6 $ea $73 $c5
    ld   A, $02                                        ;; 04:69f9 $3e $02
    ld   [wCB27], A                                    ;; 04:69fb $ea $27 $cb
    ret                                                ;; 04:69fe $c9

call_04_69ff:
    call call_00_101f                                  ;; 04:69ff $cd $1f $10
    call call_00_1040                                  ;; 04:6a02 $cd $40 $10
    ld   HL, data_04_6935                              ;; 04:6a05 $21 $35 $69
    ld   DE, wC5D7                                     ;; 04:6a08 $11 $d7 $c5
    ld   B, $3d                                        ;; 04:6a0b $06 $3d
    call memcopySmall                                  ;; 04:6a0d $cd $91 $05
    ld   A, [wC461]                                    ;; 04:6a10 $fa $61 $c4
    inc  A                                             ;; 04:6a13 $3c
    ld   [wC56D], A                                    ;; 04:6a14 $ea $6d $c5
    ld   HL, wC034                                     ;; 04:6a17 $21 $34 $c0
    ld   A, H                                          ;; 04:6a1a $7c
    ld   [wC469], A                                    ;; 04:6a1b $ea $69 $c4
    ld   A, L                                          ;; 04:6a1e $7d
    ld   [wC46A], A                                    ;; 04:6a1f $ea $6a $c4
    ld   A, $0f                                        ;; 04:6a22 $3e $0f
    ld   [wD5DC], A                                    ;; 04:6a24 $ea $dc $d5
    ld   [wD5DD], A                                    ;; 04:6a27 $ea $dd $d5
    xor  A, A                                          ;; 04:6a2a $af
    ld   [wC462], A                                    ;; 04:6a2b $ea $62 $c4
    ld   [wC45B], A                                    ;; 04:6a2e $ea $5b $c4
    ld   [wC46F], A                                    ;; 04:6a31 $ea $6f $c4
    ld   [wC470], A                                    ;; 04:6a34 $ea $70 $c4
    ld   [wC51A], A                                    ;; 04:6a37 $ea $1a $c5
    ld   A, $06                                        ;; 04:6a3a $3e $06
    ld   [wD5DB], A                                    ;; 04:6a3c $ea $db $d5
    ld   [wC460], A                                    ;; 04:6a3f $ea $60 $c4
    ld   A, $01                                        ;; 04:6a42 $3e $01
    ld   [wC461], A                                    ;; 04:6a44 $ea $61 $c4
    ld   [wC463], A                                    ;; 04:6a47 $ea $63 $c4
    ld   [wC517], A                                    ;; 04:6a4a $ea $17 $c5
    ld   DE, wC5EE                                     ;; 04:6a4d $11 $ee $c5
    ld   HL, wC104                                     ;; 04:6a50 $21 $04 $c1
    ld   B, $06                                        ;; 04:6a53 $06 $06
    call memcopySmall                                  ;; 04:6a55 $cd $91 $05
    ld   A, [HL+]                                      ;; 04:6a58 $2a
    ld   L, [HL]                                       ;; 04:6a59 $6e
    ld   H, A                                          ;; 04:6a5a $67
    ld   A, [wC135]                                    ;; 04:6a5b $fa $35 $c1
    and  A, A                                          ;; 04:6a5e $a7
    jr   Z, .jr_04_6a68                                ;; 04:6a5f $28 $07
    ld   B, H                                          ;; 04:6a61 $44
    ld   C, L                                          ;; 04:6a62 $4d
    srl  B                                             ;; 04:6a63 $cb $38
    rr   C                                             ;; 04:6a65 $cb $19
    add  HL, BC                                        ;; 04:6a67 $09
.jr_04_6a68:
    call call_00_0673                                  ;; 04:6a68 $cd $73 $06
    ld   HL, wC10E                                     ;; 04:6a6b $21 $0e $c1
    ld   A, [wC111]                                    ;; 04:6a6e $fa $11 $c1
    add  A, [HL]                                       ;; 04:6a71 $86
    inc  HL                                            ;; 04:6a72 $23
    add  A, [HL]                                       ;; 04:6a73 $86
    inc  HL                                            ;; 04:6a74 $23
    add  A, [HL]                                       ;; 04:6a75 $86
    ld   L, A                                          ;; 04:6a76 $6f
    ld   H, $00                                        ;; 04:6a77 $26 $00
    ld   A, [wC134]                                    ;; 04:6a79 $fa $34 $c1
    and  A, A                                          ;; 04:6a7c $a7
    jr   Z, .jr_04_6a86                                ;; 04:6a7d $28 $07
    ld   D, H                                          ;; 04:6a7f $54
    ld   E, L                                          ;; 04:6a80 $5d
    srl  D                                             ;; 04:6a81 $cb $3a
    rr   E                                             ;; 04:6a83 $cb $1b
    add  HL, DE                                        ;; 04:6a85 $19
.jr_04_6a86:
    ld   DE, wC5F6                                     ;; 04:6a86 $11 $f6 $c5
    call call_00_0673                                  ;; 04:6a89 $cd $73 $06
    ret                                                ;; 04:6a8c $c9

call_04_6a8d:
    ld   A, $01                                        ;; 04:6a8d $3e $01
    ld   [wC566], A                                    ;; 04:6a8f $ea $66 $c5
    ld   A, [wC108]                                    ;; 04:6a92 $fa $08 $c1
    and  A, A                                          ;; 04:6a95 $a7
    jr   Z, .jr_04_6a9c                                ;; 04:6a96 $28 $04
    ld   A, $ff                                        ;; 04:6a98 $3e $ff
    jr   .jr_04_6a9f                                   ;; 04:6a9a $18 $03
.jr_04_6a9c:
    ld   A, [wC109]                                    ;; 04:6a9c $fa $09 $c1
.jr_04_6a9f:
    ld   HL, wC58A                                     ;; 04:6a9f $21 $8a $c5
    cp   A, [HL]                                       ;; 04:6aa2 $be
    ret  C                                             ;; 04:6aa3 $d8
    xor  A, A                                          ;; 04:6aa4 $af
    ld   [wC566], A                                    ;; 04:6aa5 $ea $66 $c5
    ret                                                ;; 04:6aa8 $c9

call_04_6aa9:
    ld   A, [wD5D7]                                    ;; 04:6aa9 $fa $d7 $d5
    ld   [wCB28], A                                    ;; 04:6aac $ea $28 $cb
    ld   C, A                                          ;; 04:6aaf $4f
    ld   A, $10                                        ;; 04:6ab0 $3e $10
    sub  A, C                                          ;; 04:6ab2 $91
    ld   D, A                                          ;; 04:6ab3 $57
    ld   A, $10                                        ;; 04:6ab4 $3e $10
    ld   [wD5D7], A                                    ;; 04:6ab6 $ea $d7 $d5
    ld   HL, wCF36                                     ;; 04:6ab9 $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 04:6abc $cd $7a $06
    ld   BC, $1d                                       ;; 04:6abf $01 $1d $00
.jr_04_6ac2:
    ld   [HL], $ff                                     ;; 04:6ac2 $36 $ff
    add  HL, BC                                        ;; 04:6ac4 $09
    dec  D                                             ;; 04:6ac5 $15
    jr   NZ, .jr_04_6ac2                               ;; 04:6ac6 $20 $fa
    ret                                                ;; 04:6ac8 $c9

call_04_6ac9:
    ld   HL, wD5CF                                     ;; 04:6ac9 $21 $cf $d5
    ld   A, $40                                        ;; 04:6acc $3e $40
    ld   [HL+], A                                      ;; 04:6ace $22
    ld   A, $22                                        ;; 04:6acf $3e $22
    ld   [HL+], A                                      ;; 04:6ad1 $22
    ld   A, [wD318]                                    ;; 04:6ad2 $fa $18 $d3
    cp   A, $06                                        ;; 04:6ad5 $fe $06
    jr   Z, .jr_04_6ae2                                ;; 04:6ad7 $28 $09
    cp   A, $0f                                        ;; 04:6ad9 $fe $0f
    jr   Z, .jr_04_6ae2                                ;; 04:6adb $28 $05
    cp   A, $12                                        ;; 04:6add $fe $12
    jr   Z, .jr_04_6b12                                ;; 04:6adf $28 $31
    ret                                                ;; 04:6ae1 $c9
.jr_04_6ae2:
    ld   A, $01                                        ;; 04:6ae2 $3e $01
    ld   [wC588], A                                    ;; 04:6ae4 $ea $88 $c5
    ld   [wC589], A                                    ;; 04:6ae7 $ea $89 $c5
    ld   [wD1C9], A                                    ;; 04:6aea $ea $c9 $d1
    ld   [wD5CC], A                                    ;; 04:6aed $ea $cc $d5
    xor  A, A                                          ;; 04:6af0 $af
    ld   [wD1CA], A                                    ;; 04:6af1 $ea $ca $d1
    ld   [wD1DE], A                                    ;; 04:6af4 $ea $de $d1
    ld   [wD1CB], A                                    ;; 04:6af7 $ea $cb $d1
    ld   [wD1CC], A                                    ;; 04:6afa $ea $cc $d1
    ld   [wD1CD], A                                    ;; 04:6afd $ea $cd $d1
    ld   [wD1CE], A                                    ;; 04:6b00 $ea $ce $d1
    ld   HL, wD5CF                                     ;; 04:6b03 $21 $cf $d5
    ld   A, $40                                        ;; 04:6b06 $3e $40
    ld   [HL+], A                                      ;; 04:6b08 $22
    ld   A, $92                                        ;; 04:6b09 $3e $92
    ld   [HL+], A                                      ;; 04:6b0b $22
    ld   A, $0a                                        ;; 04:6b0c $3e $0a
    ld   [wD1DF], A                                    ;; 04:6b0e $ea $df $d1
    ret                                                ;; 04:6b11 $c9
.jr_04_6b12:
    ld   A, $01                                        ;; 04:6b12 $3e $01
    ld   [wC588], A                                    ;; 04:6b14 $ea $88 $c5
    ld   [wC589], A                                    ;; 04:6b17 $ea $89 $c5
    ld   HL, wCF59                                     ;; 04:6b1a $21 $59 $cf
    ld   A, $06                                        ;; 04:6b1d $3e $06
    ld   [HL+], A                                      ;; 04:6b1f $22
    ld   A, $c0                                        ;; 04:6b20 $3e $c0
    ld   [HL+], A                                      ;; 04:6b22 $22
    ld   A, $58                                        ;; 04:6b23 $3e $58
    ld   [HL+], A                                      ;; 04:6b25 $22
    ld   HL, wCF76                                     ;; 04:6b26 $21 $76 $cf
    xor  A, A                                          ;; 04:6b29 $af
    ld   [HL+], A                                      ;; 04:6b2a $22
    ld   A, $c0                                        ;; 04:6b2b $3e $c0
    ld   [HL+], A                                      ;; 04:6b2d $22
    ld   A, $40                                        ;; 04:6b2e $3e $40
    ld   [HL+], A                                      ;; 04:6b30 $22
    ld   A, $c0                                        ;; 04:6b31 $3e $c0
    ld   [wC641], A                                    ;; 04:6b33 $ea $41 $c6
    ld   A, $58                                        ;; 04:6b36 $3e $58
    ld   [wC642], A                                    ;; 04:6b38 $ea $42 $c6
    ld   A, $c0                                        ;; 04:6b3b $3e $c0
    ld   [wC67F], A                                    ;; 04:6b3d $ea $7f $c6
    ld   A, $40                                        ;; 04:6b40 $3e $40
    ld   [wC680], A                                    ;; 04:6b42 $ea $80 $c6
    ld   A, $02                                        ;; 04:6b45 $3e $02
    ld   [wD1C9], A                                    ;; 04:6b47 $ea $c9 $d1
    xor  A, A                                          ;; 04:6b4a $af
    ld   [wD1E5], A                                    ;; 04:6b4b $ea $e5 $d1
    ret                                                ;; 04:6b4e $c9

call_04_6b4f:
    ld   HL, $9030                                     ;; 04:6b4f $21 $30 $90
    ld   B, $02                                        ;; 04:6b52 $06 $02
.jr_04_6b54:
    rlc  [HL]                                          ;; 04:6b54 $cb $06
    inc  L                                             ;; 04:6b56 $2c
    rlc  [HL]                                          ;; 04:6b57 $cb $06
    inc  L                                             ;; 04:6b59 $2c
    rlc  [HL]                                          ;; 04:6b5a $cb $06
    inc  L                                             ;; 04:6b5c $2c
    rlc  [HL]                                          ;; 04:6b5d $cb $06
    inc  L                                             ;; 04:6b5f $2c
    rlc  [HL]                                          ;; 04:6b60 $cb $06
    inc  L                                             ;; 04:6b62 $2c
    rlc  [HL]                                          ;; 04:6b63 $cb $06
    inc  L                                             ;; 04:6b65 $2c
    rlc  [HL]                                          ;; 04:6b66 $cb $06
    inc  L                                             ;; 04:6b68 $2c
    rlc  [HL]                                          ;; 04:6b69 $cb $06
    inc  L                                             ;; 04:6b6b $2c
    dec  B                                             ;; 04:6b6c $05
    jr   NZ, .jr_04_6b54                               ;; 04:6b6d $20 $e5
    ret                                                ;; 04:6b6f $c9
    db   $21, $e3, $d5, $2a, $6e, $67, $11, $03        ;; 04:6b70 ????????
    db   $00, $19, $2a, $ea, $9a, $c5, $2a, $ea        ;; 04:6b78 ????????
    db   $9b, $c5, $11, $11, $00, $19, $2a, $ea        ;; 04:6b80 ????????
    db   $9c, $c5, $2a, $ea, $9d, $c5, $fa, $88        ;; 04:6b88 ????????
    db   $c5, $3c, $47, $0e, $00, $c5, $21, $3b        ;; 04:6b90 ????????
    db   $03, $cd, $7a, $06, $7c, $ea, $9f, $c5        ;; 04:6b98 ????????
    db   $7d, $ea, $a0, $c5, $7e, $a7, $ca, $0e        ;; 04:6ba0 ????????
    db   $6c, $01, $03, $00, $09, $fa, $9a, $c5        ;; 04:6ba8 ????????
    db   $be, $20, $09, $23, $fa, $9b, $c5, $be        ;; 04:6bb0 ????????
    db   $ca, $0e, $6c, $2b, $2a, $57, $2a, $5f        ;; 04:6bb8 ????????
    db   $01, $10, $00, $09, $2a, $47, $2a, $4f        ;; 04:6bc0 ????????
    db   $05, $0d, $21, $9c, $c5, $2a, $6e, $67        ;; 04:6bc8 ????????
    db   $25, $2d, $78, $83, $5f, $fa, $9b, $c5        ;; 04:6bd0 ????????
    db   $bb, $28, $0e, $30, $31, $7b, $90, $5f        ;; 04:6bd8 ????????
    db   $fa, $9b, $c5, $84, $bb, $28, $02, $38        ;; 04:6be0 ????????
    db   $25, $79, $82, $57, $fa, $9a, $c5, $ba        ;; 04:6be8 ????????
    db   $28, $0e, $30, $1a, $7a, $91, $57, $fa        ;; 04:6bf0 ????????
    db   $9a, $c5, $85, $ba, $28, $02, $38, $0e        ;; 04:6bf8 ????????
    db   $fa, $9b, $c5, $bb, $38, $06, $84, $93        ;; 04:6c00 ????????
    db   $7b, $83, $18, $00, $c1, $c9, $c1, $0c        ;; 04:6c08 ????????
    db   $05, $c2, $95, $6b, $c9                       ;; 04:6c10 ?????

call_04_6c15:
    ld   A, [wC51A]                                    ;; 04:6c15 $fa $1a $c5
    and  A, A                                          ;; 04:6c18 $a7
    ret  Z                                             ;; 04:6c19 $c8
    cp   A, $03                                        ;; 04:6c1a $fe $03
    jr   C, .jr_04_6c47                                ;; 04:6c1c $38 $29
    inc  A                                             ;; 04:6c1e $3c
    cp   A, $05                                        ;; 04:6c1f $fe $05
    jr   C, .jr_04_6c25                                ;; 04:6c21 $38 $02
    ld   A, $01                                        ;; 04:6c23 $3e $01
.jr_04_6c25:
    ld   [wC51A], A                                    ;; 04:6c25 $ea $1a $c5
    ld   A, [wD589]                                    ;; 04:6c28 $fa $89 $d5
    inc  A                                             ;; 04:6c2b $3c
    ld   C, A                                          ;; 04:6c2c $4f
    ld   HL, wShadowOAM.30                             ;; 04:6c2d $21 $30 $c0
    ld   A, [wC45C]                                    ;; 04:6c30 $fa $5c $c4
    cp   A, C                                          ;; 04:6c33 $b9
    jr   NC, .jr_04_6c68                               ;; 04:6c34 $30 $32
    ld   [HL+], A                                      ;; 04:6c36 $22
    ld   A, [wC45D]                                    ;; 04:6c37 $fa $5d $c4
    add  A, $0e                                        ;; 04:6c3a $c6 $0e
    ld   [HL+], A                                      ;; 04:6c3c $22
    ld   A, $5e                                        ;; 04:6c3d $3e $5e
    ld   [HL+], A                                      ;; 04:6c3f $22
    ld   A, [wC51E]                                    ;; 04:6c40 $fa $1e $c5
    set  5, A                                          ;; 04:6c43 $cb $ef
    ld   [HL], A                                       ;; 04:6c45 $77
    ret                                                ;; 04:6c46 $c9
.jr_04_6c47:
    inc  A                                             ;; 04:6c47 $3c
    ld   [wC51A], A                                    ;; 04:6c48 $ea $1a $c5
    ld   A, [wD589]                                    ;; 04:6c4b $fa $89 $d5
    inc  A                                             ;; 04:6c4e $3c
    ld   C, A                                          ;; 04:6c4f $4f
    ld   HL, wShadowOAM.30                             ;; 04:6c50 $21 $30 $c0
    ld   A, [wC45C]                                    ;; 04:6c53 $fa $5c $c4
    cp   A, C                                          ;; 04:6c56 $b9
    jr   NC, .jr_04_6c68                               ;; 04:6c57 $30 $0f
    ld   [HL+], A                                      ;; 04:6c59 $22
    ld   A, [wC45D]                                    ;; 04:6c5a $fa $5d $c4
    sub  A, $06                                        ;; 04:6c5d $d6 $06
    ld   [HL+], A                                      ;; 04:6c5f $22
    ld   A, $5e                                        ;; 04:6c60 $3e $5e
    ld   [HL+], A                                      ;; 04:6c62 $22
    ld   A, [wC51E]                                    ;; 04:6c63 $fa $1e $c5
    ld   [HL], A                                       ;; 04:6c66 $77
    ret                                                ;; 04:6c67 $c9
.jr_04_6c68:
    ld   [HL], $00                                     ;; 04:6c68 $36 $00
    ret                                                ;; 04:6c6a $c9

call_04_6c6b:
    ld   A, [wC566]                                    ;; 04:6c6b $fa $66 $c5
    and  A, A                                          ;; 04:6c6e $a7
    ret  NZ                                            ;; 04:6c6f $c0
    ld   A, [wC574]                                    ;; 04:6c70 $fa $74 $c5
    and  A, A                                          ;; 04:6c73 $a7
    ret  NZ                                            ;; 04:6c74 $c0
    ld   A, [wD58B]                                    ;; 04:6c75 $fa $8b $d5
    cp   A, $01                                        ;; 04:6c78 $fe $01
    ret  NZ                                            ;; 04:6c7a $c0
    ld   A, [wCB27]                                    ;; 04:6c7b $fa $27 $cb
    cp   A, $02                                        ;; 04:6c7e $fe $02
    ret  NZ                                            ;; 04:6c80 $c0
    ld   A, [wC5AB]                                    ;; 04:6c81 $fa $ab $c5
    cp   A, $02                                        ;; 04:6c84 $fe $02
    ret  NC                                            ;; 04:6c86 $d0
    ld   A, [wC45D]                                    ;; 04:6c87 $fa $5d $c4
    cp   A, $11                                        ;; 04:6c8a $fe $11
    jr   C, .jr_04_6c9f                                ;; 04:6c8c $38 $11
    cp   A, $90                                        ;; 04:6c8e $fe $90
    jr   NC, .jr_04_6c9f                               ;; 04:6c90 $30 $0d
    ld   A, [wC45C]                                    ;; 04:6c92 $fa $5c $c4
    cp   A, $19                                        ;; 04:6c95 $fe $19
    jr   C, .jr_04_6c9f                                ;; 04:6c97 $38 $06
    cp   A, $80                                        ;; 04:6c99 $fe $80
    jr   NC, .jr_04_6c9f                               ;; 04:6c9b $30 $02
    jr   .jr_04_6cf2                                   ;; 04:6c9d $18 $53
.jr_04_6c9f:
    ld   A, [wC5AB]                                    ;; 04:6c9f $fa $ab $c5
    and  A, A                                          ;; 04:6ca2 $a7
    jr   NZ, .jr_04_6caf                               ;; 04:6ca3 $20 $0a
    ld   [wC5AD], A                                    ;; 04:6ca5 $ea $ad $c5
    ld   A, $01                                        ;; 04:6ca8 $3e $01
    ld   [wC5AB], A                                    ;; 04:6caa $ea $ab $c5
    jr   .jr_04_6cbc                                   ;; 04:6cad $18 $0d
.jr_04_6caf:
    ld   A, [wC5AD]                                    ;; 04:6caf $fa $ad $c5
    inc  A                                             ;; 04:6cb2 $3c
    and  A, $3f                                        ;; 04:6cb3 $e6 $3f
    ld   [wC5AD], A                                    ;; 04:6cb5 $ea $ad $c5
    cp   A, $1f                                        ;; 04:6cb8 $fe $1f
    jr   NC, .jr_04_6cfb                               ;; 04:6cba $30 $3f
.jr_04_6cbc:
    ld   A, [wC45C]                                    ;; 04:6cbc $fa $5c $c4
    sub  A, $0e                                        ;; 04:6cbf $d6 $0e
    jr   C, .jr_04_6cc7                                ;; 04:6cc1 $38 $04
    cp   A, $10                                        ;; 04:6cc3 $fe $10
    jr   NC, .jr_04_6ccc                               ;; 04:6cc5 $30 $05
.jr_04_6cc7:
    ld   A, [wC45C]                                    ;; 04:6cc7 $fa $5c $c4
    add  A, $0e                                        ;; 04:6cca $c6 $0e
.jr_04_6ccc:
    ld   D, A                                          ;; 04:6ccc $57
    ld   A, [wD589]                                    ;; 04:6ccd $fa $89 $d5
    add  A, $08                                        ;; 04:6cd0 $c6 $08
    cp   A, D                                          ;; 04:6cd2 $ba
    jr   C, .jr_04_6cfb                                ;; 04:6cd3 $38 $26
    ld   A, [wC45D]                                    ;; 04:6cd5 $fa $5d $c4
    ld   B, A                                          ;; 04:6cd8 $47
    add  A, $08                                        ;; 04:6cd9 $c6 $08
    ld   C, A                                          ;; 04:6cdb $4f
    ld   HL, wShadowOAM                                ;; 04:6cdc $21 $00 $c0
    ld   A, D                                          ;; 04:6cdf $7a
    ld   [HL+], A                                      ;; 04:6ce0 $22
    ld   A, B                                          ;; 04:6ce1 $78
    ld   [HL+], A                                      ;; 04:6ce2 $22
    ld   A, $60                                        ;; 04:6ce3 $3e $60
    ld   [HL+], A                                      ;; 04:6ce5 $22
    xor  A, A                                          ;; 04:6ce6 $af
    ld   [HL+], A                                      ;; 04:6ce7 $22
    ld   A, D                                          ;; 04:6ce8 $7a
    ld   [HL+], A                                      ;; 04:6ce9 $22
    ld   A, C                                          ;; 04:6cea $79
    ld   [HL+], A                                      ;; 04:6ceb $22
    ld   A, $62                                        ;; 04:6cec $3e $62
    ld   [HL+], A                                      ;; 04:6cee $22
    xor  A, A                                          ;; 04:6cef $af
    ld   [HL+], A                                      ;; 04:6cf0 $22
    ret                                                ;; 04:6cf1 $c9
.jr_04_6cf2:
    ld   A, [wC5AB]                                    ;; 04:6cf2 $fa $ab $c5
    and  A, A                                          ;; 04:6cf5 $a7
    ret  Z                                             ;; 04:6cf6 $c8
    xor  A, A                                          ;; 04:6cf7 $af
    ld   [wC5AB], A                                    ;; 04:6cf8 $ea $ab $c5
.jr_04_6cfb:
    ld   HL, wShadowOAM                                ;; 04:6cfb $21 $00 $c0
    ld   B, $08                                        ;; 04:6cfe $06 $08
    jp   memzeroSmall                                  ;; 04:6d00 $c3 $8b $05

call_04_6d03:
    ld   A, [wJoypadPressed]                           ;; 04:6d03 $fa $7f $d5
    bit  0, A                                          ;; 04:6d06 $cb $47
    jp   NZ, .jp_04_6d11                               ;; 04:6d08 $c2 $11 $6d
    bit  1, A                                          ;; 04:6d0b $cb $4f
    jp   NZ, .jp_04_6d11                               ;; 04:6d0d $c2 $11 $6d
    ret                                                ;; 04:6d10 $c9
.jp_04_6d11:
    ld   A, [wC581]                                    ;; 04:6d11 $fa $81 $c5
    cp   A, $01                                        ;; 04:6d14 $fe $01
    ret  Z                                             ;; 04:6d16 $c8
    ld   A, [wC583]                                    ;; 04:6d17 $fa $83 $c5
    and  A, A                                          ;; 04:6d1a $a7
    ret  Z                                             ;; 04:6d1b $c8
    ld   A, [wD58B]                                    ;; 04:6d1c $fa $8b $d5
    cp   A, $03                                        ;; 04:6d1f $fe $03
    ret  Z                                             ;; 04:6d21 $c8
    xor  A, A                                          ;; 04:6d22 $af
    ld   [wC582], A                                    ;; 04:6d23 $ea $82 $c5
    ld   A, $02                                        ;; 04:6d26 $3e $02
    ld   [wC581], A                                    ;; 04:6d28 $ea $81 $c5
    ld   A, $88                                        ;; 04:6d2b $3e $88
    ld   [wD589], A                                    ;; 04:6d2d $ea $89 $d5
    ret                                                ;; 04:6d30 $c9
    db   $00, $09, $2a, $47, $2a, $4f, $05, $0d        ;; 04:6d31 ????????
    db   $21, $af, $c5, $2a, $6e, $67, $25, $2d        ;; 04:6d39 ????????
    db   $78, $83, $5f, $fa, $ae, $c5, $bb, $28        ;; 04:6d41 ????????
    db   $0e, $30, $31, $7b, $90, $5f, $fa, $ae        ;; 04:6d49 ????????
    db   $c5, $84, $bb, $28, $02, $38, $25, $79        ;; 04:6d51 ????????
    db   $82, $57, $fa, $ad, $c5, $ba, $28, $0e        ;; 04:6d59 ????????
    db   $30, $1a, $7a, $91, $57, $fa, $ad, $c5        ;; 04:6d61 ????????
    db   $85, $ba, $28, $02, $38, $0e, $fa, $ae        ;; 04:6d69 ????????
    db   $c5, $bb, $38, $06, $84, $93, $7b, $83        ;; 04:6d71 ????????
    db   $18, $00, $c1, $c9, $c1, $0c, $05, $c2        ;; 04:6d79 ????????
    db   $04, $6d, $c9, $fa, $2d, $c5, $a7, $c8        ;; 04:6d81 ????????
    db   $fe, $03, $38, $29, $3c, $fe, $05, $38        ;; 04:6d89 ????????
    db   $02, $3e, $01, $ea, $2d, $c5, $fa, $65        ;; 04:6d91 ????????
    db   $c4, $3c, $4f, $21, $00, $c0, $fa, $6f        ;; 04:6d99 ????????
    db   $c4, $b9, $30, $32, $22, $fa, $70, $c4        ;; 04:6da1 ????????
    db   $c6, $0e, $22, $3e, $36, $22, $fa, $31        ;; 04:6da9 ????????
    db   $c5, $cb, $ef, $77, $c9, $3c, $ea, $2d        ;; 04:6db1 ????????
    db   $c5, $fa, $65, $c4, $3c, $4f, $21, $00        ;; 04:6db9 ????????
    db   $c0, $fa, $6f, $c4, $b9, $30, $0f, $22        ;; 04:6dc1 ????????
    db   $fa, $70, $c4, $d6, $06, $22, $3e, $36        ;; 04:6dc9 ????????
    db   $22, $fa, $31, $c5, $77, $c9, $36, $00        ;; 04:6dd1 ????????
    db   $c9, $fa, $79, $c5, $a7, $c0, $fa, $87        ;; 04:6dd9 ????????
    db   $c5, $a7, $c0, $fa, $67, $c4, $fe, $01        ;; 04:6de1 ????????
    db   $c0, $fa, $8e, $cb, $fe, $02, $c0, $fa        ;; 04:6de9 ????????
    db   $be, $c5, $fe, $02, $d0, $fa, $70, $c4        ;; 04:6df1 ????????
    db   $fe, $09, $38, $11, $fe, $98, $30, $0d        ;; 04:6df9 ????????
    db   $fa, $6f, $c4, $fe, $11, $38, $06, $fe        ;; 04:6e01 ????????
    db   $88, $30, $02, $18, $53, $fa, $be, $c5        ;; 04:6e09 ????????
    db   $a7, $20, $0a, $ea, $c0, $c5, $3e, $01        ;; 04:6e11 ????????
    db   $ea, $be, $c5, $18, $0d, $fa, $c0, $c5        ;; 04:6e19 ????????
    db   $3c, $e6, $3f, $ea, $c0, $c5, $fe, $1f        ;; 04:6e21 ????????
    db   $30, $3f, $fa, $6f, $c4, $d6, $0e, $38        ;; 04:6e29 ????????
    db   $04, $fe, $10, $30, $05, $fa, $6f, $c4        ;; 04:6e31 ????????
    db   $c6, $0e, $57, $fa, $65, $c4, $c6, $08        ;; 04:6e39 ????????
    db   $ba, $38, $26, $fa, $70, $c4, $47, $c6        ;; 04:6e41 ????????
    db   $08, $4f, $21, $10, $c0, $7a, $22, $78        ;; 04:6e49 ????????
    db   $22, $3e, $50, $22, $af, $22, $7a, $22        ;; 04:6e51 ????????
    db   $79, $22, $3e, $52, $22, $af, $22, $c9        ;; 04:6e59 ????????
    db   $fa, $be, $c5, $a7, $c8, $af, $ea, $be        ;; 04:6e61 ????????
    db   $c5, $21, $10, $c0, $06, $08, $c3, $bb        ;; 04:6e69 ????????
    db   $05, $fa, $5b, $c4, $cb, $47, $20, $05        ;; 04:6e71 ????????
    db   $cb, $4f, $20, $01, $c9, $fa, $94, $c5        ;; 04:6e79 ????????
    db   $fe, $01, $c8, $fa, $96, $c5, $a7, $c8        ;; 04:6e81 ????????
    db   $fa, $67, $c4, $fe, $03, $c8, $af, $ea        ;; 04:6e89 ????????
    db   $95, $c5, $3e, $02, $ea, $94, $c5, $3e        ;; 04:6e91 ????????
    db   $88, $ea, $65, $c4, $c9, $fa, $73, $d3        ;; 04:6e99 ????????
    db   $47, $3e, $28, $90, $ea, $d4, $d5, $3e        ;; 04:6ea1 ????????
    db   $c0, $ea, $6f, $ca, $3e, $a0, $ea, $70        ;; 04:6ea9 ????????
    db   $ca, $fa, $74, $d3, $47, $0e, $00, $c5        ;; 04:6eb1 ????????
    db   $21, $a0, $cf, $cd, $aa, $06, $11, $03        ;; 04:6eb9 ????????
    db   $00, $19, $fa, $d4, $d5, $86, $22, $23        ;; 04:6ec1 ????????
    db   $fa, $d4, $d5, $87, $87, $86, $32, $5f        ;; 04:6ec9 ????????
    db   $3e, $00, $8e, $77, $57, $c1, $c5, $21        ;; 04:6ed1 ????????
    db   $6d, $03, $cd, $aa, $06, $01, $2c, $00        ;; 04:6ed9 ????????
    db   $09, $7a, $22, $7b, $22, $21, $6f, $ca        ;; 04:6ee1 ????????
    db   $2a, $6e, $67, $cd, $1a, $06, $38, $08        ;; 04:6ee9 ????????
    db   $28, $06, $21, $6f, $ca, $7a, $22, $73        ;; 04:6ef1 ????????
    db   $c1, $0c, $05, $20, $ba, $21, $6f, $ca        ;; 04:6ef9 ????????
    db   $2a, $6e, $67, $fa, $74, $d3, $3c, $87        ;; 04:6f01 ????????
    db   $87, $2f, $3c, $4f, $06, $ff, $09, $54        ;; 04:6f09 ????????
    db   $5d, $fa, $9b, $c5, $47, $0e, $00, $c5        ;; 04:6f11 ????????
    db   $21, $6d, $03, $cd, $aa, $06, $01, $3f        ;; 04:6f19 ????????
    db   $00, $09, $7a, $22, $7b, $22, $3e, $04        ;; 04:6f21 ????????
    db   $83, $5f, $3e, $00, $8a, $57, $c1, $0c        ;; 04:6f29 ????????
    db   $05, $20, $e4, $21, $29, $c6, $7a, $22        ;; 04:6f31 ????????
    db   $7b, $22, $c9, $21, $00, $c0, $11, $5e        ;; 04:6f39 ????????
    db   $ca, $06, $10, $cd, $c1, $05, $21, $6f        ;; 04:6f41 ????????
    db   $ca, $2a, $6e, $67, $01, $00, $c0, $7d        ;; 04:6f49 ????????
    db   $91, $6f, $7c, $98, $67, $7d, $d6, $10        ;; 04:6f51 ????????
    db   $47, $21, $10, $c0, $11, $00, $c0, $cd        ;; 04:6f59 ????????
    db   $c1, $05, $21, $5e, $ca, $06, $10, $cd        ;; 04:6f61 ????????
    db   $c1, $05, $3e, $01, $ea, $6e, $ca, $c9        ;; 04:6f69 ????????
    db   $fa, $6e, $ca, $a7, $c8, $21, $6f, $ca        ;; 04:6f71 ????????
    db   $2a, $6e, $67, $01, $00, $c0, $7d, $91        ;; 04:6f79 ????????
    db   $6f, $7c, $98, $67, $7d, $d6, $10, $f5        ;; 04:6f81 ????????
    db   $21, $6f, $ca, $2a, $5e, $57, $1b, $21        ;; 04:6f89 ????????
    db   $6f, $ca, $2a, $6e, $67, $01, $ef, $ff        ;; 04:6f91 ????????
    db   $09, $c1, $3a, $12, $1b, $05, $20, $fa        ;; 04:6f99 ????????
    db   $21, $5e, $ca, $11, $00, $c0, $06, $10        ;; 04:6fa1 ????????
    db   $cd, $c1, $05, $af, $ea, $6e, $ca, $c9        ;; 04:6fa9 ????????
    db   $fa, $9b, $c5, $3c, $47, $0e, $00, $c5        ;; 04:6fb1 ????????
    db   $21, $6b, $03, $cd, $aa, $06, $7e, $a7        ;; 04:6fb9 ????????
    db   $28, $13, $11, $2b, $00, $19, $7e, $a7        ;; 04:6fc1 ????????
    db   $20, $0b, $11, $12, $00, $19, $7e, $a7        ;; 04:6fc9 ????????
    db   $28, $03, $cd, $dc, $6f, $c1, $0c, $05        ;; 04:6fd1 ????????
    db   $20, $dd, $c9, $35, $20, $02, $36, $ff        ;; 04:6fd9 ????????
    db   $7e, $e6, $07, $fe, $04, $d8, $11, $d1        ;; 04:6fe1 ????????
    db   $ff, $19, $46, $11, $1e, $00, $19, $2a        ;; 04:6fe9 ????????
    db   $6e, $67, $11, $03, $00, $19, $11, $04        ;; 04:6ff1 ????????
    db   $00, $7e, $e6, $e8, $f6, $14, $77, $19        ;; 04:6ff9 ????????
    db   $05, $20, $f6, $c9, $fa, $9b, $c5, $3c        ;; 04:7001 ????????
    db   $47, $0e, $00, $c5, $21, $6b, $03, $cd        ;; 04:7009 ????????
    db   $aa, $06, $7e, $a7, $28, $0b, $11, $3e        ;; 04:7011 ????????
    db   $00, $19, $7e, $a7, $28, $03, $cd, $28        ;; 04:7019 ????????
    db   $70, $c1, $0c, $05, $20, $e5, $c9, $35        ;; 04:7021 ????????
    db   $20, $02, $36, $ff, $7e, $cb, $47, $c0        ;; 04:7029 ????????
    db   $ea, $d4, $d5, $11, $c5, $ff, $19, $2a        ;; 04:7031 ????????
    db   $47, $2a, $4f, $11, $10, $00, $19, $2a        ;; 04:7039 ????????
    db   $ea, $d5, $d5, $11, $29, $00, $19, $2a        ;; 04:7041 ????????
    db   $6e, $67, $fa, $65, $c4, $b8, $30, $06        ;; 04:7049 ????????
    db   $af, $22, $22, $22, $22, $c9, $78, $d6        ;; 04:7051 ????????
    db   $10, $22, $fa, $d5, $d5, $cb, $3f, $81        ;; 04:7059 ????????
    db   $d6, $04, $22, $fa, $d4, $d5, $cb, $3f        ;; 04:7061 ????????
    db   $e6, $07, $c6, $78, $5f, $3e, $00, $ce        ;; 04:7069 ????????
    db   $70, $57, $1a, $22, $36, $00, $c9, $54        ;; 04:7071 ????????
    db   $56, $58, $5a, $5a, $58, $56, $54             ;; 04:7079 ???????
