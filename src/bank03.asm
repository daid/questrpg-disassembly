;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank03", ROMX[$4000], BANK[$03]
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4000 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4008 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4010 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4018 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4020 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4028 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4030 ????????
    db   $1b, $47, $77, $2e, $0d, $09, $00, $00        ;; 03:4038 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4040 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4048 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4050 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4058 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4060 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4068 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4070 ????????
    db   $ff, $7f, $1b, $47, $b4, $01, $00, $00        ;; 03:4078 ????????

data_03_4080:
    db   $cf                                           ;; 03:4080 P
    dw   $cf56                                         ;; 03:4081 pP
    dw   $cf73                                         ;; 03:4083 pP
    dw   $cf90                                         ;; 03:4085 pP
    db   $ad, $cf, $ca, $cf, $e7, $d0, $04, $d0        ;; 03:4087 p.......
    db   $21, $d0, $3e, $d0, $5b, $d0, $78, $d0        ;; 03:408f ........
    db   $95, $d0, $b2, $d0, $cf, $d0, $ec, $d1        ;; 03:4097 .???????
    db   $09, $c8, $cd, $cd, $cd, $cd, $cd, $cd        ;; 03:409f ?.......
    db   $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 03:40a7 ........
    db   $cd, $cd, $cd, $cd, $c9, $ca, $cd, $cd        ;; 03:40af ........
    db   $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 03:40b7 ........
    db   $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd        ;; 03:40bf ........
    db   $cb, $00, $0f, $00, $0f, $00, $32, $00        ;; 03:40c7 ........
    db   $32, $00, $0f, $00, $0f, $00, $04, $01        ;; 03:40cf ........
    db   $01, $01, $01, $00, $00, $12, $36, $36        ;; 03:40d7 ...www..
    db   $00, $00, $00, $00, $04, $0c, $09, $06        ;; 03:40df ........
    db   $0e, $9c, $21                                 ;; 03:40e7 w..

;@mapPointers amount=208
data_03_40ea:
    data_P data_03_428a                                ;; 03:40ea ?? $00
    data_P data_03_42af                                ;; 03:40ec ?? $01
    data_P data_03_42d4                                ;; 03:40ee ?? $02
    data_P data_03_42f9                                ;; 03:40f0 ?? $03
    data_P data_03_431e                                ;; 03:40f2 .. $04
    data_P data_03_4343                                ;; 03:40f4 ?? $05
    data_P data_03_4368                                ;; 03:40f6 ?? $06
    data_P data_03_438d                                ;; 03:40f8 ?? $07
    data_P data_03_43b2                                ;; 03:40fa ?? $08
    data_P data_03_43d7                                ;; 03:40fc ?? $09
    data_P data_03_43fc                                ;; 03:40fe ?? $0a
    data_P data_03_4421                                ;; 03:4100 ?? $0b
    data_P data_03_4446                                ;; 03:4102 .. $0c
    data_P data_03_446b                                ;; 03:4104 ?? $0d
    data_P data_03_4490                                ;; 03:4106 .. $0e
    data_P data_03_44b5                                ;; 03:4108 ?? $0f
    data_P data_03_44da                                ;; 03:410a ?? $10
    data_P data_03_44ff                                ;; 03:410c ?? $11
    data_P data_03_4524                                ;; 03:410e .. $12
    data_P data_03_4549                                ;; 03:4110 ?? $13
    data_P data_03_456e                                ;; 03:4112 ?? $14
    data_P data_03_4593                                ;; 03:4114 ?? $15
    data_P data_03_45b8                                ;; 03:4116 ?? $16
    data_P data_03_45dd                                ;; 03:4118 ?? $17
    data_P data_03_4602                                ;; 03:411a Ww $18
    data_P data_03_4627                                ;; 03:411c ?? $19
    data_P data_03_464c                                ;; 03:411e ?? $1a
    data_P data_03_4671                                ;; 03:4120 ?? $1b
    data_P data_03_4696                                ;; 03:4122 ?? $1c
    data_P data_03_46bb                                ;; 03:4124 ?? $1d
    data_P data_03_46e0                                ;; 03:4126 ?? $1e
    data_P data_03_4705                                ;; 03:4128 ?? $1f
    data_P data_03_472a                                ;; 03:412a ?? $20
    data_P data_03_474f                                ;; 03:412c ?? $21
    data_P data_03_4774                                ;; 03:412e ?? $22
    data_P data_03_4799                                ;; 03:4130 ?? $23
    data_P data_03_47be                                ;; 03:4132 ?? $24
    data_P data_03_47e3                                ;; 03:4134 ?? $25
    data_P data_03_4808                                ;; 03:4136 ?? $26
    data_P data_03_482d                                ;; 03:4138 ?? $27
    data_P data_03_4852                                ;; 03:413a ?? $28
    data_P data_03_4877                                ;; 03:413c ?? $29
    data_P data_03_489c                                ;; 03:413e ?? $2a
    data_P data_03_48c1                                ;; 03:4140 ?? $2b
    data_P data_03_48e6                                ;; 03:4142 ?? $2c
    data_P data_03_490b                                ;; 03:4144 ?? $2d
    data_P data_03_4930                                ;; 03:4146 ?? $2e
    data_P data_03_4955                                ;; 03:4148 ?? $2f
    data_P data_03_497a                                ;; 03:414a ?? $30
    data_P data_03_499f                                ;; 03:414c ?? $31
    data_P data_03_49c4                                ;; 03:414e ?? $32
    data_P data_03_49e9                                ;; 03:4150 ?? $33
    data_P data_03_4a0e                                ;; 03:4152 ?? $34
    data_P data_03_4a33                                ;; 03:4154 ?? $35
    data_P data_03_4a58                                ;; 03:4156 ?? $36
    data_P data_03_4a7d                                ;; 03:4158 ?? $37
    data_P data_03_4aa2                                ;; 03:415a ?? $38
    data_P data_03_4ac7                                ;; 03:415c ?? $39
    data_P data_03_4aec                                ;; 03:415e ?? $3a
    data_P data_03_4b11                                ;; 03:4160 ?? $3b
    data_P data_03_4b36                                ;; 03:4162 ?? $3c
    data_P data_03_4b5b                                ;; 03:4164 ?? $3d
    data_P data_03_4b80                                ;; 03:4166 ?? $3e
    data_P data_03_4ba5                                ;; 03:4168 ?? $3f
    data_P data_03_4bca                                ;; 03:416a ?? $40
    data_P data_03_4bef                                ;; 03:416c ?? $41
    data_P data_03_4c14                                ;; 03:416e ?? $42
    data_P data_03_4c39                                ;; 03:4170 ?? $43
    data_P data_03_4c5e                                ;; 03:4172 ?? $44
    data_P data_03_4c83                                ;; 03:4174 ?? $45
    data_P data_03_4ca8                                ;; 03:4176 ?? $46
    data_P data_03_4ccd                                ;; 03:4178 ?? $47
    data_P data_03_4cf2                                ;; 03:417a ?? $48
    data_P data_03_4d17                                ;; 03:417c ?? $49
    data_P data_03_4d3c                                ;; 03:417e ?? $4a
    data_P data_03_4d61                                ;; 03:4180 ?? $4b
    data_P data_03_4d86                                ;; 03:4182 ?? $4c
    data_P data_03_4dab                                ;; 03:4184 ?? $4d
    data_P data_03_4dd0                                ;; 03:4186 ?? $4e
    data_P data_03_4df5                                ;; 03:4188 ?? $4f
    data_P data_03_4e1a                                ;; 03:418a ?? $50
    data_P data_03_4e3f                                ;; 03:418c ?? $51
    data_P data_03_4e64                                ;; 03:418e ?? $52
    data_P data_03_4e89                                ;; 03:4190 ?? $53
    data_P data_03_4eae                                ;; 03:4192 ?? $54
    data_P data_03_4ed3                                ;; 03:4194 ?? $55
    data_P data_03_4ef8                                ;; 03:4196 ?? $56
    data_P data_03_4f1d                                ;; 03:4198 ?? $57
    data_P data_03_4f42                                ;; 03:419a ?? $58
    data_P data_03_4f67                                ;; 03:419c ?? $59
    data_P data_03_4f8c                                ;; 03:419e ?? $5a
    data_P data_03_4fb1                                ;; 03:41a0 ?? $5b
    data_P data_03_4fd6                                ;; 03:41a2 ?? $5c
    data_P data_03_4ffb                                ;; 03:41a4 ?? $5d
    data_P data_03_5020                                ;; 03:41a6 ?? $5e
    data_P data_03_5045                                ;; 03:41a8 ?? $5f
    data_P data_03_506a                                ;; 03:41aa ?? $60
    data_P data_03_508f                                ;; 03:41ac ?? $61
    data_P data_03_50b4                                ;; 03:41ae ?? $62
    data_P data_03_50d9                                ;; 03:41b0 ?? $63
    data_P data_03_50fe                                ;; 03:41b2 ?? $64
    data_P data_03_5123                                ;; 03:41b4 ?? $65
    data_P data_03_5148                                ;; 03:41b6 ?? $66
    data_P data_03_516d                                ;; 03:41b8 ?? $67
    data_P data_03_5192                                ;; 03:41ba ?? $68
    data_P data_03_51b7                                ;; 03:41bc ?? $69
    data_P data_03_51dc                                ;; 03:41be ?? $6a
    data_P data_03_5201                                ;; 03:41c0 ?? $6b
    data_P data_03_5226                                ;; 03:41c2 ?? $6c
    data_P data_03_524b                                ;; 03:41c4 ?? $6d
    data_P data_03_5270                                ;; 03:41c6 ?? $6e
    data_P data_03_5295                                ;; 03:41c8 ?? $6f
    data_P data_03_52ba                                ;; 03:41ca ?? $70
    data_P data_03_52df                                ;; 03:41cc ?? $71
    data_P data_03_5304                                ;; 03:41ce ?? $72
    data_P data_03_5329                                ;; 03:41d0 ?? $73
    data_P data_03_534e                                ;; 03:41d2 ?? $74
    data_P data_03_5373                                ;; 03:41d4 ?? $75
    data_P data_03_5398                                ;; 03:41d6 ?? $76
    data_P data_03_53bd                                ;; 03:41d8 ?? $77
    data_P data_03_53e2                                ;; 03:41da ?? $78
    data_P data_03_5407                                ;; 03:41dc ?? $79
    data_P data_03_542c                                ;; 03:41de ?? $7a
    data_P data_03_5451                                ;; 03:41e0 ?? $7b
    data_P data_03_5476                                ;; 03:41e2 ?? $7c
    data_P data_03_549b                                ;; 03:41e4 ?? $7d
    data_P data_03_54c0                                ;; 03:41e6 ?? $7e
    data_P data_03_54e5                                ;; 03:41e8 ?? $7f
    data_P data_03_550a                                ;; 03:41ea ?? $80
    data_P data_03_552f                                ;; 03:41ec ?? $81
    data_P data_03_5554                                ;; 03:41ee ?? $82
    data_P data_03_5579                                ;; 03:41f0 ?? $83
    data_P data_03_559e                                ;; 03:41f2 ?? $84
    data_P data_03_55c3                                ;; 03:41f4 ?? $85
    data_P data_03_55e8                                ;; 03:41f6 ?? $86
    data_P data_03_560d                                ;; 03:41f8 ?? $87
    data_P data_03_5632                                ;; 03:41fa ?? $88
    data_P data_03_5657                                ;; 03:41fc ?? $89
    data_P data_03_567c                                ;; 03:41fe ?? $8a
    data_P data_03_56a1                                ;; 03:4200 ?? $8b
    data_P data_03_56c6                                ;; 03:4202 ?? $8c
    data_P data_03_56eb                                ;; 03:4204 ?? $8d
    data_P data_03_5710                                ;; 03:4206 ?? $8e
    data_P data_03_5735                                ;; 03:4208 ?? $8f
    data_P data_03_575a                                ;; 03:420a ?? $90
    data_P data_03_577f                                ;; 03:420c ?? $91
    data_P data_03_57a4                                ;; 03:420e ?? $92
    data_P data_03_57c9                                ;; 03:4210 ?? $93
    data_P data_03_57ee                                ;; 03:4212 ?? $94
    data_P data_03_5813                                ;; 03:4214 ?? $95
    data_P data_03_5838                                ;; 03:4216 ?? $96
    data_P data_03_585d                                ;; 03:4218 ?? $97
    data_P data_03_5882                                ;; 03:421a ?? $98
    data_P data_03_58a7                                ;; 03:421c ?? $99
    data_P data_03_58cc                                ;; 03:421e ?? $9a
    data_P data_03_58f1                                ;; 03:4220 ?? $9b
    data_P data_03_5916                                ;; 03:4222 ?? $9c
    data_P data_03_593b                                ;; 03:4224 ?? $9d
    data_P data_03_5960                                ;; 03:4226 ?? $9e
    data_P data_03_5985                                ;; 03:4228 ?? $9f
    data_P data_03_59aa                                ;; 03:422a ?? $a0
    data_P data_03_59cf                                ;; 03:422c ?? $a1
    data_P data_03_59f4                                ;; 03:422e ?? $a2
    data_P data_03_5a19                                ;; 03:4230 ?? $a3
    data_P data_03_5a3e                                ;; 03:4232 ?? $a4
    data_P data_03_5a63                                ;; 03:4234 ?? $a5
    data_P data_03_5a88                                ;; 03:4236 ?? $a6
    data_P data_03_5aad                                ;; 03:4238 ?? $a7
    data_P data_03_5ad2                                ;; 03:423a ?? $a8
    data_P data_03_5af7                                ;; 03:423c ?? $a9
    data_P data_03_5b1c                                ;; 03:423e ?? $aa
    data_P data_03_5b41                                ;; 03:4240 ?? $ab
    data_P data_03_5b66                                ;; 03:4242 ?? $ac
    data_P data_03_5b8b                                ;; 03:4244 ?? $ad
    data_P data_03_5bb0                                ;; 03:4246 ?? $ae
    data_P data_03_5bd5                                ;; 03:4248 ?? $af
    data_P data_03_5bfa                                ;; 03:424a ?? $b0
    data_P data_03_5c1f                                ;; 03:424c ?? $b1
    data_P data_03_5c44                                ;; 03:424e ?? $b2
    data_P data_03_5c69                                ;; 03:4250 ?? $b3
    data_P data_03_5c8e                                ;; 03:4252 ?? $b4
    data_P data_03_5cb3                                ;; 03:4254 ?? $b5
    data_P data_03_5cd8                                ;; 03:4256 ?? $b6
    data_P data_03_5cfd                                ;; 03:4258 ?? $b7
    data_P data_03_5d22                                ;; 03:425a ?? $b8
    data_P data_03_5d47                                ;; 03:425c ?? $b9
    data_P data_03_5d6c                                ;; 03:425e ?? $ba
    data_P data_03_5d91                                ;; 03:4260 ?? $bb
    data_P data_03_5db6                                ;; 03:4262 ?? $bc
    data_P data_03_5ddb                                ;; 03:4264 ?? $bd
    data_P data_03_5e00                                ;; 03:4266 ?? $be
    data_P data_03_5e25                                ;; 03:4268 ?? $bf
    data_P data_03_5e4a                                ;; 03:426a ?? $c0
    data_P data_03_5e6f                                ;; 03:426c ?? $c1
    data_P data_03_5e94                                ;; 03:426e ?? $c2
    data_P data_03_5eb9                                ;; 03:4270 ?? $c3
    data_P data_03_5ede                                ;; 03:4272 ?? $c4
    data_P data_03_5f03                                ;; 03:4274 ?? $c5
    data_P data_03_5f28                                ;; 03:4276 ?? $c6
    data_P data_03_5f4d                                ;; 03:4278 ?? $c7
    data_P data_03_5f72                                ;; 03:427a .. $c8
    data_P data_03_5f97                                ;; 03:427c .. $c9
    data_P data_03_5fbc                                ;; 03:427e ?? $ca
    data_P data_03_5fe1                                ;; 03:4280 ?? $cb
    data_P data_03_6006                                ;; 03:4282 ?? $cc
    data_P data_03_602b                                ;; 03:4284 ?? $cd
    data_P data_03_6050                                ;; 03:4286 ?? $ce
    data_P data_03_6075                                ;; 03:4288 ?? $cf

data_03_428a:
    map_header $90, $00, $0007, tilemap_25_4b60, attrmap_25_5b60, collisionmap_25_6b60, gfx_25_4000, pal_25_4b20, 64, 64, $0610, $0001, $00 ;; 03:428a

data_03_42af:
    map_header $90, $00, $0007, tilemap_1d_4b60, attrmap_1d_4f60, collisionmap_26_5400, gfx_1d_4000, pal_1d_4b20, 32, 32, $0504, $0000, $04 ;; 03:42af

data_03_42d4:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_26_4000, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:42d4

data_03_42f9:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_26_4400, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:42f9

data_03_431e:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_26_4800, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:431e

data_03_4343:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_26_4c00, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:4343

data_03_4368:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_26_5000, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:4368

data_03_438d:
    map_header $90, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_26_5800, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:438d

data_03_43b2:
    map_header $90, $00, $0007, tilemap_1d_5ec0, attrmap_1d_62c0, collisionmap_26_5c00, gfx_1d_5360, pal_1d_5e80, 32, 32, $0504, $0000, $04 ;; 03:43b2

data_03_43d7:
    map_header $90, $00, $0007, tilemap_1d_7220, attrmap_1d_7620, collisionmap_26_6000, gfx_1d_66c0, pal_1d_71e0, 32, 32, $0504, $0000, $04 ;; 03:43d7

data_03_43fc:
    map_header $81, $00, $0007, tilemap_28_4000, attrmap_28_5000, collisionmap_28_6000, gfx_27_4000, pal_27_6c80, 64, 64, $0610, $0000, $00 ;; 03:43fc

data_03_4421:
    map_header $84, $00, $0007, tilemap_27_6f00, attrmap_27_7300, collisionmap_27_7700, gfx_27_6160, pal_27_6e40, 32, 32, $0504, $0000, $04 ;; 03:4421

data_03_4446:
    map_header $8e, $00, $0007, tilemap_29_4000, attrmap_29_5000, collisionmap_29_6000, gfx_27_4b20, pal_27_6cc0, 64, 64, $0610, $0006, $04 ;; 03:4446

data_03_446b:
    map_header $8e, $00, $0007, tilemap_28_7000, attrmap_28_7400, collisionmap_28_7800, gfx_27_6160, pal_27_6d40, 32, 32, $0504, $0000, $04 ;; 03:446b

data_03_4490:
    map_header $8e, $00, $0007, tilemap_29_7000, attrmap_29_7400, collisionmap_29_7800, gfx_27_4b20, pal_27_6e80, 32, 32, $0504, $0006, $04 ;; 03:4490

data_03_44b5:
    map_header $8e, $00, $0007, tilemap_2a_6000, attrmap_2a_6400, collisionmap_2a_6800, gfx_27_6160, pal_27_6ec0, 32, 32, $0504, $0000, $04 ;; 03:44b5

data_03_44da:
    map_header $8e, $00, $0007, tilemap_2a_4000, attrmap_2a_4400, collisionmap_2a_4800, gfx_27_6160, pal_27_6d00, 32, 32, $0504, $0000, $04 ;; 03:44da

data_03_44ff:
    map_header $8e, $00, $0007, tilemap_2a_4000, attrmap_2a_4400, collisionmap_2a_4c00, gfx_27_6160, pal_27_6d00, 32, 32, $0504, $0000, $04 ;; 03:44ff

data_03_4524:
    map_header $8e, $00, $0007, tilemap_2a_5000, attrmap_2a_5400, collisionmap_2a_5800, gfx_27_6160, pal_27_6d00, 32, 32, $0504, $0000, $04 ;; 03:4524

data_03_4549:
    map_header $8e, $00, $0007, tilemap_2a_4000, attrmap_2a_4400, collisionmap_2a_5c00, gfx_27_6160, pal_27_6d00, 32, 32, $0504, $0000, $04 ;; 03:4549

data_03_456e:
    map_header $8e, $00, $0007, tilemap_2b_4000, attrmap_2b_4400, collisionmap_2b_4800, gfx_27_5640, pal_27_6e00, 32, 32, $0504, $0000, $04 ;; 03:456e

data_03_4593:
    map_header $8e, $00, $0007, tilemap_2b_4c00, attrmap_2b_5000, collisionmap_2b_5400, gfx_27_5640, pal_27_6e00, 32, 32, $0504, $0000, $04 ;; 03:4593

data_03_45b8:
    map_header $8e, $00, $0007, tilemap_2b_5800, attrmap_2b_5c00, collisionmap_2b_6000, gfx_27_5640, pal_27_6e00, 32, 32, $0504, $0000, $04 ;; 03:45b8

data_03_45dd:
    map_header $8e, $00, $0007, tilemap_2b_6400, attrmap_2b_6800, collisionmap_2b_6c00, gfx_27_5640, pal_27_6e00, 32, 32, $0504, $0000, $04 ;; 03:45dd

data_03_4602:
    map_header $8e, $00, $0007, tilemap_2a_6c00, attrmap_2a_7000, collisionmap_2a_7400, gfx_27_6160, pal_27_6dc0, 32, 32, $0504, $0000, $04 ;; 03:4602

data_03_4627:
    map_header $8e, $00, $0007, tilemap_2b_7000, attrmap_2b_7400, collisionmap_2b_7800, gfx_27_6160, pal_27_6d80, 32, 32, $0504, $0000, $04 ;; 03:4627

data_03_464c:
    map_header $81, $01, $001f, tilemap_2d_4000, attrmap_2e_4000, collisionmap_2f_4000, gfx_2c_4800, pal_2c_5320, 128, 128, $0740, $0001, $01 ;; 03:464c

data_03_4671:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_2c_4000, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:4671

data_03_4696:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_2c_4400, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:4696

data_03_46bb:
    map_header $8f, $00, $0007, tilemap_30_4b60, attrmap_30_5b60, collisionmap_30_6b60, gfx_30_4000, pal_30_4b20, 64, 64, $0610, $0000, $00 ;; 03:46bb

data_03_46e0:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_2c_68a0, collisionmap_30_7b60, gfx_22_4000, pal_2c_6ca0, 32, 32, $0504, $000a, $04 ;; 03:46e0

data_03_4705:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_2c_68a0, collisionmap_31_4000, gfx_22_4000, pal_2c_6ca0, 32, 32, $0504, $000a, $04 ;; 03:4705

data_03_472a:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_2c_68a0, collisionmap_31_4400, gfx_22_4000, pal_2c_6ca0, 32, 32, $0504, $000a, $04 ;; 03:472a

data_03_474f:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_2c_68a0, collisionmap_31_4800, gfx_22_4000, pal_2c_6ca0, 32, 32, $0504, $000a, $04 ;; 03:474f

data_03_4774:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_2c_68a0, collisionmap_31_4c00, gfx_22_4000, pal_2c_6ca0, 32, 32, $0504, $000a, $04 ;; 03:4774

data_03_4799:
    map_header $8f, $00, $0007, tilemap_20_5b60, attrmap_2c_6020, collisionmap_31_5000, gfx_1f_66c0, pal_2c_6420, 32, 32, $0504, $0000, $04 ;; 03:4799

data_03_47be:
    map_header $8f, $00, $0007, tilemap_1d_4b60, attrmap_2c_6460, collisionmap_31_5400, gfx_1d_4000, pal_2c_6860, 32, 32, $0504, $0000, $04 ;; 03:47be

data_03_47e3:
    map_header $8f, $00, $0007, tilemap_1f_4b60, attrmap_2c_5360, collisionmap_31_5800, gfx_1f_4000, pal_2c_5760, 32, 32, $0504, $0000, $04 ;; 03:47e3

data_03_4808:
    map_header $8f, $00, $0007, tilemap_1d_5ec0, attrmap_2c_57a0, collisionmap_31_5c00, gfx_1d_5360, pal_2c_5ba0, 32, 32, $0504, $0000, $04 ;; 03:4808

data_03_482d:
    map_header $8f, $00, $0007, tilemap_1d_7220, attrmap_2c_5be0, collisionmap_31_6000, gfx_1d_66c0, pal_2c_5fe0, 32, 32, $0504, $0000, $04 ;; 03:482d

data_03_4852:
    map_header $82, $00, $0007, tilemap_32_4000, attrmap_32_5000, collisionmap_32_6000, gfx_35_4000, pal_34_7c00, 64, 64, $0610, $0000, $04 ;; 03:4852

data_03_4877:
    map_header $82, $00, $0007, tilemap_32_7000, attrmap_33_4000, collisionmap_33_5000, gfx_35_4000, pal_34_7c00, 64, 64, $0610, $0000, $04 ;; 03:4877

data_03_489c:
    map_header $82, $00, $0007, tilemap_31_6400, attrmap_31_6800, collisionmap_31_6c00, gfx_35_4000, pal_34_7c40, 32, 32, $0504, $0000, $04 ;; 03:489c

data_03_48c1:
    map_header $82, $00, $0007, tilemap_31_7000, attrmap_31_7400, collisionmap_31_7800, gfx_35_4000, pal_34_7c40, 32, 32, $0504, $0000, $04 ;; 03:48c1

data_03_48e6:
    map_header $82, $00, $0007, tilemap_31_7c00, attrmap_33_6000, collisionmap_33_6400, gfx_35_4b20, pal_34_7c80, 32, 32, $0504, $000b, $04 ;; 03:48e6

data_03_490b:
    map_header $82, $00, $0007, tilemap_33_6800, attrmap_33_6c00, collisionmap_33_7000, gfx_35_4b20, pal_34_7cc0, 32, 32, $0504, $000b, $04 ;; 03:490b

data_03_4930:
    map_header $82, $00, $0007, tilemap_33_7400, attrmap_33_7800, collisionmap_33_7c00, gfx_35_4b20, pal_34_7d00, 32, 32, $0504, $000b, $04 ;; 03:4930

data_03_4955:
    map_header $82, $00, $0007, tilemap_34_4000, attrmap_34_4400, collisionmap_34_4800, gfx_35_5640, pal_34_7d40, 32, 32, $0504, $0000, $04 ;; 03:4955

data_03_497a:
    map_header $82, $00, $0007, tilemap_34_4c00, attrmap_34_5000, collisionmap_34_5400, gfx_35_5640, pal_34_7d80, 32, 32, $0504, $0000, $04 ;; 03:497a

data_03_499f:
    map_header $82, $00, $0007, tilemap_34_5800, attrmap_34_5c00, collisionmap_34_6000, gfx_35_5640, pal_34_7dc0, 32, 32, $0504, $000c, $04 ;; 03:499f

data_03_49c4:
    map_header $82, $00, $0007, tilemap_34_6400, attrmap_34_6800, collisionmap_34_6c00, gfx_35_5640, pal_34_7e00, 32, 32, $0504, $0000, $04 ;; 03:49c4

data_03_49e9:
    map_header $82, $00, $0007, tilemap_34_7000, attrmap_34_7400, collisionmap_34_7800, gfx_35_4000, pal_34_7e00, 32, 32, $0504, $0000, $04 ;; 03:49e9

data_03_4a0e:
    map_header $92, $00, $0000, tilemap_35_77a0, attrmap_35_7ba0, collisionmap_38_4000, gfx_35_6160, pal_34_7e40, 32, 32, $0504, $0000, $02 ;; 03:4a0e

data_03_4a33:
    map_header $94, $00, $0000, tilemap_36_4000, attrmap_36_5000, collisionmap_36_6000, gfx_35_6160, pal_34_7e40, 32, 128, $0510, $0000, $02 ;; 03:4a33

data_03_4a58:
    map_header $91, $01, $011f, tilemap_36_7000, attrmap_37_4000, collisionmap_37_5000, gfx_35_6c80, pal_34_7e80, 64, 64, $0610, $0001, $02 ;; 03:4a58

data_03_4a7d:
    map_header $91, $01, $011f, tilemap_37_6000, attrmap_37_7000, collisionmap_38_4400, gfx_35_6c80, pal_34_7e80, 64, 64, $0610, $0000, $02 ;; 03:4a7d

data_03_4aa2:
    map_header $91, $01, $011f, tilemap_37_6000, attrmap_37_7000, collisionmap_60_5000, gfx_35_6c80, pal_34_7e80, 64, 64, $0610, $0000, $02 ;; 03:4aa2

data_03_4ac7:
    map_header $91, $01, $011f, tilemap_38_5400, attrmap_38_5800, collisionmap_38_5c00, gfx_35_6c80, pal_34_7e80, 32, 32, $0504, $0000, $02 ;; 03:4ac7

data_03_4aec:
    map_header $91, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_38_6000, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:4aec

data_03_4b11:
    map_header $81, $01, $021f, tilemap_39_4000, attrmap_3a_4000, collisionmap_3b_4000, gfx_38_6400, pal_38_6f20, 64, 256, $0640, $0001, $01 ;; 03:4b11

data_03_4b36:
    map_header $84, $00, $0007, tilemap_1d_5ec0, attrmap_1d_62c0, collisionmap_38_6f60, gfx_1d_5360, pal_1d_5e80, 32, 32, $0504, $0000, $04 ;; 03:4b36

data_03_4b5b:
    map_header $84, $00, $0007, tilemap_1d_7220, attrmap_1d_7620, collisionmap_38_7360, gfx_1d_66c0, pal_1d_71e0, 32, 32, $0504, $0000, $04 ;; 03:4b5b

data_03_4b80:
    map_header $81, $01, $031f, tilemap_3d_4000, attrmap_3e_4000, collisionmap_3f_4000, gfx_3c_4000, pal_3c_4b20, 128, 128, $0740, $0001, $01 ;; 03:4b80

data_03_4ba5:
    map_header $81, $01, $031f, tilemap_79_4000, attrmap_7a_4000, collisionmap_7b_4000, gfx_3c_4000, pal_3c_4b20, 128, 128, $0740, $0001, $01 ;; 03:4ba5

data_03_4bca:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_38_7760, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:4bca

data_03_4bef:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_38_7b60, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:4bef

data_03_4c14:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_3c_4b60, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:4c14

data_03_4c39:
    map_header $8f, $00, $0007, tilemap_3c_4fa0, attrmap_3c_5fa0, collisionmap_3c_6fa0, gfx_40_4000, pal_3c_4f60, 64, 64, $0610, $0000, $00 ;; 03:4c39

data_03_4c5e:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_40_4b20, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:4c5e

data_03_4c83:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_40_4f20, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:4c83

data_03_4ca8:
    map_header $8f, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_40_5320, gfx_22_4000, pal_22_4b20, 32, 32, $0504, $000a, $04 ;; 03:4ca8

data_03_4ccd:
    map_header $8f, $00, $0007, tilemap_21_5ec0, attrmap_21_62c0, collisionmap_40_5720, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0007, $04 ;; 03:4ccd

data_03_4cf2:
    map_header $8f, $00, $0007, tilemap_21_5ec0, attrmap_21_62c0, collisionmap_40_5b20, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0007, $04 ;; 03:4cf2

data_03_4d17:
    map_header $8f, $00, $0007, tilemap_21_5ec0, attrmap_21_62c0, collisionmap_40_5f20, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0007, $04 ;; 03:4d17

data_03_4d3c:
    map_header $93, $00, $0007, tilemap_21_66c0, attrmap_21_6ac0, collisionmap_40_6320, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0000, $04 ;; 03:4d3c

data_03_4d61:
    map_header $93, $00, $0007, tilemap_21_6ec0, attrmap_21_72c0, collisionmap_40_6720, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0000, $04 ;; 03:4d61

data_03_4d86:
    map_header $93, $00, $0007, tilemap_21_76c0, attrmap_21_7ac0, collisionmap_40_6b20, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0000, $04 ;; 03:4d86

data_03_4dab:
    map_header $8f, $00, $0007, tilemap_1d_5ec0, attrmap_1d_62c0, collisionmap_40_6f20, gfx_1d_5360, pal_1d_5e80, 32, 32, $0504, $0000, $04 ;; 03:4dab

data_03_4dd0:
    map_header $8f, $00, $0007, tilemap_1d_7220, attrmap_1d_7620, collisionmap_40_7320, gfx_1d_66c0, pal_1d_71e0, 32, 32, $0504, $0000, $04 ;; 03:4dd0

data_03_4df5:
    map_header $8f, $00, $0007, tilemap_1d_4b60, attrmap_1d_4f60, collisionmap_40_7720, gfx_1d_4000, pal_1d_4b20, 32, 32, $0504, $0000, $04 ;; 03:4df5

data_03_4e1a:
    map_header $91, $01, $041f, tilemap_41_4b20, attrmap_41_5b20, collisionmap_41_6b20, gfx_41_4000, pal_40_7b20, 128, 32, $0710, $0000, $02 ;; 03:4e1a

data_03_4e3f:
    map_header $91, $01, $041f, tilemap_42_4000, attrmap_42_5000, collisionmap_42_6000, gfx_41_4000, pal_40_7b20, 128, 32, $0710, $0000, $02 ;; 03:4e3f

data_03_4e64:
    map_header $91, $01, $041f, tilemap_42_7000, attrmap_43_4000, collisionmap_43_5000, gfx_41_4000, pal_40_7b20, 32, 128, $0510, $0000, $02 ;; 03:4e64

data_03_4e89:
    map_header $91, $01, $041f, tilemap_43_6000, attrmap_43_7000, collisionmap_44_4000, gfx_41_4000, pal_40_7b20, 64, 64, $0610, $0000, $02 ;; 03:4e89

data_03_4eae:
    map_header $91, $01, $041f, tilemap_44_5000, attrmap_44_6000, collisionmap_44_7000, gfx_41_4000, pal_40_7b20, 64, 64, $0610, $0000, $02 ;; 03:4eae

data_03_4ed3:
    map_header $91, $01, $041f, tilemap_45_4000, attrmap_45_5000, collisionmap_45_6000, gfx_41_4000, pal_40_7b20, 32, 128, $0510, $0000, $02 ;; 03:4ed3

data_03_4ef8:
    map_header $91, $01, $041f, tilemap_45_7000, attrmap_46_4000, collisionmap_46_5000, gfx_41_4000, pal_40_7b20, 128, 32, $0710, $0000, $02 ;; 03:4ef8

data_03_4f1d:
    map_header $91, $01, $041f, tilemap_46_6000, attrmap_46_7000, collisionmap_47_4000, gfx_41_4000, pal_40_7b20, 32, 128, $0510, $0000, $02 ;; 03:4f1d

data_03_4f42:
    map_header $91, $01, $041f, tilemap_47_5000, attrmap_47_6000, collisionmap_47_7000, gfx_41_4000, pal_40_7b20, 128, 32, $0710, $0000, $02 ;; 03:4f42

data_03_4f67:
    map_header $91, $00, $001f, tilemap_1f_7220, attrmap_1f_7620, collisionmap_40_7b60, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $02 ;; 03:4f67

data_03_4f8c:
    map_header $90, $00, $0007, tilemap_48_4b20, attrmap_48_5b20, collisionmap_48_6b20, gfx_48_4000, pal_41_7b20, 64, 64, $0610, $0002, $00 ;; 03:4f8c

data_03_4fb1:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_2c_7960, collisionmap_41_7b60, gfx_22_4000, pal_2c_7d60, 32, 32, $0504, $000a, $04 ;; 03:4fb1

data_03_4fd6:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_2c_7960, collisionmap_48_7b20, gfx_22_4000, pal_2c_7d60, 32, 32, $0504, $000a, $04 ;; 03:4fd6

data_03_4ffb:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_2c_7960, collisionmap_2b_7c00, gfx_22_4000, pal_2c_7d60, 32, 32, $0504, $000a, $04 ;; 03:4ffb

data_03_5020:
    map_header $90, $00, $0007, tilemap_22_4b60, attrmap_2c_7960, collisionmap_49_4000, gfx_22_4000, pal_2c_7d60, 32, 32, $0504, $000a, $04 ;; 03:5020

data_03_5045:
    map_header $90, $00, $0007, tilemap_20_4b60, attrmap_2c_6ce0, collisionmap_49_4400, gfx_20_4000, pal_2c_70e0, 32, 32, $0504, $0000, $04 ;; 03:5045

data_03_506a:
    map_header $90, $00, $0007, tilemap_20_5360, attrmap_2c_7120, collisionmap_49_4800, gfx_20_4000, pal_2c_70e0, 32, 32, $0504, $0000, $04 ;; 03:506a

data_03_508f:
    map_header $90, $00, $0007, tilemap_1d_4b60, attrmap_2c_7520, collisionmap_49_4c00, gfx_1d_4000, pal_2c_7920, 32, 32, $0504, $0000, $04 ;; 03:508f

data_03_50b4:
    map_header $90, $00, $0007, tilemap_20_6360, attrmap_20_6760, collisionmap_49_5000, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $0010, $04 ;; 03:50b4

data_03_50d9:
    map_header $90, $00, $0007, tilemap_49_5400, attrmap_49_5800, collisionmap_49_5c00, gfx_48_4000, pal_41_7b20, 32, 32, $0504, $0002, $00 ;; 03:50d9

data_03_50fe:
    map_header $90, $00, $0007, tilemap_49_6000, attrmap_49_6400, collisionmap_49_6800, gfx_48_4000, pal_41_7b20, 32, 32, $0504, $0002, $00 ;; 03:50fe

data_03_5123:
    map_header $90, $00, $0007, tilemap_4a_4b60, attrmap_4a_5b60, collisionmap_4a_6b60, gfx_4a_4000, pal_4a_4b20, 64, 64, $0610, $0008, $00 ;; 03:5123

data_03_5148:
    map_header $90, $00, $0007, tilemap_22_5ec0, attrmap_26_7500, collisionmap_49_6c00, gfx_22_5360, pal_26_7900, 32, 32, $0504, $000e, $04 ;; 03:5148

data_03_516d:
    map_header $90, $00, $0007, tilemap_22_66c0, attrmap_26_7940, collisionmap_49_7000, gfx_22_5360, pal_26_7900, 32, 32, $0504, $0000, $04 ;; 03:516d

data_03_5192:
    map_header $90, $00, $0007, tilemap_22_5ec0, attrmap_26_7500, collisionmap_49_7400, gfx_22_5360, pal_26_7900, 32, 32, $0504, $000e, $04 ;; 03:5192

data_03_51b7:
    map_header $90, $00, $0007, tilemap_22_66c0, attrmap_26_7940, collisionmap_49_7800, gfx_22_5360, pal_26_7900, 32, 32, $0504, $0000, $04 ;; 03:51b7

data_03_51dc:
    map_header $90, $00, $0007, tilemap_22_5ec0, attrmap_26_7500, collisionmap_49_7c00, gfx_22_5360, pal_26_7900, 32, 32, $0504, $000e, $04 ;; 03:51dc

data_03_5201:
    map_header $90, $00, $0007, tilemap_22_66c0, attrmap_26_7940, collisionmap_4a_7b60, gfx_22_5360, pal_26_7900, 32, 32, $0504, $0000, $04 ;; 03:5201

data_03_5226:
    map_header $90, $00, $0007, tilemap_22_5ec0, attrmap_26_7500, collisionmap_4b_4000, gfx_22_5360, pal_26_7900, 32, 32, $0504, $000e, $04 ;; 03:5226

data_03_524b:
    map_header $90, $00, $0007, tilemap_22_66c0, attrmap_26_7940, collisionmap_4b_4400, gfx_22_5360, pal_26_7900, 32, 32, $0504, $0000, $04 ;; 03:524b

data_03_5270:
    map_header $90, $00, $0007, tilemap_22_5ec0, attrmap_26_7500, collisionmap_4b_4800, gfx_22_5360, pal_26_7900, 32, 32, $0504, $000e, $04 ;; 03:5270

data_03_5295:
    map_header $90, $00, $0007, tilemap_22_66c0, attrmap_26_7940, collisionmap_4b_4c00, gfx_22_5360, pal_26_7900, 32, 32, $0504, $0000, $04 ;; 03:5295

data_03_52ba:
    map_header $90, $00, $0007, tilemap_20_76c0, attrmap_25_7b60, collisionmap_4b_5000, gfx_20_6b60, pal_25_7f60, 32, 32, $0504, $0000, $04 ;; 03:52ba

data_03_52df:
    map_header $90, $00, $0007, tilemap_1d_5ec0, attrmap_26_6840, collisionmap_4b_5400, gfx_1d_5360, pal_26_6c40, 32, 32, $0504, $0000, $04 ;; 03:52df

data_03_5304:
    map_header $90, $00, $0007, tilemap_1d_7220, attrmap_26_6c80, collisionmap_4b_5800, gfx_1d_66c0, pal_26_7080, 32, 32, $0504, $0000, $04 ;; 03:5304

data_03_5329:
    map_header $90, $00, $0007, tilemap_1d_4b60, attrmap_26_70c0, collisionmap_4b_5c00, gfx_1d_4000, pal_26_74c0, 32, 32, $0504, $0000, $04 ;; 03:5329

data_03_534e:
    map_header $90, $00, $0007, tilemap_1f_5ec0, attrmap_26_6400, collisionmap_4b_6000, gfx_1f_5360, pal_26_6800, 32, 32, $0504, $0000, $04 ;; 03:534e

data_03_5373:
    map_header $93, $00, $0007, tilemap_21_66c0, attrmap_21_6ac0, collisionmap_4b_6400, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0000, $04 ;; 03:5373

data_03_5398:
    map_header $93, $00, $0007, tilemap_21_6ec0, attrmap_21_72c0, collisionmap_4b_6800, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0000, $04 ;; 03:5398

data_03_53bd:
    map_header $93, $00, $0007, tilemap_21_76c0, attrmap_21_7ac0, collisionmap_4b_6c00, gfx_21_5360, pal_21_5e80, 32, 32, $0504, $0000, $04 ;; 03:53bd

data_03_53e2:
    map_header $94, $01, $051f, tilemap_4c_4000, attrmap_4d_4000, collisionmap_4e_4000, gfx_50_6000, pal_50_6b20, 128, 128, $0740, $0004, $02 ;; 03:53e2

data_03_5407:
    map_header $92, $01, $051f, tilemap_4f_4000, attrmap_4f_6000, collisionmap_50_4000, gfx_50_6000, pal_50_6b20, 64, 128, $0620, $0004, $02 ;; 03:5407

data_03_542c:
    map_header $94, $01, $091f, tilemap_51_4000, attrmap_51_6000, collisionmap_52_4000, gfx_53_7000, pal_53_7b20, 64, 128, $0520, $0000, $02 ;; 03:542c

data_03_5451:
    map_header $94, $01, $091f, tilemap_52_6000, attrmap_52_7000, collisionmap_53_4000, gfx_53_7000, pal_53_7b20, 64, 64, $0510, $0000, $02 ;; 03:5451

data_03_5476:
    map_header $94, $01, $091f, tilemap_53_5000, attrmap_54_4000, collisionmap_54_6000, gfx_53_7000, pal_53_7b20, 64, 128, $0520, $0000, $02 ;; 03:5476

data_03_549b:
    map_header $93, $01, $0b1f, tilemap_55_4000, attrmap_56_4000, collisionmap_57_4000, gfx_50_6b60, pal_50_7680, 128, 128, $0540, $0004, $02 ;; 03:549b

data_03_54c0:
    map_header $93, $01, $0d1f, tilemap_58_4000, attrmap_58_4400, collisionmap_58_4800, gfx_5a_4000, pal_5b_4000, 32, 32, $0504, $0000, $04 ;; 03:54c0

data_03_54e5:
    map_header $89, $01, $0d1f, tilemap_58_5800, attrmap_58_5c00, collisionmap_58_6000, gfx_5a_5640, pal_5b_4080, 32, 32, $0504, $0000, $04 ;; 03:54e5

data_03_550a:
    map_header $89, $01, $0d1f, tilemap_59_4800, attrmap_59_5800, collisionmap_59_6800, gfx_5b_4140, pal_5b_4c60, 64, 64, $0510, $0000, $04 ;; 03:550a

data_03_552f:
    map_header $92, $01, $0d1f, tilemap_58_4c00, attrmap_58_5000, collisionmap_58_5400, gfx_5a_4b20, pal_5b_4040, 32, 32, $0504, $0000, $04 ;; 03:552f

data_03_5554:
    map_header $89, $01, $0d1f, tilemap_58_6400, attrmap_58_6800, collisionmap_58_6c00, gfx_5a_6160, pal_5b_40c0, 32, 32, $0504, $0000, $04 ;; 03:5554

data_03_5579:
    map_header $93, $01, $0d1f, tilemap_58_7000, attrmap_58_7400, collisionmap_58_7800, gfx_5a_6c80, pal_5b_4100, 32, 32, $0504, $0000, $04 ;; 03:5579

data_03_559e:
    map_header $97, $00, $0007, tilemap_5c_4000, attrmap_5c_4800, collisionmap_5c_5000, gfx_5b_5800, pal_5b_6320, 64, 32, $0508, $0001, $04 ;; 03:559e

data_03_55c3:
    map_header $97, $00, $0007, tilemap_60_7000, attrmap_7f_5007, collisionmap_5c_5800, gfx_60_7400, pal_60_7f20, 32, 32, $0504, $0000, $04 ;; 03:55c3

data_03_55e8:
    map_header $97, $00, $0007, tilemap_5c_5c00, attrmap_5c_6400, collisionmap_5c_6c00, gfx_5b_6360, pal_5b_6e80, 64, 32, $0508, $0001, $04 ;; 03:55e8

data_03_560d:
    map_header $97, $00, $0007, tilemap_60_7000, attrmap_7f_5007, collisionmap_5c_7400, gfx_60_7400, pal_60_7f20, 32, 32, $0504, $0000, $04 ;; 03:560d

data_03_5632:
    map_header $85, $01, $071f, tilemap_5d_4000, attrmap_5d_5000, collisionmap_5d_6000, gfx_5f_4c00, pal_5f_5720, 64, 64, $0510, $0001, $04 ;; 03:5632

data_03_5657:
    map_header $85, $00, $0007, tilemap_1e_4b60, attrmap_1e_4f60, collisionmap_5b_6ec0, gfx_1e_4000, pal_1e_4b20, 32, 32, $0504, $000a, $04 ;; 03:5657

data_03_567c:
    map_header $85, $00, $0007, tilemap_1e_5360, attrmap_1e_5760, collisionmap_5b_72c0, gfx_1e_4000, pal_1e_4b20, 32, 32, $0504, $0000, $04 ;; 03:567c

data_03_56a1:
    map_header $95, $00, $0007, tilemap_5d_7000, attrmap_5d_7400, collisionmap_5d_7800, gfx_5f_5760, pal_5f_6280, 32, 32, $0504, $0000, $04 ;; 03:56a1

data_03_56c6:
    map_header $95, $00, $0007, tilemap_1e_66c0, attrmap_1e_6ac0, collisionmap_5b_76c0, gfx_1e_5b60, pal_1e_6680, 32, 32, $0504, $000a, $04 ;; 03:56c6

data_03_56eb:
    map_header $95, $00, $0007, tilemap_1e_6ec0, attrmap_1e_72c0, collisionmap_5b_7ac0, gfx_1e_5b60, pal_1e_6680, 32, 32, $0504, $0000, $04 ;; 03:56eb

data_03_5710:
    map_header $96, $00, $0007, tilemap_5e_4000, attrmap_5e_5000, collisionmap_5e_6000, gfx_5f_62c0, pal_5f_7900, 64, 64, $0510, $0005, $04 ;; 03:5710

data_03_5735:
    map_header $96, $00, $0007, tilemap_5e_7000, attrmap_5e_7400, collisionmap_5e_7800, gfx_5f_6de0, pal_5f_7900, 32, 32, $0504, $0009, $04 ;; 03:5735

data_03_575a:
    map_header $96, $00, $0007, tilemap_5f_4000, attrmap_5f_4400, collisionmap_5f_4800, gfx_5f_6de0, pal_5f_7900, 32, 32, $0504, $0009, $04 ;; 03:575a

data_03_577f:
    map_header $82, $00, $0007, tilemap_62_4000, attrmap_62_4400, collisionmap_62_4800, gfx_61_5b60, pal_61_7cc0, 32, 32, $0504, $0000, $04 ;; 03:577f

data_03_57a4:
    map_header $82, $00, $0007, tilemap_62_4c00, attrmap_62_5000, collisionmap_62_5400, gfx_61_5b60, pal_61_7d00, 32, 32, $0504, $0000, $04 ;; 03:57a4

data_03_57c9:
    map_header $82, $00, $0007, tilemap_62_5800, attrmap_62_5c00, collisionmap_62_6000, gfx_61_5b60, pal_61_7d00, 32, 32, $0504, $0000, $04 ;; 03:57c9

data_03_57ee:
    map_header $82, $00, $0007, tilemap_62_6400, attrmap_62_6800, collisionmap_62_6c00, gfx_61_5b60, pal_61_7d00, 32, 32, $0504, $0000, $04 ;; 03:57ee

data_03_5813:
    map_header $82, $00, $0007, tilemap_62_7000, attrmap_62_7400, collisionmap_62_7800, gfx_61_71a0, pal_61_7d40, 32, 32, $0504, $0000, $04 ;; 03:5813

data_03_5838:
    map_header $82, $00, $0007, tilemap_62_7000, attrmap_62_7400, collisionmap_63_4400, gfx_61_71a0, pal_61_7d40, 32, 32, $0504, $0000, $04 ;; 03:5838

data_03_585d:
    map_header $82, $00, $0007, tilemap_63_4800, attrmap_63_4c00, collisionmap_63_5000, gfx_61_71a0, pal_61_7d80, 32, 32, $0504, $0000, $04 ;; 03:585d

data_03_5882:
    map_header $82, $00, $0007, tilemap_63_5400, attrmap_63_5800, collisionmap_63_5c00, gfx_61_6680, pal_61_7dc0, 32, 32, $0504, $000b, $04 ;; 03:5882

data_03_58a7:
    map_header $82, $00, $0007, tilemap_63_5400, attrmap_63_5800, collisionmap_63_6000, gfx_61_6680, pal_61_7dc0, 32, 32, $0504, $000b, $04 ;; 03:58a7

data_03_58cc:
    map_header $82, $00, $0007, tilemap_63_6400, attrmap_63_6800, collisionmap_63_6c00, gfx_61_71a0, pal_61_7e00, 32, 32, $0504, $0000, $04 ;; 03:58cc

data_03_58f1:
    map_header $82, $00, $0007, tilemap_63_7000, attrmap_63_7400, collisionmap_63_7800, gfx_61_71a0, pal_61_7e40, 32, 32, $0504, $000c, $04 ;; 03:58f1

data_03_5916:
    map_header $82, $00, $0007, tilemap_63_7c00, attrmap_64_4000, collisionmap_64_4400, gfx_61_5b60, pal_61_7e80, 32, 32, $0504, $0000, $04 ;; 03:5916

data_03_593b:
    map_header $82, $00, $0007, tilemap_64_4800, attrmap_64_4c00, collisionmap_64_5000, gfx_61_6680, pal_61_7ec0, 32, 32, $0504, $000b, $04 ;; 03:593b

data_03_5960:
    map_header $82, $00, $0007, tilemap_64_5400, attrmap_64_5800, collisionmap_64_5c00, gfx_61_6680, pal_61_7f00, 32, 32, $0504, $000b, $04 ;; 03:5960

data_03_5985:
    map_header $81, $01, $081f, tilemap_65_4000, attrmap_66_4000, collisionmap_67_4000, gfx_64_6c00, pal_64_7720, 128, 128, $0740, $0001, $01 ;; 03:5985

data_03_59aa:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_64_7760, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:59aa

data_03_59cf:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_64_7b60, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:59cf

data_03_59f4:
    map_header $81, $01, $0a1f, tilemap_68_4000, attrmap_69_4000, collisionmap_6a_4000, gfx_4b_7000, pal_4b_7b20, 128, 128, $0740, $0001, $01 ;; 03:59f4

data_03_5a19:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_4b_7b60, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:5a19

data_03_5a3e:
    map_header $84, $00, $0007, tilemap_1f_7220, attrmap_1f_7620, collisionmap_61_4000, gfx_1f_66c0, pal_1f_71e0, 32, 32, $0504, $000d, $04 ;; 03:5a3e

data_03_5a63:
    map_header $81, $01, $0c1f, tilemap_6b_4b60, attrmap_6b_5b60, collisionmap_6b_6b60, gfx_6b_4000, pal_6b_4b20, 64, 64, $0610, $0001, $01 ;; 03:5a63

data_03_5a88:
    map_header $84, $00, $0007, tilemap_1d_5ec0, attrmap_1d_62c0, collisionmap_62_7c00, gfx_1d_5360, pal_1d_5e80, 32, 32, $0504, $0000, $04 ;; 03:5a88

data_03_5aad:
    map_header $84, $00, $0007, tilemap_1d_7220, attrmap_1d_7620, collisionmap_63_4000, gfx_1d_66c0, pal_1d_71e0, 32, 32, $0504, $0000, $04 ;; 03:5aad

data_03_5ad2:
    map_header $8f, $00, $0007, tilemap_61_4f60, attrmap_61_5360, collisionmap_61_5760, gfx_61_4400, pal_61_4f20, 32, 32, $0504, $0000, $00 ;; 03:5ad2

data_03_5af7:
    map_header $8f, $00, $0007, tilemap_1d_5ec0, attrmap_1d_62c0, collisionmap_64_6000, gfx_1d_5360, pal_1d_5e80, 32, 32, $0504, $0000, $04 ;; 03:5af7

data_03_5b1c:
    map_header $8f, $00, $0007, tilemap_1d_7220, attrmap_1d_7620, collisionmap_64_6400, gfx_1d_66c0, pal_1d_71e0, 32, 32, $0504, $0000, $04 ;; 03:5b1c

data_03_5b41:
    map_header $8f, $00, $0007, tilemap_1d_4b60, attrmap_1d_4f60, collisionmap_64_6800, gfx_1d_4000, pal_1d_4b20, 32, 32, $0504, $0000, $04 ;; 03:5b41

data_03_5b66:
    map_header $91, $00, $0007, tilemap_6c_4b60, attrmap_6c_5b60, collisionmap_6c_6b60, gfx_6c_4000, pal_6c_4b20, 64, 64, $0710, $0000, $00 ;; 03:5b66

data_03_5b8b:
    map_header $91, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_6c_7b60, gfx_22_4000, pal_76_77a0, 32, 32, $0504, $000a, $04 ;; 03:5b8b

data_03_5bb0:
    map_header $91, $00, $0007, tilemap_22_4b60, attrmap_22_4f60, collisionmap_6d_4000, gfx_22_4000, pal_76_77a0, 32, 32, $0504, $000a, $04 ;; 03:5bb0

data_03_5bd5:
    map_header $91, $00, $0007, tilemap_1d_5ec0, attrmap_1d_62c0, collisionmap_6d_4400, gfx_1d_5360, pal_76_77a0, 32, 32, $0504, $0000, $04 ;; 03:5bd5

data_03_5bfa:
    map_header $91, $00, $0007, tilemap_1d_7220, attrmap_1d_7620, collisionmap_6d_4800, gfx_1d_66c0, pal_76_77a0, 32, 32, $0504, $0000, $04 ;; 03:5bfa

data_03_5c1f:
    map_header $91, $00, $0007, tilemap_1d_4b60, attrmap_1d_4f60, collisionmap_6d_4c00, gfx_1d_4000, pal_76_77a0, 32, 32, $0504, $0000, $04 ;; 03:5c1f

data_03_5c44:
    map_header $91, $00, $0007, tilemap_21_4b60, attrmap_21_4f60, collisionmap_6d_5000, gfx_21_4000, pal_76_77a0, 32, 32, $0504, $0000, $04 ;; 03:5c44

data_03_5c69:
    map_header $91, $00, $0007, tilemap_21_4b60, attrmap_21_4f60, collisionmap_6d_5400, gfx_21_4000, pal_76_77a0, 32, 32, $0504, $0000, $04 ;; 03:5c69

data_03_5c8e:
    map_header $8a, $01, $061f, tilemap_6f_4000, attrmap_70_4000, collisionmap_71_4000, gfx_6d_5800, pal_6d_6320, 128, 128, $0740, $000f, $02 ;; 03:5c8e

data_03_5cb3:
    map_header $93, $00, $0007, tilemap_6d_6ec0, attrmap_6d_76c0, collisionmap_50_76c0, gfx_6d_6360, pal_6d_6e80, 32, 64, $0508, $0000, $04 ;; 03:5cb3

data_03_5cd8:
    map_header $89, $00, $0000, tilemap_6e_4b60, attrmap_6e_5360, collisionmap_6e_5b60, gfx_6e_4000, pal_6e_4b20, 32, 64, $0508, $0000, $04 ;; 03:5cd8

data_03_5cfd:
    map_header $89, $00, $0000, tilemap_6e_6ec0, attrmap_6e_72c0, collisionmap_6e_76c0, gfx_6e_6360, pal_6e_6e80, 32, 32, $0504, $0000, $04 ;; 03:5cfd

data_03_5d22:
    map_header $89, $01, $0e1f, tilemap_72_4b60, attrmap_72_5b60, collisionmap_72_6b60, gfx_72_4000, pal_72_4b20, 64, 64, $0610, $0000, $04 ;; 03:5d22

data_03_5d47:
    map_header $89, $01, $0e1f, tilemap_73_4b60, attrmap_73_5b60, collisionmap_73_6b60, gfx_73_4000, pal_73_4b20, 64, 64, $0610, $0000, $04 ;; 03:5d47

data_03_5d6c:
    map_header $89, $01, $0e3f, tilemap_22_4b60, attrmap_76_77e0, collisionmap_76_7be0, gfx_22_4000, pal_76_77a0, 32, 32, $0504, $000a, $04 ;; 03:5d6c

data_03_5d91:
    map_header $89, $01, $0e1f, tilemap_74_4b60, attrmap_74_4f60, collisionmap_74_5360, gfx_74_4000, pal_74_4b20, 32, 32, $0504, $0000, $04 ;; 03:5d91

data_03_5db6:
    map_header $89, $01, $0e1f, tilemap_74_62c0, attrmap_74_6ac0, collisionmap_74_72c0, gfx_74_5760, pal_74_6280, 32, 64, $0508, $000f, $04 ;; 03:5db6

data_03_5ddb:
    map_header $89, $00, $0007, tilemap_22_4b60, attrmap_76_77e0, collisionmap_76_7be0, gfx_22_4000, pal_76_77a0, 32, 32, $0504, $000a, $04 ;; 03:5ddb

data_03_5e00:
    map_header $89, $01, $0e1f, tilemap_73_4b60, attrmap_73_5b60, collisionmap_73_6b60, gfx_73_4000, pal_73_4b20, 64, 64, $0610, $0000, $04 ;; 03:5e00

data_03_5e25:
    map_header $89, $00, $0007, tilemap_25_4b60, attrmap_76_57a0, collisionmap_76_67a0, gfx_25_4000, pal_76_5760, 64, 64, $0610, $0001, $04 ;; 03:5e25

data_03_5e4a:
    map_header $89, $01, $0e1f, tilemap_74_62c0, attrmap_74_6ac0, collisionmap_74_72c0, gfx_74_5760, pal_74_6280, 32, 64, $0508, $000f, $04 ;; 03:5e4a

data_03_5e6f:
    map_header $89, $01, $0e1f, tilemap_76_4b60, attrmap_76_4f60, collisionmap_76_5360, gfx_76_4000, pal_76_4b20, 32, 32, $0504, $0000, $04 ;; 03:5e6f

data_03_5e94:
    map_header $89, $01, $0e1f, tilemap_75_4b60, attrmap_75_5b60, collisionmap_75_6b60, gfx_75_4000, pal_75_4b20, 64, 64, $0610, $0000, $04 ;; 03:5e94

data_03_5eb9:
    map_header $89, $00, $0007, tilemap_77_4000, attrmap_77_4400, collisionmap_77_5800, gfx_77_6800, pal_77_7320, 32, 32, $0504, $0000, $04 ;; 03:5eb9

data_03_5ede:
    map_header $89, $00, $0007, tilemap_77_4800, attrmap_77_4c00, collisionmap_77_5800, gfx_77_7360, pal_77_7e80, 32, 32, $0504, $0000, $04 ;; 03:5ede

data_03_5f03:
    map_header $89, $00, $0007, tilemap_77_5000, attrmap_77_5400, collisionmap_77_5800, gfx_78_4000, pal_78_4b20, 32, 32, $0504, $0000, $04 ;; 03:5f03

data_03_5f28:
    map_header $89, $00, $0007, tilemap_77_5c00, attrmap_77_6000, collisionmap_77_6400, gfx_78_4b60, pal_78_5680, 32, 32, $0504, $0000, $04 ;; 03:5f28

data_03_5f4d:
    map_header $8e, $00, $0007, tilemap_2a_4000, attrmap_2a_4400, collisionmap_27_7b00, gfx_27_6160, pal_27_6d00, 32, 32, $0504, $0000, $04 ;; 03:5f4d

data_03_5f72:
    map_header $81, $00, $0007, tilemap_28_4000, attrmap_28_5000, collisionmap_78_56c0, gfx_27_4000, pal_27_6c80, 64, 64, $0610, $0000, $00 ;; 03:5f72

data_03_5f97:
    map_header $90, $00, $0007, tilemap_25_4b60, attrmap_25_5b60, collisionmap_78_66c0, gfx_25_4000, pal_25_4b20, 64, 64, $0610, $0001, $00 ;; 03:5f97

data_03_5fbc:
    map_header $8f, $00, $0007, tilemap_3c_4fa0, attrmap_3c_5fa0, collisionmap_60_4000, gfx_40_4000, pal_3c_4f60, 64, 64, $0610, $0000, $00 ;; 03:5fbc

data_03_5fe1:
    map_header $82, $00, $0007, tilemap_32_4000, attrmap_32_5000, collisionmap_60_6000, gfx_35_4000, pal_34_7c00, 64, 64, $0610, $0000, $04 ;; 03:5fe1

data_03_6006:
    map_header $92, $01, $051f, tilemap_7c_4000, attrmap_7d_4000, collisionmap_7e_4000, gfx_50_6000, pal_50_6b20, 128, 128, $0740, $0004, $02 ;; 03:6006

data_03_602b:
    map_header $91, $00, $0007, tilemap_6c_4b60, attrmap_6c_5b60, collisionmap_7f_5407, gfx_6c_4000, pal_6c_4b20, 64, 64, $0710, $0000, $00 ;; 03:602b

data_03_6050:
    map_header $90, $00, $0007, tilemap_25_4b60, attrmap_25_5b60, collisionmap_7f_6407, gfx_25_4000, pal_25_4b20, 64, 64, $0610, $0001, $00 ;; 03:6050

data_03_6075:
    map_header $89, $00, $0007, tilemap_18_470e, attrmap_18_4f0e, collisionmap_18_570e, gfx_78_4b60, pal_78_5680, 32, 64, $0508, $0000, $04 ;; 03:6075

;@data format=P amount=206
data_03_609a:
    data_P data_03_6236                                ;; 03:609a ?? $00
    data_P data_03_6236                                ;; 03:609c ?? $01
    data_P data_03_6236                                ;; 03:609e ?? $02
    data_P data_03_6236                                ;; 03:60a0 ?? $03
    data_P data_03_6236                                ;; 03:60a2 ?? $04
    data_P data_03_6236                                ;; 03:60a4 ?? $05
    data_P data_03_6236                                ;; 03:60a6 ?? $06
    data_P data_03_6236                                ;; 03:60a8 ?? $07
    data_P data_03_6237                                ;; 03:60aa ?? $08
    data_P data_03_6237                                ;; 03:60ac ?? $09
    data_P data_03_6237                                ;; 03:60ae ?? $0a
    data_P data_03_6237                                ;; 03:60b0 ?? $0b
    data_P data_03_6237                                ;; 03:60b2 ?? $0c
    data_P data_03_6238                                ;; 03:60b4 ?? $0d
    data_P data_03_6238                                ;; 03:60b6 ?? $0e
    data_P data_03_6238                                ;; 03:60b8 ?? $0f
    data_P data_03_6238                                ;; 03:60ba ?? $10
    data_P data_03_6238                                ;; 03:60bc ?? $11
    data_P data_03_6238                                ;; 03:60be ?? $12
    data_P data_03_6238                                ;; 03:60c0 ?? $13
    data_P data_03_6238                                ;; 03:60c2 ?? $14
    data_P data_03_6238                                ;; 03:60c4 ?? $15
    data_P data_03_6238                                ;; 03:60c6 ?? $16
    data_P data_03_6238                                ;; 03:60c8 ?? $17
    data_P data_03_6238                                ;; 03:60ca ?? $18
    data_P data_03_6238                                ;; 03:60cc ?? $19
    data_P data_03_6238                                ;; 03:60ce ?? $1a
    data_P data_03_6238                                ;; 03:60d0 ?? $1b
    data_P data_03_6238                                ;; 03:60d2 ?? $1c
    data_P data_03_6238                                ;; 03:60d4 ?? $1d
    data_P data_03_6238                                ;; 03:60d6 ?? $1e
    data_P data_03_6238                                ;; 03:60d8 ?? $1f
    data_P data_03_6238                                ;; 03:60da ?? $20
    data_P data_03_6238                                ;; 03:60dc ?? $21
    data_P data_03_6238                                ;; 03:60de ?? $22
    data_P data_03_6238                                ;; 03:60e0 ?? $23
    data_P data_03_623a                                ;; 03:60e2 ?? $24
    data_P data_03_623a                                ;; 03:60e4 ?? $25
    data_P data_03_623a                                ;; 03:60e6 ?? $26
    data_P data_03_623a                                ;; 03:60e8 ?? $27
    data_P data_03_623a                                ;; 03:60ea ?? $28
    data_P data_03_623a                                ;; 03:60ec ?? $29
    data_P data_03_623a                                ;; 03:60ee ?? $2a
    data_P data_03_623a                                ;; 03:60f0 ?? $2b
    data_P data_03_623a                                ;; 03:60f2 ?? $2c
    data_P data_03_623a                                ;; 03:60f4 ?? $2d
    data_P data_03_623b                                ;; 03:60f6 ?? $2e
    data_P data_03_623b                                ;; 03:60f8 ?? $2f
    data_P data_03_623b                                ;; 03:60fa ?? $30
    data_P data_03_623b                                ;; 03:60fc ?? $31
    data_P data_03_623b                                ;; 03:60fe ?? $32
    data_P data_03_623b                                ;; 03:6100 ?? $33
    data_P data_03_623b                                ;; 03:6102 ?? $34
    data_P data_03_623c                                ;; 03:6104 ?? $35
    data_P data_03_623c                                ;; 03:6106 ?? $36
    data_P data_03_623c                                ;; 03:6108 ?? $37
    data_P data_03_623c                                ;; 03:610a ?? $38
    data_P data_03_623c                                ;; 03:610c ?? $39
    data_P data_03_623c                                ;; 03:610e ?? $3a
    data_P data_03_623c                                ;; 03:6110 ?? $3b
    data_P data_03_623d                                ;; 03:6112 ?? $3c
    data_P data_03_623d                                ;; 03:6114 ?? $3d
    data_P data_03_623d                                ;; 03:6116 ?? $3e
    data_P data_03_623d                                ;; 03:6118 ?? $3f
    data_P data_03_623d                                ;; 03:611a ?? $40
    data_P data_03_623d                                ;; 03:611c ?? $41
    data_P data_03_623d                                ;; 03:611e ?? $42
    data_P data_03_623d                                ;; 03:6120 ?? $43
    data_P data_03_623d                                ;; 03:6122 ?? $44
    data_P data_03_623d                                ;; 03:6124 ?? $45
    data_P data_03_623d                                ;; 03:6126 ?? $46
    data_P data_03_623d                                ;; 03:6128 ?? $47
    data_P data_03_623d                                ;; 03:612a ?? $48
    data_P data_03_623d                                ;; 03:612c ?? $49
    data_P data_03_623d                                ;; 03:612e ?? $4a
    data_P data_03_623d                                ;; 03:6130 ?? $4b
    data_P data_03_623d                                ;; 03:6132 ?? $4c
    data_P data_03_623d                                ;; 03:6134 ?? $4d
    data_P data_03_623d                                ;; 03:6136 ?? $4e
    data_P data_03_623e                                ;; 03:6138 ?? $4f
    data_P data_03_623e                                ;; 03:613a ?? $50
    data_P data_03_623e                                ;; 03:613c ?? $51
    data_P data_03_623e                                ;; 03:613e ?? $52
    data_P data_03_623e                                ;; 03:6140 ?? $53
    data_P data_03_623e                                ;; 03:6142 ?? $54
    data_P data_03_623f                                ;; 03:6144 ?? $55
    data_P data_03_623f                                ;; 03:6146 ?? $56
    data_P data_03_623f                                ;; 03:6148 ?? $57
    data_P data_03_623f                                ;; 03:614a ?? $58
    data_P data_03_623f                                ;; 03:614c ?? $59
    data_P data_03_623f                                ;; 03:614e ?? $5a
    data_P data_03_623f                                ;; 03:6150 ?? $5b
    data_P data_03_623f                                ;; 03:6152 ?? $5c
    data_P data_03_623f                                ;; 03:6154 ?? $5d
    data_P data_03_623f                                ;; 03:6156 ?? $5e
    data_P data_03_623f                                ;; 03:6158 ?? $5f
    data_P data_03_623f                                ;; 03:615a ?? $60
    data_P data_03_623f                                ;; 03:615c ?? $61
    data_P data_03_623f                                ;; 03:615e ?? $62
    data_P data_03_623f                                ;; 03:6160 ?? $63
    data_P data_03_623f                                ;; 03:6162 ?? $64
    data_P data_03_623f                                ;; 03:6164 ?? $65
    data_P data_03_623f                                ;; 03:6166 ?? $66
    data_P data_03_623f                                ;; 03:6168 ?? $67
    data_P data_03_623f                                ;; 03:616a ?? $68
    data_P data_03_623f                                ;; 03:616c ?? $69
    data_P data_03_623f                                ;; 03:616e ?? $6a
    data_P data_03_623f                                ;; 03:6170 ?? $6b
    data_P data_03_623f                                ;; 03:6172 ?? $6c
    data_P data_03_623f                                ;; 03:6174 ?? $6d
    data_P data_03_623f                                ;; 03:6176 ?? $6e
    data_P data_03_623f                                ;; 03:6178 ?? $6f
    data_P data_03_623f                                ;; 03:617a ?? $70
    data_P data_03_623f                                ;; 03:617c ?? $71
    data_P data_03_623f                                ;; 03:617e ?? $72
    data_P data_03_623f                                ;; 03:6180 ?? $73
    data_P data_03_623f                                ;; 03:6182 ?? $74
    data_P data_03_623f                                ;; 03:6184 ?? $75
    data_P data_03_623f                                ;; 03:6186 ?? $76
    data_P data_03_623f                                ;; 03:6188 ?? $77
    data_P data_03_623f                                ;; 03:618a ?? $78
    data_P data_03_623f                                ;; 03:618c ?? $79
    data_P data_03_6241                                ;; 03:618e ?? $7a
    data_P data_03_6241                                ;; 03:6190 ?? $7b
    data_P data_03_6242                                ;; 03:6192 ?? $7c
    data_P data_03_6243                                ;; 03:6194 ?? $7d
    data_P data_03_6243                                ;; 03:6196 ?? $7e
    data_P data_03_6244                                ;; 03:6198 ?? $7f
    data_P data_03_6244                                ;; 03:619a ?? $80
    data_P data_03_6244                                ;; 03:619c ?? $81
    data_P data_03_6244                                ;; 03:619e ?? $82
    data_P data_03_6245                                ;; 03:61a0 ?? $83
    data_P data_03_6245                                ;; 03:61a2 ?? $84
    data_P data_03_6245                                ;; 03:61a4 ?? $85
    data_P data_03_6246                                ;; 03:61a6 ?? $86
    data_P data_03_6246                                ;; 03:61a8 ?? $87
    data_P data_03_6246                                ;; 03:61aa ?? $88
    data_P data_03_6246                                ;; 03:61ac ?? $89
    data_P data_03_6247                                ;; 03:61ae ?? $8a
    data_P data_03_6247                                ;; 03:61b0 ?? $8b
    data_P data_03_6247                                ;; 03:61b2 ?? $8c
    data_P data_03_6247                                ;; 03:61b4 ?? $8d
    data_P data_03_6247                                ;; 03:61b6 ?? $8e
    data_P data_03_6247                                ;; 03:61b8 ?? $8f
    data_P data_03_6247                                ;; 03:61ba ?? $90
    data_P data_03_6248                                ;; 03:61bc ?? $91
    data_P data_03_6248                                ;; 03:61be ?? $92
    data_P data_03_6248                                ;; 03:61c0 ?? $93
    data_P data_03_6248                                ;; 03:61c2 ?? $94
    data_P data_03_6248                                ;; 03:61c4 ?? $95
    data_P data_03_6248                                ;; 03:61c6 ?? $96
    data_P data_03_6248                                ;; 03:61c8 ?? $97
    data_P data_03_6248                                ;; 03:61ca ?? $98
    data_P data_03_6248                                ;; 03:61cc ?? $99
    data_P data_03_6248                                ;; 03:61ce ?? $9a
    data_P data_03_6248                                ;; 03:61d0 ?? $9b
    data_P data_03_6248                                ;; 03:61d2 ?? $9c
    data_P data_03_6248                                ;; 03:61d4 ?? $9d
    data_P data_03_6248                                ;; 03:61d6 ?? $9e
    data_P data_03_6248                                ;; 03:61d8 ?? $9f
    data_P data_03_6248                                ;; 03:61da ?? $a0
    data_P data_03_6248                                ;; 03:61dc ?? $a1
    data_P data_03_6248                                ;; 03:61de ?? $a2
    data_P data_03_6248                                ;; 03:61e0 ?? $a3
    data_P data_03_6248                                ;; 03:61e2 ?? $a4
    data_P data_03_6248                                ;; 03:61e4 ?? $a5
    data_P data_03_6249                                ;; 03:61e6 ?? $a6
    data_P data_03_6249                                ;; 03:61e8 ?? $a7
    data_P data_03_6249                                ;; 03:61ea ?? $a8
    data_P data_03_6249                                ;; 03:61ec ?? $a9
    data_P data_03_6249                                ;; 03:61ee ?? $aa
    data_P data_03_6249                                ;; 03:61f0 ?? $ab
    data_P data_03_6249                                ;; 03:61f2 ?? $ac
    data_P data_03_6249                                ;; 03:61f4 ?? $ad
    data_P data_03_6249                                ;; 03:61f6 ?? $ae
    data_P data_03_6249                                ;; 03:61f8 ?? $af
    data_P data_03_6249                                ;; 03:61fa ?? $b0
    data_P data_03_6249                                ;; 03:61fc ?? $b1
    data_P data_03_6249                                ;; 03:61fe ?? $b2
    data_P data_03_6249                                ;; 03:6200 ?? $b3
    data_P data_03_6249                                ;; 03:6202 ?? $b4
    data_P data_03_624a                                ;; 03:6204 ?? $b5
    data_P data_03_624b                                ;; 03:6206 ?? $b6
    data_P data_03_624b                                ;; 03:6208 ?? $b7
    data_P data_03_624c                                ;; 03:620a ?? $b8
    data_P data_03_624c                                ;; 03:620c ?? $b9
    data_P data_03_624c                                ;; 03:620e ?? $ba
    data_P data_03_624c                                ;; 03:6210 ?? $bb
    data_P data_03_624c                                ;; 03:6212 ?? $bc
    data_P data_03_624c                                ;; 03:6214 ?? $bd
    data_P data_03_624c                                ;; 03:6216 ?? $be
    data_P data_03_624c                                ;; 03:6218 ?? $bf
    data_P data_03_624c                                ;; 03:621a ?? $c0
    data_P data_03_624c                                ;; 03:621c ?? $c1
    data_P data_03_624d                                ;; 03:621e ?? $c2
    data_P data_03_624e                                ;; 03:6220 ?? $c3
    data_P data_03_624e                                ;; 03:6222 ?? $c4
    data_P data_03_624e                                ;; 03:6224 ?? $c5
    data_P data_03_624e                                ;; 03:6226 ?? $c6
    data_P $0000                                       ;; 03:6228 ?? $c7
    data_P $0000                                       ;; 03:622a ?? $c8
    data_P $0000                                       ;; 03:622c ?? $c9
    data_P $0000                                       ;; 03:622e ?? $ca
    data_P $0000                                       ;; 03:6230 ?? $cb
    data_P data_03_6249                                ;; 03:6232 ?? $cc
    data_P $0000                                       ;; 03:6234 ?? $cd

data_03_6236:
    db   $01                                           ;; 03:6236 ?

data_03_6237:
    db   $02                                           ;; 03:6237 ?

data_03_6238:
    db   $13, $15                                      ;; 03:6238 ??

data_03_623a:
    db   $03                                           ;; 03:623a ?

data_03_623b:
    db   $04                                           ;; 03:623b ?

data_03_623c:
    db   $05                                           ;; 03:623c ?

data_03_623d:
    db   $0a                                           ;; 03:623d ?

data_03_623e:
    db   $0b                                           ;; 03:623e ?

data_03_623f:
    db   $09, $14                                      ;; 03:623f ??

data_03_6241:
    db   $0f                                           ;; 03:6241 ?

data_03_6242:
    db   $10                                           ;; 03:6242 ?

data_03_6243:
    db   $16                                           ;; 03:6243 ?

data_03_6244:
    db   $11                                           ;; 03:6244 ?

data_03_6245:
    db   $0c                                           ;; 03:6245 ?

data_03_6246:
    db   $0e                                           ;; 03:6246 ?

data_03_6247:
    db   $12                                           ;; 03:6247 ?

data_03_6248:
    db   $11                                           ;; 03:6248 ?

data_03_6249:
    db   $08                                           ;; 03:6249 ?

data_03_624a:
    db   $0d                                           ;; 03:624a ?

data_03_624b:
    db   $17                                           ;; 03:624b ?

data_03_624c:
    db   $18                                           ;; 03:624c ?

data_03_624d:
    db   $19                                           ;; 03:624d ?

;@data format=P amount=207
data_03_624e:
    data_P data_03_63ec                                ;; 03:624e ?? $00
    data_P data_03_63ec                                ;; 03:6250 ?? $01
    data_P data_03_63ec                                ;; 03:6252 ?? $02
    data_P data_03_63ec                                ;; 03:6254 ?? $03
    data_P data_03_63ec                                ;; 03:6256 ?? $04
    data_P data_03_63ec                                ;; 03:6258 ?? $05
    data_P data_03_63ec                                ;; 03:625a ?? $06
    data_P data_03_63ec                                ;; 03:625c ?? $07
    data_P data_03_63ee                                ;; 03:625e ?? $08
    data_P data_03_63ee                                ;; 03:6260 ?? $09
    data_P data_03_63ee                                ;; 03:6262 ?? $0a
    data_P data_03_63ee                                ;; 03:6264 ?? $0b
    data_P data_03_63ee                                ;; 03:6266 ?? $0c
    data_P data_03_63ee                                ;; 03:6268 ?? $0d
    data_P data_03_63f0                                ;; 03:626a ?? $0e
    data_P data_03_63f0                                ;; 03:626c ?? $0f
    data_P data_03_63f0                                ;; 03:626e ?? $10
    data_P data_03_63f0                                ;; 03:6270 ?? $11
    data_P data_03_63f0                                ;; 03:6272 ?? $12
    data_P data_03_63f0                                ;; 03:6274 ?? $13
    data_P data_03_63f0                                ;; 03:6276 ?? $14
    data_P data_03_63f0                                ;; 03:6278 ?? $15
    data_P data_03_63f0                                ;; 03:627a ?? $16
    data_P data_03_63f0                                ;; 03:627c ?? $17
    data_P data_03_63f0                                ;; 03:627e Ww $18
    data_P data_03_63f2                                ;; 03:6280 ?? $19
    data_P data_03_63f6                                ;; 03:6282 ?? $1a
    data_P data_03_63f6                                ;; 03:6284 ?? $1b
    data_P data_03_63f6                                ;; 03:6286 ?? $1c
    data_P $0000                                       ;; 03:6288 ?? $1d
    data_P $0000                                       ;; 03:628a ?? $1e
    data_P $0000                                       ;; 03:628c ?? $1f
    data_P $0000                                       ;; 03:628e ?? $20
    data_P $0000                                       ;; 03:6290 ?? $21
    data_P $0000                                       ;; 03:6292 ?? $22
    data_P $0000                                       ;; 03:6294 ?? $23
    data_P $0000                                       ;; 03:6296 ?? $24
    data_P $0000                                       ;; 03:6298 ?? $25
    data_P $0000                                       ;; 03:629a ?? $26
    data_P $0000                                       ;; 03:629c ?? $27
    data_P $0000                                       ;; 03:629e ?? $28
    data_P $0000                                       ;; 03:62a0 ?? $29
    data_P $0000                                       ;; 03:62a2 ?? $2a
    data_P $0000                                       ;; 03:62a4 ?? $2b
    data_P data_03_63f6                                ;; 03:62a6 ?? $2c
    data_P data_03_63fc                                ;; 03:62a8 ?? $2d
    data_P $0000                                       ;; 03:62aa ?? $2e
    data_P $0000                                       ;; 03:62ac ?? $2f
    data_P $0000                                       ;; 03:62ae ?? $30
    data_P $0000                                       ;; 03:62b0 ?? $31
    data_P $0000                                       ;; 03:62b2 ?? $32
    data_P data_03_6402                                ;; 03:62b4 ?? $33
    data_P data_03_6408                                ;; 03:62b6 ?? $34
    data_P $0000                                       ;; 03:62b8 ?? $35
    data_P $0000                                       ;; 03:62ba ?? $36
    data_P data_03_640c                                ;; 03:62bc ?? $37
    data_P data_03_640e                                ;; 03:62be ?? $38
    data_P $0000                                       ;; 03:62c0 ?? $39
    data_P data_03_6410                                ;; 03:62c2 ?? $3a
    data_P $0000                                       ;; 03:62c4 ?? $3b
    data_P $0000                                       ;; 03:62c6 ?? $3c
    data_P $0000                                       ;; 03:62c8 ?? $3d
    data_P $0000                                       ;; 03:62ca ?? $3e
    data_P $0000                                       ;; 03:62cc ?? $3f
    data_P $0000                                       ;; 03:62ce ?? $40
    data_P $0000                                       ;; 03:62d0 ?? $41
    data_P $0000                                       ;; 03:62d2 ?? $42
    data_P $0000                                       ;; 03:62d4 ?? $43
    data_P $0000                                       ;; 03:62d6 ?? $44
    data_P $0000                                       ;; 03:62d8 ?? $45
    data_P $0000                                       ;; 03:62da ?? $46
    data_P data_03_6412                                ;; 03:62dc ?? $47
    data_P data_03_6416                                ;; 03:62de ?? $48
    data_P data_03_6418                                ;; 03:62e0 ?? $49
    data_P $0000                                       ;; 03:62e2 ?? $4a
    data_P $0000                                       ;; 03:62e4 ?? $4b
    data_P $0000                                       ;; 03:62e6 ?? $4c
    data_P $0000                                       ;; 03:62e8 ?? $4d
    data_P $0000                                       ;; 03:62ea ?? $4e
    data_P $0000                                       ;; 03:62ec ?? $4f
    data_P $0000                                       ;; 03:62ee ?? $50
    data_P $0000                                       ;; 03:62f0 ?? $51
    data_P $0000                                       ;; 03:62f2 ?? $52
    data_P data_03_641a                                ;; 03:62f4 ?? $53
    data_P $0000                                       ;; 03:62f6 ?? $54
    data_P $0000                                       ;; 03:62f8 ?? $55
    data_P $0000                                       ;; 03:62fa ?? $56
    data_P $0000                                       ;; 03:62fc ?? $57
    data_P $0000                                       ;; 03:62fe ?? $58
    data_P data_03_641c                                ;; 03:6300 ?? $59
    data_P $0000                                       ;; 03:6302 ?? $5a
    data_P $0000                                       ;; 03:6304 ?? $5b
    data_P $0000                                       ;; 03:6306 ?? $5c
    data_P $0000                                       ;; 03:6308 ?? $5d
    data_P $0000                                       ;; 03:630a ?? $5e
    data_P $0000                                       ;; 03:630c ?? $5f
    data_P $0000                                       ;; 03:630e ?? $60
    data_P $0000                                       ;; 03:6310 ?? $61
    data_P data_03_641e                                ;; 03:6312 ?? $62
    data_P $0000                                       ;; 03:6314 ?? $63
    data_P $0000                                       ;; 03:6316 ?? $64
    data_P $0000                                       ;; 03:6318 ?? $65
    data_P $0000                                       ;; 03:631a ?? $66
    data_P $0000                                       ;; 03:631c ?? $67
    data_P $0000                                       ;; 03:631e ?? $68
    data_P $0000                                       ;; 03:6320 ?? $69
    data_P $0000                                       ;; 03:6322 ?? $6a
    data_P data_03_6420                                ;; 03:6324 ?? $6b
    data_P data_03_6424                                ;; 03:6326 ?? $6c
    data_P $0000                                       ;; 03:6328 ?? $6d
    data_P $0000                                       ;; 03:632a ?? $6e
    data_P data_03_6426                                ;; 03:632c ?? $6f
    data_P $0000                                       ;; 03:632e ?? $70
    data_P $0000                                       ;; 03:6330 ?? $71
    data_P $0000                                       ;; 03:6332 ?? $72
    data_P $0000                                       ;; 03:6334 ?? $73
    data_P $0000                                       ;; 03:6336 ?? $74
    data_P $0000                                       ;; 03:6338 ?? $75
    data_P $0000                                       ;; 03:633a ?? $76
    data_P $0000                                       ;; 03:633c ?? $77
    data_P data_03_6428                                ;; 03:633e ?? $78
    data_P $0000                                       ;; 03:6340 ?? $79
    data_P data_03_6432                                ;; 03:6342 ?? $7a
    data_P data_03_6438                                ;; 03:6344 ?? $7b
    data_P data_03_643a                                ;; 03:6346 ?? $7c
    data_P data_03_6440                                ;; 03:6348 ?? $7d
    data_P $0000                                       ;; 03:634a ?? $7e
    data_P data_03_644a                                ;; 03:634c ?? $7f
    data_P $0000                                       ;; 03:634e ?? $80
    data_P $0000                                       ;; 03:6350 ?? $81
    data_P $0000                                       ;; 03:6352 ?? $82
    data_P $0000                                       ;; 03:6354 ?? $83
    data_P $0000                                       ;; 03:6356 ?? $84
    data_P data_03_6450                                ;; 03:6358 ?? $85
    data_P $0000                                       ;; 03:635a ?? $86
    data_P $0000                                       ;; 03:635c ?? $87
    data_P data_03_6452                                ;; 03:635e ?? $88
    data_P data_03_6452                                ;; 03:6360 ?? $89
    data_P data_03_6452                                ;; 03:6362 ?? $8a
    data_P data_03_6452                                ;; 03:6364 ?? $8b
    data_P data_03_6452                                ;; 03:6366 ?? $8c
    data_P data_03_6452                                ;; 03:6368 ?? $8d
    data_P data_03_6452                                ;; 03:636a ?? $8e
    data_P data_03_6452                                ;; 03:636c ?? $8f
    data_P data_03_6464                                ;; 03:636e ?? $90
    data_P $0000                                       ;; 03:6370 ?? $91
    data_P $0000                                       ;; 03:6372 ?? $92
    data_P $0000                                       ;; 03:6374 ?? $93
    data_P $0000                                       ;; 03:6376 ?? $94
    data_P $0000                                       ;; 03:6378 ?? $95
    data_P $0000                                       ;; 03:637a ?? $96
    data_P data_03_6466                                ;; 03:637c ?? $97
    data_P $0000                                       ;; 03:637e ?? $98
    data_P $0000                                       ;; 03:6380 ?? $99
    data_P $0000                                       ;; 03:6382 ?? $9a
    data_P $0000                                       ;; 03:6384 ?? $9b
    data_P $0000                                       ;; 03:6386 ?? $9c
    data_P $0000                                       ;; 03:6388 ?? $9d
    data_P $0000                                       ;; 03:638a ?? $9e
    data_P $0000                                       ;; 03:638c ?? $9f
    data_P $0000                                       ;; 03:638e ?? $a0
    data_P $0000                                       ;; 03:6390 ?? $a1
    data_P $0000                                       ;; 03:6392 ?? $a2
    data_P $0000                                       ;; 03:6394 ?? $a3
    data_P data_03_646c                                ;; 03:6396 ?? $a4
    data_P $0000                                       ;; 03:6398 ?? $a5
    data_P $0000                                       ;; 03:639a ?? $a6
    data_P data_03_646e                                ;; 03:639c ?? $a7
    data_P data_03_647a                                ;; 03:639e ?? $a8
    data_P $0000                                       ;; 03:63a0 ?? $a9
    data_P $0000                                       ;; 03:63a2 ?? $aa
    data_P $0000                                       ;; 03:63a4 ?? $ab
    data_P $0000                                       ;; 03:63a6 ?? $ac
    data_P $0000                                       ;; 03:63a8 ?? $ad
    data_P $0000                                       ;; 03:63aa ?? $ae
    data_P $0000                                       ;; 03:63ac ?? $af
    data_P $0000                                       ;; 03:63ae ?? $b0
    data_P $0000                                       ;; 03:63b0 ?? $b1
    data_P $0000                                       ;; 03:63b2 ?? $b2
    data_P $0000                                       ;; 03:63b4 ?? $b3
    data_P data_03_647c                                ;; 03:63b6 ?? $b4
    data_P $0000                                       ;; 03:63b8 ?? $b5
    data_P $0000                                       ;; 03:63ba ?? $b6
    data_P $0000                                       ;; 03:63bc ?? $b7
    data_P $0000                                       ;; 03:63be ?? $b8
    data_P $0000                                       ;; 03:63c0 ?? $b9
    data_P $0000                                       ;; 03:63c2 ?? $ba
    data_P $0000                                       ;; 03:63c4 ?? $bb
    data_P $0000                                       ;; 03:63c6 ?? $bc
    data_P $0000                                       ;; 03:63c8 ?? $bd
    data_P $0000                                       ;; 03:63ca ?? $be
    data_P $0000                                       ;; 03:63cc ?? $bf
    data_P $0000                                       ;; 03:63ce ?? $c0
    data_P $0000                                       ;; 03:63d0 ?? $c1
    data_P $0000                                       ;; 03:63d2 ?? $c2
    data_P $0000                                       ;; 03:63d4 ?? $c3
    data_P $0000                                       ;; 03:63d6 ?? $c4
    data_P $0000                                       ;; 03:63d8 ?? $c5
    data_P $0000                                       ;; 03:63da ?? $c6
    data_P data_03_6486                                ;; 03:63dc ?? $c7
    data_P data_03_63ee                                ;; 03:63de ?? $c8
    data_P data_03_63ec                                ;; 03:63e0 ?? $c9
    data_P $0000                                       ;; 03:63e2 ?? $ca
    data_P $0000                                       ;; 03:63e4 ?? $cb
    data_P data_03_6428                                ;; 03:63e6 ?? $cc
    data_P $0000                                       ;; 03:63e8 ?? $cd
    data_P data_03_63ec                                ;; 03:63ea ?? $ce

data_03_63ec:
    db   $01, $02                                      ;; 03:63ec ??

data_03_63ee:
    db   $02, $03                                      ;; 03:63ee ??

data_03_63f0:
    db   $03, $06                                      ;; 03:63f0 w.

data_03_63f2:
    db   $04, $10, $05, $06                            ;; 03:63f2 ????

data_03_63f6:
    db   $06, $06, $07, $06, $08, $10                  ;; 03:63f6 ??????

data_03_63fc:
    db   $09, $02, $0a, $02, $0b, $06                  ;; 03:63fc ??????

data_03_6402:
    db   $0c, $04, $0d, $0c, $0e, $08                  ;; 03:6402 ??????

data_03_6408:
    db   $0f, $03, $10, $0c                            ;; 03:6408 ????

data_03_640c:
    db   $11, $06                                      ;; 03:640c ??

data_03_640e:
    db   $11, $10                                      ;; 03:640e ??

data_03_6410:
    db   $12, $0c                                      ;; 03:6410 ??

data_03_6412:
    db   $13, $10, $14, $08                            ;; 03:6412 ????

data_03_6416:
    db   $15, $02                                      ;; 03:6416 ??

data_03_6418:
    db   $16, $02                                      ;; 03:6418 ??

data_03_641a:
    db   $17, $04                                      ;; 03:641a ??

data_03_641c:
    db   $18, $10                                      ;; 03:641c ??

data_03_641e:
    db   $19, $0e                                      ;; 03:641e ??

data_03_6420:
    db   $1a, $04, $1b, $07                            ;; 03:6420 ????

data_03_6424:
    db   $1c, $03                                      ;; 03:6424 ??

data_03_6426:
    db   $1d, $10                                      ;; 03:6426 ??

data_03_6428:
    db   $1e, $04, $1f, $08, $20, $03, $21, $10        ;; 03:6428 ????????
    db   $22, $0a                                      ;; 03:6430 ??

data_03_6432:
    db   $23, $04, $24, $06, $25, $10                  ;; 03:6432 ??????

data_03_6438:
    db   $26, $0c                                      ;; 03:6438 ??

data_03_643a:
    db   $27, $06, $28, $0e, $29, $04                  ;; 03:643a ??????

data_03_6440:
    db   $2a, $05, $2b, $04, $2c, $0d, $2d, $0c        ;; 03:6440 ????????
    db   $2e, $05                                      ;; 03:6448 ??

data_03_644a:
    db   $2f, $05, $30, $07, $31, $04                  ;; 03:644a ??????

data_03_6450:
    db   $32, $10                                      ;; 03:6450 ??

data_03_6452:
    db   $3e, $10, $3f, $05, $40, $0b, $41, $01        ;; 03:6452 ????????
    db   $42, $0c, $43, $04, $44, $0d, $45, $10        ;; 03:645a ????????
    db   $46, $0e                                      ;; 03:6462 ??

data_03_6464:
    db   $47, $0f                                      ;; 03:6464 ??

data_03_6466:
    db   $33, $04, $34, $0d, $35, $10                  ;; 03:6466 ??????

data_03_646c:
    db   $36, $0d                                      ;; 03:646c ??

data_03_646e:
    db   $37, $01, $38, $0e, $39, $0d, $3a, $05        ;; 03:646e ????????
    db   $3b, $10, $3c, $0b                            ;; 03:6476 ????

data_03_647a:
    db   $3d, $08                                      ;; 03:647a ??

data_03_647c:
    db   $48, $10, $49, $04, $4a, $08, $4b, $04        ;; 03:647c ????????
    db   $4c, $07                                      ;; 03:6484 ??

data_03_6486:
    db   $4d, $10, $66, $26, $00, $00, $00, $00        ;; 03:6486 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:648e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6496 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:649e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64a6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64ae ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64b6 ????????
    db   $00, $00, $00, $00, $66, $27, $00, $00        ;; 03:64be ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64c6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64ce ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64d6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:64de ????????
    db   $00, $00, $00, $00, $00, $00, $66, $28        ;; 03:64e6 ????????
    db   $66, $29, $66, $2a, $00, $00, $66, $2b        ;; 03:64ee ????????
    db   $66, $2d, $66, $2e, $00, $00, $66, $2f        ;; 03:64f6 ????????
    db   $66, $30, $00, $00, $00, $00, $66, $33        ;; 03:64fe ????????
    db   $66, $36, $00, $00, $00, $00, $00, $00        ;; 03:6506 ????????
    db   $66, $39, $00, $00, $00, $00, $00, $00        ;; 03:650e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6516 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:651e ????????
    db   $00, $00, $00, $00, $66, $3c, $00, $00        ;; 03:6526 ????????
    db   $66, $3d, $00, $00, $00, $00, $66, $3e        ;; 03:652e ????????
    db   $00, $00, $00, $00, $66, $3f, $00, $00        ;; 03:6536 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:653e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6546 ????????
    db   $66, $40, $66, $42, $66, $45, $00, $00        ;; 03:654e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6556 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:655e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6566 ????????
    db   $00, $00, $00, $00, $00, $00, $66, $4a        ;; 03:656e ????????
    db   $00, $00, $66, $4b, $66, $4c, $66, $4d        ;; 03:6576 ????????
    db   $66, $4f, $66, $50, $66, $52, $00, $00        ;; 03:657e ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6586 ????????
    db   $00, $00, $00, $00, $66, $54, $00, $00        ;; 03:658e ????????
    db   $66, $55, $66, $56, $00, $00, $66, $5a        ;; 03:6596 ????????
    db   $66, $5b, $00, $00, $00, $00, $66, $5c        ;; 03:659e ????????
    db   $66, $60, $66, $64, $66, $66, $00, $00        ;; 03:65a6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:65ae ????????
    db   $00, $00, $66, $67, $00, $00, $66, $68        ;; 03:65b6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:65be ????????
    db   $66, $69, $00, $00, $66, $6d, $66, $6f        ;; 03:65c6 ????????
    db   $66, $75, $00, $00, $66, $76, $00, $00        ;; 03:65ce ????????
    db   $66, $7a, $00, $00, $00, $00, $00, $00        ;; 03:65d6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:65de ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:65e6 ????????
    db   $00, $00, $66, $7b, $00, $00, $00, $00        ;; 03:65ee ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:65f6 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:65fe ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:6606 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:660e ????????
    db   $00, $00, $00, $00, $66, $26, $66, $39        ;; 03:6616 ????????
    db   $00, $00, $66, $4b, $00, $00, $66, $26        ;; 03:661e ????????
    db   $00, $01, $02, $03, $04, $05, $06, $07        ;; 03:6626 ????????
    db   $07, $08, $09, $0a, $0b, $0c, $0d, $0e        ;; 03:662e ????????
    db   $0c, $0d, $0e, $0f, $10, $11, $12, $13        ;; 03:6636 ????????
    db   $14, $15, $16, $17, $16, $17, $18, $19        ;; 03:663e ????????
    db   $1a, $1b, $1c, $1d, $1e, $1f, $20, $21        ;; 03:6646 ????????
    db   $22, $23, $24, $25, $26, $27, $28, $29        ;; 03:664e ????????
    db   $2a, $2b, $2c, $2d, $2e, $2f, $30, $31        ;; 03:6656 ????????
    db   $32, $33, $34, $35, $36, $37, $38, $39        ;; 03:665e ????????
    db   $3a, $3b, $3c, $3d, $3e, $3f, $40, $41        ;; 03:6666 ????????
    db   $42, $43, $44, $45, $46, $47, $48, $49        ;; 03:666e ????????
    db   $4a, $4b, $4c, $4d, $4e, $4f, $50, $51        ;; 03:6676 ????????
    db   $52, $53, $54                                 ;; 03:667e ???

;@data format=P amount=207
data_03_6681:
    data_P data_03_681f                                ;; 03:6681 ?? $00
    data_P data_03_6877                                ;; 03:6683 ?? $01
    data_P data_03_687f                                ;; 03:6685 ?? $02
    data_P data_03_6887                                ;; 03:6687 ?? $03
    data_P data_03_688f                                ;; 03:6689 Ww $04
    data_P data_03_6897                                ;; 03:668b ?? $05
    data_P data_03_689f                                ;; 03:668d ?? $06
    data_P data_03_68a7                                ;; 03:668f ?? $07
    data_P data_03_68af                                ;; 03:6691 ?? $08
    data_P data_03_68bf                                ;; 03:6693 ?? $09
    data_P data_03_68c7                                ;; 03:6695 ?? $0a
    data_P data_03_68df                                ;; 03:6697 ?? $0b
    data_P data_03_68e7                                ;; 03:6699 Ww $0c
    data_P data_03_6907                                ;; 03:669b ?? $0d
    data_P data_03_6917                                ;; 03:669d Ww $0e
    data_P data_03_691f                                ;; 03:669f ?? $0f
    data_P data_03_6957                                ;; 03:66a1 ?? $10
    data_P data_03_695f                                ;; 03:66a3 ?? $11
    data_P data_03_6967                                ;; 03:66a5 ?? $12
    data_P data_03_696f                                ;; 03:66a7 ?? $13
    data_P data_03_6977                                ;; 03:66a9 ?? $14
    data_P data_03_6987                                ;; 03:66ab ?? $15
    data_P data_03_6997                                ;; 03:66ad ?? $16
    data_P data_03_69a7                                ;; 03:66af ?? $17
    data_P data_03_69af                                ;; 03:66b1 ?? $18
    data_P data_03_69bf                                ;; 03:66b3 ?? $19
    data_P data_03_69c7                                ;; 03:66b5 ?? $1a
    data_P data_03_69ef                                ;; 03:66b7 ?? $1b
    data_P data_03_69f7                                ;; 03:66b9 ?? $1c
    data_P data_03_69ff                                ;; 03:66bb ?? $1d
    data_P data_03_6a57                                ;; 03:66bd ?? $1e
    data_P data_03_6a5f                                ;; 03:66bf ?? $1f
    data_P data_03_6a67                                ;; 03:66c1 ?? $20
    data_P data_03_6a6f                                ;; 03:66c3 ?? $21
    data_P data_03_6a77                                ;; 03:66c5 ?? $22
    data_P data_03_6a7f                                ;; 03:66c7 ?? $23
    data_P data_03_6a87                                ;; 03:66c9 ?? $24
    data_P data_03_6a8f                                ;; 03:66cb ?? $25
    data_P data_03_6a97                                ;; 03:66cd ?? $26
    data_P data_03_6aa7                                ;; 03:66cf ?? $27
    data_P data_03_6aaf                                ;; 03:66d1 ?? $28
    data_P data_03_6adf                                ;; 03:66d3 ?? $29
    data_P data_03_6b0f                                ;; 03:66d5 ?? $2a
    data_P data_03_6b1f                                ;; 03:66d7 ?? $2b
    data_P data_03_6b37                                ;; 03:66d9 ?? $2c
    data_P data_03_6b3f                                ;; 03:66db ?? $2d
    data_P data_03_6b47                                ;; 03:66dd ?? $2e
    data_P data_03_6b4f                                ;; 03:66df ?? $2f
    data_P data_03_6b57                                ;; 03:66e1 ?? $30
    data_P data_03_6b5f                                ;; 03:66e3 ?? $31
    data_P data_03_6b67                                ;; 03:66e5 ?? $32
    data_P data_03_6b6f                                ;; 03:66e7 ?? $33
    data_P data_03_6b77                                ;; 03:66e9 ?? $34
    data_P data_03_6b7f                                ;; 03:66eb ?? $35
    data_P data_03_6b8f                                ;; 03:66ed ?? $36
    data_P data_03_6ba7                                ;; 03:66ef ?? $37
    data_P data_03_6bb7                                ;; 03:66f1 ?? $38
    data_P data_03_6bc7                                ;; 03:66f3 ?? $39
    data_P data_03_6bdf                                ;; 03:66f5 ?? $3a
    data_P data_03_6be7                                ;; 03:66f7 ?? $3b
    data_P data_03_6bff                                ;; 03:66f9 ?? $3c
    data_P data_03_6c0f                                ;; 03:66fb ?? $3d
    data_P data_03_6c17                                ;; 03:66fd ?? $3e
    data_P data_03_6c67                                ;; 03:66ff ?? $3f
    data_P data_03_6cb7                                ;; 03:6701 ?? $40
    data_P data_03_6cbf                                ;; 03:6703 ?? $41
    data_P data_03_6cc7                                ;; 03:6705 ?? $42
    data_P data_03_6ccf                                ;; 03:6707 ?? $43
    data_P data_03_6d27                                ;; 03:6709 ?? $44
    data_P data_03_6d2f                                ;; 03:670b ?? $45
    data_P data_03_6d37                                ;; 03:670d ?? $46
    data_P data_03_6d3f                                ;; 03:670f ?? $47
    data_P data_03_6d47                                ;; 03:6711 ?? $48
    data_P data_03_6d4f                                ;; 03:6713 ?? $49
    data_P data_03_6d57                                ;; 03:6715 ?? $4a
    data_P data_03_6d67                                ;; 03:6717 ?? $4b
    data_P data_03_6d77                                ;; 03:6719 ?? $4c
    data_P data_03_6d7f                                ;; 03:671b ?? $4d
    data_P data_03_6d8f                                ;; 03:671d ?? $4e
    data_P data_03_6d97                                ;; 03:671f ?? $4f
    data_P data_03_6d9f                                ;; 03:6721 ?? $50
    data_P data_03_6daf                                ;; 03:6723 ?? $51
    data_P data_03_6dbf                                ;; 03:6725 ?? $52
    data_P data_03_6dcf                                ;; 03:6727 ?? $53
    data_P data_03_6de7                                ;; 03:6729 ?? $54
    data_P data_03_6df7                                ;; 03:672b ?? $55
    data_P data_03_6e07                                ;; 03:672d ?? $56
    data_P data_03_6e17                                ;; 03:672f ?? $57
    data_P data_03_6e27                                ;; 03:6731 ?? $58
    data_P data_03_6e37                                ;; 03:6733 ?? $59
    data_P data_03_6e3f                                ;; 03:6735 ?? $5a
    data_P data_03_6e77                                ;; 03:6737 ?? $5b
    data_P data_03_6e7f                                ;; 03:6739 ?? $5c
    data_P data_03_6e87                                ;; 03:673b ?? $5d
    data_P data_03_6e8f                                ;; 03:673d ?? $5e
    data_P data_03_6e97                                ;; 03:673f ?? $5f
    data_P data_03_6ea7                                ;; 03:6741 ?? $60
    data_P data_03_6eb7                                ;; 03:6743 ?? $61
    data_P data_03_6ebf                                ;; 03:6745 ?? $62
    data_P data_03_6ec7                                ;; 03:6747 ?? $63
    data_P data_03_6ed7                                ;; 03:6749 ?? $64
    data_P data_03_6eef                                ;; 03:674b ?? $65
    data_P data_03_6f4f                                ;; 03:674d ?? $66
    data_P data_03_6f5f                                ;; 03:674f ?? $67
    data_P data_03_6f67                                ;; 03:6751 ?? $68
    data_P data_03_6f77                                ;; 03:6753 ?? $69
    data_P data_03_6f7f                                ;; 03:6755 ?? $6a
    data_P data_03_6f8f                                ;; 03:6757 ?? $6b
    data_P data_03_6f97                                ;; 03:6759 ?? $6c
    data_P data_03_6fa7                                ;; 03:675b ?? $6d
    data_P data_03_6faf                                ;; 03:675d ?? $6e
    data_P data_03_6fbf                                ;; 03:675f ?? $6f
    data_P data_03_6fc7                                ;; 03:6761 ?? $70
    data_P data_03_6fcf                                ;; 03:6763 ?? $71
    data_P data_03_6fdf                                ;; 03:6765 ?? $72
    data_P data_03_6fe7                                ;; 03:6767 ?? $73
    data_P data_03_6fef                                ;; 03:6769 ?? $74
    data_P data_03_6ff7                                ;; 03:676b ?? $75
    data_P data_03_7007                                ;; 03:676d ?? $76
    data_P data_03_7017                                ;; 03:676f ?? $77
    data_P data_03_701f                                ;; 03:6771 ?? $78
    data_P data_03_702f                                ;; 03:6773 ?? $79
    data_P data_03_703f                                ;; 03:6775 ?? $7a
    data_P data_03_704f                                ;; 03:6777 ?? $7b
    data_P data_03_705f                                ;; 03:6779 ?? $7c
    data_P data_03_706f                                ;; 03:677b ?? $7d
    data_P data_03_707f                                ;; 03:677d ?? $7e
    data_P data_03_708f                                ;; 03:677f ?? $7f
    data_P data_03_7097                                ;; 03:6781 ?? $80
    data_P data_03_70a7                                ;; 03:6783 ?? $81
    data_P data_03_70a7                                ;; 03:6785 ?? $82
    data_P data_03_70af                                ;; 03:6787 ?? $83
    data_P data_03_70af                                ;; 03:6789 ?? $84
    data_P data_03_70b7                                ;; 03:678b ?? $85
    data_P data_03_70bf                                ;; 03:678d ?? $86
    data_P data_03_70c7                                ;; 03:678f ?? $87
    data_P data_03_70cf                                ;; 03:6791 ?? $88
    data_P data_03_70df                                ;; 03:6793 ?? $89
    data_P data_03_70ef                                ;; 03:6795 ?? $8a
    data_P data_03_70f7                                ;; 03:6797 ?? $8b
    data_P data_03_70ff                                ;; 03:6799 ?? $8c
    data_P data_03_710f                                ;; 03:679b ?? $8d
    data_P data_03_7117                                ;; 03:679d ?? $8e
    data_P data_03_713f                                ;; 03:679f ?? $8f
    data_P data_03_7157                                ;; 03:67a1 ?? $90
    data_P data_03_715f                                ;; 03:67a3 ?? $91
    data_P data_03_716f                                ;; 03:67a5 ?? $92
    data_P data_03_7197                                ;; 03:67a7 ?? $93
    data_P data_03_71c7                                ;; 03:67a9 ?? $94
    data_P data_03_71e7                                ;; 03:67ab ?? $95
    data_P data_03_71ef                                ;; 03:67ad ?? $96
    data_P data_03_71f7                                ;; 03:67af ?? $97
    data_P data_03_71ff                                ;; 03:67b1 ?? $98
    data_P data_03_7207                                ;; 03:67b3 ?? $99
    data_P data_03_720f                                ;; 03:67b5 ?? $9a
    data_P data_03_7217                                ;; 03:67b7 ?? $9b
    data_P data_03_721f                                ;; 03:67b9 ?? $9c
    data_P data_03_7227                                ;; 03:67bb ?? $9d
    data_P data_03_722f                                ;; 03:67bd ?? $9e
    data_P data_03_7237                                ;; 03:67bf ?? $9f
    data_P data_03_725f                                ;; 03:67c1 ?? $a0
    data_P data_03_7267                                ;; 03:67c3 ?? $a1
    data_P data_03_726f                                ;; 03:67c5 ?? $a2
    data_P data_03_729f                                ;; 03:67c7 ?? $a3
    data_P data_03_72a7                                ;; 03:67c9 ?? $a4
    data_P data_03_72af                                ;; 03:67cb ?? $a5
    data_P data_03_72d7                                ;; 03:67cd ?? $a6
    data_P data_03_72e7                                ;; 03:67cf ?? $a7
    data_P data_03_72ef                                ;; 03:67d1 ?? $a8
    data_P data_03_731f                                ;; 03:67d3 ?? $a9
    data_P data_03_732f                                ;; 03:67d5 ?? $aa
    data_P data_03_7337                                ;; 03:67d7 ?? $ab
    data_P data_03_733f                                ;; 03:67d9 ?? $ac
    data_P data_03_737f                                ;; 03:67db ?? $ad
    data_P data_03_7387                                ;; 03:67dd ?? $ae
    data_P data_03_738f                                ;; 03:67df ?? $af
    data_P data_03_739f                                ;; 03:67e1 ?? $b0
    data_P data_03_73a7                                ;; 03:67e3 ?? $b1
    data_P data_03_73af                                ;; 03:67e5 ?? $b2
    data_P data_03_73b7                                ;; 03:67e7 ?? $b3
    data_P data_03_73bf                                ;; 03:67e9 ?? $b4
    data_P data_03_73c7                                ;; 03:67eb ?? $b5
    data_P data_03_73cf                                ;; 03:67ed ?? $b6
    data_P data_03_73df                                ;; 03:67ef ?? $b7
    data_P data_03_73df                                ;; 03:67f1 ?? $b8
    data_P data_03_73e7                                ;; 03:67f3 ?? $b9
    data_P data_03_73f7                                ;; 03:67f5 ?? $ba
    data_P data_03_73ff                                ;; 03:67f7 ?? $bb
    data_P data_03_7407                                ;; 03:67f9 ?? $bc
    data_P data_03_7417                                ;; 03:67fb ?? $bd
    data_P data_03_741f                                ;; 03:67fd ?? $be
    data_P data_03_742f                                ;; 03:67ff ?? $bf
    data_P data_03_743f                                ;; 03:6801 ?? $c0
    data_P data_03_744f                                ;; 03:6803 ?? $c1
    data_P data_03_7457                                ;; 03:6805 ?? $c2
    data_P data_03_7457                                ;; 03:6807 ?? $c3
    data_P data_03_7457                                ;; 03:6809 ?? $c4
    data_P data_03_7457                                ;; 03:680b ?? $c5
    data_P data_03_7457                                ;; 03:680d ?? $c6
    data_P data_03_7457                                ;; 03:680f ?? $c7
    data_P data_03_68c7                                ;; 03:6811 Ww $c8
    data_P data_03_681f                                ;; 03:6813 Ww $c9
    data_P data_03_6ccf                                ;; 03:6815 ?? $ca
    data_P data_03_6aaf                                ;; 03:6817 ?? $cb
    data_P data_03_701f                                ;; 03:6819 ?? $cc
    data_P data_03_733f                                ;; 03:681b ?? $cd
    data_P data_03_681f                                ;; 03:681d ?? $ce

data_03_681f:
    db   $00, $1a, $03, $60, $00, $d8, $02, $00        ;; 03:681f ????????
    db   $00, $0a, $00                                 ;; 03:6827 ..W
    dw   $01a0                                         ;; 03:682a wW
    db   $e8, $03, $00, $00, $08, $00, $58, $00        ;; 03:682c w.??????
    db   $a8, $03, $00, $00, $00, $00, $00, $00        ;; 03:6834 ????????
    db   $00, $00, $00, $00, $01, $00, $58, $00        ;; 03:683c ????????
    db   $98, $03, $00, $00                            ;; 03:6844 ???W
    dw   $0004                                         ;; 03:6848 wW
    db   $50, $00, $b0, $03, $00, $00, $03, $00        ;; 03:684a w...????
    db   $50, $00, $b0, $03, $00, $00, $05, $00        ;; 03:6852 ????????
    db   $50, $00, $b0, $03, $00, $00, $07, $00        ;; 03:685a ????????
    db   $78, $00, $a0, $03, $00, $00, $02, $00        ;; 03:6862 ????????
    db   $50, $00, $b0, $03, $00, $00, $06, $00        ;; 03:686a ????????
    db   $50, $00, $b0, $03, $00                       ;; 03:6872 ?????

data_03_6877:
    db   $00, $ce, $00, $58, $00, $d8, $04, $00        ;; 03:6877 ????????

data_03_687f:
    db   $00, $ce, $00, $58, $01, $38, $04, $00        ;; 03:687f ????????

data_03_6887:
    db   $00, $ce, $01, $58, $00, $78, $04, $00        ;; 03:6887 ????????

data_03_688f:
    db   $00, $ce, $00                                 ;; 03:688f ..W
    dw   $00e8                                         ;; 03:6892 wW
    db   $d8, $04, $00                                 ;; 03:6894 w.?

data_03_6897:
    db   $00, $ce, $01, $48, $00, $d8, $04, $00        ;; 03:6897 ????????

data_03_689f:
    db   $00, $ce, $00, $e8, $01, $48, $04, $00        ;; 03:689f ????????

data_03_68a7:
    db   $00, $ce, $01, $c8, $00, $d0, $04, $00        ;; 03:68a7 ????????

data_03_68af:
    db   $00, $ce, $00, $40, $00, $78, $04, $00        ;; 03:68af ????????
    db   $00, $09, $00, $28, $00, $a8, $01, $00        ;; 03:68b7 ????????

data_03_68bf:
    db   $00, $08, $00, $48, $00, $60, $04, $00        ;; 03:68bf ????????

data_03_68c7:
    db   $00, $ce, $00                                 ;; 03:68c7 ..W
    dw   $00b8                                         ;; 03:68ca wW
    db   $28, $04, $00, $00, $0c, $00, $f8, $01        ;; 03:68cc w.??????
    db   $d8, $03, $00, $00, $0b, $00, $68, $00        ;; 03:68d4 ????????
    db   $98, $03, $00                                 ;; 03:68dc ???

data_03_68df:
    db   $00, $0a, $00, $30, $00, $68, $04, $00        ;; 03:68df ????????

data_03_68e7:
    db   $00, $0a, $01                                 ;; 03:68e7 ..W
    dw   $0020                                         ;; 03:68ea wW
    db   $38, $04, $00, $00, $0d, $00, $d8, $00        ;; 03:68ec w???????
    db   $90, $02, $00, $00, $0f, $00, $10, $00        ;; 03:68f4 ????????
    db   $a8, $01, $00, $00, $0e, $00, $88, $00        ;; 03:68fc ????????
    db   $c0, $03, $00                                 ;; 03:6904 ???

data_03_6907:
    db   $00, $0c, $00, $70, $01, $68, $01, $00        ;; 03:6907 ????????
    db   $00, $18, $00, $a8, $00, $e0, $03, $00        ;; 03:690f ????????

data_03_6917:
    db   $00                                           ;; 03:6917 W
    dw   $010c                                         ;; 03:6918 wW
    dw   $0058                                         ;; 03:691a wW
    db   $88, $04, $00                                 ;; 03:691c w??

data_03_691f:
    db   $00, $0c, $01, $80, $01, $68, $02, $00        ;; 03:691f ????????
    db   $00, $10, $00, $68, $00, $a8, $03, $00        ;; 03:6927 ????????
    db   $00, $11, $00, $68, $00, $a8, $03, $00        ;; 03:692f ????????
    db   $00, $12, $00, $68, $00, $a8, $03, $00        ;; 03:6937 ????????
    db   $00, $13, $00, $68, $00, $a8, $03, $00        ;; 03:693f ????????
    db   $00, $14, $00, $78, $00, $b8, $03, $00        ;; 03:6947 ????????
    db   $00, $c7, $00, $68, $00, $a8, $03, $00        ;; 03:694f ????????

data_03_6957:
    db   $00, $0f, $00, $58, $00, $b0, $04, $00        ;; 03:6957 ????????

data_03_695f:
    db   $00, $0f, $00, $c8, $00, $b0, $04, $00        ;; 03:695f ????????

data_03_6967:
    db   $00, $0f, $00, $90, $00, $b0, $04, $00        ;; 03:6967 ????????

data_03_696f:
    db   $00, $0f, $00, $d8, $00, $b0, $04, $00        ;; 03:696f ????????

data_03_6977:
    db   $00, $0f, $00, $18, $00, $30, $04, $00        ;; 03:6977 ????????
    db   $00, $15, $00, $50, $00, $60, $04, $00        ;; 03:697f ????????

data_03_6987:
    db   $00, $14, $00, $50, $00, $58, $04, $00        ;; 03:6987 ????????
    db   $00, $16, $00, $a0, $00, $60, $04, $00        ;; 03:698f ????????

data_03_6997:
    db   $00, $15, $00, $a0, $00, $58, $04, $00        ;; 03:6997 ????????
    db   $00, $17, $00, $60, $00, $a0, $04, $00        ;; 03:699f ????????

data_03_69a7:
    db   $00, $16, $00, $50, $00, $98, $04, $00        ;; 03:69a7 ????????

data_03_69af:
    db   $00, $0d, $00, $c0, $00, $78, $04, $00        ;; 03:69af ????????
    db   $00, $19, $00, $78, $00, $a8, $04, $00        ;; 03:69b7 ????????

data_03_69bf:
    db   $00, $18, $00, $48, $00, $28, $04, $00        ;; 03:69bf ????????

data_03_69c7:
    db   $00, $ce, $00, $10, $00, $f0, $04, $00        ;; 03:69c7 ????????
    db   $00, $1d, $01, $c8, $01, $e8, $03, $00        ;; 03:69cf ????????
    db   $00, $39, $00, $b0, $00, $e8, $03, $00        ;; 03:69d7 ????????
    db   $00, $1b, $00, $78, $00, $a0, $03, $00        ;; 03:69df ????????
    db   $00, $1c, $00, $78, $00, $a0, $03, $00        ;; 03:69e7 ????????

data_03_69ef:
    db   $00, $1a, $01, $b0, $01, $30, $04, $00        ;; 03:69ef ????????

data_03_69f7:
    db   $00, $1a, $02, $c0, $02, $c0, $03, $00        ;; 03:69f7 ????????

data_03_69ff:
    db   $00, $1a, $00, $60, $02, $40, $04, $00        ;; 03:69ff ????????
    db   $00, $28, $00, $f8, $01, $c0, $03, $00        ;; 03:6a07 ????????
    db   $00, $26, $00, $58, $00, $a8, $03, $00        ;; 03:6a0f ????????
    db   $00, $25, $00, $a8, $00, $b8, $03, $00        ;; 03:6a17 ????????
    db   $00, $24, $00, $58, $00, $98, $03, $00        ;; 03:6a1f ????????
    db   $00, $1e, $00, $50, $00, $b0, $03, $00        ;; 03:6a27 ????????
    db   $00, $1f, $00, $50, $00, $b0, $03, $00        ;; 03:6a2f ????????
    db   $00, $20, $00, $50, $00, $b0, $03, $00        ;; 03:6a37 ????????
    db   $00, $21, $00, $50, $00, $b0, $03, $00        ;; 03:6a3f ????????
    db   $00, $22, $00, $50, $00, $b0, $03, $00        ;; 03:6a47 ????????
    db   $00, $23, $00, $78, $00, $a0, $03, $00        ;; 03:6a4f ????????

data_03_6a57:
    db   $00, $1d, $00, $60, $00, $78, $04, $00        ;; 03:6a57 ????????

data_03_6a5f:
    db   $00, $1d, $00, $18, $01, $10, $04, $00        ;; 03:6a5f ????????

data_03_6a67:
    db   $00, $1d, $00, $60, $01, $10, $04, $00        ;; 03:6a67 ????????

data_03_6a6f:
    db   $00, $1d, $01, $28, $01, $98, $04, $00        ;; 03:6a6f ????????

data_03_6a77:
    db   $00, $1d, $01, $c8, $01, $58, $04, $00        ;; 03:6a77 ????????

data_03_6a7f:
    db   $00, $1d, $00, $18, $00, $78, $04, $00        ;; 03:6a7f ????????

data_03_6a87:
    db   $00, $1d, $01, $18, $00, $f8, $04, $00        ;; 03:6a87 ????????

data_03_6a8f:
    db   $00, $1d, $01, $60, $00, $f8, $04, $00        ;; 03:6a8f ????????

data_03_6a97:
    db   $00, $1d, $01, $c8, $00, $c0, $04, $00        ;; 03:6a97 ????????
    db   $00, $27, $00, $28, $00, $a8, $01, $00        ;; 03:6a9f ????????

data_03_6aa7:
    db   $00, $26, $00, $48, $00, $60, $04, $00        ;; 03:6aa7 ????????

data_03_6aaf:
    db   $00, $2b, $00, $50, $00, $e8, $03, $00        ;; 03:6aaf ????????
    db   $00, $1d, $01, $a0, $00, $30, $04, $00        ;; 03:6ab7 ????????
    db   $00, $29, $00, $70, $01, $20, $03, $00        ;; 03:6abf ????????
    db   $00, $29, $01, $80, $01, $20, $03, $00        ;; 03:6ac7 ????????
    db   $00, $2e, $00, $a8, $00, $50, $04, $00        ;; 03:6acf ????????
    db   $00, $31, $00, $48, $00, $50, $04, $00        ;; 03:6ad7 ????????

data_03_6adf:
    db   $00, $2d, $00, $98, $00, $d0, $03, $00        ;; 03:6adf ????????
    db   $00, $30, $00, $30, $00, $b0, $03, $00        ;; 03:6ae7 ????????
    db   $00, $2f, $00, $b8, $00, $58, $02, $00        ;; 03:6aef ????????
    db   $00, $32, $00, $48, $00, $68, $01, $00        ;; 03:6af7 ????????
    db   $00, $28, $00, $70, $00, $d0, $04, $00        ;; 03:6aff ????????
    db   $00, $28, $01, $80, $00, $d0, $04, $00        ;; 03:6b07 ????????

data_03_6b0f:
    db   $00, $28, $00, $f8, $00, $50, $04, $00        ;; 03:6b0f ????????
    db   $00, $2c, $00, $58, $00, $a8, $03, $00        ;; 03:6b17 ????????

data_03_6b1f:
    db   $00, $28, $00, $f8, $00, $50, $04, $00        ;; 03:6b1f ????????
    db   $00, $2c, $00, $58, $00, $a8, $03, $00        ;; 03:6b27 ????????
    db   $00, $33, $00, $78, $00, $a8, $03, $00        ;; 03:6b2f ????????

data_03_6b37:
    db   $00, $2b, $00, $d0, $00, $10, $03, $00        ;; 03:6b37 ????????

data_03_6b3f:
    db   $00, $29, $00, $70, $00, $60, $04, $00        ;; 03:6b3f ????????

data_03_6b47:
    db   $00, $28, $00, $70, $01, $80, $04, $00        ;; 03:6b47 ????????

data_03_6b4f:
    db   $00, $29, $00, $50, $00, $80, $01, $00        ;; 03:6b4f ????????

data_03_6b57:
    db   $00, $29, $01, $78, $00, $60, $04, $00        ;; 03:6b57 ????????

data_03_6b5f:
    db   $00, $28, $01, $80, $01, $80, $04, $00        ;; 03:6b5f ????????

data_03_6b67:
    db   $00, $29, $01, $90, $00, $78, $02, $00        ;; 03:6b67 ????????

data_03_6b6f:
    db   $00, $2b, $00, $50, $00, $20, $04, $00        ;; 03:6b6f ????????

data_03_6b77:
    db   $00, $35, $00, $70, $00, $20, $04, $00        ;; 03:6b77 ????????

data_03_6b7f:
    db   $00, $34, $00, $78, $00, $e8, $03, $00        ;; 03:6b7f ????????
    db   $00, $36, $00, $20, $00, $18, $04, $00        ;; 03:6b87 ????????

data_03_6b8f:
    db   $00, $35, $00, $80, $03, $e8, $03, $00        ;; 03:6b8f ????????
    db   $00, $3a, $00, $78, $00, $a0, $03, $00        ;; 03:6b97 ????????
    db   $00, $39, $00, $08, $00, $58, $01, $00        ;; 03:6b9f ????????

data_03_6ba7:
    db   $00, $39, $00, $70, $00, $08, $04, $00        ;; 03:6ba7 ????????
    db   $00, $3b, $01, $20, $00, $10, $04, $00        ;; 03:6baf ????????

data_03_6bb7:
    db   $00, $39, $00, $70, $00, $08, $04, $00        ;; 03:6bb7 ????????
    db   $00, $3b, $01, $20, $00, $10, $04, $00        ;; 03:6bbf ????????

data_03_6bc7:
    db   $00, $37, $00, $28, $01, $e8, $03, $00        ;; 03:6bc7 ????????
    db   $00, $36, $01, $e8, $01, $d8, $02, $00        ;; 03:6bcf ????????
    db   $00, $1a, $00, $a8, $03, $d8, $03, $00        ;; 03:6bd7 ????????

data_03_6bdf:
    db   $00, $36, $00, $20, $01, $70, $04, $00        ;; 03:6bdf ????????

data_03_6be7:
    db   $00, $37, $00, $20, $00, $28, $04, $00        ;; 03:6be7 ????????
    db   $00, $3c, $00, $58, $00, $a8, $03, $00        ;; 03:6bef ????????
    db   $00, $3e, $03, $b8, $01, $98, $02, $00        ;; 03:6bf7 ????????

data_03_6bff:
    db   $00, $3b, $01, $10, $05, $a8, $04, $00        ;; 03:6bff ????????
    db   $00, $3d, $00, $28, $00, $a8, $01, $00        ;; 03:6c07 ????????

data_03_6c0f:
    db   $00, $3c, $00, $48, $00, $60, $04, $00        ;; 03:6c0f ????????

data_03_6c17:
    db   $00, $40, $00, $78, $00, $a0, $03, $00        ;; 03:6c17 ????????
    db   $00, $5a, $00, $d8, $01, $e8, $03, $00        ;; 03:6c1f ????????
    db   $00, $43, $00, $78, $01, $e8, $03, $00        ;; 03:6c27 ????????
    db   $00, $42, $00, $78, $00, $a0, $03, $00        ;; 03:6c2f ????????
    db   $00, $79, $01, $48, $00, $08, $04, $00        ;; 03:6c37 ????????
    db   $00, $78, $00, $30, $02, $e0, $03, $00        ;; 03:6c3f ????????
    db   $00, $43, $00, $78, $01, $e8, $03, $00        ;; 03:6c47 ????????
    db   $00, $58, $03, $e8, $00, $d0, $02, $00        ;; 03:6c4f ????????
    db   $00, $41, $00, $78, $00, $a0, $03, $00        ;; 03:6c57 ????????
    db   $00, $9f, $00, $68, $00, $60, $04, $00        ;; 03:6c5f ????????

data_03_6c67:
    db   $00, $40, $00, $78, $00, $a0, $03, $00        ;; 03:6c67 ????????
    db   $00, $5a, $00, $d8, $01, $e8, $03, $00        ;; 03:6c6f ????????
    db   $00, $43, $00, $78, $01, $e8, $03, $00        ;; 03:6c77 ????????
    db   $00, $42, $00, $78, $00, $a0, $03, $00        ;; 03:6c7f ????????
    db   $00, $79, $01, $48, $00, $08, $04, $00        ;; 03:6c87 ????????
    db   $00, $78, $00, $30, $02, $e0, $03, $00        ;; 03:6c8f ????????
    db   $00, $43, $00, $78, $01, $e8, $03, $00        ;; 03:6c97 ????????
    db   $00, $58, $03, $e8, $00, $d0, $02, $00        ;; 03:6c9f ????????
    db   $00, $41, $00, $78, $00, $a0, $03, $00        ;; 03:6ca7 ????????
    db   $00, $9f, $00, $68, $00, $60, $04, $00        ;; 03:6caf ????????

data_03_6cb7:
    db   $00, $3e, $03, $c0, $01, $80, $04, $00        ;; 03:6cb7 ????????

data_03_6cbf:
    db   $00, $3e, $01, $f0, $03, $a8, $03, $00        ;; 03:6cbf ????????

data_03_6cc7:
    db   $00, $3e, $01, $70, $02, $38, $04, $00        ;; 03:6cc7 ????????

data_03_6ccf:
    db   $00, $50, $00, $08, $00, $50, $01, $00        ;; 03:6ccf ????????
    db   $00, $3e, $00, $b8, $03, $a0, $04, $00        ;; 03:6cd7 ????????
    db   $00, $4d, $00, $58, $00, $a8, $03, $00        ;; 03:6cdf ????????
    db   $00, $4f, $00, $58, $00, $98, $03, $00        ;; 03:6ce7 ????????
    db   $00, $44, $00, $50, $00, $b0, $03, $00        ;; 03:6cef ????????
    db   $00, $45, $00, $50, $00, $b0, $03, $00        ;; 03:6cf7 ????????
    db   $00, $46, $00, $50, $00, $b0, $03, $00        ;; 03:6cff ????????
    db   $00, $47, $00, $78, $00, $b0, $03, $00        ;; 03:6d07 ????????
    db   $00, $48, $00, $78, $00, $b0, $03, $00        ;; 03:6d0f ????????
    db   $00, $49, $00, $78, $00, $b0, $03, $00        ;; 03:6d17 ????????
    db   $00, $4a, $00, $78, $00, $b0, $03, $00        ;; 03:6d1f ????????

data_03_6d27:
    db   $00, $43, $00, $b0, $00, $b0, $04, $00        ;; 03:6d27 ????????

data_03_6d2f:
    db   $00, $43, $01, $38, $00, $88, $04, $00        ;; 03:6d2f ????????

data_03_6d37:
    db   $00, $43, $00, $d8, $01, $20, $04, $00        ;; 03:6d37 ????????

data_03_6d3f:
    db   $00, $43, $00, $20, $00, $38, $04, $00        ;; 03:6d3f ????????

data_03_6d47:
    db   $00, $43, $00, $50, $00, $30, $04, $00        ;; 03:6d47 ????????

data_03_6d4f:
    db   $00, $43, $00, $80, $00, $28, $04, $00        ;; 03:6d4f ????????

data_03_6d57:
    db   $00, $43, $01, $c8, $00, $40, $04, $00        ;; 03:6d57 ????????
    db   $00, $4b, $00, $68, $00, $60, $01, $00        ;; 03:6d5f ????????

data_03_6d67:
    db   $00, $4a, $00, $58, $00, $60, $04, $00        ;; 03:6d67 ????????
    db   $00, $4c, $00, $88, $00, $60, $02, $00        ;; 03:6d6f ????????

data_03_6d77:
    db   $00, $4b, $00, $98, $00, $60, $04, $00        ;; 03:6d77 ????????

data_03_6d7f:
    db   $00, $43, $00, $d8, $00, $48, $04, $00        ;; 03:6d7f ????????
    db   $00, $4e, $00, $28, $00, $a8, $01, $00        ;; 03:6d87 ????????

data_03_6d8f:
    db   $00, $4d, $00, $48, $00, $68, $04, $00        ;; 03:6d8f ????????

data_03_6d97:
    db   $00, $43, $01, $68, $00, $f8, $04, $00        ;; 03:6d97 ????????

data_03_6d9f:
    db   $00, $43, $01, $e8, $00, $98, $02, $00        ;; 03:6d9f ????????
    db   $00, $51, $00, $b8, $00, $e8, $03, $00        ;; 03:6da7 ????????

data_03_6daf:
    db   $00, $50, $03, $b8, $00, $08, $04, $00        ;; 03:6daf ????????
    db   $00, $52, $00, $88, $03, $e8, $03, $00        ;; 03:6db7 ????????

data_03_6dbf:
    db   $00, $51, $02, $a8, $00, $08, $04, $00        ;; 03:6dbf ????????
    db   $00, $53, $00, $08, $01, $90, $01, $00        ;; 03:6dc7 ????????

data_03_6dcf:
    db   $00, $52, $00, $e8, $01, $90, $02, $00        ;; 03:6dcf ????????
    db   $00, $54, $01, $c8, $01, $e8, $03, $00        ;; 03:6dd7 ????????
    db   $00, $59, $00, $78, $00, $a0, $03, $00        ;; 03:6ddf ????????

data_03_6de7:
    db   $00, $53, $01, $c8, $00, $08, $04, $00        ;; 03:6de7 ????????
    db   $00, $55, $00, $e8, $00, $50, $02, $00        ;; 03:6def ????????

data_03_6df7:
    db   $00, $54, $00, $08, $00, $50, $01, $00        ;; 03:6df7 ????????
    db   $00, $56, $03, $e8, $00, $58, $02, $00        ;; 03:6dff ????????

data_03_6e07:
    db   $00, $55, $00, $08, $02, $58, $01, $00        ;; 03:6e07 ????????
    db   $00, $57, $00, $e8, $00, $70, $02, $00        ;; 03:6e0f ????????

data_03_6e17:
    db   $00, $56, $00, $08, $00, $70, $01, $00        ;; 03:6e17 ????????
    db   $00, $58, $00, $08, $00, $40, $01, $00        ;; 03:6e1f ????????

data_03_6e27:
    db   $00, $57, $00, $e8, $02, $40, $02, $00        ;; 03:6e27 ????????
    db   $00, $3e, $01, $40, $03, $98, $01, $00        ;; 03:6e2f ????????

data_03_6e37:
    db   $00, $53, $01, $20, $00, $b8, $04, $00        ;; 03:6e37 ????????

data_03_6e3f:
    db   $00, $3e, $01, $d0, $00, $20, $04, $00        ;; 03:6e3f ????????
    db   $00, $5f, $00, $78, $00, $b8, $03, $00        ;; 03:6e47 ????????
    db   $00, $61, $00, $58, $00, $98, $03, $00        ;; 03:6e4f ????????
    db   $00, $5b, $00, $50, $00, $b0, $03, $00        ;; 03:6e57 ????????
    db   $00, $5c, $00, $50, $00, $b0, $03, $00        ;; 03:6e5f ????????
    db   $00, $5d, $00, $50, $00, $b0, $03, $00        ;; 03:6e67 ????????
    db   $00, $5e, $00, $50, $00, $b0, $03, $00        ;; 03:6e6f ????????

data_03_6e77:
    db   $00, $5a, $01, $d8, $00, $a8, $04, $00        ;; 03:6e77 ????????

data_03_6e7f:
    db   $00, $5a, $01, $78, $01, $10, $04, $00        ;; 03:6e7f ????????

data_03_6e87:
    db   $00, $5a, $01, $d8, $01, $10, $04, $00        ;; 03:6e87 ????????

data_03_6e8f:
    db   $00, $5a, $01, $d8, $01, $80, $04, $00        ;; 03:6e8f ????????

data_03_6e97:
    db   $00, $5a, $00, $d8, $00, $78, $04, $00        ;; 03:6e97 ????????
    db   $00, $60, $00, $18, $00, $50, $04, $00        ;; 03:6e9f ????????

data_03_6ea7:
    db   $00, $64, $00, $50, $00, $10, $04, $00        ;; 03:6ea7 ????????
    db   $00, $5f, $00, $38, $00, $50, $01, $00        ;; 03:6eaf ????????

data_03_6eb7:
    db   $00, $5a, $00, $18, $01, $10, $04, $00        ;; 03:6eb7 ????????

data_03_6ebf:
    db   $00, $64, $00, $60, $00, $a8, $04, $00        ;; 03:6ebf ????????

data_03_6ec7:
    db   $00, $60, $00, $28, $00, $b8, $03, $00        ;; 03:6ec7 ????????
    db   $00, $62, $00, $58, $00, $a0, $03, $00        ;; 03:6ecf ????????

data_03_6ed7:
    db   $00, $60, $00, $28, $00, $b8, $03, $00        ;; 03:6ed7 ????????
    db   $00, $62, $00, $58, $00, $a0, $03, $00        ;; 03:6edf ????????
    db   $00, $b4, $03, $c0, $03, $e8, $03, $00        ;; 03:6ee7 ????????

data_03_6eef:
    db   $00, $9f, $03, $80, $00, $60, $04, $00        ;; 03:6eef ????????
    db   $00, $91, $00, $78, $00, $e0, $03, $00        ;; 03:6ef7 ????????
    db   $00, $71, $00, $58, $00, $a8, $03, $00        ;; 03:6eff ????????
    db   $00, $73, $00, $58, $00, $98, $03, $00        ;; 03:6f07 ????????
    db   $00, $74, $00, $a8, $00, $b8, $03, $00        ;; 03:6f0f ????????
    db   $00, $66, $00, $48, $00, $b0, $03, $00        ;; 03:6f17 ????????
    db   $00, $68, $00, $48, $00, $b0, $03, $00        ;; 03:6f1f ????????
    db   $00, $70, $00, $60, $00, $98, $03, $00        ;; 03:6f27 ????????
    db   $00, $6a, $00, $48, $00, $b0, $03, $00        ;; 03:6f2f ????????
    db   $00, $6c, $00, $48, $00, $b0, $03, $00        ;; 03:6f37 ????????
    db   $00, $6e, $00, $48, $00, $b0, $03, $00        ;; 03:6f3f ????????
    db   $00, $75, $00, $78, $00, $b0, $03, $00        ;; 03:6f47 ????????

data_03_6f4f:
    db   $00, $65, $00, $70, $01, $18, $04, $00        ;; 03:6f4f ????????
    db   $00, $67, $00, $48, $00, $68, $01, $00        ;; 03:6f57 ????????

data_03_6f5f:
    db   $00, $66, $00, $38, $00, $48, $04, $00        ;; 03:6f5f ????????

data_03_6f67:
    db   $00, $65, $00, $c8, $01, $18, $04, $00        ;; 03:6f67 ????????
    db   $00, $69, $00, $48, $00, $68, $01, $00        ;; 03:6f6f ????????

data_03_6f77:
    db   $00, $68, $00, $38, $00, $48, $04, $00        ;; 03:6f77 ????????

data_03_6f7f:
    db   $00, $65, $00, $70, $01, $88, $04, $00        ;; 03:6f7f ????????
    db   $00, $6b, $00, $48, $00, $68, $01, $00        ;; 03:6f87 ????????

data_03_6f8f:
    db   $00, $6a, $00, $38, $00, $48, $04, $00        ;; 03:6f8f ????????

data_03_6f97:
    db   $00, $65, $00, $c8, $01, $88, $04, $00        ;; 03:6f97 ????????
    db   $00, $6d, $00, $48, $00, $68, $01, $00        ;; 03:6f9f ????????

data_03_6fa7:
    db   $00, $6c, $00, $38, $00, $48, $04, $00        ;; 03:6fa7 ????????

data_03_6faf:
    db   $00, $65, $01, $60, $01, $88, $04, $00        ;; 03:6faf ????????
    db   $00, $6f, $00, $48, $00, $68, $01, $00        ;; 03:6fb7 ????????

data_03_6fbf:
    db   $00, $6e, $00, $38, $00, $48, $04, $00        ;; 03:6fbf ????????

data_03_6fc7:
    db   $00, $65, $01, $60, $01, $18, $04, $00        ;; 03:6fc7 ????????

data_03_6fcf:
    db   $00, $65, $00, $c8, $01, $e0, $04, $00        ;; 03:6fcf ????????
    db   $00, $72, $00, $28, $00, $a8, $01, $00        ;; 03:6fd7 ????????

data_03_6fdf:
    db   $00, $71, $00, $48, $00, $68, $04, $00        ;; 03:6fdf ????????

data_03_6fe7:
    db   $00, $65, $00, $70, $01, $e0, $04, $00        ;; 03:6fe7 ????????

data_03_6fef:
    db   $00, $65, $01, $60, $01, $e0, $04, $00        ;; 03:6fef ????????

data_03_6ff7:
    db   $00, $65, $01, $e8, $00, $40, $03, $00        ;; 03:6ff7 ????????
    db   $00, $76, $00, $68, $00, $60, $01, $00        ;; 03:6fff ????????

data_03_7007:
    db   $00, $75, $00, $58, $00, $60, $04, $00        ;; 03:7007 ????????
    db   $00, $77, $00, $88, $00, $60, $02, $00        ;; 03:700f ????????

data_03_7017:
    db   $00, $76, $00, $98, $00, $60, $04, $00        ;; 03:7017 ????????

data_03_701f:
    db   $00, $3e, $01, $20, $03, $20, $04, $00        ;; 03:701f ????????
    db   $00, $79, $01, $48, $02, $e0, $03, $00        ;; 03:7027 ????????

data_03_702f:
    db   $00, $78, $02, $98, $00, $10, $04, $00        ;; 03:702f ????????
    db   $00, $3e, $00, $90, $03, $58, $04, $00        ;; 03:7037 ????????

data_03_703f:
    db   $00, $9f, $02, $50, $03, $c0, $04, $00        ;; 03:703f ????????
    db   $00, $7b, $01, $b8, $00, $10, $04, $00        ;; 03:7047 ????????

data_03_704f:
    db   $00, $7a, $01, $b8, $00, $10, $04, $00        ;; 03:704f ????????
    db   $00, $7c, $01, $e8, $00, $30, $02, $00        ;; 03:7057 ????????

data_03_705f:
    db   $00, $7b, $00, $10, $01, $38, $01, $00        ;; 03:705f ????????
    db   $00, $a2, $01, $c8, $00, $10, $04, $00        ;; 03:7067 ????????

data_03_706f:
    db   $00, $a2, $00, $10, $02, $d8, $04, $00        ;; 03:706f ????????
    db   $00, $a5, $01, $e0, $00, $18, $04, $00        ;; 03:7077 ????????

data_03_707f:
    db   $00, $80, $00, $48, $00, $30, $04, $00        ;; 03:707f ????????
    db   $00, $b6, $00, $78, $01, $e8, $03, $00        ;; 03:7087 ????????

data_03_708f:
    db   $00, $80, $00, $28, $01, $e8, $03, $00        ;; 03:708f ????????

data_03_7097:
    db   $00, $7f, $00, $d8, $00, $10, $04, $00        ;; 03:7097 ????????
    db   $00, $7e, $00, $48, $00, $78, $03, $00        ;; 03:709f ????????

data_03_70a7:
    db   $00, $a5, $00, $40, $01, $88, $01, $00        ;; 03:70a7 ????????

data_03_70af:
    db   $00, $85, $00, $78, $00, $a0, $03, $00        ;; 03:70af ????????

data_03_70b7:
    db   $00, $84, $01, $70, $00, $58, $04, $00        ;; 03:70b7 ????????

data_03_70bf:
    db   $00, $87, $00, $78, $00, $a8, $03, $00        ;; 03:70bf ????????

data_03_70c7:
    db   $00, $86, $01, $78, $00, $60, $04, $00        ;; 03:70c7 ????????

data_03_70cf:
    db   $00, $89, $00, $60, $00, $b0, $03, $00        ;; 03:70cf ????????
    db   $00, $b5, $00, $b8, $01, $b0, $02, $00        ;; 03:70d7 ????????

data_03_70df:
    db   $00, $88, $01, $a0, $01, $78, $04, $00        ;; 03:70df ????????
    db   $00, $8a, $00, $a0, $00, $78, $03, $00        ;; 03:70e7 ????????

data_03_70ef:
    db   $00, $89, $00, $40, $00, $88, $04, $00        ;; 03:70ef ????????

data_03_70f7:
    db   $00, $8c, $00, $78, $00, $a8, $03, $00        ;; 03:70f7 ????????

data_03_70ff:
    db   $00, $8b, $00, $58, $00, $60, $04, $00        ;; 03:70ff ????????
    db   $00, $8d, $00, $a0, $00, $78, $03, $00        ;; 03:7107 ????????

data_03_710f:
    db   $00, $8c, $00, $48, $00, $60, $04, $00        ;; 03:710f ????????

data_03_7117:
    db   $00, $a2, $03, $80, $03, $d8, $04, $00        ;; 03:7117 ????????
    db   $00, $8f, $00, $78, $00, $d0, $03, $00        ;; 03:711f ????????
    db   $00, $8f, $00, $38, $00, $58, $01, $00        ;; 03:7127 ????????
    db   $00, $8f, $00, $b8, $00, $58, $02, $00        ;; 03:712f ????????
    db   $00, $90, $00, $78, $00, $c8, $03, $00        ;; 03:7137 ????????

data_03_713f:
    db   $00, $8e, $00, $f8, $01, $20, $04, $00        ;; 03:713f ????????
    db   $00, $8e, $00, $a8, $00, $78, $02, $00        ;; 03:7147 ????????
    db   $00, $8e, $01, $48, $00, $78, $01, $00        ;; 03:714f ????????

data_03_7157:
    db   $00, $8e, $00, $f8, $00, $78, $04, $00        ;; 03:7157 ????????

data_03_715f:
    db   $00, $65, $01, $20, $00, $08, $04, $00        ;; 03:715f ????????
    db   $00, $92, $00, $68, $00, $a0, $03, $00        ;; 03:7167 ????????

data_03_716f:
    db   $00, $91, $00, $78, $00, $20, $04, $00        ;; 03:716f ????????
    db   $00, $97, $00, $78, $00, $c8, $04, $00        ;; 03:7177 ????????
    db   $00, $95, $00, $78, $00, $c8, $04, $00        ;; 03:717f ????????
    db   $00, $96, $00, $78, $00, $c8, $04, $00        ;; 03:7187 ????????
    db   $00, $93, $00, $e0, $00, $80, $03, $00        ;; 03:718f ????????

data_03_7197:
    db   $00, $92, $00, $e0, $00, $48, $04, $00        ;; 03:7197 ????????
    db   $00, $94, $00, $10, $00, $a0, $03, $00        ;; 03:719f ????????
    db   $00, $9a, $00, $60, $00, $b0, $03, $00        ;; 03:71a7 ????????
    db   $00, $9b, $00, $60, $00, $b0, $03, $00        ;; 03:71af ????????
    db   $00, $98, $00, $98, $00, $50, $04, $00        ;; 03:71b7 ????????
    db   $00, $99, $00, $98, $00, $50, $04, $00        ;; 03:71bf ????????

data_03_71c7:
    db   $00, $93, $00, $10, $00, $48, $04, $00        ;; 03:71c7 ????????
    db   $00, $9d, $00, $90, $00, $90, $03, $00        ;; 03:71cf ????????
    db   $00, $9c, $00, $78, $00, $e8, $03, $00        ;; 03:71d7 ????????
    db   $00, $9e, $00, $58, $00, $b0, $03, $00        ;; 03:71df ????????

data_03_71e7:
    db   $00, $92, $00, $68, $00, $58, $04, $00        ;; 03:71e7 ????????

data_03_71ef:
    db   $00, $92, $00, $b8, $00, $58, $04, $00        ;; 03:71ef ????????

data_03_71f7:
    db   $00, $92, $00, $18, $00, $58, $04, $00        ;; 03:71f7 ????????

data_03_71ff:
    db   $00, $93, $00, $30, $00, $a0, $03, $00        ;; 03:71ff ????????

data_03_7207:
    db   $00, $93, $00, $90, $00, $a0, $03, $00        ;; 03:7207 ????????

data_03_720f:
    db   $00, $93, $00, $60, $00, $58, $04, $00        ;; 03:720f ????????

data_03_7217:
    db   $00, $93, $00, $b0, $00, $58, $04, $00        ;; 03:7217 ????????

data_03_721f:
    db   $00, $94, $00, $78, $00, $30, $04, $00        ;; 03:721f ????????

data_03_7227:
    db   $00, $94, $00, $20, $00, $30, $04, $00        ;; 03:7227 ????????

data_03_722f:
    db   $00, $94, $00, $d0, $00, $30, $04, $00        ;; 03:722f ????????

data_03_7237:
    db   $00, $a0, $00, $78, $00, $a0, $03, $00        ;; 03:7237 ????????
    db   $00, $65, $01, $20, $01, $e8, $03, $00        ;; 03:723f ????????
    db   $00, $a1, $00, $78, $00, $a0, $03, $00        ;; 03:7247 ????????
    db   $00, $7a, $01, $c0, $03, $e8, $03, $00        ;; 03:724f ????????
    db   $00, $3b, $01, $18, $05, $b0, $01, $00        ;; 03:7257 ????????

data_03_725f:
    db   $00, $9f, $00, $60, $00, $58, $01, $00        ;; 03:725f ????????

data_03_7267:
    db   $00, $9f, $02, $e0, $03, $50, $04, $00        ;; 03:7267 ????????

data_03_726f:
    db   $00, $7c, $00, $30, $03, $e8, $03, $00        ;; 03:726f ????????
    db   $00, $a3, $00, $78, $00, $a0, $03, $00        ;; 03:7277 ????????
    db   $00, $a8, $00, $78, $00, $e8, $03, $00        ;; 03:727f ????????
    db   $00, $a4, $00, $78, $00, $a0, $03, $00        ;; 03:7287 ????????
    db   $00, $7d, $03, $b8, $00, $10, $04, $00        ;; 03:728f ????????
    db   $00, $8e, $00, $f8, $01, $e8, $03, $00        ;; 03:7297 ????????

data_03_729f:
    db   $00, $a2, $01, $d8, $00, $58, $04, $00        ;; 03:729f ????????

data_03_72a7:
    db   $00, $a2, $01, $d0, $01, $58, $04, $00        ;; 03:72a7 ????????

data_03_72af:
    db   $00, $7d, $00, $10, $01, $b8, $01, $00        ;; 03:72af ????????
    db   $00, $a6, $00, $58, $00, $a8, $03, $00        ;; 03:72b7 ????????
    db   $00, $cd, $00, $f8, $01, $e8, $03, $00        ;; 03:72bf ????????
    db   $00, $82, $00, $e0, $00, $a8, $03, $00        ;; 03:72c7 ????????
    db   $00, $cd, $00, $f8, $00, $68, $04, $00        ;; 03:72cf ????????

data_03_72d7:
    db   $00, $a5, $01, $70, $00, $c0, $01, $00        ;; 03:72d7 ????????
    db   $00, $a7, $00, $28, $00, $a8, $01, $00        ;; 03:72df ????????

data_03_72e7:
    db   $00, $a6, $00, $48, $00, $68, $04, $00        ;; 03:72e7 ????????

data_03_72ef:
    db   $00, $a9, $00, $58, $00, $a8, $03, $00        ;; 03:72ef ????????
    db   $00, $ab, $00, $58, $00, $98, $03, $00        ;; 03:72f7 ????????
    db   $00, $a2, $01, $00, $01, $70, $04, $00        ;; 03:72ff ????????
    db   $00, $a2, $00, $e8, $01, $58, $02, $00        ;; 03:7307 ????????
    db   $00, $a2, $01, $18, $01, $58, $01, $00        ;; 03:730f ????????
    db   $00, $a2, $01, $00, $01, $40, $03, $00        ;; 03:7317 ????????

data_03_731f:
    db   $00, $a8, $00, $98, $00, $60, $04, $00        ;; 03:731f ????????
    db   $00, $aa, $00, $28, $00, $a8, $01, $00        ;; 03:7327 ????????

data_03_732f:
    db   $00, $a9, $00, $48, $00, $68, $04, $00        ;; 03:732f ????????

data_03_7337:
    db   $00, $a8, $00, $48, $00, $90, $04, $00        ;; 03:7337 ????????

data_03_733f:
    db   $00, $a5, $00, $48, $01, $30, $03, $00        ;; 03:733f ????????
    db   $00, $a5, $00, $48, $01, $68, $04, $00        ;; 03:7347 ????????
    db   $00, $af, $00, $58, $00, $a8, $03, $00        ;; 03:734f ????????
    db   $00, $b1, $00, $58, $00, $98, $03, $00        ;; 03:7357 ????????
    db   $00, $ad, $00, $50, $00, $b0, $03, $00        ;; 03:735f ????????
    db   $00, $ae, $00, $50, $00, $b0, $03, $00        ;; 03:7367 ????????
    db   $00, $b2, $00, $48, $00, $c8, $03, $00        ;; 03:736f ????????
    db   $00, $b3, $00, $48, $00, $c8, $03, $00        ;; 03:7377 ????????

data_03_737f:
    db   $00, $cd, $00, $58, $01, $98, $04, $00        ;; 03:737f ????????

data_03_7387:
    db   $00, $cd, $00, $a8, $01, $98, $04, $00        ;; 03:7387 ????????

data_03_738f:
    db   $00, $cd, $01, $28, $01, $10, $04, $00        ;; 03:738f ????????
    db   $00, $b0, $00, $28, $00, $a8, $01, $00        ;; 03:7397 ????????

data_03_739f:
    db   $00, $af, $00, $48, $00, $68, $04, $00        ;; 03:739f ????????

data_03_73a7:
    db   $00, $cd, $01, $88, $01, $58, $04, $00        ;; 03:73a7 ????????

data_03_73af:
    db   $00, $cd, $00, $40, $01, $40, $04, $00        ;; 03:73af ????????

data_03_73b7:
    db   $00, $cd, $00, $90, $01, $58, $04, $00        ;; 03:73b7 ????????

data_03_73bf:
    db   $00, $64, $00, $e0, $00, $18, $04, $00        ;; 03:73bf ????????

data_03_73c7:
    db   $00, $88, $01, $80, $00, $68, $04, $00        ;; 03:73c7 ????????

data_03_73cf:
    db   $00, $7e, $00, $88, $00, $18, $04, $00        ;; 03:73cf ????????
    db   $00, $b7, $00, $48, $00, $e0, $03, $00        ;; 03:73d7 ????????

data_03_73df:
    db   $00, $b9, $00, $48, $01, $e8, $03, $00        ;; 03:73df ????????

data_03_73e7:
    db   $00, $b8, $01, $c0, $00, $70, $04, $00        ;; 03:73e7 ????????
    db   $00, $ba, $00, $50, $00, $b0, $03, $00        ;; 03:73ef ????????

data_03_73f7:
    db   $00, $bb, $00, $78, $00, $e8, $03, $00        ;; 03:73f7 ????????

data_03_73ff:
    db   $00, $bc, $00, $40, $01, $e8, $03, $00        ;; 03:73ff ????????

data_03_7407:
    db   $00, $bb, $00, $78, $00, $30, $04, $00        ;; 03:7407 ????????
    db   $00, $bd, $00, $50, $00, $b0, $03, $00        ;; 03:740f ????????

data_03_7417:
    db   $00, $be, $00, $48, $01, $e8, $03, $00        ;; 03:7417 ????????

data_03_741f:
    db   $00, $bd, $00, $50, $00, $b0, $03, $00        ;; 03:741f ????????
    db   $00, $bf, $00, $10, $00, $f0, $04, $00        ;; 03:7427 ????????

data_03_742f:
    db   $00, $be, $00, $a8, $00, $30, $04, $00        ;; 03:742f ????????
    db   $00, $c0, $00, $40, $01, $e8, $03, $00        ;; 03:7437 ????????

data_03_743f:
    db   $00, $bf, $00, $b8, $00, $30, $04, $00        ;; 03:743f ????????
    db   $00, $c1, $00, $78, $00, $b0, $03, $00        ;; 03:7447 ????????

data_03_744f:
    db   $00, $c2, $00, $68, $01, $e8, $03, $00        ;; 03:744f ????????

data_03_7457:
    db   $00, $0f, $00, $90, $00, $40, $04, $00        ;; 03:7457 ????????
    db   $00, $00, $00, $b8, $00, $28, $04, $00        ;; 03:745f ????????
    db   $00, $0c, $00, $f8, $01, $d8, $03, $00        ;; 03:7467 ????????
    db   $00, $0b, $00, $68, $00, $98, $03, $00        ;; 03:746f ????????

;@data format=P amount=207
data_03_7477:
    data_P data_03_7615                                ;; 03:7477 ?? $00
    data_P data_03_7665                                ;; 03:7479 ?? $01
    data_P data_03_766d                                ;; 03:747b ?? $02
    data_P data_03_7675                                ;; 03:747d ?? $03
    data_P data_03_7675                                ;; 03:747f Ww $04
    data_P data_03_767d                                ;; 03:7481 ?? $05
    data_P data_03_7685                                ;; 03:7483 ?? $06
    data_P data_03_768d                                ;; 03:7485 ?? $07
    data_P data_03_7695                                ;; 03:7487 ?? $08
    data_P data_03_769d                                ;; 03:7489 ?? $09
    data_P data_03_769d                                ;; 03:748b ?? $0a
    data_P data_03_769d                                ;; 03:748d ?? $0b
    data_P data_03_76b5                                ;; 03:748f Ww $0c
    data_P data_03_76bd                                ;; 03:7491 ?? $0d
    data_P data_03_76c5                                ;; 03:7493 Ww $0e
    data_P data_03_76cd                                ;; 03:7495 ?? $0f
    data_P data_03_76cd                                ;; 03:7497 ?? $10
    data_P data_03_76d5                                ;; 03:7499 ?? $11
    data_P data_03_76d5                                ;; 03:749b ?? $12
    data_P data_03_76d5                                ;; 03:749d ?? $13
    data_P data_03_76d5                                ;; 03:749f ?? $14
    data_P data_03_76d5                                ;; 03:74a1 ?? $15
    data_P data_03_76dd                                ;; 03:74a3 ?? $16
    data_P data_03_76dd                                ;; 03:74a5 ?? $17
    data_P data_03_76e5                                ;; 03:74a7 ?? $18
    data_P data_03_76f5                                ;; 03:74a9 ?? $19
    data_P data_03_76f5                                ;; 03:74ab ?? $1a
    data_P data_03_76f5                                ;; 03:74ad ?? $1b
    data_P data_03_76fd                                ;; 03:74af ?? $1c
    data_P data_03_7705                                ;; 03:74b1 ?? $1d
    data_P data_03_771d                                ;; 03:74b3 ?? $1e
    data_P data_03_7725                                ;; 03:74b5 ?? $1f
    data_P $0000                                       ;; 03:74b7 ?? $20
    data_P $0000                                       ;; 03:74b9 ?? $21
    data_P data_03_772d                                ;; 03:74bb ?? $22
    data_P data_03_7735                                ;; 03:74bd ?? $23
    data_P data_03_773d                                ;; 03:74bf ?? $24
    data_P data_03_7745                                ;; 03:74c1 ?? $25
    data_P data_03_7765                                ;; 03:74c3 ?? $26
    data_P data_03_776d                                ;; 03:74c5 ?? $27
    data_P data_03_7775                                ;; 03:74c7 ?? $28
    data_P $0000                                       ;; 03:74c9 ?? $29
    data_P data_03_778d                                ;; 03:74cb ?? $2a
    data_P data_03_779d                                ;; 03:74cd ?? $2b
    data_P $0000                                       ;; 03:74cf ?? $2c
    data_P data_03_77ad                                ;; 03:74d1 ?? $2d
    data_P $0000                                       ;; 03:74d3 ?? $2e
    data_P $0000                                       ;; 03:74d5 ?? $2f
    data_P data_03_77b5                                ;; 03:74d7 ?? $30
    data_P data_03_77bd                                ;; 03:74d9 ?? $31
    data_P $0000                                       ;; 03:74db ?? $32
    data_P $0000                                       ;; 03:74dd ?? $33
    data_P $0000                                       ;; 03:74df ?? $34
    data_P $0000                                       ;; 03:74e1 ?? $35
    data_P $0000                                       ;; 03:74e3 ?? $36
    data_P $0000                                       ;; 03:74e5 ?? $37
    data_P $0000                                       ;; 03:74e7 ?? $38
    data_P $0000                                       ;; 03:74e9 ?? $39
    data_P data_03_77c5                                ;; 03:74eb ?? $3a
    data_P data_03_77cd                                ;; 03:74ed ?? $3b
    data_P data_03_77d5                                ;; 03:74ef ?? $3c
    data_P data_03_77ed                                ;; 03:74f1 ?? $3d
    data_P data_03_77f5                                ;; 03:74f3 ?? $3e
    data_P data_03_77f5                                ;; 03:74f5 ?? $3f
    data_P data_03_77fd                                ;; 03:74f7 ?? $40
    data_P data_03_780d                                ;; 03:74f9 ?? $41
    data_P data_03_781d                                ;; 03:74fb ?? $42
    data_P data_03_7825                                ;; 03:74fd ?? $43
    data_P data_03_783d                                ;; 03:74ff ?? $44
    data_P data_03_784d                                ;; 03:7501 ?? $45
    data_P data_03_785d                                ;; 03:7503 ?? $46
    data_P $0000                                       ;; 03:7505 ?? $47
    data_P $0000                                       ;; 03:7507 ?? $48
    data_P $0000                                       ;; 03:7509 ?? $49
    data_P $0000                                       ;; 03:750b ?? $4a
    data_P $0000                                       ;; 03:750d ?? $4b
    data_P data_03_7875                                ;; 03:750f ?? $4c
    data_P data_03_7865                                ;; 03:7511 ?? $4d
    data_P data_03_787d                                ;; 03:7513 ?? $4e
    data_P data_03_7885                                ;; 03:7515 ?? $4f
    data_P $0000                                       ;; 03:7517 ?? $50
    data_P $0000                                       ;; 03:7519 ?? $51
    data_P $0000                                       ;; 03:751b ?? $52
    data_P $0000                                       ;; 03:751d ?? $53
    data_P $0000                                       ;; 03:751f ?? $54
    data_P $0000                                       ;; 03:7521 ?? $55
    data_P $0000                                       ;; 03:7523 ?? $56
    data_P $0000                                       ;; 03:7525 ?? $57
    data_P $0000                                       ;; 03:7527 ?? $58
    data_P $0000                                       ;; 03:7529 ?? $59
    data_P data_03_788d                                ;; 03:752b ?? $5a
    data_P data_03_78ad                                ;; 03:752d ?? $5b
    data_P data_03_78bd                                ;; 03:752f ?? $5c
    data_P $0000                                       ;; 03:7531 ?? $5d
    data_P data_03_78cd                                ;; 03:7533 ?? $5e
    data_P data_03_78d5                                ;; 03:7535 ?? $5f
    data_P data_03_78f5                                ;; 03:7537 ?? $60
    data_P data_03_78fd                                ;; 03:7539 ?? $61
    data_P $0000                                       ;; 03:753b ?? $62
    data_P $0000                                       ;; 03:753d ?? $63
    data_P $0000                                       ;; 03:753f ?? $64
    data_P data_03_7905                                ;; 03:7541 ?? $65
    data_P data_03_792d                                ;; 03:7543 ?? $66
    data_P $0000                                       ;; 03:7545 ?? $67
    data_P $0000                                       ;; 03:7547 ?? $68
    data_P data_03_7935                                ;; 03:7549 ?? $69
    data_P data_03_793d                                ;; 03:754b ?? $6a
    data_P data_03_7945                                ;; 03:754d ?? $6b
    data_P $0000                                       ;; 03:754f ?? $6c
    data_P data_03_794d                                ;; 03:7551 ?? $6d
    data_P data_03_795d                                ;; 03:7553 ?? $6e
    data_P $0000                                       ;; 03:7555 ?? $6f
    data_P data_03_7965                                ;; 03:7557 ?? $70
    data_P data_03_796d                                ;; 03:7559 ?? $71
    data_P $0000                                       ;; 03:755b ?? $72
    data_P data_03_797d                                ;; 03:755d ?? $73
    data_P data_03_7985                                ;; 03:755f ?? $74
    data_P $0000                                       ;; 03:7561 ?? $75
    data_P $0000                                       ;; 03:7563 ?? $76
    data_P $0000                                       ;; 03:7565 ?? $77
    data_P $0000                                       ;; 03:7567 ?? $78
    data_P $0000                                       ;; 03:7569 ?? $79
    data_P $0000                                       ;; 03:756b ?? $7a
    data_P $0000                                       ;; 03:756d ?? $7b
    data_P $0000                                       ;; 03:756f ?? $7c
    data_P $0000                                       ;; 03:7571 ?? $7d
    data_P $0000                                       ;; 03:7573 ?? $7e
    data_P $0000                                       ;; 03:7575 ?? $7f
    data_P $0000                                       ;; 03:7577 ?? $80
    data_P $0000                                       ;; 03:7579 ?? $81
    data_P $0000                                       ;; 03:757b ?? $82
    data_P $0000                                       ;; 03:757d ?? $83
    data_P data_03_79a5                                ;; 03:757f ?? $84
    data_P data_03_79ad                                ;; 03:7581 ?? $85
    data_P $0000                                       ;; 03:7583 ?? $86
    data_P $0000                                       ;; 03:7585 ?? $87
    data_P $0000                                       ;; 03:7587 ?? $88
    data_P data_03_79bd                                ;; 03:7589 ?? $89
    data_P $0000                                       ;; 03:758b ?? $8a
    data_P $0000                                       ;; 03:758d ?? $8b
    data_P data_03_79cd                                ;; 03:758f ?? $8c
    data_P $0000                                       ;; 03:7591 ?? $8d
    data_P $0000                                       ;; 03:7593 ?? $8e
    data_P $0000                                       ;; 03:7595 ?? $8f
    data_P $0000                                       ;; 03:7597 ?? $90
    data_P data_03_79dd                                ;; 03:7599 ?? $91
    data_P $0000                                       ;; 03:759b ?? $92
    data_P $0000                                       ;; 03:759d ?? $93
    data_P data_03_79e5                                ;; 03:759f ?? $94
    data_P data_03_79f5                                ;; 03:75a1 ?? $95
    data_P data_03_79fd                                ;; 03:75a3 ?? $96
    data_P $0000                                       ;; 03:75a5 ?? $97
    data_P $0000                                       ;; 03:75a7 ?? $98
    data_P $0000                                       ;; 03:75a9 ?? $99
    data_P data_03_7a05                                ;; 03:75ab ?? $9a
    data_P $0000                                       ;; 03:75ad ?? $9b
    data_P data_03_7a0d                                ;; 03:75af ?? $9c
    data_P data_03_7a25                                ;; 03:75b1 ?? $9d
    data_P $0000                                       ;; 03:75b3 ?? $9e
    data_P data_03_7a2d                                ;; 03:75b5 ?? $9f
    data_P data_03_7a35                                ;; 03:75b7 ?? $a0
    data_P $0000                                       ;; 03:75b9 ?? $a1
    data_P $0000                                       ;; 03:75bb ?? $a2
    data_P data_03_7a45                                ;; 03:75bd ?? $a3
    data_P data_03_7a4d                                ;; 03:75bf ?? $a4
    data_P $0000                                       ;; 03:75c1 ?? $a5
    data_P data_03_7a55                                ;; 03:75c3 ?? $a6
    data_P $0000                                       ;; 03:75c5 ?? $a7
    data_P $0000                                       ;; 03:75c7 ?? $a8
    data_P data_03_7a5d                                ;; 03:75c9 ?? $a9
    data_P data_03_7a6d                                ;; 03:75cb ?? $aa
    data_P $0000                                       ;; 03:75cd ?? $ab
    data_P $0000                                       ;; 03:75cf ?? $ac
    data_P $0000                                       ;; 03:75d1 ?? $ad
    data_P data_03_7a75                                ;; 03:75d3 ?? $ae
    data_P data_03_7a85                                ;; 03:75d5 ?? $af
    data_P data_03_7a95                                ;; 03:75d7 ?? $b0
    data_P data_03_7a9d                                ;; 03:75d9 ?? $b1
    data_P data_03_7aa5                                ;; 03:75db ?? $b2
    data_P data_03_7abd                                ;; 03:75dd ?? $b3
    data_P $0000                                       ;; 03:75df ?? $b4
    data_P data_03_7add                                ;; 03:75e1 ?? $b5
    data_P $0000                                       ;; 03:75e3 ?? $b6
    data_P data_03_7ae5                                ;; 03:75e5 ?? $b7
    data_P $0000                                       ;; 03:75e7 ?? $b8
    data_P $0000                                       ;; 03:75e9 ?? $b9
    data_P $0000                                       ;; 03:75eb ?? $ba
    data_P $0000                                       ;; 03:75ed ?? $bb
    data_P $0000                                       ;; 03:75ef ?? $bc
    data_P $0000                                       ;; 03:75f1 ?? $bd
    data_P $0000                                       ;; 03:75f3 ?? $be
    data_P $0000                                       ;; 03:75f5 ?? $bf
    data_P $0000                                       ;; 03:75f7 ?? $c0
    data_P data_03_7afd                                ;; 03:75f9 ?? $c1
    data_P $0000                                       ;; 03:75fb ?? $c2
    data_P $0000                                       ;; 03:75fd ?? $c3
    data_P $0000                                       ;; 03:75ff ?? $c4
    data_P $0000                                       ;; 03:7601 ?? $c5
    data_P $0000                                       ;; 03:7603 ?? $c6
    data_P $0000                                       ;; 03:7605 ?? $c7
    data_P $0000                                       ;; 03:7607 ?? $c8
    data_P data_03_7615                                ;; 03:7609 Ww $c9
    data_P data_03_7825                                ;; 03:760b ?? $ca
    data_P data_03_7775                                ;; 03:760d ?? $cb
    data_P $0000                                       ;; 03:760f ?? $cc
    data_P $0000                                       ;; 03:7611 ?? $cd
    data_P data_03_7615                                ;; 03:7613 ?? $ce

data_03_7615:
    db   $00, $18, $46, $a9, $04, $00, $05, $14        ;; 03:7615 ........
    db   $00, $22, $47, $88, $01, $00, $09, $14        ;; 03:761d ........
    db   $00, $22, $47, $0c, $02, $00, $08, $14        ;; 03:7625 ........
    db   $00, $1b, $48, $59, $02, $00, $0d, $14        ;; 03:762d ........
    db   $00, $1a, $48, $04, $02, $00, $0b, $14        ;; 03:7635 ........
    db   $00, $1a, $48, $31, $01, $00, $0c, $14        ;; 03:763d ........
    db   $00, $1a, $47, $dc, $01, $00, $0a, $14        ;; 03:7645 ........
    db   $00, $18, $46, $d8, $04, $00, $06, $14        ;; 03:764d ........
    db   $00, $29, $49, $3f, $04, $01, $10, $14        ;; 03:7655 ........
    db   $00, $29, $49, $52, $04, $01, $10, $14        ;; 03:765d ........

data_03_7665:
    db   $00, $21, $49, $d2, $04, $00, $13, $14        ;; 03:7665 ????????

data_03_766d:
    db   $00, $1d, $49, $67, $04, $00, $11, $14        ;; 03:766d ????????

data_03_7675:
    db   $00, $1b, $48, $b4, $04, $00, $0e, $14        ;; 03:7675 ..Pp....

data_03_767d:
    db   $00, $22, $4a, $03, $04, $00, $14, $14        ;; 03:767d ????????

data_03_7685:
    db   $00, $1c, $48, $f7, $04, $00, $0f, $14        ;; 03:7685 ????????

data_03_768d:
    db   $02, $2d, $46, $a9, $03, $00, $07, $14        ;; 03:768d ????????

data_03_7695:
    db   $00, $19, $49, $ae, $04, $00, $12, $14        ;; 03:7695 ????????

data_03_769d:
    db   $00, $2a, $50, $ed, $04, $00, $1f, $14        ;; 03:769d ????????
    db   $02, $06, $46, $3d, $01, $00, $19, $14        ;; 03:76a5 ????????
    db   $02, $2a, $50, $ed, $04, $00, $1f, $14        ;; 03:76ad ????????

data_03_76b5:
    db   $00, $1f, $4c, $9d, $04, $00, $18, $14        ;; 03:76b5 ........

data_03_76bd:
    db   $00, $1f, $4c, $ff, $04, $01, $1a, $14        ;; 03:76bd ????????

data_03_76c5:
    db   $00, $07, $4a, $32, $04, $00, $1b, $14        ;; 03:76c5 ........

data_03_76cd:
    db   $00, $1f, $50, $74, $04, $00, $1e, $14        ;; 03:76cd ????????

data_03_76d5:
    db   $00, $1f, $4f, $61, $04, $00, $1d, $14        ;; 03:76d5 ????????

data_03_76dd:
    db   $00, $0f, $4d, $7f, $04, $00, $1c, $14        ;; 03:76dd ????????

data_03_76e5:
    db   $00, $1f, $4b, $ad, $04, $00, $16, $14        ;; 03:76e5 ????????
    db   $00, $1f, $4c, $27, $04, $00, $17, $14        ;; 03:76ed ????????

data_03_76f5:
    db   $00, $1d, $57, $63, $04, $00, $15, $14        ;; 03:76f5 ????????

data_03_76fd:
    db   $00, $1c, $58, $f6, $04, $00, $2e, $14        ;; 03:76fd ????????

data_03_7705:
    db   $00, $18, $59, $a2, $04, $01, $20, $14        ;; 03:7705 ????????
    db   $00, $22, $5c, $af, $04, $00, $24, $14        ;; 03:770d ????????
    db   $00, $22, $5e, $cf, $03, $00, $27, $14        ;; 03:7715 ????????

data_03_771d:
    db   $00, $22, $5d, $2f, $04, $00, $25, $14        ;; 03:771d ????????

data_03_7725:
    db   $00, $1b, $5f, $a3, $04, $00, $28, $14        ;; 03:7725 ????????

data_03_772d:
    db   $00, $1c, $60, $42, $04, $00, $29, $14        ;; 03:772d ????????

data_03_7735:
    db   $00, $18, $5b, $a1, $04, $00, $23, $14        ;; 03:7735 ????????

data_03_773d:
    db   $00, $21, $61, $b7, $04, $00, $2a, $14        ;; 03:773d ????????

data_03_7745:
    db   $00, $1d, $64, $69, $04, $00, $2d, $14        ;; 03:7745 ????????
    db   $00, $24, $5e, $2d, $04, $00, $26, $14        ;; 03:774d ????????
    db   $00, $18, $5a, $de, $04, $00, $22, $14        ;; 03:7755 ????????
    db   $00, $18, $5a, $51, $03, $00, $21, $14        ;; 03:775d ????????

data_03_7765:
    db   $00, $25, $62, $9c, $04, $00, $2b, $14        ;; 03:7765 ????????

data_03_776d:
    db   $00, $18, $63, $7f, $04, $00, $2c, $14        ;; 03:776d ????????

data_03_7775:
    db   $00, $1e, $65, $e7, $04, $00, $33, $14        ;; 03:7775 ????????
    db   $00, $1e, $65, $70, $04, $00, $31, $14        ;; 03:777d ????????
    db   $00, $1e, $66, $99, $04, $00, $35, $14        ;; 03:7785 ????????

data_03_778d:
    db   $00, $08, $68, $15, $04, $00, $32, $14        ;; 03:778d ????????
    db   $00, $1e, $67, $3b, $04, $00, $37, $14        ;; 03:7795 ????????

data_03_779d:
    db   $00, $08, $68, $15, $04, $00, $32, $14        ;; 03:779d ????????
    db   $00, $1e, $67, $3b, $04, $00, $37, $14        ;; 03:77a5 ????????

data_03_77ad:
    db   $00, $22, $6c, $05, $04, $00, $38, $14        ;; 03:77ad ????????

data_03_77b5:
    db   $00, $1e, $66, $e2, $04, $00, $36, $14        ;; 03:77b5 ????????

data_03_77bd:
    db   $00, $1e, $66, $32, $04, $00, $34, $14        ;; 03:77bd ????????

data_03_77c5:
    db   $05, $04, $6c, $95, $04, $00, $04, $14        ;; 03:77c5 ????????

data_03_77cd:
    db   $00, $2e, $75, $71, $04, $00, $a4, $14        ;; 03:77cd ????????

data_03_77d5:
    db   $00, $22, $6d, $e8, $04, $00, $30, $14        ;; 03:77d5 ????????
    db   $00, $25, $75, $71, $02, $00, $3e, $15        ;; 03:77dd ????????
    db   $06, $04, $6e, $af, $04, $00, $04, $14        ;; 03:77e5 ????????

data_03_77ed:
    db   $00, $18, $6f, $63, $04, $00, $2f, $14        ;; 03:77ed ????????

data_03_77f5:
    db   $00, $2e, $76, $84, $04, $00, $a4, $15        ;; 03:77f5 ????????

data_03_77fd:
    db   $00, $22, $79, $a0, $02, $00, $45, $14        ;; 03:77fd ????????
    db   $00, $25, $76, $7e, $04, $00, $3e, $15        ;; 03:7805 ????????

data_03_780d:
    db   $00, $18, $41, $6b, $04, $00, $44, $15        ;; 03:780d ????????
    db   $00, $18, $40, $00, $04, $00, $43, $15        ;; 03:7815 ????????

data_03_781d:
    db   $00, $19, $7a, $d9, $04, $00, $42, $14        ;; 03:781d ????????

data_03_7825:
    db   $00, $18, $49, $16, $04, $00, $66, $15        ;; 03:7825 ????????
    db   $00, $18, $48, $81, $04, $01, $65, $15        ;; 03:782d ????????
    db   $00, $18, $49, $b7, $04, $00, $67, $15        ;; 03:7835 ????????

data_03_783d:
    db   $00, $1c, $42, $eb, $04, $00, $61, $15        ;; 03:783d ????????
    db   $00, $1d, $46, $09, $04, $00, $63, $15        ;; 03:7845 ????????

data_03_784d:
    db   $00, $1d, $47, $56, $04, $00, $64, $15        ;; 03:784d ????????
    db   $00, $1c, $44, $9b, $04, $00, $62, $15        ;; 03:7855 ????????

data_03_785d:
    db   $00, $19, $4a, $e1, $04, $00, $69, $15        ;; 03:785d ????????

data_03_7865:
    db   $00, $1d, $4c, $d8, $04, $00, $6b, $15        ;; 03:7865 ????????
    db   $0c, $04, $4e, $3d, $04, $00, $04, $15        ;; 03:786d ????????

data_03_7875:
    db   $0c, $05, $4f, $82, $03, $00, $68, $15        ;; 03:7875 ????????

data_03_787d:
    db   $0b, $05, $5f, $02, $04, $00, $68, $16        ;; 03:787d ????????

data_03_7885:
    db   $00, $1d, $4b, $fd, $04, $00, $6a, $15        ;; 03:7885 ????????

data_03_788d:
    db   $00, $19, $74, $5c, $04, $00, $4c, $14        ;; 03:788d ????????
    db   $00, $18, $70, $c3, $04, $00, $47, $14        ;; 03:7895 ????????
    db   $00, $25, $73, $84, $04, $00, $49, $14        ;; 03:789d ????????
    db   $00, $0e, $7c, $03, $04, $00, $4f, $14        ;; 03:78a5 ????????

data_03_78ad:
    db   $00, $1b, $75, $3d, $04, $00, $4d, $14        ;; 03:78ad ????????
    db   $00, $22, $74, $a5, $04, $00, $4c, $14        ;; 03:78b5 ????????

data_03_78bd:
    db   $00, $19, $73, $f4, $04, $00, $4a, $14        ;; 03:78bd ????????
    db   $00, $18, $6f, $d9, $04, $00, $46, $14        ;; 03:78c5 ????????

data_03_78cd:
    db   $00, $1c, $75, $9c, $04, $00, $4e, $14        ;; 03:78cd ????????

data_03_78d5:
    db   $00, $18, $77, $e5, $04, $00, $5c, $14        ;; 03:78d5 ????????
    db   $00, $24, $78, $b0, $04, $00, $5d, $14        ;; 03:78dd ????????
    db   $0a, $04, $72, $b4, $04, $00, $04, $14        ;; 03:78e5 ????????
    db   $00, $1e, $76, $7f, $04, $00, $5a, $14        ;; 03:78ed ????????

data_03_78f5:
    db   $00, $18, $71, $6a, $04, $00, $48, $14        ;; 03:78f5 ????????

data_03_78fd:
    db   $00, $18, $77, $58, $04, $00, $5b, $14        ;; 03:78fd ????????

data_03_7905:
    db   $00, $18, $54, $ae, $04, $00, $72, $15        ;; 03:7905 ????????
    db   $00, $18, $52, $a5, $04, $00, $6f, $15        ;; 03:790d ????????
    db   $00, $21, $55, $cf, $04, $01, $74, $15        ;; 03:7915 ????????
    db   $00, $1a, $56, $f6, $04, $00, $76, $15        ;; 03:791d ????????
    db   $00, $1a, $58, $7d, $04, $00, $78, $15        ;; 03:7925 ????????

data_03_792d:
    db   $00, $18, $5b, $35, $04, $00, $7d, $15        ;; 03:792d ????????

data_03_7935:
    db   $00, $22, $56, $92, $04, $00, $75, $15        ;; 03:7935 ????????

data_03_793d:
    db   $00, $24, $5c, $0f, $04, $00, $7f, $15        ;; 03:793d ????????

data_03_7945:
    db   $00, $21, $52, $2a, $04, $00, $6e, $15        ;; 03:7945 ????????

data_03_794d:
    db   $00, $22, $53, $c4, $04, $00, $70, $15        ;; 03:794d ????????
    db   $00, $1b, $54, $36, $04, $00, $71, $15        ;; 03:7955 ????????

data_03_795d:
    db   $00, $19, $55, $38, $04, $00, $73, $15        ;; 03:795d ????????

data_03_7965:
    db   $00, $02, $40, $04, $04, $00, $04, $18        ;; 03:7965 ????????

data_03_796d:
    db   $00, $18, $5a, $33, $04, $00, $7c, $15        ;; 03:796d ????????
    db   $11, $04, $65, $5f, $04, $00, $04, $15        ;; 03:7975 ????????

data_03_797d:
    db   $00, $18, $5b, $83, $04, $00, $7e, $15        ;; 03:797d ????????

data_03_7985:
    db   $00, $18, $58, $dc, $04, $00, $79, $15        ;; 03:7985 ????????
    db   $00, $24, $59, $24, $04, $00, $7a, $15        ;; 03:798d ????????
    db   $00, $18, $57, $ef, $04, $00, $77, $15        ;; 03:7995 ????????
    db   $00, $21, $59, $72, $04, $00, $7b, $15        ;; 03:799d ????????

data_03_79a5:
    db   $00, $01, $4f, $d6, $02, $00, $02, $15        ;; 03:79a5 ????????

data_03_79ad:
    db   $00, $28, $4f, $f3, $01, $00, $3c, $15        ;; 03:79ad ????????
    db   $00, $28, $50, $5c, $01, $00, $3d, $15        ;; 03:79b5 ????????

data_03_79bd:
    db   $00, $09, $6c, $b5, $04, $00, $3f, $16        ;; 03:79bd ????????
    db   $00, $01, $6c, $2f, $04, $00, $02, $16        ;; 03:79c5 ????????

data_03_79cd:
    db   $00, $0d, $51, $02, $04, $00, $5e, $14        ;; 03:79cd ????????
    db   $00, $2b, $51, $02, $04, $00, $5f, $14        ;; 03:79d5 ????????

data_03_79dd:
    db   $00, $1e, $64, $e0, $04, $00, $8a, $15        ;; 03:79dd ????????

data_03_79e5:
    db   $00, $1e, $62, $ac, $04, $00, $86, $15        ;; 03:79e5 ????????
    db   $00, $1e, $63, $1d, $04, $00, $87, $15        ;; 03:79ed ????????

data_03_79f5:
    db   $00, $1e, $64, $44, $04, $00, $89, $15        ;; 03:79f5 ????????

data_03_79fd:
    db   $00, $1e, $63, $6f, $04, $00, $88, $15        ;; 03:79fd ????????

data_03_7a05:
    db   $00, $1e, $5f, $f0, $04, $00, $83, $15        ;; 03:7a05 ????????

data_03_7a0d:
    db   $00, $0a, $5c, $72, $04, $00, $81, $15        ;; 03:7a0d ????????
    db   $00, $20, $60, $51, $04, $00, $84, $15        ;; 03:7a15 ????????
    db   $00, $20, $61, $6a, $04, $00, $85, $15        ;; 03:7a1d ????????

data_03_7a25:
    db   $00, $0b, $5e, $6f, $04, $00, $82, $15        ;; 03:7a25 ????????

data_03_7a2d:
    db   $00, $2e, $77, $2b, $01, $00, $a4, $15        ;; 03:7a2d ????????

data_03_7a35:
    db   $00, $1c, $50, $c4, $04, $00, $6d, $15        ;; 03:7a35 ????????
    db   $00, $25, $78, $22, $02, $00, $3e, $15        ;; 03:7a3d ????????

data_03_7a45:
    db   $00, $18, $66, $57, $04, $00, $8c, $15        ;; 03:7a45 ????????

data_03_7a4d:
    db   $00, $1e, $67, $70, $04, $00, $8d, $15        ;; 03:7a4d ????????

data_03_7a55:
    db   $00, $1c, $68, $4e, $04, $00, $8f, $15        ;; 03:7a55 ????????

data_03_7a5d:
    db   $00, $18, $74, $57, $04, $00, $8e, $15        ;; 03:7a5d ????????
    db   $12, $04, $73, $65, $04, $00, $04, $15        ;; 03:7a65 ????????

data_03_7a6d:
    db   $00, $1d, $72, $7d, $04, $00, $9a, $15        ;; 03:7a6d ????????

data_03_7a75:
    db   $00, $18, $71, $5b, $04, $00, $9b, $15        ;; 03:7a75 ????????
    db   $00, $19, $71, $d1, $04, $00, $9c, $15        ;; 03:7a7d ????????

data_03_7a85:
    db   $00, $18, $6a, $ed, $04, $00, $92, $15        ;; 03:7a85 ????????
    db   $00, $04, $73, $65, $04, $00, $04, $15        ;; 03:7a8d ????????

data_03_7a95:
    db   $00, $18, $6a, $30, $04, $00, $91, $15        ;; 03:7a95 ????????

data_03_7a9d:
    db   $00, $1c, $69, $cd, $04, $00, $90, $15        ;; 03:7a9d ????????

data_03_7aa5:
    db   $00, $1e, $6e, $21, $04, $00, $95, $15        ;; 03:7aa5 ????????
    db   $00, $1e, $70, $09, $04, $00, $98, $15        ;; 03:7aad ????????
    db   $00, $1e, $70, $ab, $04, $00, $99, $15        ;; 03:7ab5 ????????

data_03_7abd:
    db   $00, $1e, $6c, $10, $04, $00, $93, $15        ;; 03:7abd ????????
    db   $00, $1e, $6d, $17, $04, $00, $94, $15        ;; 03:7ac5 ????????
    db   $00, $1e, $6f, $73, $04, $00, $97, $15        ;; 03:7acd ????????
    db   $00, $1e, $6e, $d5, $04, $00, $96, $15        ;; 03:7ad5 ????????

data_03_7add:
    db   $0e, $16, $6c, $f7, $04, $00, $a3, $16        ;; 03:7add ????????

data_03_7ae5:
    db   $18, $04, $6c, $f7, $03, $00, $04, $16        ;; 03:7ae5 ????????
    db   $18, $00, $6c, $f7, $03, $00, $01, $16        ;; 03:7aed ????????
    db   $18, $01, $6c, $f7, $03, $00, $02, $16        ;; 03:7af5 ????????

data_03_7afd:
    db   $19, $04, $6c, $f7, $04, $00, $04, $16        ;; 03:7afd ????????
    db   $19, $00, $6c, $f7, $03, $00, $01, $16        ;; 03:7b05 ????????
    db   $19, $01, $6c, $f7, $03, $00, $02, $16        ;; 03:7b0d ????????
    db   $7b, $89, $7b, $95, $7b, $a1, $7b, $ad        ;; 03:7b15 ??????..
    db   $7b, $b9, $7b, $c5, $7b, $d1, $7b, $dd        ;; 03:7b1d ????....
    db   $7b, $e9, $7b, $f5, $7c, $01, $7c, $0d        ;; 03:7b25 ????????
    db   $7c, $19, $7c, $25, $7c, $31, $7c, $3d        ;; 03:7b2d ????????
    db   $7c, $49, $7c, $55, $7c, $61, $7c, $6d        ;; 03:7b35 ????????
    db   $7c, $79, $7c, $85, $7c, $91, $7c, $9d        ;; 03:7b3d ????????
    db   $7c, $a9, $7c, $b5, $7c, $c1, $7c, $cd        ;; 03:7b45 ..??....
    db   $7c, $d9, $7c, $e5, $7c, $f1, $7c, $fd        ;; 03:7b4d ??????..
    db   $7d, $09, $7d, $15, $7d, $21, $7d, $2d        ;; 03:7b55 ????..??
    db   $7d, $39, $7d, $45, $7d, $51, $7d, $5d        ;; 03:7b5d ????????
    db   $7d, $69, $7d, $75, $7d, $81, $7d, $8d        ;; 03:7b65 ??..????
    db   $7d, $99, $7d, $a5, $7d, $b1, $7d, $bd        ;; 03:7b6d ..??????
    db   $7d, $c9, $7d, $d5, $7d, $e1, $7d, $ed        ;; 03:7b75 ????????
    db   $7d, $f9, $7e, $05, $7e, $11, $7e, $1d        ;; 03:7b7d ????????
    db   $7e, $29, $7e, $35, $02, $55, $0e, $18        ;; 03:7b85 ????????
    db   $00, $19, $40, $00, $00, $1a, $4d, $00        ;; 03:7b8d ????????
    db   $02, $55, $0e, $18, $00, $19, $41, $80        ;; 03:7b95 ????????
    db   $00, $1a, $4d, $08, $02, $54, $24, $10        ;; 03:7b9d ????????
    db   $00, $19, $43, $00, $00, $1a, $4d, $10        ;; 03:7ba5 ????????
    db   $02, $55, $0e, $18, $00, $19, $44, $00        ;; 03:7bad .Www....
    db   $00, $1a, $4d, $18, $02, $55, $0e, $18        ;; 03:7bb5 ....????
    db   $00, $19, $45, $80, $00, $1a, $4d, $20        ;; 03:7bbd ????????
    db   $02, $55, $0e, $18, $00, $19, $47, $00        ;; 03:7bc5 ????????
    db   $00, $1a, $4d, $28, $02, $54, $24, $10        ;; 03:7bcd ????.Www
    db   $00, $19, $48, $80, $00, $1a, $4d, $30        ;; 03:7bd5 ........
    db   $02, $54, $24, $10, $00, $19, $49, $80        ;; 03:7bdd .Www....
    db   $00, $1a, $4d, $38, $02, $54, $24, $10        ;; 03:7be5 ....????
    db   $00, $19, $4a, $80, $00, $1a, $4d, $40        ;; 03:7bed ????????
    db   $02, $55, $0e, $18, $00, $19, $4b, $80        ;; 03:7bf5 ????????
    db   $00, $1a, $4d, $48, $02, $54, $24, $10        ;; 03:7bfd ????????
    db   $00, $19, $4d, $00, $00, $1a, $4d, $50        ;; 03:7c05 ????????
    db   $02, $54, $24, $10, $00, $19, $4e, $00        ;; 03:7c0d ????????
    db   $00, $1a, $4d, $58, $02, $54, $24, $10        ;; 03:7c15 ????????
    db   $00, $19, $4f, $00, $00, $1a, $4d, $60        ;; 03:7c1d ????????
    db   $02, $55, $0e, $18, $00, $19, $50, $00        ;; 03:7c25 ????????
    db   $00, $1a, $4d, $68, $02, $54, $24, $10        ;; 03:7c2d ????????
    db   $00, $19, $51, $80, $00, $1a, $4d, $70        ;; 03:7c35 ????????
    db   $04, $55, $f8, $18, $00, $19, $52, $80        ;; 03:7c3d ????????
    db   $00, $1a, $4d, $78, $02, $54, $24, $10        ;; 03:7c45 ????????
    db   $00, $19, $54, $00, $00, $1a, $4d, $80        ;; 03:7c4d ????????
    db   $02, $55, $0e, $18, $00, $19, $55, $00        ;; 03:7c55 ????????
    db   $00, $1a, $4d, $88, $02, $55, $0e, $18        ;; 03:7c5d ????????
    db   $00, $19, $56, $80, $00, $1a, $4d, $90        ;; 03:7c65 ????????
    db   $02, $54, $24, $10, $00, $19, $58, $00        ;; 03:7c6d ????????
    db   $00, $1a, $4d, $98, $02, $55, $0e, $18        ;; 03:7c75 ????????
    db   $00, $19, $59, $00, $00, $1a, $4d, $a0        ;; 03:7c7d ????????
    db   $02, $55, $0e, $18, $00, $19, $5a, $80        ;; 03:7c85 ????????
    db   $00, $1a, $4d, $a8, $02, $54, $24, $10        ;; 03:7c8d ????????
    db   $00, $19, $5c, $00, $00, $1a, $4d, $b0        ;; 03:7c95 ????????
    db   $02, $54, $24, $10, $00, $19, $5d, $00        ;; 03:7c9d ????????
    db   $00, $1a, $4d, $b8, $02, $54, $24, $10        ;; 03:7ca5 ????...w
    db   $00, $19, $5e, $00, $00, $1a, $4d, $c0        ;; 03:7cad ........
    db   $02, $54, $24, $10, $00, $19, $5f, $00        ;; 03:7cb5 ????????
    db   $00, $1a, $4d, $c8, $02, $54, $24, $10        ;; 03:7cbd ????...w
    db   $00, $19, $60, $00, $00, $1a, $4d, $d0        ;; 03:7cc5 ........
    db   $02, $54, $24, $10, $00, $19, $61, $00        ;; 03:7ccd .Www....
    db   $00, $1a, $4d, $d8, $02, $54, $24, $10        ;; 03:7cd5 ....????
    db   $00, $19, $62, $00, $00, $1a, $4d, $e0        ;; 03:7cdd ????????
    db   $02, $55, $0e, $18, $00, $19, $63, $00        ;; 03:7ce5 ????????
    db   $00, $1a, $4d, $e8, $02, $55, $0e, $18        ;; 03:7ced ????????
    db   $00, $19, $64, $80, $00, $1a, $4d, $f0        ;; 03:7cf5 ????????
    db   $02, $54, $24, $10, $00, $19, $66, $00        ;; 03:7cfd .Www....
    db   $00, $1a, $4d, $f8, $02, $54, $24, $10        ;; 03:7d05 ....????
    db   $00, $19, $67, $00, $00, $1a, $4e, $00        ;; 03:7d0d ????????
    db   $02, $54, $24, $10, $00, $19, $68, $00        ;; 03:7d15 ????????
    db   $00, $1a, $4e, $08, $02, $54, $24, $10        ;; 03:7d1d ????...w
    db   $00, $19, $69, $00, $00, $1a, $4e, $10        ;; 03:7d25 ........
    db   $02, $55, $0e, $18, $00, $19, $6a, $00        ;; 03:7d2d ????????
    db   $00, $1a, $4e, $18, $02, $54, $24, $10        ;; 03:7d35 ????????
    db   $00, $19, $6b, $80, $00, $1a, $4e, $20        ;; 03:7d3d ????????
    db   $02, $54, $24, $10, $00, $19, $6c, $80        ;; 03:7d45 ????????
    db   $00, $1a, $4e, $28, $02, $55, $0e, $18        ;; 03:7d4d ????????
    db   $00, $19, $6d, $80, $00, $1a, $4e, $30        ;; 03:7d55 ????????
    db   $02, $55, $0e, $18, $00, $19, $6f, $00        ;; 03:7d5d ????????
    db   $00, $1a, $4e, $38, $02, $55, $0e, $18        ;; 03:7d65 ????????
    db   $00, $19, $70, $80, $00, $1a, $4e, $40        ;; 03:7d6d ????????
    db   $02, $54, $24, $10, $00, $19, $72, $00        ;; 03:7d75 ...w....
    db   $00, $1a, $4e, $48, $02, $54, $24, $10        ;; 03:7d7d ....????
    db   $00, $19, $73, $00, $00, $1a, $4e, $50        ;; 03:7d85 ????????
    db   $02, $55, $0e, $18, $00, $19, $74, $00        ;; 03:7d8d ????????
    db   $00, $1a, $4e, $58, $02, $54, $24, $10        ;; 03:7d95 ????.Www
    db   $00, $19, $75, $80, $00, $1a, $4e, $60        ;; 03:7d9d ........
    db   $02, $55, $0e, $18, $00, $19, $76, $80        ;; 03:7da5 ????????
    db   $00, $1a, $4e, $68, $02, $55, $0e, $18        ;; 03:7dad ????????
    db   $00, $19, $78, $00, $00, $1a, $4e, $70        ;; 03:7db5 ????????
    db   $02, $55, $0e, $18, $00, $19, $79, $80        ;; 03:7dbd ????????
    db   $00, $1a, $4e, $78, $02, $56, $62, $0c        ;; 03:7dc5 ????????
    db   $00, $19, $7b, $00, $00, $1a, $4e, $80        ;; 03:7dcd ????????
    db   $02, $55, $0e, $18, $00, $1a, $40, $00        ;; 03:7dd5 ????????
    db   $00, $1a, $4e, $88, $08, $56, $c4, $20        ;; 03:7ddd ????????
    db   $00, $1a, $41, $80, $00, $1a, $4e, $90        ;; 03:7de5 ????????
    db   $04, $57, $16, $08, $00, $1a, $43, $80        ;; 03:7ded ????????
    db   $00, $1a, $4e, $90, $08, $57, $34, $20        ;; 03:7df5 ????????
    db   $00, $1a, $44, $00, $00, $1a, $4e, $98        ;; 03:7dfd ????????
    db   $02, $57, $86, $08, $00, $1a, $46, $00        ;; 03:7e05 ????????
    db   $00, $1a, $4e, $98, $04, $57, $a8, $08        ;; 03:7e0d ????????
    db   $00, $1a, $46, $80, $00, $1a, $4e, $90        ;; 03:7e15 ????????
    db   $02, $59, $a2, $20, $00, $1a, $47, $00        ;; 03:7e1d ????????
    db   $00, $1a, $4d, $70, $02, $5a, $96, $28        ;; 03:7e25 ????????
    db   $00, $1a, $49, $00, $00, $1a, $4d, $00        ;; 03:7e2d ????????
    db   $02, $55, $0e, $18, $00, $1a, $4b, $80        ;; 03:7e35 ????????
    db   $00, $1a, $4e, $a0                            ;; 03:7e3d ????
