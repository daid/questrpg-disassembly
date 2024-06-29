;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank00", ROM0[$0000]

;@jumptablefunction
execJumpTable:
    jp   jumptableFunctionImpl                         ;; 00:0000 $c3 $19 $04

SECTION "isrVBlank", ROM0[$0040]

isrVBlank:
    jp   vblankInterrupt                               ;; 00:0040 $c3 $44 $02

SECTION "isrLCDC", ROM0[$0048]

isrLCDC:
    jp   LCDCInterrupt                                 ;; 00:0048 $c3 $c9 $02

SECTION "isrTimer", ROM0[$0050]

isrTimer:
    jp   timerInterrupt                                ;; 00:0050 $c3 $e3 $02

SECTION "isrSerial", ROM0[$0058]

isrSerial:
    reti                                               ;; 00:0058 $d9

SECTION "isrJoypad", ROM0[$0060]

isrJoypad:
    reti                                               ;; 00:0060 $d9

SECTION "entry", ROM0[$0100]

entry:
    nop                                                ;; 00:0100 $00
    jp   start                                         ;; 00:0101 $c3 $50 $01
    ds   $30                                           ;; 00:0104
    db   "QUESTRPG", $00, $00, $00, $41, $51, $52, $45 ;; 00:0134
    db   CART_COMPATIBLE_DMG_GBC                       ;; 00:0143
    db   $42, $42                                      ;; 00:0144 ??
    db   CART_INDICATOR_GB                             ;; 00:0146
    db   CART_ROM_MBC5_RAM_BAT, CART_ROM_2048KB, CART_SRAM_8KB ;; 00:0147
    db   CART_DEST_NON_JAPANESE, $33, $00              ;; 00:014a $01 $33 $00
    ds   3                                             ;; 00:014d

SECTION "bank00_0150", ROM0[$0150]

start:
    and  A, A                                          ;; 00:0150 $a7
    cp   A, $11                                        ;; 00:0151 $fe $11
    ld   A, $00                                        ;; 00:0153 $3e $00
    jr   NZ, .jr_00_015b                               ;; 00:0155 $20 $04
    xor  A, A                                          ;; 00:0157 $af
    ldh  [hFF8A], A                                    ;; 00:0158 $e0 $8a
    inc  A                                             ;; 00:015a $3c
.jr_00_015b:
    ldh  [hIsGBC], A                                   ;; 00:015b $e0 $fe

jp_00_015d:
    ld   SP, $dfff                                     ;; 00:015d $31 $ff $df
    call disableLCD                                    ;; 00:0160 $cd $23 $04
    di                                                 ;; 00:0163 $f3
    xor  A, A                                          ;; 00:0164 $af
    ldh  [rIF], A                                      ;; 00:0165 $e0 $0f
    ldh  [rIE], A                                      ;; 00:0167 $e0 $ff
    ldh  [rSCY], A                                     ;; 00:0169 $e0 $42
    ldh  [rSCX], A                                     ;; 00:016b $e0 $43
    ldh  [rSTAT], A                                    ;; 00:016d $e0 $41
    ldh  [rIF], A                                      ;; 00:016f $e0 $0f
    ldh  A, [hIsGBC]                                   ;; 00:0171 $f0 $fe
    and  A, A                                          ;; 00:0173 $a7
    jr   Z, .jr_00_0180                                ;; 00:0174 $28 $0a
    xor  A, A                                          ;; 00:0176 $af
    ldh  [rVBK], A                                     ;; 00:0177 $e0 $4f
    ldh  [rSVBK], A                                    ;; 00:0179 $e0 $70
    ldh  [rRP], A                                      ;; 00:017b $e0 $56
    call setDoubleSpeed                                ;; 00:017d $cd $e5 $04
.jr_00_0180:
    ld   HL, wC100                                     ;; 00:0180 $21 $00 $c1
    ld   BC, $1740                                     ;; 00:0183 $01 $40 $17
    ld   E, $00                                        ;; 00:0186 $1e $00
    call memset                                        ;; 00:0188 $cd $57 $04
    xor  A, A                                          ;; 00:018b $af
    ld   [$0000], A                                    ;; 00:018c $ea $00 $00
    call installDMARoutine                             ;; 00:018f $cd $01 $04
    call clearVRAM                                     ;; 00:0192 $cd $5f $04
    call call_00_3bf7                                  ;; 00:0195 $cd $f7 $3b
    ld   A, $03                                        ;; 00:0198 $3e $03
    ld   [wBackupRomBank], A                           ;; 00:019a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:019d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:01a0 $ea $00 $20
    ld   HL, $40c8                                     ;; 00:01a3 $21 $c8 $40
    ld   DE, wC100                                     ;; 00:01a6 $11 $00 $c1
    ld   B, $12                                        ;; 00:01a9 $06 $12
    call memcopySmall                                  ;; 00:01ab $cd $91 $05
    ld   A, $01                                        ;; 00:01ae $3e $01
    ld   [wBackupRomBank], A                           ;; 00:01b0 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:01b3 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:01b6 $ea $00 $20
    call call_01_4000                                  ;; 00:01b9 $cd $00 $40
    call call_01_4109                                  ;; 00:01bc $cd $09 $41
    ld   A, $22                                        ;; 00:01bf $3e $22
    ld   [wBackupRomBank], A                           ;; 00:01c1 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:01c4 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:01c7 $ea $00 $20
    ld   HL, $79b0                                     ;; 00:01ca $21 $b0 $79
    ld   DE, wD5EC                                     ;; 00:01cd $11 $ec $d5
    ld   BC, $240                                      ;; 00:01d0 $01 $40 $02
    call memcopy                                       ;; 00:01d3 $cd $4e $04
    ld   A, $0a                                        ;; 00:01d6 $3e $0a
    ld   [$0000], A                                    ;; 00:01d8 $ea $00 $00
    ld   HL, sA356                                     ;; 00:01db $21 $56 $a3
    ld   A, [HL+]                                      ;; 00:01de $2a
    ld   [wD82D], A                                    ;; 00:01df $ea $2d $d8
    ld   A, [HL+]                                      ;; 00:01e2 $2a
    ld   [wD82E], A                                    ;; 00:01e3 $ea $2e $d8
    ld   [wD82C], A                                    ;; 00:01e6 $ea $2c $d8
    xor  A, A                                          ;; 00:01e9 $af
    ld   [$0000], A                                    ;; 00:01ea $ea $00 $00
    ld   A, $05                                        ;; 00:01ed $3e $05
    ld   [wMainGameState], A                           ;; 00:01ef $ea $86 $d5
    xor  A, A                                          ;; 00:01f2 $af
    ld   [wD51A], A                                    ;; 00:01f3 $ea $1a $d5
    ld   [wD4FA], A                                    ;; 00:01f6 $ea $fa $d4
    xor  A, A                                          ;; 00:01f9 $af
    ldh  [rIF], A                                      ;; 00:01fa $e0 $0f
    ld   A, $01                                        ;; 00:01fc $3e $01
    ldh  [rIE], A                                      ;; 00:01fe $e0 $ff
    ld   A, $c7                                        ;; 00:0200 $3e $c7
    ldh  [rLCDC], A                                    ;; 00:0202 $e0 $40
    ei                                                 ;; 00:0204 $fb
.jr_00_0205:
    ld   A, [wD58B]                                    ;; 00:0205 $fa $8b $d5
    and  A, $7f                                        ;; 00:0208 $e6 $7f
    ld   [wD58B], A                                    ;; 00:020a $ea $8b $d5
    call updateJoypad                                  ;; 00:020d $cd $cd $03
    call call_00_030f                                  ;; 00:0210 $cd $0f $03
    ld   HL, wD522                                     ;; 00:0213 $21 $22 $d5
    inc  [HL]                                          ;; 00:0216 $34
    ld   A, [wD58B]                                    ;; 00:0217 $fa $8b $d5
    or   A, $80                                        ;; 00:021a $f6 $80
    ld   [wD58B], A                                    ;; 00:021c $ea $8b $d5
    halt                                               ;; 00:021f $76
    nop                                                ;; 00:0220 $00
.jr_00_0221:
    ld   A, [wVBlankDone]                              ;; 00:0221 $fa $84 $d5
    and  A, A                                          ;; 00:0224 $a7
    jr   Z, .jr_00_0221                                ;; 00:0225 $28 $fa
    xor  A, A                                          ;; 00:0227 $af
    ld   [wVBlankDone], A                              ;; 00:0228 $ea $84 $d5
    call call_00_17da                                  ;; 00:022b $cd $da $17
    ld   A, [wD1EB]                                    ;; 00:022e $fa $eb $d1
    and  A, A                                          ;; 00:0231 $a7
    jr   NZ, .jr_00_0205                               ;; 00:0232 $20 $d1
    ld   A, $01                                        ;; 00:0234 $3e $01
    ld   [$2000], A                                    ;; 00:0236 $ea $00 $20
    call call_01_4175                                  ;; 00:0239 $cd $75 $41
    ld   A, [wCurrentRomBank]                          ;; 00:023c $fa $b7 $d5
    ld   [$2000], A                                    ;; 00:023f $ea $00 $20
    jr   .jr_00_0205                                   ;; 00:0242 $18 $c1

vblankInterrupt:
    di                                                 ;; 00:0244 $f3
    push AF                                            ;; 00:0245 $f5
    push HL                                            ;; 00:0246 $e5
    push DE                                            ;; 00:0247 $d5
    push BC                                            ;; 00:0248 $c5
    ld   A, [wD58B]                                    ;; 00:0249 $fa $8b $d5
    bit  7, A                                          ;; 00:024c $cb $7f
    jp   Z, .jp_00_02b3                                ;; 00:024e $ca $b3 $02
    ld   HL, $295                                      ;; 00:0251 $21 $95 $02
    push HL                                            ;; 00:0254 $e5
    ld   A, [wMainGameState]                           ;; 00:0255 $fa $86 $d5
    cp   A, $04                                        ;; 00:0258 $fe $04
    jp   Z, jp_00_3bdb                                 ;; 00:025a $ca $db $3b
    cp   A, $05                                        ;; 00:025d $fe $05
    jp   Z, .jp_00_02b9                                ;; 00:025f $ca $b9 $02
    cp   A, $06                                        ;; 00:0262 $fe $06
    jp   Z, .jp_00_02c1                                ;; 00:0264 $ca $c1 $02
    ld   A, [wD58B]                                    ;; 00:0267 $fa $8b $d5
    and  A, $7f                                        ;; 00:026a $e6 $7f
    cp   A, $01                                        ;; 00:026c $fe $01
    jp   C, jp_00_37ef                                 ;; 00:026e $da $ef $37
    jp   Z, jp_00_380c                                 ;; 00:0271 $ca $0c $38
    cp   A, $03                                        ;; 00:0274 $fe $03
    jp   C, jp_00_38a5                                 ;; 00:0276 $da $a5 $38
    jp   Z, jp_00_393a                                 ;; 00:0279 $ca $3a $39
    cp   A, $05                                        ;; 00:027c $fe $05
    jp   C, jp_00_3960                                 ;; 00:027e $da $60 $39
    jp   Z, jp_00_39b4                                 ;; 00:0281 $ca $b4 $39
    cp   A, $07                                        ;; 00:0284 $fe $07
    jp   C, jp_00_3b3f                                 ;; 00:0286 $da $3f $3b
    jp   Z, jp_00_3b68                                 ;; 00:0289 $ca $68 $3b
    cp   A, $09                                        ;; 00:028c $fe $09
    jp   C, jp_00_3b98                                 ;; 00:028e $da $98 $3b
    jp   Z, jp_00_3bae                                 ;; 00:0291 $ca $ae $3b
    pop  HL                                            ;; 00:0294 $e1
    ld   A, [wD82C]                                    ;; 00:0295 $fa $2c $d8
    add  A, B                                          ;; 00:0298 $80
    add  A, C                                          ;; 00:0299 $81
    add  A, L                                          ;; 00:029a $85
    ld   [wD82C], A                                    ;; 00:029b $ea $2c $d8
    ld   A, [wSCX]                                     ;; 00:029e $fa $88 $d5
    ldh  [rSCX], A                                     ;; 00:02a1 $e0 $43
    ld   A, [wSCY]                                     ;; 00:02a3 $fa $87 $d5
    ldh  [rSCY], A                                     ;; 00:02a6 $e0 $42
    call call_00_191c                                  ;; 00:02a8 $cd $1c $19
    call $ff80                                         ;; 00:02ab $cd $80 $ff
    ld   A, $01                                        ;; 00:02ae $3e $01
    ld   [wVBlankDone], A                              ;; 00:02b0 $ea $84 $d5
.jp_00_02b3:
    pop  BC                                            ;; 00:02b3 $c1
    pop  DE                                            ;; 00:02b4 $d1
    pop  HL                                            ;; 00:02b5 $e1
    pop  AF                                            ;; 00:02b6 $f1
    ei                                                 ;; 00:02b7 $fb
    reti                                               ;; 00:02b8 $d9
.jp_00_02b9:
    ld   A, $07                                        ;; 00:02b9 $3e $07
    ld   [$2000], A                                    ;; 00:02bb $ea $00 $20
    jp   jp_07_45fe                                    ;; 00:02be $c3 $fe $45
.jp_00_02c1:
    ld   A, $11                                        ;; 00:02c1 $3e $11
    ld   [$2000], A                                    ;; 00:02c3 $ea $00 $20
    jp   $6ea4                                         ;; 00:02c6 $c3 $a4 $6e

LCDCInterrupt:
    push AF                                            ;; 00:02c9 $f5
    ld   A, [wC523]                                    ;; 00:02ca $fa $23 $c5
    and  A, A                                          ;; 00:02cd $a7
    jr   Z, .jr_00_02d8                                ;; 00:02ce $28 $08
    push HL                                            ;; 00:02d0 $e5
    ld   HL, wC52B                                     ;; 00:02d1 $21 $2b $c5
    ld   A, [HL+]                                      ;; 00:02d4 $2a
    ld   L, [HL]                                       ;; 00:02d5 $6e
    ld   H, A                                          ;; 00:02d6 $67
    jp   HL                                            ;; 00:02d7 $e9
.jr_00_02d8:
    ldh  A, [rWY]                                      ;; 00:02d8 $f0 $4a
    and  A, A                                          ;; 00:02da $a7
    jr   NZ, .jr_00_02e1                               ;; 00:02db $20 $04
    ld   A, $c8                                        ;; 00:02dd $3e $c8
    ldh  [rWX], A                                      ;; 00:02df $e0 $4b
.jr_00_02e1:
    pop  AF                                            ;; 00:02e1 $f1
    reti                                               ;; 00:02e2 $d9

timerInterrupt:
    push AF                                            ;; 00:02e3 $f5
    push HL                                            ;; 00:02e4 $e5
    push DE                                            ;; 00:02e5 $d5
    push BC                                            ;; 00:02e6 $c5
    ld   A, [wD1EB]                                    ;; 00:02e7 $fa $eb $d1
    and  A, A                                          ;; 00:02ea $a7
    jr   NZ, .jr_00_030a                               ;; 00:02eb $20 $1d
    ld   A, [wD5DE]                                    ;; 00:02ed $fa $de $d5
    and  A, A                                          ;; 00:02f0 $a7
    jr   NZ, .jr_00_030a                               ;; 00:02f1 $20 $17
    ld   A, $01                                        ;; 00:02f3 $3e $01
    ld   [wD5DE], A                                    ;; 00:02f5 $ea $de $d5
    ld   A, $01                                        ;; 00:02f8 $3e $01
    ld   [$2000], A                                    ;; 00:02fa $ea $00 $20
    call call_01_4175                                  ;; 00:02fd $cd $75 $41
    ld   A, [wCurrentRomBank]                          ;; 00:0300 $fa $b7 $d5
    ld   [$2000], A                                    ;; 00:0303 $ea $00 $20
    xor  A, A                                          ;; 00:0306 $af
    ld   [wD5DE], A                                    ;; 00:0307 $ea $de $d5
.jr_00_030a:
    pop  BC                                            ;; 00:030a $c1
    pop  DE                                            ;; 00:030b $d1
    pop  HL                                            ;; 00:030c $e1
    pop  AF                                            ;; 00:030d $f1
    reti                                               ;; 00:030e $d9

call_00_030f:
    ld   A, [wMainGameState]                           ;; 00:030f $fa $86 $d5
    rst  execJumpTable                                 ;; 00:0312 $c7
;@jumptable amount=6
    dw   call_00_2bc4                                  ;; 00:0313 pP $00
    dw   call_00_2e81                                  ;; 00:0315 pP $01
    dw   call_00_2f87                                  ;; 00:0317 ?? $02
    dw   call_00_31b7                                  ;; 00:0319 ?? $03
    dw   call_00_3ca1                                  ;; 00:031b pP $04
    dw   call_00_1378                                  ;; 00:031d pP $05
    db   $86, $13, $c1                                 ;; 00:031f ??P
    dw   $cc3b                                         ;; 00:0322 pP
    dw   $cc61                                         ;; 00:0324 pP
    dw   $cc7c                                         ;; 00:0326 pP
    dw   $cc97                                         ;; 00:0328 pP
    dw   $ccb2                                         ;; 00:032a pP
    dw   $cccd                                         ;; 00:032c pP
    dw   $cde8                                         ;; 00:032e pP
    dw   $cd03                                         ;; 00:0330 pP
    dw   $cd1e                                         ;; 00:0332 pP
    dw   $cd39                                         ;; 00:0334 pP
    db   $54, $cd, $6f, $cd, $8a, $c5, $d7, $c6        ;; 00:0336 p???????
    db   $15, $c6, $53, $c6, $91, $c6, $cf, $cb        ;; 00:033e ????????
    db   $32, $cb, $46, $cb, $5a, $cb, $6e, $cb        ;; 00:0346 ????????
    db   $82, $cb, $96, $cb, $aa, $cb, $be, $cb        ;; 00:034e ????????
    db   $d2, $cb, $e6, $cb, $fa, $cc, $0e, $ff        ;; 00:0356 ????????
    db   $00, $ff, $ff, $00, $ff, $01, $ff, $01        ;; 00:035e ????????
    db   $00, $01, $01, $00, $01, $ff, $01, $ff        ;; 00:0366 ????????
    db   $00, $ff, $ff, $00, $ff, $01, $ff, $01        ;; 00:036e ????????
    db   $00, $01, $01, $00, $01, $ff, $01, $18        ;; 00:0376 ????????
    db   $aa, $18, $c5, $18, $e0, $18, $fd, $19        ;; 00:037e ????????
    db   $00, $19, $03, $19, $06                       ;; 00:0386 ?????

;@data format=WWW amount=11
something_038b:
    data_WWW $000a, $0001, $00c8                       ;; 00:038b ..?wWw $00
    data_WWW $00ce, $0002, $00c9                       ;; 00:0391 ..?wWw $01
    data_WWW $0037, $0004, $0038                       ;; 00:0397 ..???? $02
    data_WWW $0028, $0003, $00cb                       ;; 00:039d ..???? $03
    data_WWW $002b, $0004, $002a                       ;; 00:03a3 ..???? $04
    data_WWW $003e, $000b, $003f                       ;; 00:03a9 ..???? $05
    data_WWW $0064, $0007, $0063                       ;; 00:03af ..???? $06
    data_WWW $0043, $000a, $00ca                       ;; 00:03b5 ..???? $07
    data_WWW $0078, $0008, $00cc                       ;; 00:03bb ..???? $08
    data_WWW $00cd, $0011, $00ac                       ;; 00:03c1 ..???? $09
    data_WWW $00ce, $0011, $0000                       ;; 00:03c7 ..???? $0a

updateJoypad:
    ld   A, $20                                        ;; 00:03cd $3e $20
    ldh  [rP1], A                                      ;; 00:03cf $e0 $00
    ldh  A, [rP1]                                      ;; 00:03d1 $f0 $00
    ldh  A, [rP1]                                      ;; 00:03d3 $f0 $00
    cpl                                                ;; 00:03d5 $2f
    and  A, $0f                                        ;; 00:03d6 $e6 $0f
    swap A                                             ;; 00:03d8 $cb $37
    ld   B, A                                          ;; 00:03da $47
    ld   A, $10                                        ;; 00:03db $3e $10
    ldh  [rP1], A                                      ;; 00:03dd $e0 $00
    ldh  A, [rP1]                                      ;; 00:03df $f0 $00
    ldh  A, [rP1]                                      ;; 00:03e1 $f0 $00
    ldh  A, [rP1]                                      ;; 00:03e3 $f0 $00
    ldh  A, [rP1]                                      ;; 00:03e5 $f0 $00
    ldh  A, [rP1]                                      ;; 00:03e7 $f0 $00
    ldh  A, [rP1]                                      ;; 00:03e9 $f0 $00
    cpl                                                ;; 00:03eb $2f
    and  A, $0f                                        ;; 00:03ec $e6 $0f
    or   A, B                                          ;; 00:03ee $b0
    ld   C, A                                          ;; 00:03ef $4f
    ld   A, [wJoypadDown]                              ;; 00:03f0 $fa $7e $d5
    xor  A, C                                          ;; 00:03f3 $a9
    and  A, C                                          ;; 00:03f4 $a1
    ld   [wJoypadPressed], A                           ;; 00:03f5 $ea $7f $d5
    ld   A, C                                          ;; 00:03f8 $79
    ld   [wJoypadDown], A                              ;; 00:03f9 $ea $7e $d5
    ld   A, $30                                        ;; 00:03fc $3e $30
    ldh  [rP1], A                                      ;; 00:03fe $e0 $00
    ret                                                ;; 00:0400 $c9

installDMARoutine:
    ld   C, $80                                        ;; 00:0401 $0e $80
    ld   B, $0a                                        ;; 00:0403 $06 $0a
    ld   HL, DMARoutine ;@=ptr                         ;; 00:0405 $21 $0f $04
.copyLoop:
    ld   A, [HL+]                                      ;; 00:0408 $2a
    ldh  [C], A                                        ;; 00:0409 $e2
    inc  C                                             ;; 00:040a $0c
    dec  B                                             ;; 00:040b $05
    jr   NZ, .copyLoop                                 ;; 00:040c $20 $fa
    ret                                                ;; 00:040e $c9

;@code
DMARoutine:
    ld   A, $c0                                        ;; 00:040f $3e $c0
    ldh  [rDMA], A                                     ;; 00:0411 $e0 $46
    ld   A, $28                                        ;; 00:0413 $3e $28
.waitLoop:
    dec  A                                             ;; 00:0415 $3d
    jr   NZ, .waitLoop                                 ;; 00:0416 $20 $fd
    ret                                                ;; 00:0418 $c9

jumptableFunctionImpl:
    add  A, A                                          ;; 00:0419 $87
    pop  HL                                            ;; 00:041a $e1
    ld   E, A                                          ;; 00:041b $5f
    ld   D, $00                                        ;; 00:041c $16 $00
    add  HL, DE                                        ;; 00:041e $19
    ld   A, [HL+]                                      ;; 00:041f $2a
    ld   H, [HL]                                       ;; 00:0420 $66
    ld   L, A                                          ;; 00:0421 $6f
    jp   HL                                            ;; 00:0422 $e9

disableLCD:
    ldh  A, [rLCDC]                                    ;; 00:0423 $f0 $40
    bit  7, A                                          ;; 00:0425 $cb $7f
    ret  Z                                             ;; 00:0427 $c8
    ldh  A, [rIE]                                      ;; 00:0428 $f0 $ff
    ld   [wIEBackup], A                                ;; 00:042a $ea $85 $d5
    res  0, A                                          ;; 00:042d $cb $87
    ldh  [rIE], A                                      ;; 00:042f $e0 $ff
.waitForEndOfFrame:
    ldh  A, [rLY]                                      ;; 00:0431 $f0 $44
    cp   A, $91                                        ;; 00:0433 $fe $91
    jr   NZ, .waitForEndOfFrame                        ;; 00:0435 $20 $fa
    ldh  A, [rLCDC]                                    ;; 00:0437 $f0 $40
    and  A, $7f                                        ;; 00:0439 $e6 $7f
    ldh  [rLCDC], A                                    ;; 00:043b $e0 $40
    xor  A, A                                          ;; 00:043d $af
    ldh  [rIF], A                                      ;; 00:043e $e0 $0f
    ld   A, [wIEBackup]                                ;; 00:0440 $fa $85 $d5
    ldh  [rIE], A                                      ;; 00:0443 $e0 $ff
    ret                                                ;; 00:0445 $c9

; Zero BC bytes at HL
memzero:
    xor  A, A                                          ;; 00:0446 $af
    ld   [HL+], A                                      ;; 00:0447 $22
    dec  BC                                            ;; 00:0448 $0b
    ld   A, C                                          ;; 00:0449 $79
    or   A, B                                          ;; 00:044a $b0
    jr   NZ, memzero                                   ;; 00:044b $20 $f9
    ret                                                ;; 00:044d $c9

; Copy BC bytes from HL to DE
memcopy:
    ld   A, [HL+]                                      ;; 00:044e $2a
    ld   [DE], A                                       ;; 00:044f $12
    inc  DE                                            ;; 00:0450 $13
    dec  BC                                            ;; 00:0451 $0b
    ld   A, B                                          ;; 00:0452 $78
    or   A, C                                          ;; 00:0453 $b1
    jr   NZ, memcopy                                   ;; 00:0454 $20 $f8
    ret                                                ;; 00:0456 $c9

; Set BC bytes at HL to E
memset:
    ld   A, E                                          ;; 00:0457 $7b
    ld   [HL+], A                                      ;; 00:0458 $22
    dec  BC                                            ;; 00:0459 $0b
    ld   A, B                                          ;; 00:045a $78
    or   A, C                                          ;; 00:045b $b1
    jr   NZ, memset                                    ;; 00:045c $20 $f9
    ret                                                ;; 00:045e $c9

clearVRAM:
    ldh  A, [hIsGBC]                                   ;; 00:045f $f0 $fe
    and  A, A                                          ;; 00:0461 $a7
    jr   Z, .jr_00_0471                                ;; 00:0462 $28 $0d
    ld   A, $01                                        ;; 00:0464 $3e $01
    ldh  [rVBK], A                                     ;; 00:0466 $e0 $4f
    ld   HL, $8000                                     ;; 00:0468 $21 $00 $80
    ld   BC, $2000                                     ;; 00:046b $01 $00 $20
    call memzero                                       ;; 00:046e $cd $46 $04
.jr_00_0471:
    ld   A, $00                                        ;; 00:0471 $3e $00
    ldh  [rVBK], A                                     ;; 00:0473 $e0 $4f
    ld   HL, $8000                                     ;; 00:0475 $21 $00 $80
    ld   BC, $2000                                     ;; 00:0478 $01 $00 $20
    call memzero                                       ;; 00:047b $cd $46 $04
    ret                                                ;; 00:047e $c9

clearTilemapVRAM:
    ldh  A, [hIsGBC]                                   ;; 00:047f $f0 $fe
    and  A, A                                          ;; 00:0481 $a7
    jr   Z, .jr_00_0491                                ;; 00:0482 $28 $0d
    ld   A, $01                                        ;; 00:0484 $3e $01
    ldh  [rVBK], A                                     ;; 00:0486 $e0 $4f
    ld   HL, $9800                                     ;; 00:0488 $21 $00 $98
    ld   BC, $400                                      ;; 00:048b $01 $00 $04
    call memzero                                       ;; 00:048e $cd $46 $04
.jr_00_0491:
    ld   A, $00                                        ;; 00:0491 $3e $00
    ldh  [rVBK], A                                     ;; 00:0493 $e0 $4f
    ld   HL, $9800                                     ;; 00:0495 $21 $00 $98
    ld   BC, $400                                      ;; 00:0498 $01 $00 $04
    call memzero                                       ;; 00:049b $cd $46 $04
    ret                                                ;; 00:049e $c9

setBackgroundPaletteData:
    ld   A, $80                                        ;; 00:049f $3e $80
    ldh  [rBCPS], A                                    ;; 00:04a1 $e0 $68
    ld   B, $40                                        ;; 00:04a3 $06 $40
    ld   C, $69                                        ;; 00:04a5 $0e $69
.jr_00_04a7:
    ld   A, [HL+]                                      ;; 00:04a7 $2a
    ldh  [C], A                                        ;; 00:04a8 $e2
    dec  B                                             ;; 00:04a9 $05
    jr   NZ, .jr_00_04a7                               ;; 00:04aa $20 $fb
    ret                                                ;; 00:04ac $c9

setSpritePaletteData:
    ld   A, $80                                        ;; 00:04ad $3e $80
    ldh  [rOCPS], A                                    ;; 00:04af $e0 $6a
    ld   B, $40                                        ;; 00:04b1 $06 $40
    ld   C, $6b                                        ;; 00:04b3 $0e $6b
.jr_00_04b5:
    ld   A, [HL+]                                      ;; 00:04b5 $2a
    ldh  [C], A                                        ;; 00:04b6 $e2
    dec  B                                             ;; 00:04b7 $05
    jr   NZ, .jr_00_04b5                               ;; 00:04b8 $20 $fb
    ret                                                ;; 00:04ba $c9

setSingleBackgroundPaletteEntry:
    and  A, $07                                        ;; 00:04bb $e6 $07
    rlca                                               ;; 00:04bd $07
    rlca                                               ;; 00:04be $07
    rlca                                               ;; 00:04bf $07
    or   A, $80                                        ;; 00:04c0 $f6 $80
    ldh  [rBCPS], A                                    ;; 00:04c2 $e0 $68
    ld   C, $69                                        ;; 00:04c4 $0e $69
    ld   B, $04                                        ;; 00:04c6 $06 $04
.jr_00_04c8:
    ld   A, [HL+]                                      ;; 00:04c8 $2a
    ldh  [C], A                                        ;; 00:04c9 $e2
    ld   A, [HL+]                                      ;; 00:04ca $2a
    ldh  [C], A                                        ;; 00:04cb $e2
    dec  B                                             ;; 00:04cc $05
    jr   NZ, .jr_00_04c8                               ;; 00:04cd $20 $f9
    ret                                                ;; 00:04cf $c9

setSingleSpritePaletteEntry:
    and  A, $07                                        ;; 00:04d0 $e6 $07
    rlca                                               ;; 00:04d2 $07
    rlca                                               ;; 00:04d3 $07
    rlca                                               ;; 00:04d4 $07
    or   A, $80                                        ;; 00:04d5 $f6 $80
    ldh  [rOCPS], A                                    ;; 00:04d7 $e0 $6a
    ld   C, $6b                                        ;; 00:04d9 $0e $6b
    ld   B, $04                                        ;; 00:04db $06 $04
.jr_00_04dd:
    ld   A, [HL+]                                      ;; 00:04dd $2a
    ldh  [C], A                                        ;; 00:04de $e2
    ld   A, [HL+]                                      ;; 00:04df $2a
    ldh  [C], A                                        ;; 00:04e0 $e2
    dec  B                                             ;; 00:04e1 $05
    jr   NZ, .jr_00_04dd                               ;; 00:04e2 $20 $f9
    ret                                                ;; 00:04e4 $c9

setDoubleSpeed:
    ldh  A, [rKEY1]                                    ;; 00:04e5 $f0 $4d
    bit  7, A                                          ;; 00:04e7 $cb $7f
    ret  NZ                                            ;; 00:04e9 $c0
    ld   A, $01                                        ;; 00:04ea $3e $01
    ldh  [rKEY1], A                                    ;; 00:04ec $e0 $4d
    ldh  A, [rIE]                                      ;; 00:04ee $f0 $ff
    push AF                                            ;; 00:04f0 $f5
    xor  A, A                                          ;; 00:04f1 $af
    ldh  [rIE], A                                      ;; 00:04f2 $e0 $ff
    ld   A, $30                                        ;; 00:04f4 $3e $30
    ldh  [rP1], A                                      ;; 00:04f6 $e0 $00
    stop                                               ;; 00:04f8 $10 $00
.jr_00_04fa:
    ldh  A, [rKEY1]                                    ;; 00:04fa $f0 $4d
    bit  7, A                                          ;; 00:04fc $cb $7f
    jr   Z, .jr_00_04fa                                ;; 00:04fe $28 $fa
    xor  A, A                                          ;; 00:0500 $af
    ldh  [rP1], A                                      ;; 00:0501 $e0 $00
    ldh  [rIF], A                                      ;; 00:0503 $e0 $0f
    pop  AF                                            ;; 00:0505 $f1
    ldh  [rIE], A                                      ;; 00:0506 $e0 $ff
    ret                                                ;; 00:0508 $c9
    db   $f0, $4d, $cb, $7f, $c8, $3e, $01, $e0        ;; 00:0509 ????????
    db   $4d, $f0, $ff, $f5, $af, $e0, $ff, $3e        ;; 00:0511 ????????
    db   $30, $e0, $00, $10, $00, $f0, $4d, $cb        ;; 00:0519 ????????
    db   $7f, $20, $fa, $af, $e0, $00, $e0, $0f        ;; 00:0521 ????????
    db   $f1, $e0, $ff, $c9                            ;; 00:0529 ????

call_00_052d:
    ld   A, C                                          ;; 00:052d $79
    and  A, A                                          ;; 00:052e $a7
    jr   Z, .jr_00_0540                                ;; 00:052f $28 $0f
    ld   A, B                                          ;; 00:0531 $78
    and  A, A                                          ;; 00:0532 $a7
    jr   Z, .jr_00_0540                                ;; 00:0533 $28 $0b
    cp   A, C                                          ;; 00:0535 $b9
    jr   C, .jr_00_053a                                ;; 00:0536 $38 $02
    ld   B, C                                          ;; 00:0538 $41
    ld   C, A                                          ;; 00:0539 $4f
.jr_00_053a:
    xor  A, A                                          ;; 00:053a $af
.jr_00_053b:
    add  A, C                                          ;; 00:053b $81
    dec  B                                             ;; 00:053c $05
    jr   NZ, .jr_00_053b                               ;; 00:053d $20 $fc
    ret                                                ;; 00:053f $c9
.jr_00_0540:
    xor  A, A                                          ;; 00:0540 $af
    ret                                                ;; 00:0541 $c9

call_00_0542:
    ld   A, B                                          ;; 00:0542 $78
    and  A, A                                          ;; 00:0543 $a7
    jr   Z, .jr_00_0552                                ;; 00:0544 $28 $0c
    ld   A, C                                          ;; 00:0546 $79
    and  A, A                                          ;; 00:0547 $a7
    jr   Z, .jr_00_0552                                ;; 00:0548 $28 $08
    ld   A, B                                          ;; 00:054a $78
    ld   B, $00                                        ;; 00:054b $06 $00
.jr_00_054d:
    sub  A, C                                          ;; 00:054d $91
    ret  C                                             ;; 00:054e $d8
    inc  B                                             ;; 00:054f $04
    jr   .jr_00_054d                                   ;; 00:0550 $18 $fb
.jr_00_0552:
    ld   B, $00                                        ;; 00:0552 $06 $00
    ret                                                ;; 00:0554 $c9

call_00_0555:
    ld   HL, $00                                       ;; 00:0555 $21 $00 $00
    ld   A, B                                          ;; 00:0558 $78
    or   A, C                                          ;; 00:0559 $b1
    ret  Z                                             ;; 00:055a $c8
    ld   A, D                                          ;; 00:055b $7a
    or   A, E                                          ;; 00:055c $b3
    ret  Z                                             ;; 00:055d $c8
    ld   A, B                                          ;; 00:055e $78
    cp   A, D                                          ;; 00:055f $ba
    jr   C, .jr_00_0571                                ;; 00:0560 $38 $0f
    jr   Z, .jr_00_0566                                ;; 00:0562 $28 $02
    jr   .jr_00_056a                                   ;; 00:0564 $18 $04
.jr_00_0566:
    ld   A, C                                          ;; 00:0566 $79
    cp   A, E                                          ;; 00:0567 $bb
    jr   C, .jr_00_0571                                ;; 00:0568 $38 $07
.jr_00_056a:
    add  HL, BC                                        ;; 00:056a $09
    dec  DE                                            ;; 00:056b $1b
    ld   A, D                                          ;; 00:056c $7a
    or   A, E                                          ;; 00:056d $b3
    jr   NZ, .jr_00_056a                               ;; 00:056e $20 $fa
    ret                                                ;; 00:0570 $c9
.jr_00_0571:
    add  HL, DE                                        ;; 00:0571 $19
    dec  BC                                            ;; 00:0572 $0b
    ld   A, B                                          ;; 00:0573 $78
    or   A, C                                          ;; 00:0574 $b1
    jr   NZ, .jr_00_0571                               ;; 00:0575 $20 $fa
    ret                                                ;; 00:0577 $c9

call_00_0578:
    ld   HL, $00                                       ;; 00:0578 $21 $00 $00
    ld   A, B                                          ;; 00:057b $78
    or   A, C                                          ;; 00:057c $b1
    ret  Z                                             ;; 00:057d $c8
    ld   A, D                                          ;; 00:057e $7a
    or   A, E                                          ;; 00:057f $b3
    ret  Z                                             ;; 00:0580 $c8
.jr_00_0581:
    ld   A, E                                          ;; 00:0581 $7b
    sub  A, C                                          ;; 00:0582 $91
    ld   E, A                                          ;; 00:0583 $5f
    ld   A, D                                          ;; 00:0584 $7a
    sbc  A, B                                          ;; 00:0585 $98
    ld   D, A                                          ;; 00:0586 $57
    ret  C                                             ;; 00:0587 $d8
    inc  HL                                            ;; 00:0588 $23
    jr   .jr_00_0581                                   ;; 00:0589 $18 $f6

; Set B bytes to zero at HL
memzeroSmall:
    xor  A, A                                          ;; 00:058b $af
.loop:
    ld   [HL+], A                                      ;; 00:058c $22
    dec  B                                             ;; 00:058d $05
    jr   NZ, .loop                                     ;; 00:058e $20 $fc
    ret                                                ;; 00:0590 $c9

; Copy B bytes from HL to DE
memcopySmall:
    ld   A, [HL+]                                      ;; 00:0591 $2a
    ld   [DE], A                                       ;; 00:0592 $12
    inc  DE                                            ;; 00:0593 $13
    dec  B                                             ;; 00:0594 $05
    jr   NZ, memcopySmall                              ;; 00:0595 $20 $fa
    ret                                                ;; 00:0597 $c9

; Set B bytes at HL to A
memsetSmall:
    ld   [HL+], A                                      ;; 00:0598 $22
    dec  B                                             ;; 00:0599 $05
    jr   NZ, memsetSmall                               ;; 00:059a $20 $fc
    ret                                                ;; 00:059c $c9
    db   $7e, $12, $13, $3e, $20, $85, $6f, $3e        ;; 00:059d ????????
    db   $00, $8c, $67, $05, $20, $f2, $c9, $2a        ;; 00:05a5 ????????
    db   $12, $3e, $20, $83, $5f, $3e, $00, $8a        ;; 00:05ad ????????
    db   $57, $05, $20, $f3, $c9                       ;; 00:05b5 ?????

call_00_05ba:
    ld   [wD837], A                                    ;; 00:05ba $ea $37 $d8
.jr_00_05bd:
    ld   C, $14                                        ;; 00:05bd $0e $14
.jr_00_05bf:
    ld   A, [DE]                                       ;; 00:05bf $1a
    ld   [HL+], A                                      ;; 00:05c0 $22
    inc  DE                                            ;; 00:05c1 $13
    dec  C                                             ;; 00:05c2 $0d
    jr   NZ, .jr_00_05bf                               ;; 00:05c3 $20 $fa
    ld   C, $0c                                        ;; 00:05c5 $0e $0c
    ld   A, [wD837]                                    ;; 00:05c7 $fa $37 $d8
.jr_00_05ca:
    ld   [HL+], A                                      ;; 00:05ca $22
    dec  C                                             ;; 00:05cb $0d
    jr   NZ, .jr_00_05ca                               ;; 00:05cc $20 $fc
    dec  B                                             ;; 00:05ce $05
    jr   NZ, .jr_00_05bd                               ;; 00:05cf $20 $ec
    ret                                                ;; 00:05d1 $c9
    db   $ea, $37, $d8, $0e, $0c, $fa, $37, $d8        ;; 00:05d2 ????????
    db   $32, $0d, $20, $fc, $0e, $14, $1a, $32        ;; 00:05da ????????
    db   $1b, $0d, $20, $fa, $05, $20, $ec, $c9        ;; 00:05e2 ????????

call_00_05ea:
    ld   A, L                                          ;; 00:05ea $7d
    sub  A, E                                          ;; 00:05eb $93
    ld   A, H                                          ;; 00:05ec $7c
    sbc  A, D                                          ;; 00:05ed $9a
    ret  NZ                                            ;; 00:05ee $c0
    ld   A, L                                          ;; 00:05ef $7d
    xor  A, E                                          ;; 00:05f0 $ab
    ret                                                ;; 00:05f1 $c9

is_BC_DE_equal:
    ld   A, C                                          ;; 00:05f2 $79
    sub  A, E                                          ;; 00:05f3 $93
    ld   A, B                                          ;; 00:05f4 $78
    sbc  A, D                                          ;; 00:05f5 $9a
    ret  NZ                                            ;; 00:05f6 $c0
    ld   A, C                                          ;; 00:05f7 $79
    xor  A, E                                          ;; 00:05f8 $ab
    ret                                                ;; 00:05f9 $c9

call_00_05fa:
    ld   A, C                                          ;; 00:05fa $79
    ld   [wCurrentRomBank], A                          ;; 00:05fb $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:05fe $ea $00 $20
    push HL                                            ;; 00:0601 $e5
    push DE                                            ;; 00:0602 $d5
    ld   [wStackPointerBackup], SP                     ;; 00:0603 $08 $8e $d5
    ld   A, [HL+]                                      ;; 00:0606 $2a
    ld   L, [HL]                                       ;; 00:0607 $6e
    ld   H, A                                          ;; 00:0608 $67
    ld   SP, HL                                        ;; 00:0609 $f9
    ld   H, D                                          ;; 00:060a $62
    ld   L, E                                          ;; 00:060b $6b
    ld   A, [HL+]                                      ;; 00:060c $2a
    ld   L, [HL]                                       ;; 00:060d $6e
    ld   H, A                                          ;; 00:060e $67
.jr_00_060f:
    pop  DE                                            ;; 00:060f $d1
    ld   A, E                                          ;; 00:0610 $7b
    ld   [HL+], A                                      ;; 00:0611 $22
    ld   A, D                                          ;; 00:0612 $7a
    ld   [HL+], A                                      ;; 00:0613 $22
    dec  B                                             ;; 00:0614 $05
    jr   NZ, .jr_00_060f                               ;; 00:0615 $20 $f8
    ld   B, H                                          ;; 00:0617 $44
    ld   C, L                                          ;; 00:0618 $4d
    ld   HL, SP+0                                      ;; 00:0619 $f8 $00
    ld   D, H                                          ;; 00:061b $54
    ld   E, L                                          ;; 00:061c $5d
    ld   HL, wStackPointerBackup                       ;; 00:061d $21 $8e $d5
    ld   A, [HL+]                                      ;; 00:0620 $2a
    ld   H, [HL]                                       ;; 00:0621 $66
    ld   L, A                                          ;; 00:0622 $6f
    ld   SP, HL                                        ;; 00:0623 $f9
    pop  HL                                            ;; 00:0624 $e1
    ld   A, B                                          ;; 00:0625 $78
    ld   [HL+], A                                      ;; 00:0626 $22
    ld   [HL], C                                       ;; 00:0627 $71
    pop  HL                                            ;; 00:0628 $e1
    ld   A, D                                          ;; 00:0629 $7a
    ld   [HL+], A                                      ;; 00:062a $22
    ld   [HL], E                                       ;; 00:062b $73
    ld   A, [wBackupRomBank]                           ;; 00:062c $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:062f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0632 $ea $00 $20
    ret                                                ;; 00:0635 $c9

call_00_0636:
    ld   [wStackPointerBackup], SP                     ;; 00:0636 $08 $8e $d5
    ld   SP, HL                                        ;; 00:0639 $f9
    ld   H, D                                          ;; 00:063a $62
    ld   L, E                                          ;; 00:063b $6b
.jr_00_063c:
    pop  DE                                            ;; 00:063c $d1
    ld   A, E                                          ;; 00:063d $7b
    ld   [HL+], A                                      ;; 00:063e $22
    ld   A, D                                          ;; 00:063f $7a
    ld   [HL+], A                                      ;; 00:0640 $22
    dec  B                                             ;; 00:0641 $05
    jr   NZ, .jr_00_063c                               ;; 00:0642 $20 $f8
    ld   HL, wStackPointerBackup                       ;; 00:0644 $21 $8e $d5
    ld   A, [HL+]                                      ;; 00:0647 $2a
    ld   H, [HL]                                       ;; 00:0648 $66
    ld   L, A                                          ;; 00:0649 $6f
    ld   SP, HL                                        ;; 00:064a $f9
    ret                                                ;; 00:064b $c9

call_00_064c:
    push DE                                            ;; 00:064c $d5
    ld   A, [wD82C]                                    ;; 00:064d $fa $2c $d8
    ld   E, A                                          ;; 00:0650 $5f
    add  A, A                                          ;; 00:0651 $87
    add  A, A                                          ;; 00:0652 $87
    add  A, E                                          ;; 00:0653 $83
    inc  A                                             ;; 00:0654 $3c
    ld   [wD82C], A                                    ;; 00:0655 $ea $2c $d8
    pop  DE                                            ;; 00:0658 $d1
    ret                                                ;; 00:0659 $c9
    db   $d5, $fa, $2d, $d8, $67, $57, $fa, $2e        ;; 00:065a ????????
    db   $d8, $6f, $5f, $29, $29, $19, $09, $7c        ;; 00:0662 ????????
    db   $ea, $2d, $d8, $7d, $ea, $2e, $d8, $d1        ;; 00:066a ????????
    db   $c9                                           ;; 00:0672 ?

call_00_0673:
    ld   A, H                                          ;; 00:0673 $7c
    ld   [DE], A                                       ;; 00:0674 $12
    inc  DE                                            ;; 00:0675 $13
    ld   A, L                                          ;; 00:0676 $7d
    ld   [DE], A                                       ;; 00:0677 $12
    inc  DE                                            ;; 00:0678 $13
    ret                                                ;; 00:0679 $c9

ld_HL_from_HL_add_2C:
    sla  C                                             ;; 00:067a $cb $21
    ld   B, $00                                        ;; 00:067c $06 $00
    add  HL, BC                                        ;; 00:067e $09
    ld   A, [HL+]                                      ;; 00:067f $2a
    ld   L, [HL]                                       ;; 00:0680 $6e
    ld   H, A                                          ;; 00:0681 $67
    ret                                                ;; 00:0682 $c9

ld_DE_from_HL_add_2C:
    sla  C                                             ;; 00:0683 $cb $21
    ld   B, $00                                        ;; 00:0685 $06 $00
    add  HL, BC                                        ;; 00:0687 $09
    ld   A, [HL+]                                      ;; 00:0688 $2a
    ld   E, [HL]                                       ;; 00:0689 $5e
    ld   D, A                                          ;; 00:068a $57
    ret                                                ;; 00:068b $c9
    db   $cb, $3c, $cb, $1d, $cb, $3c, $cb, $1d        ;; 00:068c ????????
    db   $cb, $3c, $cb, $1d, $cb, $3c, $cb, $1d        ;; 00:0694 ????????
    db   $cb, $3c, $cb, $1d, $c9                       ;; 00:069c ?????

multiply_HL_32:
    add  HL, HL                                        ;; 00:06a1 $29
    add  HL, HL                                        ;; 00:06a2 $29
    add  HL, HL                                        ;; 00:06a3 $29
    add  HL, HL                                        ;; 00:06a4 $29
    add  HL, HL                                        ;; 00:06a5 $29
    ret                                                ;; 00:06a6 $c9

divide_HL_8:
    srl  H                                             ;; 00:06a7 $cb $3c
    rr   L                                             ;; 00:06a9 $cb $1d
    srl  H                                             ;; 00:06ab $cb $3c
    rr   L                                             ;; 00:06ad $cb $1d
    srl  H                                             ;; 00:06af $cb $3c
    rr   L                                             ;; 00:06b1 $cb $1d
    ret                                                ;; 00:06b3 $c9

divide_DE_8:
    srl  D                                             ;; 00:06b4 $cb $3a
    rr   E                                             ;; 00:06b6 $cb $1b
    srl  D                                             ;; 00:06b8 $cb $3a
    rr   E                                             ;; 00:06ba $cb $1b
    srl  D                                             ;; 00:06bc $cb $3a
    rr   E                                             ;; 00:06be $cb $1b
    ret                                                ;; 00:06c0 $c9

divide_BC_8:
    srl  B                                             ;; 00:06c1 $cb $38
    rr   C                                             ;; 00:06c3 $cb $19
    srl  B                                             ;; 00:06c5 $cb $38
    rr   C                                             ;; 00:06c7 $cb $19
    srl  B                                             ;; 00:06c9 $cb $38
    rr   C                                             ;; 00:06cb $cb $19
    ret                                                ;; 00:06cd $c9

call_00_06ce:
    push DE                                            ;; 00:06ce $d5
    push HL                                            ;; 00:06cf $e5
    call divide_DE_8                                   ;; 00:06d0 $cd $b4 $06
    ld   HL, wD5A7                                     ;; 00:06d3 $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:06d6 $2a
    ld   C, [HL]                                       ;; 00:06d7 $4e
    ld   B, A                                          ;; 00:06d8 $47
    call call_00_0555                                  ;; 00:06d9 $cd $55 $05
    pop  DE                                            ;; 00:06dc $d1
    push DE                                            ;; 00:06dd $d5
    call divide_DE_8                                   ;; 00:06de $cd $b4 $06
    add  HL, DE                                        ;; 00:06e1 $19
    ld   D, H                                          ;; 00:06e2 $54
    ld   E, L                                          ;; 00:06e3 $5d
    ld   A, [wD598]                                    ;; 00:06e4 $fa $98 $d5
    ld   [wBackupRomBank], A                           ;; 00:06e7 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:06ea $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:06ed $ea $00 $20
    ld   HL, wD5A1                                     ;; 00:06f0 $21 $a1 $d5
    ld   A, [HL+]                                      ;; 00:06f3 $2a
    ld   L, [HL]                                       ;; 00:06f4 $6e
    ld   H, A                                          ;; 00:06f5 $67
    add  HL, DE                                        ;; 00:06f6 $19
    ld   A, [HL]                                       ;; 00:06f7 $7e
    cp   A, $80                                        ;; 00:06f8 $fe $80
    pop  HL                                            ;; 00:06fa $e1
    pop  DE                                            ;; 00:06fb $d1
    ret                                                ;; 00:06fc $c9

call_00_06fd:
    ld   A, [wC588]                                    ;; 00:06fd $fa $88 $c5
    inc  A                                             ;; 00:0700 $3c
    ld   B, A                                          ;; 00:0701 $47
    ld   C, $00                                        ;; 00:0702 $0e $00
.jp_00_0704:
    ld   A, [wC59E]                                    ;; 00:0704 $fa $9e $c5
    cp   A, C                                          ;; 00:0707 $b9
    jr   Z, .jr_00_0763                                ;; 00:0708 $28 $59
    push BC                                            ;; 00:070a $c5
    ld   HL, $33b                                      ;; 00:070b $21 $3b $03
    call ld_HL_from_HL_add_2C                          ;; 00:070e $cd $7a $06
    ld   A, [HL]                                       ;; 00:0711 $7e
    and  A, A                                          ;; 00:0712 $a7
    jp   Z, .jp_00_0762                                ;; 00:0713 $ca $62 $07
    ld   BC, $03                                       ;; 00:0716 $01 $03 $00
    add  HL, BC                                        ;; 00:0719 $09
    ld   A, [HL+]                                      ;; 00:071a $2a
    ld   D, A                                          ;; 00:071b $57
    ld   A, [HL+]                                      ;; 00:071c $2a
    ld   E, A                                          ;; 00:071d $5f
    ld   BC, $10                                       ;; 00:071e $01 $10 $00
    add  HL, BC                                        ;; 00:0721 $09
    ld   A, [HL+]                                      ;; 00:0722 $2a
    ld   B, A                                          ;; 00:0723 $47
    ld   A, [HL+]                                      ;; 00:0724 $2a
    ld   C, A                                          ;; 00:0725 $4f
    dec  B                                             ;; 00:0726 $05
    dec  C                                             ;; 00:0727 $0d
    ld   A, [wC59C]                                    ;; 00:0728 $fa $9c $c5
    ld   H, A                                          ;; 00:072b $67
    dec  H                                             ;; 00:072c $25
    ld   A, [wC59D]                                    ;; 00:072d $fa $9d $c5
    ld   L, A                                          ;; 00:0730 $6f
    dec  L                                             ;; 00:0731 $2d
    ld   A, B                                          ;; 00:0732 $78
    add  A, E                                          ;; 00:0733 $83
    ld   E, A                                          ;; 00:0734 $5f
    ld   A, [wC59B]                                    ;; 00:0735 $fa $9b $c5
    cp   A, E                                          ;; 00:0738 $bb
    jr   Z, .jr_00_0749                                ;; 00:0739 $28 $0e
    jr   NC, .jp_00_0762                               ;; 00:073b $30 $25
    ld   A, E                                          ;; 00:073d $7b
    sub  A, B                                          ;; 00:073e $90
    ld   E, A                                          ;; 00:073f $5f
    ld   A, [wC59B]                                    ;; 00:0740 $fa $9b $c5
    add  A, H                                          ;; 00:0743 $84
    cp   A, E                                          ;; 00:0744 $bb
    jr   Z, .jr_00_0749                                ;; 00:0745 $28 $02
    jr   C, .jp_00_0762                                ;; 00:0747 $38 $19
.jr_00_0749:
    ld   A, C                                          ;; 00:0749 $79
    add  A, D                                          ;; 00:074a $82
    ld   D, A                                          ;; 00:074b $57
    ld   A, [wC59A]                                    ;; 00:074c $fa $9a $c5
    cp   A, D                                          ;; 00:074f $ba
    jr   Z, .jr_00_0760                                ;; 00:0750 $28 $0e
    jr   NC, .jp_00_0762                               ;; 00:0752 $30 $0e
    ld   A, D                                          ;; 00:0754 $7a
    sub  A, C                                          ;; 00:0755 $91
    ld   D, A                                          ;; 00:0756 $57
    ld   A, [wC59A]                                    ;; 00:0757 $fa $9a $c5
    add  A, L                                          ;; 00:075a $85
    cp   A, D                                          ;; 00:075b $ba
    jr   Z, .jr_00_0760                                ;; 00:075c $28 $02
    jr   C, .jp_00_0762                                ;; 00:075e $38 $02
.jr_00_0760:
    pop  BC                                            ;; 00:0760 $c1
    ret                                                ;; 00:0761 $c9
.jp_00_0762:
    pop  BC                                            ;; 00:0762 $c1
.jr_00_0763:
    inc  C                                             ;; 00:0763 $0c
    dec  B                                             ;; 00:0764 $05
    jp   NZ, .jp_00_0704                               ;; 00:0765 $c2 $04 $07
    ret                                                ;; 00:0768 $c9
    db   $00, $10, $00, $00, $ff, $f0, $00, $00        ;; 00:0769 Ww..????
    db   $00, $00, $ff, $f0, $00, $00, $00, $10        ;; 00:0771 Ww..????

call_00_0779:
    ld   A, [wPlayerX]                                 ;; 00:0779 $fa $44 $c1
    ld   [wD5BC], A                                    ;; 00:077c $ea $bc $d5
    ld   A, [wPlayerX.low]                             ;; 00:077f $fa $45 $c1
    ld   [wD5BD], A                                    ;; 00:0782 $ea $bd $d5
    ld   A, [wPlayerY.low]                             ;; 00:0785 $fa $47 $c1
    add  A, $08                                        ;; 00:0788 $c6 $08
    ld   [wD5BF], A                                    ;; 00:078a $ea $bf $d5
    ld   A, [wPlayerY]                                 ;; 00:078d $fa $46 $c1
    adc  A, $00                                        ;; 00:0790 $ce $00
    ld   [wD5BE], A                                    ;; 00:0792 $ea $be $d5
    call call_00_0851                                  ;; 00:0795 $cd $51 $08
    ld   A, B                                          ;; 00:0798 $78
    and  A, A                                          ;; 00:0799 $a7
    ret  NZ                                            ;; 00:079a $c0
    ld   A, [wC461]                                    ;; 00:079b $fa $61 $c4
    add  A, A                                          ;; 00:079e $87
    add  A, A                                          ;; 00:079f $87
    ld   C, A                                          ;; 00:07a0 $4f
    ld   B, $00                                        ;; 00:07a1 $06 $00
    ld   HL, $769                                      ;; 00:07a3 $21 $69 $07
    add  HL, BC                                        ;; 00:07a6 $09
    ld   DE, wD837                                     ;; 00:07a7 $11 $37 $d8
    ld   B, $04                                        ;; 00:07aa $06 $04
    call memcopySmall                                  ;; 00:07ac $cd $91 $05
    ld   HL, wD83A                                     ;; 00:07af $21 $3a $d8
    ld   A, [wPlayerY.low]                             ;; 00:07b2 $fa $47 $c1
    add  A, [HL]                                       ;; 00:07b5 $86
    ld   E, A                                          ;; 00:07b6 $5f
    ld   HL, wD839                                     ;; 00:07b7 $21 $39 $d8
    ld   A, [wPlayerY]                                 ;; 00:07ba $fa $46 $c1
    adc  A, [HL]                                       ;; 00:07bd $8e
    ld   D, A                                          ;; 00:07be $57
    ld   HL, wD837                                     ;; 00:07bf $21 $37 $d8
    ld   A, [HL+]                                      ;; 00:07c2 $2a
    ld   C, [HL]                                       ;; 00:07c3 $4e
    ld   B, A                                          ;; 00:07c4 $47
    ld   HL, wPlayerX                                  ;; 00:07c5 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:07c8 $2a
    ld   L, [HL]                                       ;; 00:07c9 $6e
    ld   H, A                                          ;; 00:07ca $67
    add  HL, BC                                        ;; 00:07cb $09
    call call_00_06ce                                  ;; 00:07cc $cd $ce $06
    cp   A, $81                                        ;; 00:07cf $fe $81
    jr   Z, .jr_00_082c                                ;; 00:07d1 $28 $59
    cp   A, $8f                                        ;; 00:07d3 $fe $8f
    jr   Z, .jr_00_0818                                ;; 00:07d5 $28 $41
    cp   A, $90                                        ;; 00:07d7 $fe $90
    jr   NC, .jr_00_0840                               ;; 00:07d9 $30 $65
    cp   A, $82                                        ;; 00:07db $fe $82
    jr   C, .jr_00_0840                                ;; 00:07dd $38 $61
    sub  A, $82                                        ;; 00:07df $d6 $82
    ld   C, A                                          ;; 00:07e1 $4f
    ld   A, $14                                        ;; 00:07e2 $3e $14
    ld   [wBackupRomBank], A                           ;; 00:07e4 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:07e7 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:07ea $ea $00 $20
    ld   HL, $462f                                     ;; 00:07ed $21 $2f $46
    call ld_HL_from_HL_add_2C                          ;; 00:07f0 $cd $7a $06
    ld   A, H                                          ;; 00:07f3 $7c
    ld   [wD13A], A                                    ;; 00:07f4 $ea $3a $d1
    ld   A, L                                          ;; 00:07f7 $7d
    ld   [wD13B], A                                    ;; 00:07f8 $ea $3b $d1
    ld   HL, wD138                                     ;; 00:07fb $21 $38 $d1
    ld   A, $00                                        ;; 00:07fe $3e $00
    ld   [HL+], A                                      ;; 00:0800 $22
    ld   A, $14                                        ;; 00:0801 $3e $14
    ld   [HL+], A                                      ;; 00:0803 $22
    ld   HL, wD1BD                                     ;; 00:0804 $21 $bd $d1
    ld   A, $d1                                        ;; 00:0807 $3e $d1
    ld   [HL+], A                                      ;; 00:0809 $22
    ld   A, $c7                                        ;; 00:080a $3e $c7
    ld   [HL+], A                                      ;; 00:080c $22
    ld   A, $28                                        ;; 00:080d $3e $28
    ld   [wD1C7], A                                    ;; 00:080f $ea $c7 $d1
    call call_00_2b1b                                  ;; 00:0812 $cd $1b $2b
    ld   B, $00                                        ;; 00:0815 $06 $00
    ret                                                ;; 00:0817 $c9
.jr_00_0818:
    xor  A, A                                          ;; 00:0818 $af
    ld   [wD521], A                                    ;; 00:0819 $ea $21 $d5
    ld   [wD4FA], A                                    ;; 00:081c $ea $fa $d4
    ld   A, $02                                        ;; 00:081f $3e $02
    ld   [wD51E], A                                    ;; 00:0821 $ea $1e $d5
    ld   A, $09                                        ;; 00:0824 $3e $09
    ld   [wD58B], A                                    ;; 00:0826 $ea $8b $d5
    ld   B, $01                                        ;; 00:0829 $06 $01
    ret                                                ;; 00:082b $c9
.jr_00_082c:
    ld   A, [wD838]                                    ;; 00:082c $fa $38 $d8
    add  A, L                                          ;; 00:082f $85
    ld   L, A                                          ;; 00:0830 $6f
    ld   A, [wD837]                                    ;; 00:0831 $fa $37 $d8
    adc  A, H                                          ;; 00:0834 $8c
    ld   H, A                                          ;; 00:0835 $67
    ld   A, [wD83A]                                    ;; 00:0836 $fa $3a $d8
    add  A, E                                          ;; 00:0839 $83
    ld   E, A                                          ;; 00:083a $5f
    ld   A, [wD839]                                    ;; 00:083b $fa $39 $d8
    adc  A, D                                          ;; 00:083e $8a
    ld   D, A                                          ;; 00:083f $57
.jr_00_0840:
    ld   A, H                                          ;; 00:0840 $7c
    ld   [wD5BC], A                                    ;; 00:0841 $ea $bc $d5
    ld   A, L                                          ;; 00:0844 $7d
    ld   [wD5BD], A                                    ;; 00:0845 $ea $bd $d5
    ld   HL, wD5BE                                     ;; 00:0848 $21 $be $d5
    ld   A, D                                          ;; 00:084b $7a
    ld   [HL+], A                                      ;; 00:084c $22
    ld   [HL], E                                       ;; 00:084d $73
    jp   call_00_0851                                  ;; 00:084e $c3 $51 $08

call_00_0851:
    ld   A, [wD5D7]                                    ;; 00:0851 $fa $d7 $d5
    ld   B, A                                          ;; 00:0854 $47
    and  A, A                                          ;; 00:0855 $a7
    ret  Z                                             ;; 00:0856 $c8
    ld   C, $00                                        ;; 00:0857 $0e $00
.jp_00_0859:
    push BC                                            ;; 00:0859 $c5
    ld   HL, wCF36                                     ;; 00:085a $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 00:085d $cd $7a $06
    ld   DE, $0c                                       ;; 00:0860 $11 $0c $00
    add  HL, DE                                        ;; 00:0863 $19
    ld   A, [HL+]                                      ;; 00:0864 $2a
    ld   D, A                                          ;; 00:0865 $57
    ld   A, [HL+]                                      ;; 00:0866 $2a
    ld   E, A                                          ;; 00:0867 $5f
    ld   A, [HL+]                                      ;; 00:0868 $2a
    ld   B, A                                          ;; 00:0869 $47
    ld   A, [HL+]                                      ;; 00:086a $2a
    ld   C, A                                          ;; 00:086b $4f
    push BC                                            ;; 00:086c $c5
    ld   HL, wD5BC                                     ;; 00:086d $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0870 $2a
    ld   L, [HL]                                       ;; 00:0871 $6e
    ld   H, A                                          ;; 00:0872 $67
    ld   A, D                                          ;; 00:0873 $7a
    xor  A, H                                          ;; 00:0874 $ac
    jr   NZ, .jr_00_088f                               ;; 00:0875 $20 $18
    ld   A, E                                          ;; 00:0877 $7b
    xor  A, L                                          ;; 00:0878 $ad
    jr   NZ, .jr_00_088f                               ;; 00:0879 $20 $14
    pop  DE                                            ;; 00:087b $d1
    ld   HL, wD5BE                                     ;; 00:087c $21 $be $d5
    ld   A, [HL+]                                      ;; 00:087f $2a
    ld   L, [HL]                                       ;; 00:0880 $6e
    ld   H, A                                          ;; 00:0881 $67
    ld   A, D                                          ;; 00:0882 $7a
    xor  A, H                                          ;; 00:0883 $ac
    jr   NZ, .jr_00_0890                               ;; 00:0884 $20 $0a
    ld   A, E                                          ;; 00:0886 $7b
    xor  A, L                                          ;; 00:0887 $ad
    jr   NZ, .jr_00_0890                               ;; 00:0888 $20 $06
    pop  BC                                            ;; 00:088a $c1
    call call_00_0897                                  ;; 00:088b $cd $97 $08
    ret                                                ;; 00:088e $c9
.jr_00_088f:
    pop  DE                                            ;; 00:088f $d1
.jr_00_0890:
    pop  BC                                            ;; 00:0890 $c1
    inc  C                                             ;; 00:0891 $0c
    dec  B                                             ;; 00:0892 $05
    jp   NZ, .jp_00_0859                               ;; 00:0893 $c2 $59 $08
    ret                                                ;; 00:0896 $c9

call_00_0897:
    ld   HL, wCF36                                     ;; 00:0897 $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 00:089a $cd $7a $06
    ld   A, H                                          ;; 00:089d $7c
    ld   [wD1BD], A                                    ;; 00:089e $ea $bd $d1
    ld   A, L                                          ;; 00:08a1 $7d
    ld   [wD1BE], A                                    ;; 00:08a2 $ea $be $d1
    ld   A, [HL+]                                      ;; 00:08a5 $2a
    cp   A, $01                                        ;; 00:08a6 $fe $01
    jr   C, .jr_00_08e3                                ;; 00:08a8 $38 $39
    jr   Z, .jr_00_08bf                                ;; 00:08aa $28 $13
    cp   A, $03                                        ;; 00:08ac $fe $03
    jr   C, .jr_00_08b1                                ;; 00:08ae $38 $01
    ret                                                ;; 00:08b0 $c9
.jr_00_08b1:
    ld   A, $04                                        ;; 00:08b1 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:08b3 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:08b6 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:08b9 $ea $00 $20
    jp   $4725                                         ;; 00:08bc $c3 $25 $47
.jr_00_08bf:
    ld   DE, $07                                       ;; 00:08bf $11 $07 $00
    add  HL, DE                                        ;; 00:08c2 $19
    ld   A, $57                                        ;; 00:08c3 $3e $57
    ld   [HL+], A                                      ;; 00:08c5 $22
    ld   A, $da                                        ;; 00:08c6 $3e $da
    ld   [HL+], A                                      ;; 00:08c8 $22
    ld   A, [HL+]                                      ;; 00:08c9 $2a
    ld   [wD13A], A                                    ;; 00:08ca $ea $3a $d1
    ld   A, [HL+]                                      ;; 00:08cd $2a
    ld   [wD13B], A                                    ;; 00:08ce $ea $3b $d1
    ld   A, $00                                        ;; 00:08d1 $3e $00
    ld   [wD138], A                                    ;; 00:08d3 $ea $38 $d1
    ld   A, $14                                        ;; 00:08d6 $3e $14
    ld   [wD139], A                                    ;; 00:08d8 $ea $39 $d1
    ld   A, $04                                        ;; 00:08db $3e $04
    call call_00_11a8                                  ;; 00:08dd $cd $a8 $11
    jp   call_00_2b1b                                  ;; 00:08e0 $c3 $1b $2b
.jr_00_08e3:
    ld   C, [HL]                                       ;; 00:08e3 $4e
    push HL                                            ;; 00:08e4 $e5
    ld   HL, $323                                      ;; 00:08e5 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:08e8 $cd $7a $06
    ld   DE, $17                                       ;; 00:08eb $11 $17 $00
    add  HL, DE                                        ;; 00:08ee $19
    ld   A, [HL]                                       ;; 00:08ef $7e
    cp   A, $a4                                        ;; 00:08f0 $fe $a4
    jr   NZ, .jr_00_08f6                               ;; 00:08f2 $20 $02
    pop  HL                                            ;; 00:08f4 $e1
    ret                                                ;; 00:08f5 $c9
.jr_00_08f6:
    pop  HL                                            ;; 00:08f6 $e1
    ld   C, [HL]                                       ;; 00:08f7 $4e
    ld   DE, $12                                       ;; 00:08f8 $11 $12 $00
    add  HL, DE                                        ;; 00:08fb $19
    ld   A, $01                                        ;; 00:08fc $3e $01
    ld   [HL+], A                                      ;; 00:08fe $22
    ld   A, [wC461]                                    ;; 00:08ff $fa $61 $c4
    xor  A, $01                                        ;; 00:0902 $ee $01
    inc  A                                             ;; 00:0904 $3c
    ld   [wD837], A                                    ;; 00:0905 $ea $37 $d8
    ld   [HL+], A                                      ;; 00:0908 $22
    dec  A                                             ;; 00:0909 $3d
    ld   [HL+], A                                      ;; 00:090a $22
    xor  A, A                                          ;; 00:090b $af
    ld   [HL+], A                                      ;; 00:090c $22
    ld   HL, $323                                      ;; 00:090d $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:0910 $cd $7a $06
    ld   BC, $07                                       ;; 00:0913 $01 $07 $00
    add  HL, BC                                        ;; 00:0916 $09
    ld   A, [HL+]                                      ;; 00:0917 $2a
    ld   [wD13A], A                                    ;; 00:0918 $ea $3a $d1
    ld   A, [HL+]                                      ;; 00:091b $2a
    ld   [wD13B], A                                    ;; 00:091c $ea $3b $d1
    ld   BC, $05                                       ;; 00:091f $01 $05 $00
    add  HL, BC                                        ;; 00:0922 $09
    ld   A, [wD837]                                    ;; 00:0923 $fa $37 $d8
    ld   [HL+], A                                      ;; 00:0926 $22
    ld   BC, $03                                       ;; 00:0927 $01 $03 $00
    add  HL, BC                                        ;; 00:092a $09
    ld   A, [HL+]                                      ;; 00:092b $2a
    ld   [wD138], A                                    ;; 00:092c $ea $38 $d1
    ld   A, [HL+]                                      ;; 00:092f $2a
    ld   [wD139], A                                    ;; 00:0930 $ea $39 $d1
    jp   call_00_2b1b                                  ;; 00:0933 $c3 $1b $2b

call_00_0936:
    ld   A, $02                                        ;; 00:0936 $3e $02
    ld   [wC53B], A                                    ;; 00:0938 $ea $3b $c5
    ld   A, $10                                        ;; 00:093b $3e $10
    ld   [wC53C], A                                    ;; 00:093d $ea $3c $c5
    xor  A, A                                          ;; 00:0940 $af
    ld   [wC557], A                                    ;; 00:0941 $ea $57 $c5
    ld   HL, wC53F                                     ;; 00:0944 $21 $3f $c5
    ld   B, $18                                        ;; 00:0947 $06 $18
    ld   A, $ff                                        ;; 00:0949 $3e $ff
    call memsetSmall                                   ;; 00:094b $cd $98 $05
    xor  A, A                                          ;; 00:094e $af
    ld   [wCEC8], A                                    ;; 00:094f $ea $c8 $ce
    ld   [wCEC9], A                                    ;; 00:0952 $ea $c9 $ce
    ld   A, [wD598]                                    ;; 00:0955 $fa $98 $d5
    ld   [wBackupRomBank], A                           ;; 00:0958 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:095b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:095e $ea $00 $20
    ld   HL, wD5A1                                     ;; 00:0961 $21 $a1 $d5
    ld   A, [HL+]                                      ;; 00:0964 $2a
    ld   L, [HL]                                       ;; 00:0965 $6e
    ld   H, A                                          ;; 00:0966 $67
.jp_00_0967:
    xor  A, A                                          ;; 00:0967 $af
    ld   [wCEC6], A                                    ;; 00:0968 $ea $c6 $ce
    ld   [wCEC7], A                                    ;; 00:096b $ea $c7 $ce
.jp_00_096e:
    ld   A, [HL+]                                      ;; 00:096e $2a
    cp   A, $10                                        ;; 00:096f $fe $10
    jr   C, .jr_00_09b4                                ;; 00:0971 $38 $41
    cp   A, $1a                                        ;; 00:0973 $fe $1a
    jr   NC, .jr_00_09b4                               ;; 00:0975 $30 $3d
    push HL                                            ;; 00:0977 $e5
    sub  A, $10                                        ;; 00:0978 $d6 $10
    ld   [wD5C0], A                                    ;; 00:097a $ea $c0 $d5
    ld   HL, wCEC6                                     ;; 00:097d $21 $c6 $ce
    ld   A, [HL+]                                      ;; 00:0980 $2a
    ld   L, [HL]                                       ;; 00:0981 $6e
    ld   H, A                                          ;; 00:0982 $67
    add  HL, HL                                        ;; 00:0983 $29
    add  HL, HL                                        ;; 00:0984 $29
    add  HL, HL                                        ;; 00:0985 $29
    ld   A, H                                          ;; 00:0986 $7c
    ld   [wD5BC], A                                    ;; 00:0987 $ea $bc $d5
    ld   A, L                                          ;; 00:098a $7d
    ld   [wD5BD], A                                    ;; 00:098b $ea $bd $d5
    ld   HL, wCEC8                                     ;; 00:098e $21 $c8 $ce
    ld   A, [HL+]                                      ;; 00:0991 $2a
    ld   L, [HL]                                       ;; 00:0992 $6e
    ld   H, A                                          ;; 00:0993 $67
    add  HL, HL                                        ;; 00:0994 $29
    add  HL, HL                                        ;; 00:0995 $29
    add  HL, HL                                        ;; 00:0996 $29
    ld   A, H                                          ;; 00:0997 $7c
    ld   [wD5BE], A                                    ;; 00:0998 $ea $be $d5
    ld   A, L                                          ;; 00:099b $7d
    ld   [wD5BF], A                                    ;; 00:099c $ea $bf $d5
    ld   A, $ff                                        ;; 00:099f $3e $ff
    ld   [wC55F], A                                    ;; 00:09a1 $ea $5f $c5
    call call_00_09eb                                  ;; 00:09a4 $cd $eb $09
    ld   A, [wD598]                                    ;; 00:09a7 $fa $98 $d5
    ld   [wBackupRomBank], A                           ;; 00:09aa $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:09ad $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:09b0 $ea $00 $20
    pop  HL                                            ;; 00:09b3 $e1
.jr_00_09b4:
    push HL                                            ;; 00:09b4 $e5
    ld   HL, wD5A7                                     ;; 00:09b5 $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:09b8 $2a
    ld   E, [HL]                                       ;; 00:09b9 $5e
    ld   D, A                                          ;; 00:09ba $57
    ld   HL, wCEC6                                     ;; 00:09bb $21 $c6 $ce
    ld   A, [HL+]                                      ;; 00:09be $2a
    ld   C, [HL]                                       ;; 00:09bf $4e
    ld   B, A                                          ;; 00:09c0 $47
    inc  BC                                            ;; 00:09c1 $03
    ld   HL, wCEC6                                     ;; 00:09c2 $21 $c6 $ce
    ld   A, B                                          ;; 00:09c5 $78
    ld   [HL+], A                                      ;; 00:09c6 $22
    ld   [HL], C                                       ;; 00:09c7 $71
    pop  HL                                            ;; 00:09c8 $e1
    call is_BC_DE_equal                                ;; 00:09c9 $cd $f2 $05
    jp   C, .jp_00_096e                                ;; 00:09cc $da $6e $09
    push HL                                            ;; 00:09cf $e5
    ld   HL, wD5A9                                     ;; 00:09d0 $21 $a9 $d5
    ld   A, [HL+]                                      ;; 00:09d3 $2a
    ld   E, [HL]                                       ;; 00:09d4 $5e
    ld   D, A                                          ;; 00:09d5 $57
    ld   HL, wCEC8                                     ;; 00:09d6 $21 $c8 $ce
    ld   A, [HL+]                                      ;; 00:09d9 $2a
    ld   C, [HL]                                       ;; 00:09da $4e
    ld   B, A                                          ;; 00:09db $47
    inc  BC                                            ;; 00:09dc $03
    ld   HL, wCEC8                                     ;; 00:09dd $21 $c8 $ce
    ld   A, B                                          ;; 00:09e0 $78
    ld   [HL+], A                                      ;; 00:09e1 $22
    ld   [HL], C                                       ;; 00:09e2 $71
    pop  HL                                            ;; 00:09e3 $e1
    call is_BC_DE_equal                                ;; 00:09e4 $cd $f2 $05
    jp   C, .jp_00_0967                                ;; 00:09e7 $da $67 $09
    ret                                                ;; 00:09ea $c9

call_00_09eb:
    ld   A, [wBackupRomBank]                           ;; 00:09eb $fa $b5 $d5
    ld   [wD5C3], A                                    ;; 00:09ee $ea $c3 $d5
    ld   A, [wD5C0]                                    ;; 00:09f1 $fa $c0 $d5
    ld   C, A                                          ;; 00:09f4 $4f
    ld   HL, $323                                      ;; 00:09f5 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:09f8 $cd $7a $06
    push HL                                            ;; 00:09fb $e5
    ld   A, $03                                        ;; 00:09fc $3e $03
    ld   [wBackupRomBank], A                           ;; 00:09fe $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0a01 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0a04 $ea $00 $20
    ld   A, [wC55F]                                    ;; 00:0a07 $fa $5f $c5
    cp   A, $ff                                        ;; 00:0a0a $fe $ff
    jr   NZ, .jr_00_0a47                               ;; 00:0a0c $20 $39
    ld   HL, wCurrentMap                               ;; 00:0a0e $21 $42 $c1
    ld   A, [HL+]                                      ;; 00:0a11 $2a
    ld   L, [HL]                                       ;; 00:0a12 $6e
    ld   H, A                                          ;; 00:0a13 $67
    add  HL, HL                                        ;; 00:0a14 $29
    ld   DE, data_03_7477 ;@=ptr bank=3                ;; 00:0a15 $11 $77 $74
    add  HL, DE                                        ;; 00:0a18 $19
    ld   A, [HL+]                                      ;; 00:0a19 $2a
    ld   L, [HL]                                       ;; 00:0a1a $6e
    ld   H, A                                          ;; 00:0a1b $67
    ld   A, [wD5C0]                                    ;; 00:0a1c $fa $c0 $d5
    sla  A                                             ;; 00:0a1f $cb $27
    sla  A                                             ;; 00:0a21 $cb $27
    sla  A                                             ;; 00:0a23 $cb $27
    ld   E, A                                          ;; 00:0a25 $5f
    ld   D, $00                                        ;; 00:0a26 $16 $00
    add  HL, DE                                        ;; 00:0a28 $19
    ld   A, [HL+]                                      ;; 00:0a29 $2a
    and  A, A                                          ;; 00:0a2a $a7
    jr   Z, .jr_00_0a3c                                ;; 00:0a2b $28 $0f
    dec  A                                             ;; 00:0a2d $3d
    add  A, $55                                        ;; 00:0a2e $c6 $55
    ld   E, A                                          ;; 00:0a30 $5f
    ld   A, $00                                        ;; 00:0a31 $3e $00
    adc  A, $c1                                        ;; 00:0a33 $ce $c1
    ld   D, A                                          ;; 00:0a35 $57
    ld   A, [DE]                                       ;; 00:0a36 $1a
    and  A, A                                          ;; 00:0a37 $a7
    jr   Z, .jr_00_0a3c                                ;; 00:0a38 $28 $02
    pop  HL                                            ;; 00:0a3a $e1
    ret                                                ;; 00:0a3b $c9
.jr_00_0a3c:
    ld   DE, wC55F                                     ;; 00:0a3c $11 $5f $c5
    ld   B, $07                                        ;; 00:0a3f $06 $07
    call memcopySmall                                  ;; 00:0a41 $cd $91 $05
    ld   A, [wC55F]                                    ;; 00:0a44 $fa $5f $c5
.jr_00_0a47:
    ld   C, A                                          ;; 00:0a47 $4f
    ld   HL, $7b15                                     ;; 00:0a48 $21 $15 $7b
    call ld_HL_from_HL_add_2C                          ;; 00:0a4b $cd $7a $06
    ld   A, [HL+]                                      ;; 00:0a4e $2a
    ld   [wC55E], A                                    ;; 00:0a4f $ea $5e $c5
    ld   A, [HL+]                                      ;; 00:0a52 $2a
    ld   [wC55C], A                                    ;; 00:0a53 $ea $5c $c5
    ld   A, [HL+]                                      ;; 00:0a56 $2a
    ld   [wC55D], A                                    ;; 00:0a57 $ea $5d $c5
    ld   DE, wC532                                     ;; 00:0a5a $11 $32 $c5
    ld   B, $09                                        ;; 00:0a5d $06 $09
    call memcopySmall                                  ;; 00:0a5f $cd $91 $05
    ld   A, [wC55F]                                    ;; 00:0a62 $fa $5f $c5
    call call_00_222f                                  ;; 00:0a65 $cd $2f $22
    ld   A, B                                          ;; 00:0a68 $78
    cp   A, $02                                        ;; 00:0a69 $fe $02
    jp   Z, jp_00_015d                                 ;; 00:0a6b $ca $5d $01
    cp   A, $01                                        ;; 00:0a6e $fe $01
    jr   Z, .jr_00_0a75                                ;; 00:0a70 $28 $03
    call call_00_2274                                  ;; 00:0a72 $cd $74 $22
.jr_00_0a75:
    pop  HL                                            ;; 00:0a75 $e1
    ld   A, $03                                        ;; 00:0a76 $3e $03
    ld   [wBackupRomBank], A                           ;; 00:0a78 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0a7b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0a7e $ea $00 $20
    xor  A, A                                          ;; 00:0a81 $af
    ld   [HL+], A                                      ;; 00:0a82 $22
    ld   [HL+], A                                      ;; 00:0a83 $22
    ld   [HL+], A                                      ;; 00:0a84 $22
    ld   A, [wD5C0]                                    ;; 00:0a85 $fa $c0 $d5
    ld   [HL+], A                                      ;; 00:0a88 $22
    ld   A, [wC55E]                                    ;; 00:0a89 $fa $5e $c5
    ld   [HL+], A                                      ;; 00:0a8c $22
    ld   A, [wC55C]                                    ;; 00:0a8d $fa $5c $c5
    ld   [HL+], A                                      ;; 00:0a90 $22
    ld   A, [wC55D]                                    ;; 00:0a91 $fa $5d $c5
    ld   [HL+], A                                      ;; 00:0a94 $22
    ld   A, [wC560]                                    ;; 00:0a95 $fa $60 $c5
    ld   [HL+], A                                      ;; 00:0a98 $22
    ld   A, [wC561]                                    ;; 00:0a99 $fa $61 $c5
    ld   [HL+], A                                      ;; 00:0a9c $22
    ld   A, [wD5BC]                                    ;; 00:0a9d $fa $bc $d5
    ld   [HL+], A                                      ;; 00:0aa0 $22
    ld   A, [wD5BD]                                    ;; 00:0aa1 $fa $bd $d5
    ld   [HL+], A                                      ;; 00:0aa4 $22
    ld   A, [wD5BE]                                    ;; 00:0aa5 $fa $be $d5
    ld   [HL+], A                                      ;; 00:0aa8 $22
    ld   A, [wD5BF]                                    ;; 00:0aa9 $fa $bf $d5
    ld   [HL+], A                                      ;; 00:0aac $22
    xor  A, A                                          ;; 00:0aad $af
    ld   [HL+], A                                      ;; 00:0aae $22
    ld   A, [wC562]                                    ;; 00:0aaf $fa $62 $c5
    ld   [HL+], A                                      ;; 00:0ab2 $22
    ld   A, [wC563]                                    ;; 00:0ab3 $fa $63 $c5
    ld   [HL+], A                                      ;; 00:0ab6 $22
    ld   A, $00                                        ;; 00:0ab7 $3e $00
    ld   [HL+], A                                      ;; 00:0ab9 $22
    ld   A, $1a                                        ;; 00:0aba $3e $1a
    ld   [HL+], A                                      ;; 00:0abc $22
    ld   A, $00                                        ;; 00:0abd $3e $00
    ld   [HL+], A                                      ;; 00:0abf $22
    ld   A, [wC565]                                    ;; 00:0ac0 $fa $65 $c5
    ld   [HL+], A                                      ;; 00:0ac3 $22
    ld   A, [wC53D]                                    ;; 00:0ac4 $fa $3d $c5
    ld   [HL+], A                                      ;; 00:0ac7 $22
    ld   A, [wC53E]                                    ;; 00:0ac8 $fa $3e $c5
    ld   [HL+], A                                      ;; 00:0acb $22
    xor  A, A                                          ;; 00:0acc $af
    ld   [HL+], A                                      ;; 00:0acd $22
    ld   A, [wC564]                                    ;; 00:0ace $fa $64 $c5
    ld   [HL+], A                                      ;; 00:0ad1 $22
    ld   A, [wC55F]                                    ;; 00:0ad2 $fa $5f $c5
    ld   [HL+], A                                      ;; 00:0ad5 $22
    ld   A, $00                                        ;; 00:0ad6 $3e $00
    ld   [HL+], A                                      ;; 00:0ad8 $22
    ld   A, $01                                        ;; 00:0ad9 $3e $01
    ld   [HL+], A                                      ;; 00:0adb $22
    ld   A, [wD5C3]                                    ;; 00:0adc $fa $c3 $d5
    ld   [wBackupRomBank], A                           ;; 00:0adf $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0ae2 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0ae5 $ea $00 $20
    ld   HL, wD5D8                                     ;; 00:0ae8 $21 $d8 $d5
    ld   A, [wD5C5]                                    ;; 00:0aeb $fa $c5 $d5
    and  A, A                                          ;; 00:0aee $a7
    jr   NZ, .jr_00_0af8                               ;; 00:0aef $20 $07
    ld   A, [wD5C0]                                    ;; 00:0af1 $fa $c0 $d5
    cp   A, [HL]                                       ;; 00:0af4 $be
    jr   Z, .jr_00_0af8                                ;; 00:0af5 $28 $01
    ret  C                                             ;; 00:0af7 $d8
.jr_00_0af8:
    inc  [HL]                                          ;; 00:0af8 $34
    ret                                                ;; 00:0af9 $c9

call_00_0afa:
    ld   A, [wD5D8]                                    ;; 00:0afa $fa $d8 $d5
    and  A, A                                          ;; 00:0afd $a7
    ret  Z                                             ;; 00:0afe $c8
    ld   B, A                                          ;; 00:0aff $47
    ld   C, $00                                        ;; 00:0b00 $0e $00
.jp_00_0b02:
    push BC                                            ;; 00:0b02 $c5
    ld   HL, $323                                      ;; 00:0b03 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:0b06 $cd $7a $06
    ld   A, [HL]                                       ;; 00:0b09 $7e
    cp   A, $40                                        ;; 00:0b0a $fe $40
    jp   Z, .jp_00_0b73                                ;; 00:0b0c $ca $73 $0b
    ld   BC, $09                                       ;; 00:0b0f $01 $09 $00
    add  HL, BC                                        ;; 00:0b12 $09
    ld   A, [HL+]                                      ;; 00:0b13 $2a
    ld   D, A                                          ;; 00:0b14 $57
    ld   A, [HL+]                                      ;; 00:0b15 $2a
    ld   E, A                                          ;; 00:0b16 $5f
    push HL                                            ;; 00:0b17 $e5
    ld   HL, wCEB2                                     ;; 00:0b18 $21 $b2 $ce
    ld   A, [HL+]                                      ;; 00:0b1b $2a
    ld   L, [HL]                                       ;; 00:0b1c $6e
    ld   H, A                                          ;; 00:0b1d $67
    ld   A, H                                          ;; 00:0b1e $7c
    and  A, A                                          ;; 00:0b1f $a7
    jr   NZ, .jr_00_0b27                               ;; 00:0b20 $20 $05
    ld   A, L                                          ;; 00:0b22 $7d
    cp   A, $10                                        ;; 00:0b23 $fe $10
    jr   C, .jr_00_0b30                                ;; 00:0b25 $38 $09
.jr_00_0b27:
    ld   BC, hFFF0                                     ;; 00:0b27 $01 $f0 $ff
    add  HL, BC                                        ;; 00:0b2a $09
    call call_00_05ea                                  ;; 00:0b2b $cd $ea $05
    jr   NC, .jr_00_0b72                               ;; 00:0b2e $30 $42
.jr_00_0b30:
    ld   HL, wCEB2                                     ;; 00:0b30 $21 $b2 $ce
    ld   A, [HL+]                                      ;; 00:0b33 $2a
    ld   L, [HL]                                       ;; 00:0b34 $6e
    ld   H, A                                          ;; 00:0b35 $67
    ld   BC, $a0                                       ;; 00:0b36 $01 $a0 $00
    add  HL, BC                                        ;; 00:0b39 $09
    call call_00_05ea                                  ;; 00:0b3a $cd $ea $05
    jr   C, .jr_00_0b72                                ;; 00:0b3d $38 $33
    pop  HL                                            ;; 00:0b3f $e1
    ld   A, [HL+]                                      ;; 00:0b40 $2a
    ld   D, A                                          ;; 00:0b41 $57
    ld   A, [HL+]                                      ;; 00:0b42 $2a
    ld   E, A                                          ;; 00:0b43 $5f
    push HL                                            ;; 00:0b44 $e5
    ld   HL, wCEB4                                     ;; 00:0b45 $21 $b4 $ce
    ld   A, [HL+]                                      ;; 00:0b48 $2a
    ld   L, [HL]                                       ;; 00:0b49 $6e
    ld   H, A                                          ;; 00:0b4a $67
    ld   A, H                                          ;; 00:0b4b $7c
    and  A, A                                          ;; 00:0b4c $a7
    jr   NZ, .jr_00_0b54                               ;; 00:0b4d $20 $05
    ld   A, L                                          ;; 00:0b4f $7d
    cp   A, $10                                        ;; 00:0b50 $fe $10
    jr   C, .jr_00_0b5d                                ;; 00:0b52 $38 $09
.jr_00_0b54:
    ld   BC, hFFF0                                     ;; 00:0b54 $01 $f0 $ff
    add  HL, BC                                        ;; 00:0b57 $09
    call call_00_05ea                                  ;; 00:0b58 $cd $ea $05
    jr   NC, .jr_00_0b72                               ;; 00:0b5b $30 $15
.jr_00_0b5d:
    ld   HL, wCEB4                                     ;; 00:0b5d $21 $b4 $ce
    ld   A, [HL+]                                      ;; 00:0b60 $2a
    ld   L, [HL]                                       ;; 00:0b61 $6e
    ld   H, A                                          ;; 00:0b62 $67
    ld   BC, $90                                       ;; 00:0b63 $01 $90 $00
    add  HL, BC                                        ;; 00:0b66 $09
    call call_00_05ea                                  ;; 00:0b67 $cd $ea $05
    jr   C, .jr_00_0b72                                ;; 00:0b6a $38 $06
    pop  HL                                            ;; 00:0b6c $e1
    call call_00_0b7a                                  ;; 00:0b6d $cd $7a $0b
    jr   .jp_00_0b73                                   ;; 00:0b70 $18 $01
.jr_00_0b72:
    pop  HL                                            ;; 00:0b72 $e1
.jp_00_0b73:
    pop  BC                                            ;; 00:0b73 $c1
    inc  C                                             ;; 00:0b74 $0c
    dec  B                                             ;; 00:0b75 $05
    jp   NZ, .jp_00_0b02                               ;; 00:0b76 $c2 $02 $0b
    ret                                                ;; 00:0b79 $c9

call_00_0b7a:
    ld   DE, hFFF3                                     ;; 00:0b7a $11 $f3 $ff
    add  HL, DE                                        ;; 00:0b7d $19
    ld   A, [HL]                                       ;; 00:0b7e $7e
    and  A, A                                          ;; 00:0b7f $a7
    jr   Z, .jr_00_0bbb                                ;; 00:0b80 $28 $39
    inc  HL                                            ;; 00:0b82 $23
    ld   A, [HL+]                                      ;; 00:0b83 $2a
    ld   B, A                                          ;; 00:0b84 $47
    ld   A, [HL+]                                      ;; 00:0b85 $2a
    ld   C, A                                          ;; 00:0b86 $4f
    ld   DE, $06                                       ;; 00:0b87 $11 $06 $00
    add  HL, DE                                        ;; 00:0b8a $19
    ld   A, [HL+]                                      ;; 00:0b8b $2a
    ld   D, A                                          ;; 00:0b8c $57
    ld   A, [HL+]                                      ;; 00:0b8d $2a
    ld   E, A                                          ;; 00:0b8e $5f
    push DE                                            ;; 00:0b8f $d5
    ld   A, [HL+]                                      ;; 00:0b90 $2a
    ld   D, A                                          ;; 00:0b91 $57
    ld   A, [HL+]                                      ;; 00:0b92 $2a
    ld   E, A                                          ;; 00:0b93 $5f
    inc  HL                                            ;; 00:0b94 $23
    ld   A, [HL]                                       ;; 00:0b95 $7e
    ld   HL, $14                                       ;; 00:0b96 $21 $14 $00
    add  HL, BC                                        ;; 00:0b99 $09
    cp   A, [HL]                                       ;; 00:0b9a $be
    jr   Z, .jr_00_0baa                                ;; 00:0b9b $28 $0d
    push AF                                            ;; 00:0b9d $f5
    dec  HL                                            ;; 00:0b9e $2b
    ld   [HL], $01                                     ;; 00:0b9f $36 $01
    ld   BC, $03                                       ;; 00:0ba1 $01 $03 $00
    add  HL, BC                                        ;; 00:0ba4 $09
    ld   [HL], $00                                     ;; 00:0ba5 $36 $00
    dec  HL                                            ;; 00:0ba7 $2b
    dec  HL                                            ;; 00:0ba8 $2b
    pop  AF                                            ;; 00:0ba9 $f1
.jr_00_0baa:
    ld   [HL+], A                                      ;; 00:0baa $22
    dec  A                                             ;; 00:0bab $3d
    ld   [HL-], A                                      ;; 00:0bac $32
    ld   BC, hFFFB                                     ;; 00:0bad $01 $fb $ff
    add  HL, BC                                        ;; 00:0bb0 $09
    ld   A, E                                          ;; 00:0bb1 $7b
    ld   [HL-], A                                      ;; 00:0bb2 $32
    ld   A, D                                          ;; 00:0bb3 $7a
    ld   [HL-], A                                      ;; 00:0bb4 $32
    pop  DE                                            ;; 00:0bb5 $d1
    ld   A, E                                          ;; 00:0bb6 $7b
    ld   [HL-], A                                      ;; 00:0bb7 $32
    ld   A, D                                          ;; 00:0bb8 $7a
    ld   [HL-], A                                      ;; 00:0bb9 $32
    ret                                                ;; 00:0bba $c9
.jr_00_0bbb:
    ld   A, [wD5D7]                                    ;; 00:0bbb $fa $d7 $d5
    cp   A, $0a                                        ;; 00:0bbe $fe $0a
    ret  NC                                            ;; 00:0bc0 $d0
    ld   BC, $04                                       ;; 00:0bc1 $01 $04 $00
    add  HL, BC                                        ;; 00:0bc4 $09
    ld   A, [HL]                                       ;; 00:0bc5 $7e
    ld   C, A                                          ;; 00:0bc6 $4f
    ld   A, [wD5D6]                                    ;; 00:0bc7 $fa $d6 $d5
    add  A, C                                          ;; 00:0bca $81
    cp   A, $24                                        ;; 00:0bcb $fe $24
    ret  NC                                            ;; 00:0bcd $d0
    ld   DE, hFFFC                                     ;; 00:0bce $11 $fc $ff
    add  HL, DE                                        ;; 00:0bd1 $19
    ld   A, $01                                        ;; 00:0bd2 $3e $01
    ld   [HL+], A                                      ;; 00:0bd4 $22
    push HL                                            ;; 00:0bd5 $e5
    ld   HL, wCF36                                     ;; 00:0bd6 $21 $36 $cf
    ld   A, [wD5D7]                                    ;; 00:0bd9 $fa $d7 $d5
    ld   C, A                                          ;; 00:0bdc $4f
    call ld_DE_from_HL_add_2C                          ;; 00:0bdd $cd $83 $06
    pop  HL                                            ;; 00:0be0 $e1
    ld   A, D                                          ;; 00:0be1 $7a
    ld   [HL+], A                                      ;; 00:0be2 $22
    ld   A, E                                          ;; 00:0be3 $7b
    ld   [HL+], A                                      ;; 00:0be4 $22
    push HL                                            ;; 00:0be5 $e5
    ld   HL, wD5D7                                     ;; 00:0be6 $21 $d7 $d5
    inc  [HL]                                          ;; 00:0be9 $34
    xor  A, A                                          ;; 00:0bea $af
    ld   [DE], A                                       ;; 00:0beb $12
    inc  DE                                            ;; 00:0bec $13
    pop  HL                                            ;; 00:0bed $e1
    ld   A, [HL+]                                      ;; 00:0bee $2a
    ld   [DE], A                                       ;; 00:0bef $12
    inc  DE                                            ;; 00:0bf0 $13
    ld   A, [HL+]                                      ;; 00:0bf1 $2a
    ld   [DE], A                                       ;; 00:0bf2 $12
    inc  DE                                            ;; 00:0bf3 $13
    push HL                                            ;; 00:0bf4 $e5
    push AF                                            ;; 00:0bf5 $f5
    ld   A, [wD5D6]                                    ;; 00:0bf6 $fa $d6 $d5
    ld   [DE], A                                       ;; 00:0bf9 $12
    inc  DE                                            ;; 00:0bfa $13
    ld   HL, wD5D6                                     ;; 00:0bfb $21 $d6 $d5
    ld   A, [HL]                                       ;; 00:0bfe $7e
    add  A, A                                          ;; 00:0bff $87
    add  A, A                                          ;; 00:0c00 $87
    ld   C, A                                          ;; 00:0c01 $4f
    ld   A, [HL]                                       ;; 00:0c02 $7e
    ld   B, A                                          ;; 00:0c03 $47
    pop  AF                                            ;; 00:0c04 $f1
    add  A, B                                          ;; 00:0c05 $80
    ld   [HL], A                                       ;; 00:0c06 $77
    ld   B, $00                                        ;; 00:0c07 $06 $00
    ld   HL, wShadowOAM                                ;; 00:0c09 $21 $00 $c0
    add  HL, BC                                        ;; 00:0c0c $09
    call call_00_0673                                  ;; 00:0c0d $cd $73 $06
    pop  HL                                            ;; 00:0c10 $e1
    push HL                                            ;; 00:0c11 $e5
    ld   BC, $0b                                       ;; 00:0c12 $01 $0b $00
    add  HL, BC                                        ;; 00:0c15 $09
    ld   A, [HL+]                                      ;; 00:0c16 $2a
    ld   [DE], A                                       ;; 00:0c17 $12
    inc  DE                                            ;; 00:0c18 $13
    ld   A, [HL]                                       ;; 00:0c19 $7e
    ld   [DE], A                                       ;; 00:0c1a $12
    inc  DE                                            ;; 00:0c1b $13
    pop  HL                                            ;; 00:0c1c $e1
    ld   B, $04                                        ;; 00:0c1d $06 $04
    call memcopySmall                                  ;; 00:0c1f $cd $91 $05
    ld   A, [HL+]                                      ;; 00:0c22 $2a
    ld   [DE], A                                       ;; 00:0c23 $12
    inc  DE                                            ;; 00:0c24 $13
    ld   A, [HL+]                                      ;; 00:0c25 $2a
    ld   [DE], A                                       ;; 00:0c26 $12
    inc  DE                                            ;; 00:0c27 $13
    ld   C, A                                          ;; 00:0c28 $4f
    ld   A, [HL+]                                      ;; 00:0c29 $2a
    ld   [DE], A                                       ;; 00:0c2a $12
    inc  DE                                            ;; 00:0c2b $13
    ld   A, [HL+]                                      ;; 00:0c2c $2a
    ld   [DE], A                                       ;; 00:0c2d $12
    inc  DE                                            ;; 00:0c2e $13
    push AF                                            ;; 00:0c2f $f5
    ld   A, [wCEB5]                                    ;; 00:0c30 $fa $b5 $ce
    ld   B, A                                          ;; 00:0c33 $47
    pop  AF                                            ;; 00:0c34 $f1
    sub  A, B                                          ;; 00:0c35 $90
    add  A, $10                                        ;; 00:0c36 $c6 $10
    ld   [DE], A                                       ;; 00:0c38 $12
    inc  DE                                            ;; 00:0c39 $13
    ld   A, [wCEB3]                                    ;; 00:0c3a $fa $b3 $ce
    ld   B, A                                          ;; 00:0c3d $47
    ld   A, C                                          ;; 00:0c3e $79
    sub  A, B                                          ;; 00:0c3f $90
    add  A, $08                                        ;; 00:0c40 $c6 $08
    ld   [DE], A                                       ;; 00:0c42 $12
    inc  DE                                            ;; 00:0c43 $13
    ld   A, [HL+]                                      ;; 00:0c44 $2a
    ld   [DE], A                                       ;; 00:0c45 $12
    inc  DE                                            ;; 00:0c46 $13
    ld   A, $01                                        ;; 00:0c47 $3e $01
    ld   [DE], A                                       ;; 00:0c49 $12
    inc  DE                                            ;; 00:0c4a $13
    ld   A, [HL+]                                      ;; 00:0c4b $2a
    ld   [DE], A                                       ;; 00:0c4c $12
    inc  DE                                            ;; 00:0c4d $13
    dec  A                                             ;; 00:0c4e $3d
    ld   [DE], A                                       ;; 00:0c4f $12
    inc  DE                                            ;; 00:0c50 $13
    xor  A, A                                          ;; 00:0c51 $af
    ld   [DE], A                                       ;; 00:0c52 $12
    ld   A, $04                                        ;; 00:0c53 $3e $04
    add  A, E                                          ;; 00:0c55 $83
    ld   E, A                                          ;; 00:0c56 $5f
    ld   A, $00                                        ;; 00:0c57 $3e $00
    adc  A, D                                          ;; 00:0c59 $8a
    ld   D, A                                          ;; 00:0c5a $57
    ld   BC, $05                                       ;; 00:0c5b $01 $05 $00
    add  HL, BC                                        ;; 00:0c5e $09
    ld   A, [HL+]                                      ;; 00:0c5f $2a
    ld   [DE], A                                       ;; 00:0c60 $12
    inc  DE                                            ;; 00:0c61 $13
    ld   A, [HL]                                       ;; 00:0c62 $7e
    ld   [DE], A                                       ;; 00:0c63 $12
    inc  DE                                            ;; 00:0c64 $13
    xor  A, A                                          ;; 00:0c65 $af
    ld   [DE], A                                       ;; 00:0c66 $12
    ret                                                ;; 00:0c67 $c9

call_00_0c68:
    ld   A, [wD5D8]                                    ;; 00:0c68 $fa $d8 $d5
    and  A, A                                          ;; 00:0c6b $a7
    ret  Z                                             ;; 00:0c6c $c8
    ld   B, A                                          ;; 00:0c6d $47
    ld   C, $00                                        ;; 00:0c6e $0e $00
.jr_00_0c70:
    push BC                                            ;; 00:0c70 $c5
    ld   A, C                                          ;; 00:0c71 $79
    inc  A                                             ;; 00:0c72 $3c
    ld   [wD5CA], A                                    ;; 00:0c73 $ea $ca $d5
    ld   HL, $323                                      ;; 00:0c76 $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:0c79 $cd $7a $06
    ld   A, [HL]                                       ;; 00:0c7c $7e
    cp   A, $40                                        ;; 00:0c7d $fe $40
    jp   Z, .jp_00_0c97                                ;; 00:0c7f $ca $97 $0c
    ld   BC, $0f                                       ;; 00:0c82 $01 $0f $00
    add  HL, BC                                        ;; 00:0c85 $09
    ld   A, [HL-]                                      ;; 00:0c86 $3a
    and  A, A                                          ;; 00:0c87 $a7
    jr   Z, .jp_00_0c97                                ;; 00:0c88 $28 $0d
    dec  HL                                            ;; 00:0c8a $2b
    ld   A, [HL]                                       ;; 00:0c8b $7e
    and  A, A                                          ;; 00:0c8c $a7
    jr   NZ, .jr_00_0c94                               ;; 00:0c8d $20 $05
    call call_00_0c9d                                  ;; 00:0c8f $cd $9d $0c
    jr   .jp_00_0c97                                   ;; 00:0c92 $18 $03
.jr_00_0c94:
    call call_00_0ced                                  ;; 00:0c94 $cd $ed $0c
.jp_00_0c97:
    pop  BC                                            ;; 00:0c97 $c1
    inc  C                                             ;; 00:0c98 $0c
    dec  B                                             ;; 00:0c99 $05
    jr   NZ, .jr_00_0c70                               ;; 00:0c9a $20 $d4
    ret                                                ;; 00:0c9c $c9

call_00_0c9d:
    call call_00_064c                                  ;; 00:0c9d $cd $4c $06
    and  A, $3f                                        ;; 00:0ca0 $e6 $3f
    ret  NZ                                            ;; 00:0ca2 $c0
    call call_00_064c                                  ;; 00:0ca3 $cd $4c $06
    and  A, $03                                        ;; 00:0ca6 $e6 $03
    inc  A                                             ;; 00:0ca8 $3c
    add  A, A                                          ;; 00:0ca9 $87
    add  A, A                                          ;; 00:0caa $87
    add  A, A                                          ;; 00:0cab $87
    ld   [HL+], A                                      ;; 00:0cac $22
    call call_00_064c                                  ;; 00:0cad $cd $4c $06
    and  A, $01                                        ;; 00:0cb0 $e6 $01
    add  A, A                                          ;; 00:0cb2 $87
    add  A, A                                          ;; 00:0cb3 $87
    add  A, A                                          ;; 00:0cb4 $87
    add  A, $dd                                        ;; 00:0cb5 $c6 $dd
    ld   E, A                                          ;; 00:0cb7 $5f
    ld   A, $00                                        ;; 00:0cb8 $3e $00
    adc  A, $0c                                        ;; 00:0cba $ce $0c
    ld   D, A                                          ;; 00:0cbc $57
    ld   A, [HL]                                       ;; 00:0cbd $7e
    add  A, E                                          ;; 00:0cbe $83
    ld   E, A                                          ;; 00:0cbf $5f
    ld   A, $00                                        ;; 00:0cc0 $3e $00
    adc  A, D                                          ;; 00:0cc2 $8a
    ld   D, A                                          ;; 00:0cc3 $57
    ld   A, [DE]                                       ;; 00:0cc4 $1a
    ld   [HL], A                                       ;; 00:0cc5 $77
    ld   DE, hFFF2                                     ;; 00:0cc6 $11 $f2 $ff
    add  HL, DE                                        ;; 00:0cc9 $19
    ld   A, [HL+]                                      ;; 00:0cca $2a
    and  A, A                                          ;; 00:0ccb $a7
    ret  Z                                             ;; 00:0ccc $c8
    ld   A, [HL+]                                      ;; 00:0ccd $2a
    ld   L, [HL]                                       ;; 00:0cce $6e
    ld   H, A                                          ;; 00:0ccf $67
    ld   DE, $13                                       ;; 00:0cd0 $11 $13 $00
    add  HL, DE                                        ;; 00:0cd3 $19
    ld   [HL], $01                                     ;; 00:0cd4 $36 $01
    ld   DE, $03                                       ;; 00:0cd6 $11 $03 $00
    add  HL, DE                                        ;; 00:0cd9 $19
    ld   [HL], $00                                     ;; 00:0cda $36 $00
    ret                                                ;; 00:0cdc $c9
    db   $00, $04, $03, $01, $02, $00, $00, $00        ;; 00:0cdd ?....???
    db   $00, $02, $04, $03, $01, $00, $00, $00        ;; 00:0ce5 ????????

call_00_0ced:
    ld   DE, hFFFC                                     ;; 00:0ced $11 $fc $ff
    add  HL, DE                                        ;; 00:0cf0 $19
    push HL                                            ;; 00:0cf1 $e5
    ld   DE, wD5BC                                     ;; 00:0cf2 $11 $bc $d5
    ld   B, $04                                        ;; 00:0cf5 $06 $04
    call memcopySmall                                  ;; 00:0cf7 $cd $91 $05
    dec  [HL]                                          ;; 00:0cfa $35
    inc  HL                                            ;; 00:0cfb $23
    ld   A, [HL]                                       ;; 00:0cfc $7e
    cp   A, $01                                        ;; 00:0cfd $fe $01
    jr   C, .jr_00_0d0f                                ;; 00:0cff $38 $0e
    jp   Z, .jp_00_0d11                                ;; 00:0d01 $ca $11 $0d
    cp   A, $03                                        ;; 00:0d04 $fe $03
    jp   C, .jp_00_0d75                                ;; 00:0d06 $da $75 $0d
    jp   Z, .jp_00_0dd0                                ;; 00:0d09 $ca $d0 $0d
    jp   .jp_00_0e29                                   ;; 00:0d0c $c3 $29 $0e
.jr_00_0d0f:
    pop  HL                                            ;; 00:0d0f $e1
    ret                                                ;; 00:0d10 $c9
.jp_00_0d11:
    ld   B, $10                                        ;; 00:0d11 $06 $10
    call call_00_2217                                  ;; 00:0d13 $cd $17 $22
    ld   HL, wD5BC                                     ;; 00:0d16 $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0d19 $2a
    ld   L, [HL]                                       ;; 00:0d1a $6e
    ld   H, A                                          ;; 00:0d1b $67
    inc  HL                                            ;; 00:0d1c $23
    call call_00_05ea                                  ;; 00:0d1d $cd $ea $05
    jr   C, .jr_00_0d24                                ;; 00:0d20 $38 $02
    ld   H, D                                          ;; 00:0d22 $62
    ld   L, E                                          ;; 00:0d23 $6b
.jr_00_0d24:
    ld   A, H                                          ;; 00:0d24 $7c
    ld   [wD5BC], A                                    ;; 00:0d25 $ea $bc $d5
    ld   A, L                                          ;; 00:0d28 $7d
    ld   [wD5BD], A                                    ;; 00:0d29 $ea $bd $d5
    ld   A, $04                                        ;; 00:0d2c $3e $04
    ld   [wBackupRomBank], A                           ;; 00:0d2e $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0d31 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0d34 $ea $00 $20
    call call_04_42cb                                  ;; 00:0d37 $cd $cb $42
    ld   A, B                                          ;; 00:0d3a $78
    and  A, A                                          ;; 00:0d3b $a7
    jr   NZ, .jr_00_0d60                               ;; 00:0d3c $20 $22
    ld   HL, wD5BE                                     ;; 00:0d3e $21 $be $d5
    ld   A, [HL+]                                      ;; 00:0d41 $2a
    ld   E, [HL]                                       ;; 00:0d42 $5e
    ld   D, A                                          ;; 00:0d43 $57
    ld   HL, wD5BC                                     ;; 00:0d44 $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0d47 $2a
    ld   L, [HL]                                       ;; 00:0d48 $6e
    ld   H, A                                          ;; 00:0d49 $67
    ld   BC, $0f                                       ;; 00:0d4a $01 $0f $00
    add  HL, BC                                        ;; 00:0d4d $09
    call call_00_06ce                                  ;; 00:0d4e $cd $ce $06
    jr   NC, .jr_00_0d60                               ;; 00:0d51 $30 $0d
    ld   A, $0f                                        ;; 00:0d53 $3e $0f
    add  A, E                                          ;; 00:0d55 $83
    ld   E, A                                          ;; 00:0d56 $5f
    ld   A, $00                                        ;; 00:0d57 $3e $00
    adc  A, D                                          ;; 00:0d59 $8a
    ld   D, A                                          ;; 00:0d5a $57
    call call_00_06ce                                  ;; 00:0d5b $cd $ce $06
    jr   C, .jr_00_0d6b                                ;; 00:0d5e $38 $0b
.jr_00_0d60:
    ld   HL, wD5BD                                     ;; 00:0d60 $21 $bd $d5
    ld   A, [HL]                                       ;; 00:0d63 $7e
    sub  A, $01                                        ;; 00:0d64 $d6 $01
    ld   [HL-], A                                      ;; 00:0d66 $32
    ld   A, [HL]                                       ;; 00:0d67 $7e
    sbc  A, $00                                        ;; 00:0d68 $de $00
    ld   [HL], A                                       ;; 00:0d6a $77
.jr_00_0d6b:
    pop  HL                                            ;; 00:0d6b $e1
    ld   A, [wD5BC]                                    ;; 00:0d6c $fa $bc $d5
    ld   [HL+], A                                      ;; 00:0d6f $22
    ld   A, [wD5BD]                                    ;; 00:0d70 $fa $bd $d5
    ld   [HL+], A                                      ;; 00:0d73 $22
    ret                                                ;; 00:0d74 $c9
.jp_00_0d75:
    ld   HL, wD5BC                                     ;; 00:0d75 $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0d78 $2a
    ld   L, [HL]                                       ;; 00:0d79 $6e
    ld   H, A                                          ;; 00:0d7a $67
    dec  HL                                            ;; 00:0d7b $2b
    bit  7, H                                          ;; 00:0d7c $cb $7c
    jr   Z, .jr_00_0d83                                ;; 00:0d7e $28 $03
    ld   HL, $00                                       ;; 00:0d80 $21 $00 $00
.jr_00_0d83:
    ld   A, H                                          ;; 00:0d83 $7c
    ld   [wD5BC], A                                    ;; 00:0d84 $ea $bc $d5
    ld   A, L                                          ;; 00:0d87 $7d
    ld   [wD5BD], A                                    ;; 00:0d88 $ea $bd $d5
    ld   A, $04                                        ;; 00:0d8b $3e $04
    ld   [wBackupRomBank], A                           ;; 00:0d8d $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0d90 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0d93 $ea $00 $20
    call call_04_42cb                                  ;; 00:0d96 $cd $cb $42
    ld   A, B                                          ;; 00:0d99 $78
    and  A, A                                          ;; 00:0d9a $a7
    jr   NZ, .jr_00_0dbb                               ;; 00:0d9b $20 $1e
    ld   HL, wD5BE                                     ;; 00:0d9d $21 $be $d5
    ld   A, [HL+]                                      ;; 00:0da0 $2a
    ld   E, [HL]                                       ;; 00:0da1 $5e
    ld   D, A                                          ;; 00:0da2 $57
    ld   HL, wD5BC                                     ;; 00:0da3 $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0da6 $2a
    ld   L, [HL]                                       ;; 00:0da7 $6e
    ld   H, A                                          ;; 00:0da8 $67
    call call_00_06ce                                  ;; 00:0da9 $cd $ce $06
    jr   NC, .jr_00_0dbb                               ;; 00:0dac $30 $0d
    ld   A, $0f                                        ;; 00:0dae $3e $0f
    add  A, E                                          ;; 00:0db0 $83
    ld   E, A                                          ;; 00:0db1 $5f
    ld   A, $00                                        ;; 00:0db2 $3e $00
    adc  A, D                                          ;; 00:0db4 $8a
    ld   D, A                                          ;; 00:0db5 $57
    call call_00_06ce                                  ;; 00:0db6 $cd $ce $06
    jr   C, .jr_00_0dc6                                ;; 00:0db9 $38 $0b
.jr_00_0dbb:
    ld   HL, wD5BD                                     ;; 00:0dbb $21 $bd $d5
    ld   A, $01                                        ;; 00:0dbe $3e $01
    add  A, [HL]                                       ;; 00:0dc0 $86
    ld   [HL-], A                                      ;; 00:0dc1 $32
    ld   A, $00                                        ;; 00:0dc2 $3e $00
    adc  A, [HL]                                       ;; 00:0dc4 $8e
    ld   [HL], A                                       ;; 00:0dc5 $77
.jr_00_0dc6:
    pop  HL                                            ;; 00:0dc6 $e1
    ld   A, [wD5BC]                                    ;; 00:0dc7 $fa $bc $d5
    ld   [HL+], A                                      ;; 00:0dca $22
    ld   A, [wD5BD]                                    ;; 00:0dcb $fa $bd $d5
    ld   [HL+], A                                      ;; 00:0dce $22
    ret                                                ;; 00:0dcf $c9
.jp_00_0dd0:
    ld   HL, wD5BE                                     ;; 00:0dd0 $21 $be $d5
    ld   A, [HL+]                                      ;; 00:0dd3 $2a
    ld   L, [HL]                                       ;; 00:0dd4 $6e
    ld   H, A                                          ;; 00:0dd5 $67
    dec  HL                                            ;; 00:0dd6 $2b
    bit  7, H                                          ;; 00:0dd7 $cb $7c
    jr   Z, .jr_00_0dde                                ;; 00:0dd9 $28 $03
    ld   HL, $00                                       ;; 00:0ddb $21 $00 $00
.jr_00_0dde:
    ld   A, H                                          ;; 00:0dde $7c
    ld   [wD5BE], A                                    ;; 00:0ddf $ea $be $d5
    ld   A, L                                          ;; 00:0de2 $7d
    ld   [wD5BF], A                                    ;; 00:0de3 $ea $bf $d5
    ld   A, $04                                        ;; 00:0de6 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:0de8 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0deb $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0dee $ea $00 $20
    call call_04_42cb                                  ;; 00:0df1 $cd $cb $42
    ld   A, B                                          ;; 00:0df4 $78
    and  A, A                                          ;; 00:0df5 $a7
    jr   NZ, .jr_00_0e12                               ;; 00:0df6 $20 $1a
    ld   HL, wD5BE                                     ;; 00:0df8 $21 $be $d5
    ld   A, [HL+]                                      ;; 00:0dfb $2a
    ld   E, [HL]                                       ;; 00:0dfc $5e
    ld   D, A                                          ;; 00:0dfd $57
    ld   HL, wD5BC                                     ;; 00:0dfe $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0e01 $2a
    ld   L, [HL]                                       ;; 00:0e02 $6e
    ld   H, A                                          ;; 00:0e03 $67
    call call_00_06ce                                  ;; 00:0e04 $cd $ce $06
    jr   NC, .jr_00_0e12                               ;; 00:0e07 $30 $09
    ld   BC, $0f                                       ;; 00:0e09 $01 $0f $00
    add  HL, BC                                        ;; 00:0e0c $09
    call call_00_06ce                                  ;; 00:0e0d $cd $ce $06
    jr   C, .jr_00_0e1d                                ;; 00:0e10 $38 $0b
.jr_00_0e12:
    ld   HL, wD5BF                                     ;; 00:0e12 $21 $bf $d5
    ld   A, $01                                        ;; 00:0e15 $3e $01
    add  A, [HL]                                       ;; 00:0e17 $86
    ld   [HL-], A                                      ;; 00:0e18 $32
    ld   A, $00                                        ;; 00:0e19 $3e $00
    adc  A, [HL]                                       ;; 00:0e1b $8e
    ld   [HL], A                                       ;; 00:0e1c $77
.jr_00_0e1d:
    pop  HL                                            ;; 00:0e1d $e1
    inc  HL                                            ;; 00:0e1e $23
    inc  HL                                            ;; 00:0e1f $23
    ld   A, [wD5BE]                                    ;; 00:0e20 $fa $be $d5
    ld   [HL+], A                                      ;; 00:0e23 $22
    ld   A, [wD5BF]                                    ;; 00:0e24 $fa $bf $d5
    ld   [HL+], A                                      ;; 00:0e27 $22
    ret                                                ;; 00:0e28 $c9
.jp_00_0e29:
    ld   B, $10                                        ;; 00:0e29 $06 $10
    call call_00_2223                                  ;; 00:0e2b $cd $23 $22
    ld   HL, wD5BE                                     ;; 00:0e2e $21 $be $d5
    ld   A, [HL+]                                      ;; 00:0e31 $2a
    ld   L, [HL]                                       ;; 00:0e32 $6e
    ld   H, A                                          ;; 00:0e33 $67
    inc  HL                                            ;; 00:0e34 $23
    call call_00_05ea                                  ;; 00:0e35 $cd $ea $05
    jr   C, .jr_00_0e3c                                ;; 00:0e38 $38 $02
    ld   H, D                                          ;; 00:0e3a $62
    ld   L, E                                          ;; 00:0e3b $6b
.jr_00_0e3c:
    ld   A, H                                          ;; 00:0e3c $7c
    ld   [wD5BE], A                                    ;; 00:0e3d $ea $be $d5
    ld   A, L                                          ;; 00:0e40 $7d
    ld   [wD5BF], A                                    ;; 00:0e41 $ea $bf $d5
    ld   A, $04                                        ;; 00:0e44 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:0e46 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0e49 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0e4c $ea $00 $20
    call call_04_42cb                                  ;; 00:0e4f $cd $cb $42
    ld   A, B                                          ;; 00:0e52 $78
    and  A, A                                          ;; 00:0e53 $a7
    jr   NZ, .jr_00_0e78                               ;; 00:0e54 $20 $22
    ld   HL, wD5BE                                     ;; 00:0e56 $21 $be $d5
    ld   A, [HL+]                                      ;; 00:0e59 $2a
    ld   E, [HL]                                       ;; 00:0e5a $5e
    ld   D, A                                          ;; 00:0e5b $57
    ld   A, $0f                                        ;; 00:0e5c $3e $0f
    add  A, E                                          ;; 00:0e5e $83
    ld   E, A                                          ;; 00:0e5f $5f
    ld   A, $00                                        ;; 00:0e60 $3e $00
    adc  A, D                                          ;; 00:0e62 $8a
    ld   D, A                                          ;; 00:0e63 $57
    ld   HL, wD5BC                                     ;; 00:0e64 $21 $bc $d5
    ld   A, [HL+]                                      ;; 00:0e67 $2a
    ld   L, [HL]                                       ;; 00:0e68 $6e
    ld   H, A                                          ;; 00:0e69 $67
    call call_00_06ce                                  ;; 00:0e6a $cd $ce $06
    jr   NC, .jr_00_0e78                               ;; 00:0e6d $30 $09
    ld   BC, $0f                                       ;; 00:0e6f $01 $0f $00
    add  HL, BC                                        ;; 00:0e72 $09
    call call_00_06ce                                  ;; 00:0e73 $cd $ce $06
    jr   C, .jr_00_0e83                                ;; 00:0e76 $38 $0b
.jr_00_0e78:
    ld   HL, wD5BF                                     ;; 00:0e78 $21 $bf $d5
    ld   A, [HL]                                       ;; 00:0e7b $7e
    sub  A, $01                                        ;; 00:0e7c $d6 $01
    ld   [HL-], A                                      ;; 00:0e7e $32
    ld   A, [HL]                                       ;; 00:0e7f $7e
    sbc  A, $00                                        ;; 00:0e80 $de $00
    ld   [HL], A                                       ;; 00:0e82 $77
.jr_00_0e83:
    pop  HL                                            ;; 00:0e83 $e1
    inc  HL                                            ;; 00:0e84 $23
    inc  HL                                            ;; 00:0e85 $23
    ld   A, [wD5BE]                                    ;; 00:0e86 $fa $be $d5
    ld   [HL+], A                                      ;; 00:0e89 $22
    ld   A, [wD5BF]                                    ;; 00:0e8a $fa $bf $d5
    ld   [HL+], A                                      ;; 00:0e8d $22
    ret                                                ;; 00:0e8e $c9

call_00_0e8f:
    ld   A, [wD5D8]                                    ;; 00:0e8f $fa $d8 $d5
    and  A, A                                          ;; 00:0e92 $a7
    ret  Z                                             ;; 00:0e93 $c8
    ld   B, A                                          ;; 00:0e94 $47
    ld   C, $00                                        ;; 00:0e95 $0e $00
.jr_00_0e97:
    push BC                                            ;; 00:0e97 $c5
    ld   A, C                                          ;; 00:0e98 $79
    inc  A                                             ;; 00:0e99 $3c
    ld   [wD5CA], A                                    ;; 00:0e9a $ea $ca $d5
    ld   HL, $323                                      ;; 00:0e9d $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:0ea0 $cd $7a $06
    ld   A, [HL]                                       ;; 00:0ea3 $7e
    cp   A, $40                                        ;; 00:0ea4 $fe $40
    jp   Z, .jp_00_0eb4                                ;; 00:0ea6 $ca $b4 $0e
    ld   BC, $0d                                       ;; 00:0ea9 $01 $0d $00
    add  HL, BC                                        ;; 00:0eac $09
    ld   A, [HL]                                       ;; 00:0ead $7e
    and  A, A                                          ;; 00:0eae $a7
    jr   Z, .jp_00_0eb4                                ;; 00:0eaf $28 $03
    call call_00_0eba                                  ;; 00:0eb1 $cd $ba $0e
.jp_00_0eb4:
    pop  BC                                            ;; 00:0eb4 $c1
    inc  C                                             ;; 00:0eb5 $0c
    dec  B                                             ;; 00:0eb6 $05
    jr   NZ, .jr_00_0e97                               ;; 00:0eb7 $20 $de
    ret                                                ;; 00:0eb9 $c9

call_00_0eba:
    push HL                                            ;; 00:0eba $e5
    dec  [HL]                                          ;; 00:0ebb $35
    ld   DE, $09                                       ;; 00:0ebc $11 $09 $00
    add  HL, DE                                        ;; 00:0ebf $19
    ld   E, [HL]                                       ;; 00:0ec0 $5e
    ld   BC, $03                                       ;; 00:0ec1 $01 $03 $00
    add  HL, BC                                        ;; 00:0ec4 $09
    ld   A, [HL+]                                      ;; 00:0ec5 $2a
    ld   B, A                                          ;; 00:0ec6 $47
    ld   A, [HL+]                                      ;; 00:0ec7 $2a
    ld   C, A                                          ;; 00:0ec8 $4f
    ld   A, E                                          ;; 00:0ec9 $7b
    cp   A, $01                                        ;; 00:0eca $fe $01
    jr   C, .jr_00_0edc                                ;; 00:0ecc $38 $0e
    jp   Z, .jp_00_0ede                                ;; 00:0ece $ca $de $0e
    cp   A, $03                                        ;; 00:0ed1 $fe $03
    jp   C, .jp_00_0ef4                                ;; 00:0ed3 $da $f4 $0e
    jp   Z, .jp_00_0f0a                                ;; 00:0ed6 $ca $0a $0f
    jp   .jp_00_0f1a                                   ;; 00:0ed9 $c3 $1a $0f
.jr_00_0edc:
    pop  HL                                            ;; 00:0edc $e1
    ret                                                ;; 00:0edd $c9
.jp_00_0ede:
    pop  HL                                            ;; 00:0ede $e1
    ld   A, L                                          ;; 00:0edf $7d
    sub  A, $04                                        ;; 00:0ee0 $d6 $04
    ld   L, A                                          ;; 00:0ee2 $6f
    ld   A, H                                          ;; 00:0ee3 $7c
    sbc  A, $00                                        ;; 00:0ee4 $de $00
    ld   H, A                                          ;; 00:0ee6 $67
    ld   A, [HL+]                                      ;; 00:0ee7 $2a
    ld   E, [HL]                                       ;; 00:0ee8 $5e
    ld   D, A                                          ;; 00:0ee9 $57
    ld   A, C                                          ;; 00:0eea $79
    add  A, E                                          ;; 00:0eeb $83
    ld   E, A                                          ;; 00:0eec $5f
    ld   A, B                                          ;; 00:0eed $78
    adc  A, D                                          ;; 00:0eee $8a
    ld   D, A                                          ;; 00:0eef $57
    ld   A, E                                          ;; 00:0ef0 $7b
    ld   [HL-], A                                      ;; 00:0ef1 $32
    ld   [HL], D                                       ;; 00:0ef2 $72
    ret                                                ;; 00:0ef3 $c9
.jp_00_0ef4:
    pop  HL                                            ;; 00:0ef4 $e1
    ld   A, L                                          ;; 00:0ef5 $7d
    sub  A, $04                                        ;; 00:0ef6 $d6 $04
    ld   L, A                                          ;; 00:0ef8 $6f
    ld   A, H                                          ;; 00:0ef9 $7c
    sbc  A, $00                                        ;; 00:0efa $de $00
    ld   H, A                                          ;; 00:0efc $67
    ld   A, [HL+]                                      ;; 00:0efd $2a
    ld   E, [HL]                                       ;; 00:0efe $5e
    ld   D, A                                          ;; 00:0eff $57
    ld   A, E                                          ;; 00:0f00 $7b
    sub  A, C                                          ;; 00:0f01 $91
    ld   E, A                                          ;; 00:0f02 $5f
    ld   A, D                                          ;; 00:0f03 $7a
    sbc  A, B                                          ;; 00:0f04 $98
    ld   D, A                                          ;; 00:0f05 $57
    ld   A, E                                          ;; 00:0f06 $7b
    ld   [HL-], A                                      ;; 00:0f07 $32
    ld   [HL], D                                       ;; 00:0f08 $72
    ret                                                ;; 00:0f09 $c9
.jp_00_0f0a:
    pop  HL                                            ;; 00:0f0a $e1
    dec  HL                                            ;; 00:0f0b $2b
    dec  HL                                            ;; 00:0f0c $2b
    ld   A, [HL+]                                      ;; 00:0f0d $2a
    ld   E, [HL]                                       ;; 00:0f0e $5e
    ld   D, A                                          ;; 00:0f0f $57
    ld   A, E                                          ;; 00:0f10 $7b
    sub  A, C                                          ;; 00:0f11 $91
    ld   E, A                                          ;; 00:0f12 $5f
    ld   A, D                                          ;; 00:0f13 $7a
    sbc  A, B                                          ;; 00:0f14 $98
    ld   D, A                                          ;; 00:0f15 $57
    ld   A, E                                          ;; 00:0f16 $7b
    ld   [HL-], A                                      ;; 00:0f17 $32
    ld   [HL], D                                       ;; 00:0f18 $72
    ret                                                ;; 00:0f19 $c9
.jp_00_0f1a:
    pop  HL                                            ;; 00:0f1a $e1
    dec  HL                                            ;; 00:0f1b $2b
    dec  HL                                            ;; 00:0f1c $2b
    ld   A, [HL+]                                      ;; 00:0f1d $2a
    ld   E, [HL]                                       ;; 00:0f1e $5e
    ld   D, A                                          ;; 00:0f1f $57
    ld   A, C                                          ;; 00:0f20 $79
    add  A, E                                          ;; 00:0f21 $83
    ld   E, A                                          ;; 00:0f22 $5f
    ld   A, B                                          ;; 00:0f23 $78
    adc  A, D                                          ;; 00:0f24 $8a
    ld   D, A                                          ;; 00:0f25 $57
    ld   A, E                                          ;; 00:0f26 $7b
    ld   [HL-], A                                      ;; 00:0f27 $32
    ld   [HL], D                                       ;; 00:0f28 $72
    ret                                                ;; 00:0f29 $c9

call_00_0f2a:
    ld   A, $11                                        ;; 00:0f2a $3e $11
    ld   [wC460], A                                    ;; 00:0f2c $ea $60 $c4
    ld   A, $01                                        ;; 00:0f2f $3e $01
    ld   [wC463], A                                    ;; 00:0f31 $ea $63 $c4
    xor  A, A                                          ;; 00:0f34 $af
    ld   [wC462], A                                    ;; 00:0f35 $ea $62 $c4
    ret                                                ;; 00:0f38 $c9

startHardwareTimer:
    xor  A, A                                          ;; 00:0f39 $af
    ld   [wD5DE], A                                    ;; 00:0f3a $ea $de $d5
    ldh  A, [hIsGBC]                                   ;; 00:0f3d $f0 $fe
    and  A, A                                          ;; 00:0f3f $a7
    jr   NZ, .gbc                                      ;; 00:0f40 $20 $09
    ld   HL, rTAC                                      ;; 00:0f42 $21 $07 $ff
    ld   [HL], $03                                     ;; 00:0f45 $36 $03
    set  2, [HL]                                       ;; 00:0f47 $cb $d6
    jr   .done                                         ;; 00:0f49 $18 $0a
.gbc:
    ld   HL, rTMA                                      ;; 00:0f4b $21 $06 $ff
    ld   A, $80                                        ;; 00:0f4e $3e $80
    ld   [HL+], A                                      ;; 00:0f50 $22
    ld   [HL], $00                                     ;; 00:0f51 $36 $00
    set  2, [HL]                                       ;; 00:0f53 $cb $d6
.done:
    xor  A, A                                          ;; 00:0f55 $af
    ldh  [rIF], A                                      ;; 00:0f56 $e0 $0f
    ld   A, $04                                        ;; 00:0f58 $3e $04
    ldh  [rIE], A                                      ;; 00:0f5a $e0 $ff
    ret                                                ;; 00:0f5c $c9

call_00_0f5d:
    ld   A, [wD5D8]                                    ;; 00:0f5d $fa $d8 $d5
    and  A, A                                          ;; 00:0f60 $a7
    ret  Z                                             ;; 00:0f61 $c8
    push HL                                            ;; 00:0f62 $e5
    ld   A, [HL+]                                      ;; 00:0f63 $2a
    and  A, A                                          ;; 00:0f64 $a7
    jr   Z, .jr_00_0f91                                ;; 00:0f65 $28 $2a
    ld   A, [HL+]                                      ;; 00:0f67 $2a
    ld   E, [HL]                                       ;; 00:0f68 $5e
    ld   D, A                                          ;; 00:0f69 $57
    push DE                                            ;; 00:0f6a $d5
    call call_00_0f95                                  ;; 00:0f6b $cd $95 $0f
    pop  HL                                            ;; 00:0f6e $e1
    ld   A, $ff                                        ;; 00:0f6f $3e $ff
    ld   [HL+], A                                      ;; 00:0f71 $22
    inc  HL                                            ;; 00:0f72 $23
    ld   A, [HL+]                                      ;; 00:0f73 $2a
    ld   D, A                                          ;; 00:0f74 $57
    ld   A, [HL+]                                      ;; 00:0f75 $2a
    ld   E, A                                          ;; 00:0f76 $5f
    ld   A, $04                                        ;; 00:0f77 $3e $04
    ld   [wCurrentRomBank], A                          ;; 00:0f79 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0f7c $ea $00 $20
    call call_04_422e                                  ;; 00:0f7f $cd $2e $42
    call call_04_4258                                  ;; 00:0f82 $cd $58 $42
    call call_04_42a1                                  ;; 00:0f85 $cd $a1 $42
    ld   A, [wBackupRomBank]                           ;; 00:0f88 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0f8b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0f8e $ea $00 $20
.jr_00_0f91:
    pop  HL                                            ;; 00:0f91 $e1
    ld   [HL], $40                                     ;; 00:0f92 $36 $40
    ret                                                ;; 00:0f94 $c9

call_00_0f95:
    ld   HL, wCF36                                     ;; 00:0f95 $21 $36 $cf
    ld   B, $10                                        ;; 00:0f98 $06 $10
    ld   C, $00                                        ;; 00:0f9a $0e $00
.jr_00_0f9c:
    push HL                                            ;; 00:0f9c $e5
    ld   A, [HL+]                                      ;; 00:0f9d $2a
    ld   L, [HL]                                       ;; 00:0f9e $6e
    ld   H, A                                          ;; 00:0f9f $67
    call call_00_05ea                                  ;; 00:0fa0 $cd $ea $05
    pop  HL                                            ;; 00:0fa3 $e1
    ret  Z                                             ;; 00:0fa4 $c8
    inc  HL                                            ;; 00:0fa5 $23
    inc  HL                                            ;; 00:0fa6 $23
    inc  C                                             ;; 00:0fa7 $0c
    dec  B                                             ;; 00:0fa8 $05
    jr   NZ, .jr_00_0f9c                               ;; 00:0fa9 $20 $f1
    ret                                                ;; 00:0fab $c9

call_00_0fac:
    ld   A, [wJoypadDown]                              ;; 00:0fac $fa $7e $d5
    cp   A, $0f                                        ;; 00:0faf $fe $0f
    ret  NZ                                            ;; 00:0fb1 $c0
    ld   A, $01                                        ;; 00:0fb2 $3e $01
    ld   [$2000], A                                    ;; 00:0fb4 $ea $00 $20
    call call_01_4109 ;@bank 1                         ;; 00:0fb7 $cd $09 $41
    xor  A, A                                          ;; 00:0fba $af
    ldh  [rNR52], A                                    ;; 00:0fbb $e0 $26
    ld   A, $80                                        ;; 00:0fbd $3e $80
    ldh  [rNR52], A                                    ;; 00:0fbf $e0 $26
    jp   jp_00_015d                                    ;; 00:0fc1 $c3 $5d $01

call_00_0fc4:
    ld   A, $03                                        ;; 00:0fc4 $3e $03
    ld   [wBackupRomBank], A                           ;; 00:0fc6 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:0fc9 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:0fcc $ea $00 $20
    ld   HL, wCurrentMap                               ;; 00:0fcf $21 $42 $c1
    ld   A, [HL+]                                      ;; 00:0fd2 $2a
    ld   L, [HL]                                       ;; 00:0fd3 $6e
    ld   H, A                                          ;; 00:0fd4 $67
    add  HL, HL                                        ;; 00:0fd5 $29
    add  HL, DE                                        ;; 00:0fd6 $19
    ld   A, [HL+]                                      ;; 00:0fd7 $2a
    ld   L, [HL]                                       ;; 00:0fd8 $6e
    ld   H, A                                          ;; 00:0fd9 $67
    ret                                                ;; 00:0fda $c9

call_00_0fdb:
    ld   B, $00                                        ;; 00:0fdb $06 $00
.jr_00_0fdd:
    sub  A, $0a                                        ;; 00:0fdd $d6 $0a
    jr   C, .jr_00_0fe4                                ;; 00:0fdf $38 $03
    inc  B                                             ;; 00:0fe1 $04
    jr   .jr_00_0fdd                                   ;; 00:0fe2 $18 $f9
.jr_00_0fe4:
    add  A, $0a                                        ;; 00:0fe4 $c6 $0a
    ld   C, A                                          ;; 00:0fe6 $4f
    ret                                                ;; 00:0fe7 $c9

call_00_0fe8:
    ld   DE, $2710                                     ;; 00:0fe8 $11 $10 $27
    call call_00_1006                                  ;; 00:0feb $cd $06 $10
    ld   DE, $3e8                                      ;; 00:0fee $11 $e8 $03
    call call_00_1006                                  ;; 00:0ff1 $cd $06 $10
    ld   DE, $64                                       ;; 00:0ff4 $11 $64 $00
    call call_00_1006                                  ;; 00:0ff7 $cd $06 $10
    ld   DE, $0a                                       ;; 00:0ffa $11 $0a $00
    call call_00_1006                                  ;; 00:0ffd $cd $06 $10
    ld   A, [wD5E2]                                    ;; 00:1000 $fa $e2 $d5
    add  A, L                                          ;; 00:1003 $85
    ld   [BC], A                                       ;; 00:1004 $02
    ret                                                ;; 00:1005 $c9

call_00_1006:
    push BC                                            ;; 00:1006 $c5
    call call_00_1013                                  ;; 00:1007 $cd $13 $10
    ld   A, [wD5E2]                                    ;; 00:100a $fa $e2 $d5
    add  A, B                                          ;; 00:100d $80
    pop  BC                                            ;; 00:100e $c1
    ld   [BC], A                                       ;; 00:100f $02
    inc  BC                                            ;; 00:1010 $03
    add  HL, DE                                        ;; 00:1011 $19
    ret                                                ;; 00:1012 $c9

call_00_1013:
    ld   B, $00                                        ;; 00:1013 $06 $00
.jr_00_1015:
    ld   A, L                                          ;; 00:1015 $7d
    sub  A, E                                          ;; 00:1016 $93
    ld   L, A                                          ;; 00:1017 $6f
    ld   A, H                                          ;; 00:1018 $7c
    sbc  A, D                                          ;; 00:1019 $9a
    ld   H, A                                          ;; 00:101a $67
    ret  C                                             ;; 00:101b $d8
    inc  B                                             ;; 00:101c $04
    jr   .jr_00_1015                                   ;; 00:101d $18 $f6

call_00_101f:
    ld   A, [wCA51]                                    ;; 00:101f $fa $51 $ca
    add  A, $04                                        ;; 00:1022 $c6 $04
    ld   [wD5E2], A                                    ;; 00:1024 $ea $e2 $d5
    ld   HL, wC106                                     ;; 00:1027 $21 $06 $c1
    ld   A, [HL+]                                      ;; 00:102a $2a
    ld   L, [HL]                                       ;; 00:102b $6e
    ld   H, A                                          ;; 00:102c $67
    ld   BC, wC50D                                     ;; 00:102d $01 $0d $c5
    call call_00_0fe8                                  ;; 00:1030 $cd $e8 $0f
    ld   HL, wC102                                     ;; 00:1033 $21 $02 $c1
    ld   A, [HL+]                                      ;; 00:1036 $2a
    ld   L, [HL]                                       ;; 00:1037 $6e
    ld   H, A                                          ;; 00:1038 $67
    ld   BC, wC512                                     ;; 00:1039 $01 $12 $c5
    call call_00_0fe8                                  ;; 00:103c $cd $e8 $0f
    ret                                                ;; 00:103f $c9

call_00_1040:
    ld   HL, wC50F                                     ;; 00:1040 $21 $0f $c5
    ld   A, [HL+]                                      ;; 00:1043 $2a
    ld   [v9C03], A                                    ;; 00:1044 $ea $03 $9c
    ld   A, [HL+]                                      ;; 00:1047 $2a
    ld   [v9C04], A                                    ;; 00:1048 $ea $04 $9c
    ld   A, [HL]                                       ;; 00:104b $7e
    ld   [v9C05], A                                    ;; 00:104c $ea $05 $9c
    ld   HL, wC514                                     ;; 00:104f $21 $14 $c5
    ld   A, [HL+]                                      ;; 00:1052 $2a
    ld   [v9C0A], A                                    ;; 00:1053 $ea $0a $9c
    ld   A, [HL+]                                      ;; 00:1056 $2a
    ld   [v9C0B], A                                    ;; 00:1057 $ea $0b $9c
    ld   A, [HL]                                       ;; 00:105a $7e
    ld   [v9C0C], A                                    ;; 00:105b $ea $0c $9c
    ret                                                ;; 00:105e $c9

call_00_105f:
    ld   B, $00                                        ;; 00:105f $06 $00
    ld   A, [wD598]                                    ;; 00:1061 $fa $98 $d5
    ld   [wBackupRomBank], A                           ;; 00:1064 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1067 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:106a $ea $00 $20
    ld   HL, wPlayerY                                  ;; 00:106d $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:1070 $2a
    ld   E, [HL]                                       ;; 00:1071 $5e
    ld   D, A                                          ;; 00:1072 $57
    call divide_DE_8                                   ;; 00:1073 $cd $b4 $06
    ld   HL, wD5A7                                     ;; 00:1076 $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:1079 $2a
    ld   C, [HL]                                       ;; 00:107a $4e
    ld   B, A                                          ;; 00:107b $47
    call call_00_0555                                  ;; 00:107c $cd $55 $05
    ld   A, H                                          ;; 00:107f $7c
    ld   [wD5C8], A                                    ;; 00:1080 $ea $c8 $d5
    ld   A, L                                          ;; 00:1083 $7d
    ld   [wD5C9], A                                    ;; 00:1084 $ea $c9 $d5
    ld   D, H                                          ;; 00:1087 $54
    ld   E, L                                          ;; 00:1088 $5d
    ld   HL, wPlayerX                                  ;; 00:1089 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:108c $2a
    ld   L, [HL]                                       ;; 00:108d $6e
    ld   H, A                                          ;; 00:108e $67
    call divide_HL_8                                   ;; 00:108f $cd $a7 $06
    ld   A, H                                          ;; 00:1092 $7c
    ld   [wD5C6], A                                    ;; 00:1093 $ea $c6 $d5
    ld   A, L                                          ;; 00:1096 $7d
    ld   [wD5C7], A                                    ;; 00:1097 $ea $c7 $d5
    add  HL, DE                                        ;; 00:109a $19
    ld   D, H                                          ;; 00:109b $54
    ld   E, L                                          ;; 00:109c $5d
    ld   HL, wD5A1                                     ;; 00:109d $21 $a1 $d5
    ld   A, [HL+]                                      ;; 00:10a0 $2a
    ld   L, [HL]                                       ;; 00:10a1 $6e
    ld   H, A                                          ;; 00:10a2 $67
    add  HL, DE                                        ;; 00:10a3 $19
    ld   A, [HL]                                       ;; 00:10a4 $7e
    cp   A, $40                                        ;; 00:10a5 $fe $40
    call NC, call_00_1156                              ;; 00:10a7 $d4 $56 $11
    cp   A, $20                                        ;; 00:10aa $fe $20
    call NC, call_00_10f1                              ;; 00:10ac $d4 $f1 $10
    cp   A, $0b                                        ;; 00:10af $fe $0b
    call Z, call_00_1194                               ;; 00:10b1 $cc $94 $11
    inc  HL                                            ;; 00:10b4 $23
    ld   A, [HL]                                       ;; 00:10b5 $7e
    cp   A, $40                                        ;; 00:10b6 $fe $40
    call NC, call_00_1156                              ;; 00:10b8 $d4 $56 $11
    cp   A, $20                                        ;; 00:10bb $fe $20
    call NC, call_00_10f1                              ;; 00:10bd $d4 $f1 $10
    cp   A, $0b                                        ;; 00:10c0 $fe $0b
    call Z, call_00_1194                               ;; 00:10c2 $cc $94 $11
    dec  HL                                            ;; 00:10c5 $2b
    ld   A, [wD5A7]                                    ;; 00:10c6 $fa $a7 $d5
    ld   D, A                                          ;; 00:10c9 $57
    ld   A, [wD5A8]                                    ;; 00:10ca $fa $a8 $d5
    ld   E, A                                          ;; 00:10cd $5f
    add  HL, DE                                        ;; 00:10ce $19
    ld   A, [HL]                                       ;; 00:10cf $7e
    cp   A, $40                                        ;; 00:10d0 $fe $40
    call NC, call_00_1156                              ;; 00:10d2 $d4 $56 $11
    cp   A, $20                                        ;; 00:10d5 $fe $20
    call NC, call_00_10f1                              ;; 00:10d7 $d4 $f1 $10
    cp   A, $0b                                        ;; 00:10da $fe $0b
    call Z, call_00_1194                               ;; 00:10dc $cc $94 $11
    inc  HL                                            ;; 00:10df $23
    ld   A, [HL]                                       ;; 00:10e0 $7e
    cp   A, $40                                        ;; 00:10e1 $fe $40
    call NC, call_00_1156                              ;; 00:10e3 $d4 $56 $11
    cp   A, $20                                        ;; 00:10e6 $fe $20
    call NC, call_00_10f1                              ;; 00:10e8 $d4 $f1 $10
    cp   A, $0b                                        ;; 00:10eb $fe $0b
    call Z, call_00_1194                               ;; 00:10ed $cc $94 $11
    ret                                                ;; 00:10f0 $c9

call_00_10f1:
    cp   A, $40                                        ;; 00:10f1 $fe $40
    ret  NC                                            ;; 00:10f3 $d0
    sub  A, $20                                        ;; 00:10f4 $d6 $20
    add  A, A                                          ;; 00:10f6 $87
    add  A, A                                          ;; 00:10f7 $87
    add  A, A                                          ;; 00:10f8 $87
    ld   C, A                                          ;; 00:10f9 $4f
    ld   B, $00                                        ;; 00:10fa $06 $00
    ld   DE, data_03_6681 ;@=ptr bank=3                ;; 00:10fc $11 $81 $66
    call call_00_0fc4                                  ;; 00:10ff $cd $c4 $0f
    add  HL, BC                                        ;; 00:1102 $09
    ld   DE, wCurrentMap                               ;; 00:1103 $11 $42 $c1
    ld   B, $06                                        ;; 00:1106 $06 $06
    call memcopySmall                                  ;; 00:1108 $cd $91 $05
    ld   A, [wD58B]                                    ;; 00:110b $fa $8b $d5
    cp   A, $05                                        ;; 00:110e $fe $05
    jr   NZ, .jr_00_1119                               ;; 00:1110 $20 $07
    ld   A, $01                                        ;; 00:1112 $3e $01
    ld   [wD318], A                                    ;; 00:1114 $ea $18 $d3
    jr   .jr_00_111d                                   ;; 00:1117 $18 $04
.jr_00_1119:
    ld   A, [HL]                                       ;; 00:1119 $7e
    ld   [wC148], A                                    ;; 00:111a $ea $48 $c1
.jr_00_111d:
    ld   A, [wD5B3]                                    ;; 00:111d $fa $b3 $d5
    cp   A, $01                                        ;; 00:1120 $fe $01
    jr   C, .jr_00_112d                                ;; 00:1122 $38 $09
    jr   Z, .jr_00_1128                                ;; 00:1124 $28 $02
    jr   .jr_00_1143                                   ;; 00:1126 $18 $1b
.jr_00_1128:
    ld   DE, wC14F                                     ;; 00:1128 $11 $4f $c1
    jr   .jr_00_113b                                   ;; 00:112b $18 $0e
.jr_00_112d:
    ld   DE, wC14F                                     ;; 00:112d $11 $4f $c1
    ld   HL, wCurrentMap                               ;; 00:1130 $21 $42 $c1
    ld   B, $06                                        ;; 00:1133 $06 $06
    call memcopySmall                                  ;; 00:1135 $cd $91 $05
    ld   DE, wC149                                     ;; 00:1138 $11 $49 $c1
.jr_00_113b:
    ld   HL, wCurrentMap                               ;; 00:113b $21 $42 $c1
    ld   B, $06                                        ;; 00:113e $06 $06
    call memcopySmall                                  ;; 00:1140 $cd $91 $05
.jr_00_1143:
    ld   A, $8f                                        ;; 00:1143 $3e $8f
    ld   [wD5D2], A                                    ;; 00:1145 $ea $d2 $d5
    xor  A, A                                          ;; 00:1148 $af
    ld   [wD58B], A                                    ;; 00:1149 $ea $8b $d5
    ld   [wD58C], A                                    ;; 00:114c $ea $8c $d5
    ld   [wD5C4], A                                    ;; 00:114f $ea $c4 $d5
    ld   B, $01                                        ;; 00:1152 $06 $01
    pop  HL                                            ;; 00:1154 $e1
    ret                                                ;; 00:1155 $c9

call_00_1156:
    ld   C, A                                          ;; 00:1156 $4f
    ld   A, [wD58B]                                    ;; 00:1157 $fa $8b $d5
    cp   A, $05                                        ;; 00:115a $fe $05
    ld   A, C                                          ;; 00:115c $79
    ret  Z                                             ;; 00:115d $c8
    cp   A, $47                                        ;; 00:115e $fe $47
    ret  NC                                            ;; 00:1160 $d0
    ld   [wD837], A                                    ;; 00:1161 $ea $37 $d8
    sub  A, $40                                        ;; 00:1164 $d6 $40
    ld   C, A                                          ;; 00:1166 $4f
    ld   B, $00                                        ;; 00:1167 $06 $00
    ld   DE, data_03_609a ;@=ptr bank=3                ;; 00:1169 $11 $9a $60
    call call_00_0fc4                                  ;; 00:116c $cd $c4 $0f
    add  HL, BC                                        ;; 00:116f $09
    ld   C, [HL]                                       ;; 00:1170 $4e
    ld   B, $00                                        ;; 00:1171 $06 $00
    ld   HL, wC155                                     ;; 00:1173 $21 $55 $c1
    add  HL, BC                                        ;; 00:1176 $09
    ld   A, [HL-]                                      ;; 00:1177 $3a
    and  A, A                                          ;; 00:1178 $a7
    jr   NZ, .jr_00_118e                               ;; 00:1179 $20 $13
    ld   A, [HL+]                                      ;; 00:117b $2a
    and  A, A                                          ;; 00:117c $a7
    jr   Z, .jr_00_118e                                ;; 00:117d $28 $0f
    ld   [HL], $01                                     ;; 00:117f $36 $01
    ld   A, C                                          ;; 00:1181 $79
    call call_00_1301                                  ;; 00:1182 $cd $01 $13
    ld   A, $05                                        ;; 00:1185 $3e $05
    ld   [wD58B], A                                    ;; 00:1187 $ea $8b $d5
    ld   B, $01                                        ;; 00:118a $06 $01
    pop  HL                                            ;; 00:118c $e1
    ret                                                ;; 00:118d $c9
.jr_00_118e:
    ld   B, $00                                        ;; 00:118e $06 $00
    ld   A, [wD837]                                    ;; 00:1190 $fa $37 $d8
    ret                                                ;; 00:1193 $c9

call_00_1194:
    ld   C, A                                          ;; 00:1194 $4f
    ld   A, [wD58B]                                    ;; 00:1195 $fa $8b $d5
    cp   A, $05                                        ;; 00:1198 $fe $05
    ld   A, C                                          ;; 00:119a $79
    ret  Z                                             ;; 00:119b $c8
    ld   A, $05                                        ;; 00:119c $3e $05
    ld   [wD58B], A                                    ;; 00:119e $ea $8b $d5
    call call_00_133b                                  ;; 00:11a1 $cd $3b $13
    pop  HL                                            ;; 00:11a4 $e1
    ld   B, $01                                        ;; 00:11a5 $06 $01
    ret                                                ;; 00:11a7 $c9

call_00_11a8:
    ld   [wD1E8], A                                    ;; 00:11a8 $ea $e8 $d1
    ld   A, $01                                        ;; 00:11ab $3e $01
    ld   [$2000], A                                    ;; 00:11ad $ea $00 $20
    call call_01_403b                                  ;; 00:11b0 $cd $3b $40
    ld   A, [wCurrentRomBank]                          ;; 00:11b3 $fa $b7 $d5
    ld   [$2000], A                                    ;; 00:11b6 $ea $00 $20
    ret                                                ;; 00:11b9 $c9
    db   $3e, $01, $ea, $00, $20, $cd, $09, $41        ;; 00:11ba ????????
    db   $fa, $b7, $d5, $ea, $00, $20, $c9             ;; 00:11c2 ???????

call_00_11c9:
    push HL                                            ;; 00:11c9 $e5
    ld   A, [wD2BA]                                    ;; 00:11ca $fa $ba $d2
    cp   A, $05                                        ;; 00:11cd $fe $05
    jr   NC, .jr_00_11df                               ;; 00:11cf $30 $0e
    ld   A, [wD2B9]                                    ;; 00:11d1 $fa $b9 $d2
    and  A, $7f                                        ;; 00:11d4 $e6 $7f
    cp   A, $0c                                        ;; 00:11d6 $fe $0c
    jr   C, .jr_00_11df                                ;; 00:11d8 $38 $05
    ld   A, $02                                        ;; 00:11da $3e $02
    ld   [$2000], A                                    ;; 00:11dc $ea $00 $20
.jr_00_11df:
    ld   BC, $06                                       ;; 00:11df $01 $06 $00
    add  HL, BC                                        ;; 00:11e2 $09
    ld   A, [HL+]                                      ;; 00:11e3 $2a
    ld   B, [HL]                                       ;; 00:11e4 $46
    ld   C, A                                          ;; 00:11e5 $4f
    ld   A, [BC]                                       ;; 00:11e6 $0a
    inc  BC                                            ;; 00:11e7 $03
    ld   [HL], B                                       ;; 00:11e8 $70
    dec  HL                                            ;; 00:11e9 $2b
    ld   [HL], C                                       ;; 00:11ea $71
    ld   HL, $2000                                     ;; 00:11eb $21 $00 $20
    ld   [HL], $01                                     ;; 00:11ee $36 $01
    pop  HL                                            ;; 00:11f0 $e1
    ret                                                ;; 00:11f1 $c9

call_00_11f2:
    ld   A, [wD2B4]                                    ;; 00:11f2 $fa $b4 $d2
    bit  7, A                                          ;; 00:11f5 $cb $7f
    jr   Z, .jr_00_1204                                ;; 00:11f7 $28 $0b
    and  A, $7f                                        ;; 00:11f9 $e6 $7f
    cp   A, $0c                                        ;; 00:11fb $fe $0c
    jr   C, .jr_00_1204                                ;; 00:11fd $38 $05
    ld   A, $02                                        ;; 00:11ff $3e $02
    ld   [$2000], A                                    ;; 00:1201 $ea $00 $20
.jr_00_1204:
    ld   B, $04                                        ;; 00:1204 $06 $04
.jr_00_1206:
    push BC                                            ;; 00:1206 $c5
    ld   C, $e1                                        ;; 00:1207 $0e $e1
    ld   A, [DE]                                       ;; 00:1209 $1a
    inc  DE                                            ;; 00:120a $13
    and  A, A                                          ;; 00:120b $a7
    jr   NZ, .jr_00_1210                               ;; 00:120c $20 $02
    ld   C, $00                                        ;; 00:120e $0e $00
.jr_00_1210:
    ld   [HL], C                                       ;; 00:1210 $71
    ld   BC, $06                                       ;; 00:1211 $01 $06 $00
    add  HL, BC                                        ;; 00:1214 $09
    ld   [HL+], A                                      ;; 00:1215 $22
    ld   A, [DE]                                       ;; 00:1216 $1a
    inc  DE                                            ;; 00:1217 $13
    ld   [HL+], A                                      ;; 00:1218 $22
    ld   BC, $0e                                       ;; 00:1219 $01 $0e $00
    add  HL, BC                                        ;; 00:121c $09
    ld   A, $01                                        ;; 00:121d $3e $01
    ld   [HL+], A                                      ;; 00:121f $22
    inc  HL                                            ;; 00:1220 $23
    pop  BC                                            ;; 00:1221 $c1
    dec  B                                             ;; 00:1222 $05
    jr   NZ, .jr_00_1206                               ;; 00:1223 $20 $e1
    ld   A, $01                                        ;; 00:1225 $3e $01
    ld   [$2000], A                                    ;; 00:1227 $ea $00 $20
    ret                                                ;; 00:122a $c9

call_00_122b:
    ld   A, $04                                        ;; 00:122b $3e $04
    ld   [wCurrentRomBank], A                          ;; 00:122d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1230 $ea $00 $20
    call call_04_567f                                  ;; 00:1233 $cd $7f $56
    ld   A, [wBackupRomBank]                           ;; 00:1236 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1239 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:123c $ea $00 $20
    ret                                                ;; 00:123f $c9

jp_00_1240:
    ld   A, $04                                        ;; 00:1240 $3e $04
    ld   [wCurrentRomBank], A                          ;; 00:1242 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1245 $ea $00 $20
    call call_04_5852 ;@bank 4                         ;; 00:1248 $cd $52 $58
    ld   A, [wBackupRomBank]                           ;; 00:124b $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:124e $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1251 $ea $00 $20
    ret                                                ;; 00:1254 $c9

call_00_1255:
    ldh  A, [hIsGBC]                                   ;; 00:1255 $f0 $fe
    and  A, A                                          ;; 00:1257 $a7
    jr   NZ, .jr_00_1261                               ;; 00:1258 $20 $07
    ld   A, $00                                        ;; 00:125a $3e $00
    ldh  [rBGP], A                                     ;; 00:125c $e0 $47
    ldh  [rOBP0], A                                    ;; 00:125e $e0 $48
    ret                                                ;; 00:1260 $c9
.jr_00_1261:
    ld   HL, wCDA5                                     ;; 00:1261 $21 $a5 $cd
    ld   A, $ff                                        ;; 00:1264 $3e $ff
    ld   B, $40                                        ;; 00:1266 $06 $40
    call memsetSmall                                   ;; 00:1268 $cd $98 $05
    ld   HL, wCDE5                                     ;; 00:126b $21 $e5 $cd
    ld   A, $ff                                        ;; 00:126e $3e $ff
    ld   B, $40                                        ;; 00:1270 $06 $40
    call memsetSmall                                   ;; 00:1272 $cd $98 $05
    ld   HL, wCDA5                                     ;; 00:1275 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 00:1278 $cd $9f $04
    ld   HL, wCDE5                                     ;; 00:127b $21 $e5 $cd
    call setSpritePaletteData                          ;; 00:127e $cd $ad $04
    ret                                                ;; 00:1281 $c9

call_00_1282:
    ld   A, [wMapHeaderStart]                          ;; 00:1282 $fa $90 $d5
    and  A, A                                          ;; 00:1285 $a7
    ret  Z                                             ;; 00:1286 $c8
    ld   A, [wC45B]                                    ;; 00:1287 $fa $5b $c4
    cp   A, $07                                        ;; 00:128a $fe $07
    ret  NZ                                            ;; 00:128c $c0
    ld   HL, wD82F                                     ;; 00:128d $21 $2f $d8
    inc  [HL]                                          ;; 00:1290 $34
    ret                                                ;; 00:1291 $c9

call_00_1292:
    ld   A, [wMapHeaderStart]                          ;; 00:1292 $fa $90 $d5
    and  A, A                                          ;; 00:1295 $a7
    ret  Z                                             ;; 00:1296 $c8
    ld   A, [wD58B]                                    ;; 00:1297 $fa $8b $d5
    cp   A, $01                                        ;; 00:129a $fe $01
    ret  NZ                                            ;; 00:129c $c0
    ld   HL, wD82F                                     ;; 00:129d $21 $2f $d8
    dec  [HL]                                          ;; 00:12a0 $35
    ret  NZ                                            ;; 00:12a1 $c0
    call call_00_064c                                  ;; 00:12a2 $cd $4c $06
    and  A, $0f                                        ;; 00:12a5 $e6 $0f
    add  A, $1c                                        ;; 00:12a7 $c6 $1c
    ld   HL, wC133                                     ;; 00:12a9 $21 $33 $c1
    bit  0, [HL]                                       ;; 00:12ac $cb $46
    jr   Z, .jr_00_12b2                                ;; 00:12ae $28 $02
    sla  A                                             ;; 00:12b0 $cb $27
.jr_00_12b2:
    ld   [wD82F], A                                    ;; 00:12b2 $ea $2f $d8
    pop  HL                                            ;; 00:12b5 $e1
    jp   call_00_12b9                                  ;; 00:12b6 $c3 $b9 $12

call_00_12b9:
    ld   A, $01                                        ;; 00:12b9 $3e $01
    ld   [wD5C4], A                                    ;; 00:12bb $ea $c4 $d5
    ld   A, $08                                        ;; 00:12be $3e $08
    ld   [wD58B], A                                    ;; 00:12c0 $ea $8b $d5
    xor  A, A                                          ;; 00:12c3 $af
    ld   [wD502], A                                    ;; 00:12c4 $ea $02 $d5
    ld   A, $01                                        ;; 00:12c7 $3e $01
    ld   [$2000], A                                    ;; 00:12c9 $ea $00 $20
    call call_01_4109 ;@bank 1                         ;; 00:12cc $cd $09 $41
    call call_01_4175 ;@bank 1                         ;; 00:12cf $cd $75 $41
    ld   A, $15                                        ;; 00:12d2 $3e $15
    call call_00_11a8                                  ;; 00:12d4 $cd $a8 $11
    ld   A, [wBackupRomBank]                           ;; 00:12d7 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:12da $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:12dd $ea $00 $20
    ret                                                ;; 00:12e0 $c9

jp_00_12e1:
    ld   A, $06                                        ;; 00:12e1 $3e $06
    ld   [wBackupRomBank], A                           ;; 00:12e3 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:12e6 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:12e9 $ea $00 $20
    ld   A, $01                                        ;; 00:12ec $3e $01
    ld   [wD377], A                                    ;; 00:12ee $ea $77 $d3
    ld   [wD4F9], A                                    ;; 00:12f1 $ea $f9 $d4
    ld   A, $04                                        ;; 00:12f4 $3e $04
    ld   [wMainGameState], A                           ;; 00:12f6 $ea $86 $d5
    ld   A, $87                                        ;; 00:12f9 $3e $87
    call call_00_11a8                                  ;; 00:12fb $cd $a8 $11
    jp   jp_06_57da                                    ;; 00:12fe $c3 $da $57

call_00_1301:
    ld   [wD2C3], A                                    ;; 00:1301 $ea $c3 $d2
    ld   A, $05                                        ;; 00:1304 $3e $05
    ld   [wCurrentRomBank], A                          ;; 00:1306 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1309 $ea $00 $20
    call call_05_4000                                  ;; 00:130c $cd $00 $40
    ld   A, $02                                        ;; 00:130f $3e $02
    ld   [wC53B], A                                    ;; 00:1311 $ea $3b $c5
    ld   A, $10                                        ;; 00:1314 $3e $10
    ld   [wC53C], A                                    ;; 00:1316 $ea $3c $c5
    ld   HL, wC53F                                     ;; 00:1319 $21 $3f $c5
    ld   B, $18                                        ;; 00:131c $06 $18
    ld   A, $ff                                        ;; 00:131e $3e $ff
    call memsetSmall                                   ;; 00:1320 $cd $98 $05
    xor  A, A                                          ;; 00:1323 $af
    ld   [wC557], A                                    ;; 00:1324 $ea $57 $c5
    ld   A, $01                                        ;; 00:1327 $3e $01
    ld   [wMainGameState], A                           ;; 00:1329 $ea $86 $d5
    ld   A, $07                                        ;; 00:132c $3e $07
    ld   [wD58B], A                                    ;; 00:132e $ea $8b $d5
    ld   A, [wBackupRomBank]                           ;; 00:1331 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1334 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1337 $ea $00 $20
    ret                                                ;; 00:133a $c9

call_00_133b:
    ld   A, $05                                        ;; 00:133b $3e $05
    ld   [wCurrentRomBank], A                          ;; 00:133d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1340 $ea $00 $20
    call call_05_403e ;@bank 5                         ;; 00:1343 $cd $3e $40
    ld   B, $00                                        ;; 00:1346 $06 $00
    ld   A, [wD58B]                                    ;; 00:1348 $fa $8b $d5
    cp   A, $01                                        ;; 00:134b $fe $01
    jr   Z, .jr_00_136e                                ;; 00:134d $28 $1f
    ld   A, $02                                        ;; 00:134f $3e $02
    ld   [wC53B], A                                    ;; 00:1351 $ea $3b $c5
    ld   A, $10                                        ;; 00:1354 $3e $10
    ld   [wC53C], A                                    ;; 00:1356 $ea $3c $c5
    ld   HL, wC53F                                     ;; 00:1359 $21 $3f $c5
    ld   B, $18                                        ;; 00:135c $06 $18
    ld   A, $ff                                        ;; 00:135e $3e $ff
    call memsetSmall                                   ;; 00:1360 $cd $98 $05
    xor  A, A                                          ;; 00:1363 $af
    ld   [wC557], A                                    ;; 00:1364 $ea $57 $c5
    ld   A, $01                                        ;; 00:1367 $3e $01
    ld   [wMainGameState], A                           ;; 00:1369 $ea $86 $d5
    ld   B, $01                                        ;; 00:136c $06 $01
.jr_00_136e:
    ld   A, [wBackupRomBank]                           ;; 00:136e $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1371 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1374 $ea $00 $20
    ret                                                ;; 00:1377 $c9

call_00_1378:
    ld   A, $07                                        ;; 00:1378 $3e $07
    ld   [wBackupRomBank], A                           ;; 00:137a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:137d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1380 $ea $00 $20
    jp   jp_07_4000                                    ;; 00:1383 $c3 $00 $40
    db   $3e, $11, $ea, $b5, $d5, $ea, $b7, $d5        ;; 00:1386 ????????
    db   $ea, $00, $20, $c3, $0f, $6d                  ;; 00:138e ??????

call_00_1394:
    ld   A, $03                                        ;; 00:1394 $3e $03
    ld   [wCurrentRomBank], A                          ;; 00:1396 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1399 $ea $00 $20
    ld   HL, wCurrentMap                               ;; 00:139c $21 $42 $c1
    ld   A, [HL+]                                      ;; 00:139f $2a
    ld   L, [HL]                                       ;; 00:13a0 $6e
    ld   H, A                                          ;; 00:13a1 $67
    add  HL, HL                                        ;; 00:13a2 $29
    ld   DE, $6488                                     ;; 00:13a3 $11 $88 $64
    add  HL, DE                                        ;; 00:13a6 $19
    ld   A, [HL+]                                      ;; 00:13a7 $2a
    ld   L, [HL]                                       ;; 00:13a8 $6e
    ld   H, A                                          ;; 00:13a9 $67
    ld   B, $00                                        ;; 00:13aa $06 $00
    add  HL, BC                                        ;; 00:13ac $09
    ld   C, [HL]                                       ;; 00:13ad $4e
    ld   A, [wBackupRomBank]                           ;; 00:13ae $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:13b1 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:13b4 $ea $00 $20
    ret                                                ;; 00:13b7 $c9

call_00_13b8:
    ld   A, $03                                        ;; 00:13b8 $3e $03
    ld   [wCurrentRomBank], A                          ;; 00:13ba $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:13bd $ea $00 $20
    ld   HL, wCurrentMap                               ;; 00:13c0 $21 $42 $c1
    ld   A, [HL+]                                      ;; 00:13c3 $2a
    ld   L, [HL]                                       ;; 00:13c4 $6e
    ld   H, A                                          ;; 00:13c5 $67
    add  HL, HL                                        ;; 00:13c6 $29
    ld   DE, data_03_624e                              ;; 00:13c7 $11 $4e $62
    add  HL, DE                                        ;; 00:13ca $19
    ld   A, [HL+]                                      ;; 00:13cb $2a
    ld   L, [HL]                                       ;; 00:13cc $6e
    ld   H, A                                          ;; 00:13cd $67
    ld   B, $00                                        ;; 00:13ce $06 $00
    add  HL, BC                                        ;; 00:13d0 $09
    ld   A, [HL+]                                      ;; 00:13d1 $2a
    ld   C, A                                          ;; 00:13d2 $4f
    ld   A, [HL+]                                      ;; 00:13d3 $2a
    ld   B, A                                          ;; 00:13d4 $47
    ld   A, [wBackupRomBank]                           ;; 00:13d5 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:13d8 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:13db $ea $00 $20
    ret                                                ;; 00:13de $c9

jp_00_13df:
    ld   A, $13                                        ;; 00:13df $3e $13
    ld   [wBackupRomBank], A                           ;; 00:13e1 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:13e4 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:13e7 $ea $00 $20
    ld   [wStackPointerBackup], SP                     ;; 00:13ea $08 $8e $d5
    ld   HL, wCB1E                                     ;; 00:13ed $21 $1e $cb
    ld   A, [HL+]                                      ;; 00:13f0 $2a
    ld   L, [HL]                                       ;; 00:13f1 $6e
    ld   H, A                                          ;; 00:13f2 $67
    ld   SP, HL                                        ;; 00:13f3 $f9
    ld   HL, wCB20                                     ;; 00:13f4 $21 $20 $cb
    ld   A, [HL+]                                      ;; 00:13f7 $2a
    ld   L, [HL]                                       ;; 00:13f8 $6e
    ld   H, A                                          ;; 00:13f9 $67
    ld   A, [wCB1D]                                    ;; 00:13fa $fa $1d $cb
    add  A, A                                          ;; 00:13fd $87
    add  A, A                                          ;; 00:13fe $87
    ld   B, A                                          ;; 00:13ff $47
.jr_00_1400:
    pop  DE                                            ;; 00:1400 $d1
    ld   A, E                                          ;; 00:1401 $7b
    ld   [HL+], A                                      ;; 00:1402 $22
    ld   A, D                                          ;; 00:1403 $7a
    ld   [HL+], A                                      ;; 00:1404 $22
    pop  DE                                            ;; 00:1405 $d1
    ld   A, E                                          ;; 00:1406 $7b
    ld   [HL+], A                                      ;; 00:1407 $22
    ld   A, D                                          ;; 00:1408 $7a
    ld   [HL+], A                                      ;; 00:1409 $22
    dec  B                                             ;; 00:140a $05
    jr   NZ, .jr_00_1400                               ;; 00:140b $20 $f3
    ld   HL, wStackPointerBackup                       ;; 00:140d $21 $8e $d5
    ld   A, [HL+]                                      ;; 00:1410 $2a
    ld   H, [HL]                                       ;; 00:1411 $66
    ld   L, A                                          ;; 00:1412 $6f
    ld   SP, HL                                        ;; 00:1413 $f9
    ret                                                ;; 00:1414 $c9

call_00_1415:
    ld   HL, wCEB2                                     ;; 00:1415 $21 $b2 $ce
    ld   A, [HL+]                                      ;; 00:1418 $2a
    ld   E, [HL]                                       ;; 00:1419 $5e
    ld   D, A                                          ;; 00:141a $57
    call divide_DE_8                                   ;; 00:141b $cd $b4 $06
    ld   HL, wCEB6                                     ;; 00:141e $21 $b6 $ce
    ld   A, [HL+]                                      ;; 00:1421 $2a
    ld   L, [HL]                                       ;; 00:1422 $6e
    ld   H, A                                          ;; 00:1423 $67
    add  HL, DE                                        ;; 00:1424 $19
    ld   A, H                                          ;; 00:1425 $7c
    ld   [wCEBE], A                                    ;; 00:1426 $ea $be $ce
    ld   A, L                                          ;; 00:1429 $7d
    ld   [wCEBF], A                                    ;; 00:142a $ea $bf $ce
    ld   HL, wCEB4                                     ;; 00:142d $21 $b4 $ce
    ld   A, [HL+]                                      ;; 00:1430 $2a
    ld   E, [HL]                                       ;; 00:1431 $5e
    ld   D, A                                          ;; 00:1432 $57
    call divide_DE_8                                   ;; 00:1433 $cd $b4 $06
    dec  DE                                            ;; 00:1436 $1b
    ld   HL, wCEC0                                     ;; 00:1437 $21 $c0 $ce
    ld   A, D                                          ;; 00:143a $7a
    ld   [HL+], A                                      ;; 00:143b $22
    ld   [HL], E                                       ;; 00:143c $73
    ld   HL, wCEBE                                     ;; 00:143d $21 $be $ce
    ld   A, [HL+]                                      ;; 00:1440 $2a
    ld   C, [HL]                                       ;; 00:1441 $4e
    ld   B, A                                          ;; 00:1442 $47
    ld   A, [wCEBA]                                    ;; 00:1443 $fa $ba $ce
    cp   A, B                                          ;; 00:1446 $b8
    jr   NZ, .jr_00_1450                               ;; 00:1447 $20 $07
    ld   A, [wCEBB]                                    ;; 00:1449 $fa $bb $ce
    cp   A, C                                          ;; 00:144c $b9
    jr   NZ, .jr_00_1450                               ;; 00:144d $20 $01
    ret                                                ;; 00:144f $c9
.jr_00_1450:
    ld   A, $01                                        ;; 00:1450 $3e $01
    ld   [wCEB0], A                                    ;; 00:1452 $ea $b0 $ce
    ld   A, [wCEBE]                                    ;; 00:1455 $fa $be $ce
    ld   [wCEBA], A                                    ;; 00:1458 $ea $ba $ce
    ld   A, [wCEBF]                                    ;; 00:145b $fa $bf $ce
    ld   [wCEBB], A                                    ;; 00:145e $ea $bb $ce
    ld   A, [wCEBF]                                    ;; 00:1461 $fa $bf $ce
    and  A, $1f                                        ;; 00:1464 $e6 $1f
    ld   C, A                                          ;; 00:1466 $4f
    ld   B, $98                                        ;; 00:1467 $06 $98
    ld   A, [wCEC1]                                    ;; 00:1469 $fa $c1 $ce
    and  A, $1f                                        ;; 00:146c $e6 $1f
    ld   L, A                                          ;; 00:146e $6f
    ld   H, $00                                        ;; 00:146f $26 $00
    call multiply_HL_32                                ;; 00:1471 $cd $a1 $06
    add  HL, BC                                        ;; 00:1474 $09
    ld   A, H                                          ;; 00:1475 $7c
    ld   [wCED7], A                                    ;; 00:1476 $ea $d7 $ce
    ld   A, L                                          ;; 00:1479 $7d
    ld   [wCED8], A                                    ;; 00:147a $ea $d8 $ce
    ld   HL, wCEC0                                     ;; 00:147d $21 $c0 $ce
    ld   A, [HL+]                                      ;; 00:1480 $2a
    ld   C, [HL]                                       ;; 00:1481 $4e
    ld   B, A                                          ;; 00:1482 $47
    ld   HL, wD5A7                                     ;; 00:1483 $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:1486 $2a
    ld   E, [HL]                                       ;; 00:1487 $5e
    ld   D, A                                          ;; 00:1488 $57
    call call_00_0555                                  ;; 00:1489 $cd $55 $05
    ld   A, [wD5B0]                                    ;; 00:148c $fa $b0 $d5
    ld   D, A                                          ;; 00:148f $57
    ld   A, [wD5B1]                                    ;; 00:1490 $fa $b1 $d5
    ld   E, A                                          ;; 00:1493 $5f
    dec  DE                                            ;; 00:1494 $1b
    ld   A, D                                          ;; 00:1495 $7a
    and  A, H                                          ;; 00:1496 $a4
    ld   [wCEC8], A                                    ;; 00:1497 $ea $c8 $ce
    ld   A, E                                          ;; 00:149a $7b
    and  A, L                                          ;; 00:149b $a5
    ld   [wCEC9], A                                    ;; 00:149c $ea $c9 $ce
    ld   HL, wD5A7                                     ;; 00:149f $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:14a2 $2a
    ld   C, [HL]                                       ;; 00:14a3 $4e
    ld   B, A                                          ;; 00:14a4 $47
    dec  BC                                            ;; 00:14a5 $0b
    ld   A, [wCEBE]                                    ;; 00:14a6 $fa $be $ce
    and  A, B                                          ;; 00:14a9 $a0
    ld   [wCEC6], A                                    ;; 00:14aa $ea $c6 $ce
    ld   B, A                                          ;; 00:14ad $47
    ld   A, [wCEBF]                                    ;; 00:14ae $fa $bf $ce
    and  A, C                                          ;; 00:14b1 $a1
    ld   [wCEC7], A                                    ;; 00:14b2 $ea $c7 $ce
    ld   C, A                                          ;; 00:14b5 $4f
    ld   HL, wD59D                                     ;; 00:14b6 $21 $9d $d5
    ld   A, [HL+]                                      ;; 00:14b9 $2a
    ld   L, [HL]                                       ;; 00:14ba $6e
    ld   H, A                                          ;; 00:14bb $67
    add  HL, BC                                        ;; 00:14bc $09
    ld   A, H                                          ;; 00:14bd $7c
    ld   [wCECE], A                                    ;; 00:14be $ea $ce $ce
    ld   A, L                                          ;; 00:14c1 $7d
    ld   [wCECF], A                                    ;; 00:14c2 $ea $cf $ce
    ld   HL, wD5A1                                     ;; 00:14c5 $21 $a1 $d5
    ld   A, [HL+]                                      ;; 00:14c8 $2a
    ld   L, [HL]                                       ;; 00:14c9 $6e
    ld   H, A                                          ;; 00:14ca $67
    add  HL, BC                                        ;; 00:14cb $09
    ld   A, H                                          ;; 00:14cc $7c
    ld   [wCED2], A                                    ;; 00:14cd $ea $d2 $ce
    ld   A, L                                          ;; 00:14d0 $7d
    ld   [wCED3], A                                    ;; 00:14d1 $ea $d3 $ce
    ld   HL, wD59F                                     ;; 00:14d4 $21 $9f $d5
    ld   A, [HL+]                                      ;; 00:14d7 $2a
    ld   L, [HL]                                       ;; 00:14d8 $6e
    ld   H, A                                          ;; 00:14d9 $67
    add  HL, BC                                        ;; 00:14da $09
    ld   A, H                                          ;; 00:14db $7c
    ld   [wCED0], A                                    ;; 00:14dc $ea $d0 $ce
    ld   A, L                                          ;; 00:14df $7d
    ld   [wCED1], A                                    ;; 00:14e0 $ea $d1 $ce
    ret                                                ;; 00:14e3 $c9

call_00_14e4:
    ld   A, [wCEB0]                                    ;; 00:14e4 $fa $b0 $ce
    and  A, A                                          ;; 00:14e7 $a7
    ret  Z                                             ;; 00:14e8 $c8
    ld   B, $14                                        ;; 00:14e9 $06 $14
    ld   C, $00                                        ;; 00:14eb $0e $00
.jp_00_14ed:
    ld   HL, wCEC8                                     ;; 00:14ed $21 $c8 $ce
    ld   A, [HL+]                                      ;; 00:14f0 $2a
    ld   E, [HL]                                       ;; 00:14f1 $5e
    ld   D, A                                          ;; 00:14f2 $57
    call call_00_1749                                  ;; 00:14f3 $cd $49 $17
    ld   A, [wD594]                                    ;; 00:14f6 $fa $94 $d5
    ld   [wBackupRomBank], A                           ;; 00:14f9 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:14fc $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:14ff $ea $00 $20
    ld   HL, wCECE                                     ;; 00:1502 $21 $ce $ce
    ld   A, [HL+]                                      ;; 00:1505 $2a
    ld   E, [HL]                                       ;; 00:1506 $5e
    ld   D, A                                          ;; 00:1507 $57
    ld   HL, wCEC8                                     ;; 00:1508 $21 $c8 $ce
    ld   A, [HL+]                                      ;; 00:150b $2a
    ld   L, [HL]                                       ;; 00:150c $6e
    ld   H, A                                          ;; 00:150d $67
    add  HL, DE                                        ;; 00:150e $19
    ld   A, [HL]                                       ;; 00:150f $7e
    ld   HL, wCEDB                                     ;; 00:1510 $21 $db $ce
    ld   E, C                                          ;; 00:1513 $59
    ld   D, $00                                        ;; 00:1514 $16 $00
    add  HL, DE                                        ;; 00:1516 $19
    ld   [HL], A                                       ;; 00:1517 $77
    ldh  A, [hIsGBC]                                   ;; 00:1518 $f0 $fe
    and  A, A                                          ;; 00:151a $a7
    jr   Z, .jr_00_153f                                ;; 00:151b $28 $22
    ld   A, [wD596]                                    ;; 00:151d $fa $96 $d5
    ld   [wBackupRomBank], A                           ;; 00:1520 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1523 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1526 $ea $00 $20
    ld   HL, wCED0                                     ;; 00:1529 $21 $d0 $ce
    ld   A, [HL+]                                      ;; 00:152c $2a
    ld   E, [HL]                                       ;; 00:152d $5e
    ld   D, A                                          ;; 00:152e $57
    ld   HL, wCEC8                                     ;; 00:152f $21 $c8 $ce
    ld   A, [HL+]                                      ;; 00:1532 $2a
    ld   L, [HL]                                       ;; 00:1533 $6e
    ld   H, A                                          ;; 00:1534 $67
    add  HL, DE                                        ;; 00:1535 $19
    ld   A, [HL]                                       ;; 00:1536 $7e
    ld   HL, wCF05                                     ;; 00:1537 $21 $05 $cf
    ld   E, C                                          ;; 00:153a $59
    ld   D, $00                                        ;; 00:153b $16 $00
    add  HL, DE                                        ;; 00:153d $19
    ld   [HL], A                                       ;; 00:153e $77
.jr_00_153f:
    ld   HL, wD5A7                                     ;; 00:153f $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:1542 $2a
    ld   E, [HL]                                       ;; 00:1543 $5e
    ld   D, A                                          ;; 00:1544 $57
    ld   HL, wCEC8                                     ;; 00:1545 $21 $c8 $ce
    ld   A, [HL+]                                      ;; 00:1548 $2a
    ld   L, [HL]                                       ;; 00:1549 $6e
    ld   H, A                                          ;; 00:154a $67
    add  HL, DE                                        ;; 00:154b $19
    ld   A, [wD5B0]                                    ;; 00:154c $fa $b0 $d5
    ld   D, A                                          ;; 00:154f $57
    ld   A, [wD5B1]                                    ;; 00:1550 $fa $b1 $d5
    ld   E, A                                          ;; 00:1553 $5f
    dec  DE                                            ;; 00:1554 $1b
    ld   A, H                                          ;; 00:1555 $7c
    and  A, D                                          ;; 00:1556 $a2
    ld   [wCEC8], A                                    ;; 00:1557 $ea $c8 $ce
    ld   A, L                                          ;; 00:155a $7d
    and  A, E                                          ;; 00:155b $a3
    ld   [wCEC9], A                                    ;; 00:155c $ea $c9 $ce
    inc  C                                             ;; 00:155f $0c
    dec  B                                             ;; 00:1560 $05
    jp   NZ, .jp_00_14ed                               ;; 00:1561 $c2 $ed $14
    ret                                                ;; 00:1564 $c9

call_00_1565:
    ld   HL, wCEB0                                     ;; 00:1565 $21 $b0 $ce
    ld   A, [HL]                                       ;; 00:1568 $7e
    and  A, A                                          ;; 00:1569 $a7
    ret  Z                                             ;; 00:156a $c8
    ld   [HL], $00                                     ;; 00:156b $36 $00
    ldh  A, [hIsGBC]                                   ;; 00:156d $f0 $fe
    and  A, A                                          ;; 00:156f $a7
    jr   Z, .jr_00_1584                                ;; 00:1570 $28 $12
    ld   A, $01                                        ;; 00:1572 $3e $01
    ldh  [rVBK], A                                     ;; 00:1574 $e0 $4f
    ld   B, $14                                        ;; 00:1576 $06 $14
    ld   HL, wCED7                                     ;; 00:1578 $21 $d7 $ce
    ld   A, [HL+]                                      ;; 00:157b $2a
    ld   E, [HL]                                       ;; 00:157c $5e
    ld   D, A                                          ;; 00:157d $57
    ld   HL, wCF05                                     ;; 00:157e $21 $05 $cf
    call call_00_1596                                  ;; 00:1581 $cd $96 $15
.jr_00_1584:
    ld   A, $00                                        ;; 00:1584 $3e $00
    ldh  [rVBK], A                                     ;; 00:1586 $e0 $4f
    ld   B, $14                                        ;; 00:1588 $06 $14
    ld   HL, wCED7                                     ;; 00:158a $21 $d7 $ce
    ld   A, [HL+]                                      ;; 00:158d $2a
    ld   E, [HL]                                       ;; 00:158e $5e
    ld   D, A                                          ;; 00:158f $57
    ld   HL, wCEDB                                     ;; 00:1590 $21 $db $ce
    jp   call_00_1596                                  ;; 00:1593 $c3 $96 $15

call_00_1596:
    ld   A, [HL+]                                      ;; 00:1596 $2a
    ld   [DE], A                                       ;; 00:1597 $12
    ld   A, $20                                        ;; 00:1598 $3e $20
    add  A, E                                          ;; 00:159a $83
    ld   E, A                                          ;; 00:159b $5f
    ld   A, $00                                        ;; 00:159c $3e $00
    adc  A, D                                          ;; 00:159e $8a
    and  A, $9b                                        ;; 00:159f $e6 $9b
    ld   D, A                                          ;; 00:15a1 $57
    dec  B                                             ;; 00:15a2 $05
    jr   NZ, call_00_1596                              ;; 00:15a3 $20 $f1
    ret                                                ;; 00:15a5 $c9

call_00_15a6:
    ld   HL, wCEB2                                     ;; 00:15a6 $21 $b2 $ce
    ld   A, [HL+]                                      ;; 00:15a9 $2a
    ld   E, [HL]                                       ;; 00:15aa $5e
    ld   D, A                                          ;; 00:15ab $57
    call divide_DE_8                                   ;; 00:15ac $cd $b4 $06
    dec  DE                                            ;; 00:15af $1b
    ld   HL, wCEBE                                     ;; 00:15b0 $21 $be $ce
    ld   A, D                                          ;; 00:15b3 $7a
    ld   [HL+], A                                      ;; 00:15b4 $22
    ld   [HL], E                                       ;; 00:15b5 $73
    ld   HL, wCEB8                                     ;; 00:15b6 $21 $b8 $ce
    ld   A, [HL+]                                      ;; 00:15b9 $2a
    ld   C, [HL]                                       ;; 00:15ba $4e
    ld   B, A                                          ;; 00:15bb $47
    ld   HL, wCEB4                                     ;; 00:15bc $21 $b4 $ce
    ld   A, [HL+]                                      ;; 00:15bf $2a
    ld   L, [HL]                                       ;; 00:15c0 $6e
    ld   H, A                                          ;; 00:15c1 $67
    call divide_HL_8                                   ;; 00:15c2 $cd $a7 $06
    add  HL, BC                                        ;; 00:15c5 $09
    ld   A, H                                          ;; 00:15c6 $7c
    ld   [wCEC0], A                                    ;; 00:15c7 $ea $c0 $ce
    ld   A, L                                          ;; 00:15ca $7d
    ld   [wCEC1], A                                    ;; 00:15cb $ea $c1 $ce
    ld   HL, wCEC0                                     ;; 00:15ce $21 $c0 $ce
    ld   A, [HL+]                                      ;; 00:15d1 $2a
    ld   C, [HL]                                       ;; 00:15d2 $4e
    ld   B, A                                          ;; 00:15d3 $47
    ld   HL, wCEBC                                     ;; 00:15d4 $21 $bc $ce
    ld   A, [HL+]                                      ;; 00:15d7 $2a
    cp   A, B                                          ;; 00:15d8 $b8
    jr   NZ, .jr_00_15e0                               ;; 00:15d9 $20 $05
    ld   A, [HL]                                       ;; 00:15db $7e
    cp   A, C                                          ;; 00:15dc $b9
    jr   NZ, .jr_00_15e0                               ;; 00:15dd $20 $01
    ret                                                ;; 00:15df $c9
.jr_00_15e0:
    ld   A, $01                                        ;; 00:15e0 $3e $01
    ld   [wCEB1], A                                    ;; 00:15e2 $ea $b1 $ce
    ld   A, [wCEC0]                                    ;; 00:15e5 $fa $c0 $ce
    ld   [wCEBC], A                                    ;; 00:15e8 $ea $bc $ce
    ld   A, [wCEC1]                                    ;; 00:15eb $fa $c1 $ce
    ld   [wCEBD], A                                    ;; 00:15ee $ea $bd $ce
    ld   A, [wCEBF]                                    ;; 00:15f1 $fa $bf $ce
    and  A, $1f                                        ;; 00:15f4 $e6 $1f
    ld   C, A                                          ;; 00:15f6 $4f
    ld   B, $98                                        ;; 00:15f7 $06 $98
    ld   A, [wCEC1]                                    ;; 00:15f9 $fa $c1 $ce
    and  A, $1f                                        ;; 00:15fc $e6 $1f
    ld   L, A                                          ;; 00:15fe $6f
    ld   H, $00                                        ;; 00:15ff $26 $00
    call multiply_HL_32                                ;; 00:1601 $cd $a1 $06
    push HL                                            ;; 00:1604 $e5
    add  HL, BC                                        ;; 00:1605 $09
    ld   A, H                                          ;; 00:1606 $7c
    ld   [wCED9], A                                    ;; 00:1607 $ea $d9 $ce
    ld   A, L                                          ;; 00:160a $7d
    ld   [wCEDA], A                                    ;; 00:160b $ea $da $ce
    pop  BC                                            ;; 00:160e $c1
    ld   HL, $9800                                     ;; 00:160f $21 $00 $98
    add  HL, BC                                        ;; 00:1612 $09
    ld   A, H                                          ;; 00:1613 $7c
    ld   [wCED5], A                                    ;; 00:1614 $ea $d5 $ce
    ld   A, L                                          ;; 00:1617 $7d
    ld   [wCED6], A                                    ;; 00:1618 $ea $d6 $ce
    ld   A, $1f                                        ;; 00:161b $3e $1f
    add  A, L                                          ;; 00:161d $85
    ld   [wCED4], A                                    ;; 00:161e $ea $d4 $ce
    ld   HL, wD5A7                                     ;; 00:1621 $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:1624 $2a
    ld   L, [HL]                                       ;; 00:1625 $6e
    ld   H, A                                          ;; 00:1626 $67
    dec  HL                                            ;; 00:1627 $2b
    ld   A, [wCEBE]                                    ;; 00:1628 $fa $be $ce
    and  A, H                                          ;; 00:162b $a4
    ld   [wCEC6], A                                    ;; 00:162c $ea $c6 $ce
    ld   A, [wCEBF]                                    ;; 00:162f $fa $bf $ce
    and  A, L                                          ;; 00:1632 $a5
    ld   [wCEC7], A                                    ;; 00:1633 $ea $c7 $ce
    ld   HL, wD5A7                                     ;; 00:1636 $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:1639 $2a
    ld   C, [HL]                                       ;; 00:163a $4e
    ld   B, A                                          ;; 00:163b $47
    ld   HL, wCEC0                                     ;; 00:163c $21 $c0 $ce
    ld   A, [HL+]                                      ;; 00:163f $2a
    ld   E, [HL]                                       ;; 00:1640 $5e
    ld   D, A                                          ;; 00:1641 $57
    call call_00_0555                                  ;; 00:1642 $cd $55 $05
    ld   B, H                                          ;; 00:1645 $44
    ld   C, L                                          ;; 00:1646 $4d
    ld   HL, wD5B0                                     ;; 00:1647 $21 $b0 $d5
    ld   A, [HL+]                                      ;; 00:164a $2a
    ld   E, [HL]                                       ;; 00:164b $5e
    ld   D, A                                          ;; 00:164c $57
    dec  DE                                            ;; 00:164d $1b
    ld   A, D                                          ;; 00:164e $7a
    and  A, B                                          ;; 00:164f $a0
    ld   [wCEC8], A                                    ;; 00:1650 $ea $c8 $ce
    ld   B, A                                          ;; 00:1653 $47
    ld   A, E                                          ;; 00:1654 $7b
    and  A, C                                          ;; 00:1655 $a1
    ld   [wCEC9], A                                    ;; 00:1656 $ea $c9 $ce
    ld   C, A                                          ;; 00:1659 $4f
    ld   HL, wD59D                                     ;; 00:165a $21 $9d $d5
    ld   A, [HL+]                                      ;; 00:165d $2a
    ld   L, [HL]                                       ;; 00:165e $6e
    ld   H, A                                          ;; 00:165f $67
    add  HL, BC                                        ;; 00:1660 $09
    ld   A, H                                          ;; 00:1661 $7c
    ld   [wCECE], A                                    ;; 00:1662 $ea $ce $ce
    ld   A, L                                          ;; 00:1665 $7d
    ld   [wCECF], A                                    ;; 00:1666 $ea $cf $ce
    ld   HL, wD5A1                                     ;; 00:1669 $21 $a1 $d5
    ld   A, [HL+]                                      ;; 00:166c $2a
    ld   L, [HL]                                       ;; 00:166d $6e
    ld   H, A                                          ;; 00:166e $67
    add  HL, BC                                        ;; 00:166f $09
    ld   A, H                                          ;; 00:1670 $7c
    ld   [wCED2], A                                    ;; 00:1671 $ea $d2 $ce
    ld   A, L                                          ;; 00:1674 $7d
    ld   [wCED3], A                                    ;; 00:1675 $ea $d3 $ce
    ld   HL, wD59F                                     ;; 00:1678 $21 $9f $d5
    ld   A, [HL+]                                      ;; 00:167b $2a
    ld   L, [HL]                                       ;; 00:167c $6e
    ld   H, A                                          ;; 00:167d $67
    add  HL, BC                                        ;; 00:167e $09
    ld   A, H                                          ;; 00:167f $7c
    ld   [wCED0], A                                    ;; 00:1680 $ea $d0 $ce
    ld   A, L                                          ;; 00:1683 $7d
    ld   [wCED1], A                                    ;; 00:1684 $ea $d1 $ce
    ret                                                ;; 00:1687 $c9

call_00_1688:
    ld   A, [wCEB1]                                    ;; 00:1688 $fa $b1 $ce
    and  A, A                                          ;; 00:168b $a7
    ret  Z                                             ;; 00:168c $c8
    ld   B, $16                                        ;; 00:168d $06 $16
    ld   C, $00                                        ;; 00:168f $0e $00
.jp_00_1691:
    ld   HL, wCEC6                                     ;; 00:1691 $21 $c6 $ce
    ld   A, [HL+]                                      ;; 00:1694 $2a
    ld   E, [HL]                                       ;; 00:1695 $5e
    ld   D, A                                          ;; 00:1696 $57
    call call_00_1749                                  ;; 00:1697 $cd $49 $17
    ld   A, [wD594]                                    ;; 00:169a $fa $94 $d5
    ld   [wBackupRomBank], A                           ;; 00:169d $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:16a0 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:16a3 $ea $00 $20
    ld   HL, wCECE                                     ;; 00:16a6 $21 $ce $ce
    ld   A, [HL+]                                      ;; 00:16a9 $2a
    ld   E, [HL]                                       ;; 00:16aa $5e
    ld   D, A                                          ;; 00:16ab $57
    ld   HL, wCEC6                                     ;; 00:16ac $21 $c6 $ce
    ld   A, [HL+]                                      ;; 00:16af $2a
    ld   L, [HL]                                       ;; 00:16b0 $6e
    ld   H, A                                          ;; 00:16b1 $67
    add  HL, DE                                        ;; 00:16b2 $19
    ld   A, [HL]                                       ;; 00:16b3 $7e
    ld   HL, wCEEF                                     ;; 00:16b4 $21 $ef $ce
    ld   E, C                                          ;; 00:16b7 $59
    ld   D, $00                                        ;; 00:16b8 $16 $00
    add  HL, DE                                        ;; 00:16ba $19
    ld   [HL], A                                       ;; 00:16bb $77
    ldh  A, [hIsGBC]                                   ;; 00:16bc $f0 $fe
    and  A, A                                          ;; 00:16be $a7
    jr   Z, .jr_00_16e3                                ;; 00:16bf $28 $22
    ld   A, [wD596]                                    ;; 00:16c1 $fa $96 $d5
    ld   [wBackupRomBank], A                           ;; 00:16c4 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:16c7 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:16ca $ea $00 $20
    ld   HL, wCED0                                     ;; 00:16cd $21 $d0 $ce
    ld   A, [HL+]                                      ;; 00:16d0 $2a
    ld   E, [HL]                                       ;; 00:16d1 $5e
    ld   D, A                                          ;; 00:16d2 $57
    ld   HL, wCEC6                                     ;; 00:16d3 $21 $c6 $ce
    ld   A, [HL+]                                      ;; 00:16d6 $2a
    ld   L, [HL]                                       ;; 00:16d7 $6e
    ld   H, A                                          ;; 00:16d8 $67
    add  HL, DE                                        ;; 00:16d9 $19
    ld   A, [HL]                                       ;; 00:16da $7e
    ld   HL, wCF19                                     ;; 00:16db $21 $19 $cf
    ld   E, C                                          ;; 00:16de $59
    ld   D, $00                                        ;; 00:16df $16 $00
    add  HL, DE                                        ;; 00:16e1 $19
    ld   [HL], A                                       ;; 00:16e2 $77
.jr_00_16e3:
    ld   HL, wCEC6                                     ;; 00:16e3 $21 $c6 $ce
    ld   A, [HL+]                                      ;; 00:16e6 $2a
    ld   E, [HL]                                       ;; 00:16e7 $5e
    ld   D, A                                          ;; 00:16e8 $57
    inc  DE                                            ;; 00:16e9 $13
    ld   HL, wD5A7                                     ;; 00:16ea $21 $a7 $d5
    ld   A, [HL+]                                      ;; 00:16ed $2a
    ld   L, [HL]                                       ;; 00:16ee $6e
    ld   H, A                                          ;; 00:16ef $67
    dec  HL                                            ;; 00:16f0 $2b
    ld   A, E                                          ;; 00:16f1 $7b
    and  A, L                                          ;; 00:16f2 $a5
    ld   E, A                                          ;; 00:16f3 $5f
    ld   A, D                                          ;; 00:16f4 $7a
    and  A, H                                          ;; 00:16f5 $a4
    ld   HL, wCEC6                                     ;; 00:16f6 $21 $c6 $ce
    ld   [HL+], A                                      ;; 00:16f9 $22
    ld   [HL], E                                       ;; 00:16fa $73
    inc  C                                             ;; 00:16fb $0c
    dec  B                                             ;; 00:16fc $05
    jp   NZ, .jp_00_1691                               ;; 00:16fd $c2 $91 $16
    ret                                                ;; 00:1700 $c9

call_00_1701:
    ld   HL, wCEB1                                     ;; 00:1701 $21 $b1 $ce
    ld   A, [HL]                                       ;; 00:1704 $7e
    and  A, A                                          ;; 00:1705 $a7
    ret  Z                                             ;; 00:1706 $c8
    ld   [HL], $00                                     ;; 00:1707 $36 $00
    ldh  A, [hIsGBC]                                   ;; 00:1709 $f0 $fe
    and  A, A                                          ;; 00:170b $a7
    jr   Z, .jr_00_1720                                ;; 00:170c $28 $12
    ld   A, $01                                        ;; 00:170e $3e $01
    ldh  [rVBK], A                                     ;; 00:1710 $e0 $4f
    ld   B, $16                                        ;; 00:1712 $06 $16
    ld   HL, wCED9                                     ;; 00:1714 $21 $d9 $ce
    ld   A, [HL+]                                      ;; 00:1717 $2a
    ld   E, [HL]                                       ;; 00:1718 $5e
    ld   D, A                                          ;; 00:1719 $57
    ld   HL, wCF19                                     ;; 00:171a $21 $19 $cf
    call call_00_1732                                  ;; 00:171d $cd $32 $17
.jr_00_1720:
    ld   A, $00                                        ;; 00:1720 $3e $00
    ldh  [rVBK], A                                     ;; 00:1722 $e0 $4f
    ld   B, $16                                        ;; 00:1724 $06 $16
    ld   HL, wCED9                                     ;; 00:1726 $21 $d9 $ce
    ld   A, [HL+]                                      ;; 00:1729 $2a
    ld   E, [HL]                                       ;; 00:172a $5e
    ld   D, A                                          ;; 00:172b $57
    ld   HL, wCEEF                                     ;; 00:172c $21 $ef $ce
    jp   call_00_1732                                  ;; 00:172f $c3 $32 $17

call_00_1732:
    ld   A, [HL+]                                      ;; 00:1732 $2a
    ld   [DE], A                                       ;; 00:1733 $12
    inc  E                                             ;; 00:1734 $1c
    jr   Z, .jr_00_173d                                ;; 00:1735 $28 $06
    ld   A, [wCED4]                                    ;; 00:1737 $fa $d4 $ce
    cp   A, E                                          ;; 00:173a $bb
    jr   NC, .jr_00_1745                               ;; 00:173b $30 $08
.jr_00_173d:
    ld   A, [wCED5]                                    ;; 00:173d $fa $d5 $ce
    ld   D, A                                          ;; 00:1740 $57
    ld   A, [wCED6]                                    ;; 00:1741 $fa $d6 $ce
    ld   E, A                                          ;; 00:1744 $5f
.jr_00_1745:
    dec  B                                             ;; 00:1745 $05
    jr   NZ, call_00_1732                              ;; 00:1746 $20 $ea
    ret                                                ;; 00:1748 $c9

call_00_1749:
    ld   A, [wD5D7]                                    ;; 00:1749 $fa $d7 $d5
    cp   A, $0a                                        ;; 00:174c $fe $0a
    ret  NC                                            ;; 00:174e $d0
    ld   A, [wD598]                                    ;; 00:174f $fa $98 $d5
    ld   [wBackupRomBank], A                           ;; 00:1752 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1755 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1758 $ea $00 $20
    ld   HL, wCED2                                     ;; 00:175b $21 $d2 $ce
    ld   A, [HL+]                                      ;; 00:175e $2a
    ld   L, [HL]                                       ;; 00:175f $6e
    ld   H, A                                          ;; 00:1760 $67
    add  HL, DE                                        ;; 00:1761 $19
    ld   E, [HL]                                       ;; 00:1762 $5e
    ld   A, $04                                        ;; 00:1763 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:1765 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1768 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:176b $ea $00 $20
    ld   A, E                                          ;; 00:176e $7b
    push BC                                            ;; 00:176f $c5
    call call_04_4000                                  ;; 00:1770 $cd $00 $40
    pop  BC                                            ;; 00:1773 $c1
    ret                                                ;; 00:1774 $c9
    db   $21, $23, $cc, $7e, $a7, $20, $05, $af        ;; 00:1775 ????????
    db   $ea, $22, $cc, $c9, $35, $fa, $9a, $d5        ;; 00:177d ????????
    db   $ea, $b5, $d5, $ea, $b7, $d5, $ea, $00        ;; 00:1785 ????????
    db   $20, $f0, $fe, $a7, $28, $23, $3e, $01        ;; 00:178d ????????
    db   $e0, $4f, $21, $34, $cc, $2a, $5e, $57        ;; 00:1795 ????????
    db   $21, $26, $cc, $2a, $6e, $67, $fa, $39        ;; 00:179d ????????
    db   $cc, $47, $3e, $32, $cd, $d2, $05, $21        ;; 00:17a5 ????????
    db   $34, $cc, $7a, $22, $73, $3e, $00, $e0        ;; 00:17ad ????????
    db   $4f, $21, $32, $cc, $2a, $5e, $57, $21        ;; 00:17b5 ????????
    db   $26, $cc, $2a, $6e, $67, $fa, $39, $cc        ;; 00:17bd ????????
    db   $47, $3e, $32, $cd, $d2, $05, $7c, $ea        ;; 00:17c5 ????????
    db   $26, $cc, $7d, $ea, $27, $cc, $21, $32        ;; 00:17cd ????????
    db   $cc, $7a, $22, $73, $c9                       ;; 00:17d5 ?????

call_00_17da:
    ld   A, [wC524]                                    ;; 00:17da $fa $24 $c5
    cp   A, $ff                                        ;; 00:17dd $fe $ff
    ret  Z                                             ;; 00:17df $c8
    ld   A, [wC523]                                    ;; 00:17e0 $fa $23 $c5
    and  A, A                                          ;; 00:17e3 $a7
    ret  Z                                             ;; 00:17e4 $c8
    ld   A, $08                                        ;; 00:17e5 $3e $08
    ldh  [rSTAT], A                                    ;; 00:17e7 $e0 $41
    xor  A, A                                          ;; 00:17e9 $af
    ldh  [rIF], A                                      ;; 00:17ea $e0 $0f
    ld   A, [wSCX]                                     ;; 00:17ec $fa $88 $d5
    ld   [wC526], A                                    ;; 00:17ef $ea $26 $c5
    ld   A, [wSCY]                                     ;; 00:17f2 $fa $87 $d5
    ld   [wC527], A                                    ;; 00:17f5 $ea $27 $c5
    ld   A, [wC524]                                    ;; 00:17f8 $fa $24 $c5
    cp   A, $03                                        ;; 00:17fb $fe $03
    jr   C, .jr_00_1806                                ;; 00:17fd $38 $07
    cp   A, $06                                        ;; 00:17ff $fe $06
    jr   C, .jr_00_1819                                ;; 00:1801 $38 $16
    jr   Z, .jr_00_182c                                ;; 00:1803 $28 $27
    ret                                                ;; 00:1805 $c9
.jr_00_1806:
    ld   HL, wC528                                     ;; 00:1806 $21 $28 $c5
    dec  [HL]                                          ;; 00:1809 $35
    jr   Z, .jr_00_184c                                ;; 00:180a $28 $40
    ld   A, [wC525]                                    ;; 00:180c $fa $25 $c5
    inc  A                                             ;; 00:180f $3c
    cp   A, $90                                        ;; 00:1810 $fe $90
    jr   C, .jr_00_1815                                ;; 00:1812 $38 $01
    xor  A, A                                          ;; 00:1814 $af
.jr_00_1815:
    ld   [wC525], A                                    ;; 00:1815 $ea $25 $c5
    ret                                                ;; 00:1818 $c9
.jr_00_1819:
    ld   HL, wC528                                     ;; 00:1819 $21 $28 $c5
    dec  [HL]                                          ;; 00:181c $35
    jr   Z, .jr_00_184c                                ;; 00:181d $28 $2d
    ld   A, [wC525]                                    ;; 00:181f $fa $25 $c5
    inc  A                                             ;; 00:1822 $3c
    cp   A, $90                                        ;; 00:1823 $fe $90
    jr   C, .jr_00_1828                                ;; 00:1825 $38 $01
    xor  A, A                                          ;; 00:1827 $af
.jr_00_1828:
    ld   [wC525], A                                    ;; 00:1828 $ea $25 $c5
    ret                                                ;; 00:182b $c9
.jr_00_182c:
    ld   HL, wC52F                                     ;; 00:182c $21 $2f $c5
    dec  [HL]                                          ;; 00:182f $35
    ret  NZ                                            ;; 00:1830 $c0
    ld   A, [wC530]                                    ;; 00:1831 $fa $30 $c5
    ld   [HL], A                                       ;; 00:1834 $77
    ld   A, [wC52D]                                    ;; 00:1835 $fa $2d $c5
    and  A, A                                          ;; 00:1838 $a7
    jr   NZ, .jr_00_1843                               ;; 00:1839 $20 $08
    ld   A, [wC52E]                                    ;; 00:183b $fa $2e $c5
    ld   [wSCY], A                                     ;; 00:183e $ea $87 $d5
    jr   .jr_00_184c                                   ;; 00:1841 $18 $09
.jr_00_1843:
    sub  A, $02                                        ;; 00:1843 $d6 $02
    ld   [wC52D], A                                    ;; 00:1845 $ea $2d $c5
    ld   [wSCY], A                                     ;; 00:1848 $ea $87 $d5
    ret                                                ;; 00:184b $c9
.jr_00_184c:
    ld   A, $40                                        ;; 00:184c $3e $40
    ldh  [rSTAT], A                                    ;; 00:184e $e0 $41
    xor  A, A                                          ;; 00:1850 $af
    ldh  [rIF], A                                      ;; 00:1851 $e0 $0f
    xor  A, A                                          ;; 00:1853 $af
    call call_00_1858                                  ;; 00:1854 $cd $58 $18
    ret                                                ;; 00:1857 $c9

call_00_1858:
    ld   [wC523], A                                    ;; 00:1858 $ea $23 $c5
    and  A, A                                          ;; 00:185b $a7
    jr   Z, .jr_00_18a2                                ;; 00:185c $28 $44
    ld   A, B                                          ;; 00:185e $78
    ld   [wC528], A                                    ;; 00:185f $ea $28 $c5
    ld   A, [wSCX]                                     ;; 00:1862 $fa $88 $d5
    ld   [wC526], A                                    ;; 00:1865 $ea $26 $c5
    ld   A, [wSCY]                                     ;; 00:1868 $fa $87 $d5
    ld   [wC527], A                                    ;; 00:186b $ea $27 $c5
    ld   A, C                                          ;; 00:186e $79
    ld   [wC524], A                                    ;; 00:186f $ea $24 $c5
    ld   HL, $37d                                      ;; 00:1872 $21 $7d $03
    call ld_HL_from_HL_add_2C                          ;; 00:1875 $cd $7a $06
    ld   A, H                                          ;; 00:1878 $7c
    ld   [wC52B], A                                    ;; 00:1879 $ea $2b $c5
    ld   A, L                                          ;; 00:187c $7d
    ld   [wC52C], A                                    ;; 00:187d $ea $2c $c5
    ld   A, [wC524]                                    ;; 00:1880 $fa $24 $c5
    cp   A, $05                                        ;; 00:1883 $fe $05
    jr   Z, .jr_00_188e                                ;; 00:1885 $28 $07
    ld   HL, wC529                                     ;; 00:1887 $21 $29 $c5
    ld   A, D                                          ;; 00:188a $7a
    ld   [HL+], A                                      ;; 00:188b $22
    ld   [HL], E                                       ;; 00:188c $73
    ret                                                ;; 00:188d $c9
.jr_00_188e:
    ld   A, $01                                        ;; 00:188e $3e $01
    ld   [wC530], A                                    ;; 00:1890 $ea $30 $c5
    ld   [wC52F], A                                    ;; 00:1893 $ea $2f $c5
    ld   A, $8e                                        ;; 00:1896 $3e $8e
    ld   [wC52D], A                                    ;; 00:1898 $ea $2d $c5
    ld   A, [wSCY]                                     ;; 00:189b $fa $87 $d5
    ld   [wC52E], A                                    ;; 00:189e $ea $2e $c5
    ret                                                ;; 00:18a1 $c9
.jr_00_18a2:
    xor  A, A                                          ;; 00:18a2 $af
    ld   [wC528], A                                    ;; 00:18a3 $ea $28 $c5
    ld   [wC525], A                                    ;; 00:18a6 $ea $25 $c5
    ret                                                ;; 00:18a9 $c9
    db   $21, $25, $c5, $f0, $44, $86, $6f, $fa        ;; 00:18aa ????????
    db   $2a, $c5, $85, $6f, $fa, $29, $c5, $ce        ;; 00:18b2 ????????
    db   $00, $67, $fa, $26, $c5, $86, $e0, $43        ;; 00:18ba ????????
    db   $e1, $f1, $d9, $21, $25, $c5, $f0, $44        ;; 00:18c2 ????????
    db   $86, $6f, $fa, $2a, $c5, $85, $6f, $fa        ;; 00:18ca ????????
    db   $29, $c5, $ce, $00, $67, $fa, $27, $c5        ;; 00:18d2 ????????
    db   $86, $e0, $42, $e1, $f1, $d9, $21, $25        ;; 00:18da ????????
    db   $c5, $f0, $44, $86, $6f, $fa, $2a, $c5        ;; 00:18e2 ????????
    db   $85, $6f, $fa, $29, $c5, $ce, $00, $67        ;; 00:18ea ????????
    db   $fa, $26, $c5, $86, $e0, $43, $e0, $42        ;; 00:18f2 ????????
    db   $e1, $f1, $d9, $e1, $f1, $d9, $e1, $f1        ;; 00:18fa ????????
    db   $d9, $e1, $f1, $d9, $21, $2d, $c5, $f0        ;; 00:1902 ????????
    db   $44, $be, $30, $06, $21, $42, $ff, $35        ;; 00:190a ????????
    db   $18, $05, $fa, $2e, $c5, $e0, $42, $e1        ;; 00:1912 ????????
    db   $f1, $d9                                      ;; 00:191a ??

call_00_191c:
    ld   A, [wD5E0]                                    ;; 00:191c $fa $e0 $d5
    and  A, A                                          ;; 00:191f $a7
    ret  Z                                             ;; 00:1920 $c8
    ld   HL, rSCY                                      ;; 00:1921 $21 $42 $ff
    ld   A, [wD5E1]                                    ;; 00:1924 $fa $e1 $d5
    cp   A, $01                                        ;; 00:1927 $fe $01
    jr   C, .jr_00_1936                                ;; 00:1929 $38 $0b
    jr   Z, .jr_00_193d                                ;; 00:192b $28 $10
    cp   A, $03                                        ;; 00:192d $fe $03
    jr   C, .jr_00_1945                                ;; 00:192f $38 $14
    xor  A, A                                          ;; 00:1931 $af
    ld   [wD5E1], A                                    ;; 00:1932 $ea $e1 $d5
    ret                                                ;; 00:1935 $c9
.jr_00_1936:
    inc  A                                             ;; 00:1936 $3c
    ld   [wD5E1], A                                    ;; 00:1937 $ea $e1 $d5
    dec  [HL]                                          ;; 00:193a $35
    dec  [HL]                                          ;; 00:193b $35
    ret                                                ;; 00:193c $c9
.jr_00_193d:
    inc  A                                             ;; 00:193d $3c
    ld   [wD5E1], A                                    ;; 00:193e $ea $e1 $d5
    inc  HL                                            ;; 00:1941 $23
    inc  [HL]                                          ;; 00:1942 $34
    inc  [HL]                                          ;; 00:1943 $34
    ret                                                ;; 00:1944 $c9
.jr_00_1945:
    inc  A                                             ;; 00:1945 $3c
    ld   [wD5E1], A                                    ;; 00:1946 $ea $e1 $d5
    inc  [HL]                                          ;; 00:1949 $34
    inc  [HL]                                          ;; 00:194a $34
    ret                                                ;; 00:194b $c9
    db   $29, $29, $29, $29, $11, $00, $80, $19        ;; 00:194c ????????
    db   $06, $04, $7e, $0f, $22, $7e, $0f, $22        ;; 00:1954 ????????
    db   $7e, $0f, $22, $7e, $0f, $22, $05, $20        ;; 00:195c ????????
    db   $f1, $c9, $29, $29, $29, $29, $11, $00        ;; 00:1964 ????????
    db   $80, $19, $06, $04, $7e, $07, $22, $7e        ;; 00:196c ????????
    db   $07, $22, $7e, $07, $22, $7e, $07, $22        ;; 00:1974 ????????
    db   $05, $20, $f1, $c9                            ;; 00:197c ????

call_00_1980:
    add  HL, HL                                        ;; 00:1980 $29
    add  HL, HL                                        ;; 00:1981 $29
    add  HL, HL                                        ;; 00:1982 $29
    add  HL, HL                                        ;; 00:1983 $29
    ld   DE, $8000                                     ;; 00:1984 $11 $00 $80
    add  HL, DE                                        ;; 00:1987 $19
    ld   D, H                                          ;; 00:1988 $54
    ld   E, L                                          ;; 00:1989 $5d
    ld   A, [HL+]                                      ;; 00:198a $2a
    ld   B, A                                          ;; 00:198b $47
    ld   A, [HL+]                                      ;; 00:198c $2a
    ld   C, A                                          ;; 00:198d $4f
    push BC                                            ;; 00:198e $c5
    ld   B, $07                                        ;; 00:198f $06 $07
.jr_00_1991:
    ld   A, [HL+]                                      ;; 00:1991 $2a
    ld   [DE], A                                       ;; 00:1992 $12
    inc  DE                                            ;; 00:1993 $13
    ld   A, [HL+]                                      ;; 00:1994 $2a
    ld   [DE], A                                       ;; 00:1995 $12
    inc  DE                                            ;; 00:1996 $13
    dec  B                                             ;; 00:1997 $05
    jr   NZ, .jr_00_1991                               ;; 00:1998 $20 $f7
    pop  BC                                            ;; 00:199a $c1
    ld   A, B                                          ;; 00:199b $78
    ld   [DE], A                                       ;; 00:199c $12
    inc  DE                                            ;; 00:199d $13
    ld   A, C                                          ;; 00:199e $79
    ld   [DE], A                                       ;; 00:199f $12
    ret                                                ;; 00:19a0 $c9
    db   $29, $29, $29, $29, $11, $0d, $80, $19        ;; 00:19a1 ????????
    db   $54, $5d, $23, $23, $3a, $47, $2a, $4f        ;; 00:19a9 ????????
    db   $c5, $06, $07, $1a, $32, $1b, $1a, $32        ;; 00:19b1 ????????
    db   $1b, $05, $20, $f7, $c1, $78, $32, $71        ;; 00:19b9 ????????
    db   $c9, $29, $29, $29, $29, $01, $00, $80        ;; 00:19c1 ????????
    db   $09, $e5, $62, $6b, $29, $29, $29, $29        ;; 00:19c9 ????????
    db   $01, $00, $80, $09, $d1, $06, $10, $7e        ;; 00:19d1 ????????
    db   $cb, $3f, $4f, $1a, $cb, $1f, $12, $79        ;; 00:19d9 ????????
    db   $30, $02, $f6, $80, $22, $13, $05, $20        ;; 00:19e1 ????????
    db   $ee, $c9, $29, $29, $29, $29, $01, $00        ;; 00:19e9 ????????
    db   $80, $09, $e5, $62, $6b, $29, $29, $29        ;; 00:19f1 ????????
    db   $29, $01, $00, $80, $09, $d1, $06, $10        ;; 00:19f9 ????????
    db   $7e, $cb, $27, $4f, $1a, $cb, $17, $12        ;; 00:1a01 ????????
    db   $79, $30, $02, $f6, $01, $22, $13, $05        ;; 00:1a09 ????????
    db   $20, $ee, $c9, $29, $29, $29, $29, $11        ;; 00:1a11 ????????
    db   $0d, $80, $19, $54, $5d, $23, $23, $3a        ;; 00:1a19 ????????
    db   $47, $2a, $4f, $c5, $06, $0a, $1a, $32        ;; 00:1a21 ????????
    db   $1b, $1a, $32, $1b, $1a, $32, $1b, $05        ;; 00:1a29 ????????
    db   $20, $f4, $c1, $78, $32, $71, $c9, $29        ;; 00:1a31 ????????
    db   $29, $29, $29, $11, $00, $80, $19, $54        ;; 00:1a39 ????????
    db   $5d, $2a, $47, $2a, $4f, $c5, $06, $1e        ;; 00:1a41 ????????
    db   $2a, $12, $13, $05, $20, $fa, $c1, $78        ;; 00:1a49 ????????
    db   $12, $13, $79, $12, $c9                       ;; 00:1a51 ?????

call_00_1a56:
    call call_00_0fac                                  ;; 00:1a56 $cd $ac $0f
    ld   A, $04                                        ;; 00:1a59 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:1a5b $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1a5e $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1a61 $ea $00 $20
    call call_04_6d03 ;@bank 4                         ;; 00:1a64 $cd $03 $6d
    ld   A, [wD82C]                                    ;; 00:1a67 $fa $2c $d8
    add  A, E                                          ;; 00:1a6a $83
    ld   [wD82C], A                                    ;; 00:1a6b $ea $2c $d8
    call call_00_101f                                  ;; 00:1a6e $cd $1f $10
    ld   A, [wC602]                                    ;; 00:1a71 $fa $02 $c6
    and  A, A                                          ;; 00:1a74 $a7
    ret  NZ                                            ;; 00:1a75 $c0
    ld   A, [wC523]                                    ;; 00:1a76 $fa $23 $c5
    and  A, A                                          ;; 00:1a79 $a7
    ret  NZ                                            ;; 00:1a7a $c0
    ld   A, [wCB27]                                    ;; 00:1a7b $fa $27 $cb
    and  A, A                                          ;; 00:1a7e $a7
    ret  Z                                             ;; 00:1a7f $c8
    ld   A, [wC566]                                    ;; 00:1a80 $fa $66 $c5
    and  A, A                                          ;; 00:1a83 $a7
    ret  NZ                                            ;; 00:1a84 $c0
    ld   A, [wC5BA]                                    ;; 00:1a85 $fa $ba $c5
    and  A, A                                          ;; 00:1a88 $a7
    ret  NZ                                            ;; 00:1a89 $c0
    ld   A, [wC45A]                                    ;; 00:1a8a $fa $5a $c4
    and  A, A                                          ;; 00:1a8d $a7
    ret  NZ                                            ;; 00:1a8e $c0
    ld   A, [wC470]                                    ;; 00:1a8f $fa $70 $c4
    cp   A, $20                                        ;; 00:1a92 $fe $20
    jr   NZ, .jr_00_1a9e                               ;; 00:1a94 $20 $08
    ld   A, [wC460]                                    ;; 00:1a96 $fa $60 $c4
    and  A, A                                          ;; 00:1a99 $a7
    ret  NZ                                            ;; 00:1a9a $c0
    jp   call_00_374f                                  ;; 00:1a9b $c3 $4f $37
.jr_00_1a9e:
    ld   A, [wC46F]                                    ;; 00:1a9e $fa $6f $c4
    and  A, A                                          ;; 00:1aa1 $a7
    jr   NZ, .jr_00_1ae7                               ;; 00:1aa2 $20 $43
    ld   A, [wC45C]                                    ;; 00:1aa4 $fa $5c $c4
    ld   [wC521], A                                    ;; 00:1aa7 $ea $21 $c5
    ld   A, [wC45D]                                    ;; 00:1aaa $fa $5d $c4
    ld   [wC522], A                                    ;; 00:1aad $ea $22 $c5
    ld   HL, wC5D7                                     ;; 00:1ab0 $21 $d7 $c5
    call call_00_3675                                  ;; 00:1ab3 $cd $75 $36
    ld   A, B                                          ;; 00:1ab6 $78
    cp   A, $01                                        ;; 00:1ab7 $fe $01
    jp   Z, call_00_374f                               ;; 00:1ab9 $ca $4f $37
    ld   A, $01                                        ;; 00:1abc $3e $01
    ld   [wC46F], A                                    ;; 00:1abe $ea $6f $c4
    ld   A, [wC5DA]                                    ;; 00:1ac1 $fa $da $c5
    ld   E, A                                          ;; 00:1ac4 $5f
    ld   A, [wC5DB]                                    ;; 00:1ac5 $fa $db $c5
    ld   D, A                                          ;; 00:1ac8 $57
    ld   A, [wC5EC]                                    ;; 00:1ac9 $fa $ec $c5
    ld   B, A                                          ;; 00:1acc $47
    ld   A, [wC5ED]                                    ;; 00:1acd $fa $ed $c5
    ld   C, A                                          ;; 00:1ad0 $4f
    ld   A, [wC5F2]                                    ;; 00:1ad1 $fa $f2 $c5
    and  A, A                                          ;; 00:1ad4 $a7
    jr   NZ, .jr_00_1adc                               ;; 00:1ad5 $20 $05
    ld   A, [wC5F3]                                    ;; 00:1ad7 $fa $f3 $c5
    jr   .jr_00_1ade                                   ;; 00:1ada $18 $02
.jr_00_1adc:
    ld   A, $ff                                        ;; 00:1adc $3e $ff
.jr_00_1ade:
    ld   [wD837], A                                    ;; 00:1ade $ea $37 $d8
    ld   HL, wC471                                     ;; 00:1ae1 $21 $71 $c4
    call call_00_355e                                  ;; 00:1ae4 $cd $5e $35
.jr_00_1ae7:
    ld   A, [wD58B]                                    ;; 00:1ae7 $fa $8b $d5
    cp   A, $01                                        ;; 00:1aea $fe $01
    ret  NZ                                            ;; 00:1aec $c0
    ld   A, [wC45B]                                    ;; 00:1aed $fa $5b $c4
    and  A, A                                          ;; 00:1af0 $a7
    jr   NZ, .jr_00_1b26                               ;; 00:1af1 $20 $33
    ld   A, [wJoypadPressed]                           ;; 00:1af3 $fa $7f $d5
    bit  0, A                                          ;; 00:1af6 $cb $47
    jp   NZ, .jp_00_1b3d                               ;; 00:1af8 $c2 $3d $1b
    bit  1, A                                          ;; 00:1afb $cb $4f
    jp   NZ, .jp_00_1bc1                               ;; 00:1afd $c2 $c1 $1b
    bit  2, A                                          ;; 00:1b00 $cb $57
    jp   NZ, .jp_00_1c06                               ;; 00:1b02 $c2 $06 $1c
    bit  3, A                                          ;; 00:1b05 $cb $5f
    jp   NZ, .jp_00_1c07                               ;; 00:1b07 $c2 $07 $1c
    ld   A, [wJoypadDown]                              ;; 00:1b0a $fa $7e $d5
    bit  4, A                                          ;; 00:1b0d $cb $67
    jp   NZ, .jp_00_1c33                               ;; 00:1b0f $c2 $33 $1c
    bit  5, A                                          ;; 00:1b12 $cb $6f
    jp   NZ, .jp_00_1c8b                               ;; 00:1b14 $c2 $8b $1c
    bit  6, A                                          ;; 00:1b17 $cb $77
    jp   NZ, .jp_00_1ce4                               ;; 00:1b19 $c2 $e4 $1c
    bit  7, A                                          ;; 00:1b1c $cb $7f
    jp   NZ, .jp_00_1d3b                               ;; 00:1b1e $c2 $3b $1d
    xor  A, A                                          ;; 00:1b21 $af
    ld   [wC460], A                                    ;; 00:1b22 $ea $60 $c4
    ret                                                ;; 00:1b25 $c9
.jr_00_1b26:
    ld   HL, wC45B                                     ;; 00:1b26 $21 $5b $c4
    dec  [HL]                                          ;; 00:1b29 $35
    ld   A, [wC461]                                    ;; 00:1b2a $fa $61 $c4
    cp   A, $01                                        ;; 00:1b2d $fe $01
    jp   C, .jp_00_1c4c                                ;; 00:1b2f $da $4c $1c
    jp   Z, .jp_00_1ca5                                ;; 00:1b32 $ca $a5 $1c
    cp   A, $03                                        ;; 00:1b35 $fe $03
    jp   C, .jp_00_1cfc                                ;; 00:1b37 $da $fc $1c
    jp   .jp_00_1d53                                   ;; 00:1b3a $c3 $53 $1d
.jp_00_1b3d:
    ld   A, [wCB27]                                    ;; 00:1b3d $fa $27 $cb
    cp   A, $02                                        ;; 00:1b40 $fe $02
    ret  NZ                                            ;; 00:1b42 $c0
    ld   A, [wD1CA]                                    ;; 00:1b43 $fa $ca $d1
    cp   A, $02                                        ;; 00:1b46 $fe $02
    ret  Z                                             ;; 00:1b48 $c8
    cp   A, $04                                        ;; 00:1b49 $fe $04
    ret  Z                                             ;; 00:1b4b $c8
    cp   A, $06                                        ;; 00:1b4c $fe $06
    ret  Z                                             ;; 00:1b4e $c8
    ld   A, [wC574]                                    ;; 00:1b4f $fa $74 $c5
    and  A, A                                          ;; 00:1b52 $a7
    ret  NZ                                            ;; 00:1b53 $c0
    ld   A, [wC5AB]                                    ;; 00:1b54 $fa $ab $c5
    cp   A, $01                                        ;; 00:1b57 $fe $01
    jr   Z, .jr_00_1ba3                                ;; 00:1b59 $28 $48
    ld   A, [wC470]                                    ;; 00:1b5b $fa $70 $c4
    and  A, A                                          ;; 00:1b5e $a7
    jr   NZ, .jr_00_1b82                               ;; 00:1b5f $20 $21
    ld   A, [wC46F]                                    ;; 00:1b61 $fa $6f $c4
    cp   A, $02                                        ;; 00:1b64 $fe $02
    ret  C                                             ;; 00:1b66 $d8
    ld   HL, wC100                                     ;; 00:1b67 $21 $00 $c1
    ld   A, [HL+]                                      ;; 00:1b6a $2a
    ld   D, A                                          ;; 00:1b6b $57
    ld   A, [HL+]                                      ;; 00:1b6c $2a
    ld   E, A                                          ;; 00:1b6d $5f
    ld   A, [HL+]                                      ;; 00:1b6e $2a
    ld   L, [HL]                                       ;; 00:1b6f $6e
    ld   H, A                                          ;; 00:1b70 $67
    inc  HL                                            ;; 00:1b71 $23
    call call_00_05ea                                  ;; 00:1b72 $cd $ea $05
    jr   NC, .jr_00_1b79                               ;; 00:1b75 $30 $02
    ld   D, H                                          ;; 00:1b77 $54
    ld   E, L                                          ;; 00:1b78 $5d
.jr_00_1b79:
    ld   HL, wC102                                     ;; 00:1b79 $21 $02 $c1
    ld   A, D                                          ;; 00:1b7c $7a
    ld   [HL+], A                                      ;; 00:1b7d $22
    ld   [HL], E                                       ;; 00:1b7e $73
    jp   call_00_374f                                  ;; 00:1b7f $c3 $4f $37
.jr_00_1b82:
    ld   A, $03                                        ;; 00:1b82 $3e $03
    ld   [wC46F], A                                    ;; 00:1b84 $ea $6f $c4
    ld   HL, wCB23                                     ;; 00:1b87 $21 $23 $cb
    ld   A, $c5                                        ;; 00:1b8a $3e $c5
    ld   [HL+], A                                      ;; 00:1b8c $22
    ld   A, $d7                                        ;; 00:1b8d $3e $d7
    ld   [HL+], A                                      ;; 00:1b8f $22
    ld   B, $00                                        ;; 00:1b90 $06 $00
    call call_00_357b                                  ;; 00:1b92 $cd $7b $35
    ld   A, $20                                        ;; 00:1b95 $3e $20
    ld   [wC470], A                                    ;; 00:1b97 $ea $70 $c4
    ld   A, [wD5DB]                                    ;; 00:1b9a $fa $db $d5
    add  A, $02                                        ;; 00:1b9d $c6 $02
    ld   [wC460], A                                    ;; 00:1b9f $ea $60 $c4
    ret                                                ;; 00:1ba2 $c9
.jr_00_1ba3:
    ld   A, $01                                        ;; 00:1ba3 $3e $01
    ld   [wD2BD], A                                    ;; 00:1ba5 $ea $bd $d2
    ld   A, [wD1E8]                                    ;; 00:1ba8 $fa $e8 $d1
    ld   [wD1E9], A                                    ;; 00:1bab $ea $e9 $d1
    ld   A, $8f                                        ;; 00:1bae $3e $8f
    ld   [wD5D2], A                                    ;; 00:1bb0 $ea $d2 $d5
    ld   A, [wC56D]                                    ;; 00:1bb3 $fa $6d $c5
    ld   [wC148], A                                    ;; 00:1bb6 $ea $48 $c1
    xor  A, A                                          ;; 00:1bb9 $af
    ld   [wD58C], A                                    ;; 00:1bba $ea $8c $d5
    ld   [wD58B], A                                    ;; 00:1bbd $ea $8b $d5
    ret                                                ;; 00:1bc0 $c9
.jp_00_1bc1:
    ld   A, [wCB27]                                    ;; 00:1bc1 $fa $27 $cb
    cp   A, $02                                        ;; 00:1bc4 $fe $02
    ret  NZ                                            ;; 00:1bc6 $c0
    ld   A, [wC574]                                    ;; 00:1bc7 $fa $74 $c5
    and  A, A                                          ;; 00:1bca $a7
    ret  NZ                                            ;; 00:1bcb $c0
    ld   A, [wD1CA]                                    ;; 00:1bcc $fa $ca $d1
    cp   A, $02                                        ;; 00:1bcf $fe $02
    ret  Z                                             ;; 00:1bd1 $c8
    cp   A, $04                                        ;; 00:1bd2 $fe $04
    ret  Z                                             ;; 00:1bd4 $c8
    cp   A, $06                                        ;; 00:1bd5 $fe $06
    ret  Z                                             ;; 00:1bd7 $c8
    ld   A, [wC608]                                    ;; 00:1bd8 $fa $08 $c6
    and  A, A                                          ;; 00:1bdb $a7
    jr   Z, .jr_00_1be3                                ;; 00:1bdc $28 $05
    ld   A, $16                                        ;; 00:1bde $3e $16
    jp   call_00_11a8                                  ;; 00:1be0 $c3 $a8 $11
.jr_00_1be3:
    ld   HL, wShadowOAM                                ;; 00:1be3 $21 $00 $c0
    ld   B, $08                                        ;; 00:1be6 $06 $08
    call memzeroSmall                                  ;; 00:1be8 $cd $8b $05
    ld   HL, wCA57                                     ;; 00:1beb $21 $57 $ca
    ld   B, $09                                        ;; 00:1bee $06 $09
    call memzeroSmall                                  ;; 00:1bf0 $cd $8b $05
    ld   A, $04                                        ;; 00:1bf3 $3e $04
    ld   [wCA4D], A                                    ;; 00:1bf5 $ea $4d $ca
    ld   A, $03                                        ;; 00:1bf8 $3e $03
    ld   [wD58B], A                                    ;; 00:1bfa $ea $8b $d5
    xor  A, A                                          ;; 00:1bfd $af
    ld   [wC460], A                                    ;; 00:1bfe $ea $60 $c4
    ld   A, $1e                                        ;; 00:1c01 $3e $1e
    jp   call_00_11a8                                  ;; 00:1c03 $c3 $a8 $11
.jp_00_1c06:
    ret                                                ;; 00:1c06 $c9
.jp_00_1c07:
    ld   A, [wCB27]                                    ;; 00:1c07 $fa $27 $cb
    cp   A, $02                                        ;; 00:1c0a $fe $02
    ret  NZ                                            ;; 00:1c0c $c0
    ld   A, [wD1CA]                                    ;; 00:1c0d $fa $ca $d1
    cp   A, $02                                        ;; 00:1c10 $fe $02
    ret  Z                                             ;; 00:1c12 $c8
    cp   A, $04                                        ;; 00:1c13 $fe $04
    ret  Z                                             ;; 00:1c15 $c8
    cp   A, $06                                        ;; 00:1c16 $fe $06
    ret  Z                                             ;; 00:1c18 $c8
    ld   HL, wCA1B                                     ;; 00:1c19 $21 $1b $ca
    ld   B, $32                                        ;; 00:1c1c $06 $32
    call memzeroSmall                                  ;; 00:1c1e $cd $8b $05
    ld   HL, wShadowOAM                                ;; 00:1c21 $21 $00 $c0
    ld   B, $08                                        ;; 00:1c24 $06 $08
    call memzeroSmall                                  ;; 00:1c26 $cd $8b $05
    ld   A, $05                                        ;; 00:1c29 $3e $05
    ld   [wD58B], A                                    ;; 00:1c2b $ea $8b $d5
    ld   A, $1e                                        ;; 00:1c2e $3e $1e
    jp   call_00_11a8                                  ;; 00:1c30 $c3 $a8 $11
.jp_00_1c33:
    ld   A, $05                                        ;; 00:1c33 $3e $05
    ld   [wC460], A                                    ;; 00:1c35 $ea $60 $c4
    ld   [wD5DB], A                                    ;; 00:1c38 $ea $db $d5
    xor  A, A                                          ;; 00:1c3b $af
    ld   [wC461], A                                    ;; 00:1c3c $ea $61 $c4
    ld   B, $07                                        ;; 00:1c3f $06 $07
    ld   A, [wC517]                                    ;; 00:1c41 $fa $17 $c5
    ld   C, A                                          ;; 00:1c44 $4f
    call call_00_0542                                  ;; 00:1c45 $cd $42 $05
    ld   A, B                                          ;; 00:1c48 $78
    ld   [wC45B], A                                    ;; 00:1c49 $ea $5b $c4
.jp_00_1c4c:
    ld   A, [wD82C]                                    ;; 00:1c4c $fa $2c $d8
    add  A, D                                          ;; 00:1c4f $82
    ld   [wD82C], A                                    ;; 00:1c50 $ea $2c $d8
    ld   HL, wC517                                     ;; 00:1c53 $21 $17 $c5
    ld   A, [wC45D]                                    ;; 00:1c56 $fa $5d $c4
    add  A, [HL]                                       ;; 00:1c59 $86
    ld   [wC45D], A                                    ;; 00:1c5a $ea $5d $c4
    call call_00_3546                                  ;; 00:1c5d $cd $46 $35
    call call_00_06fd                                  ;; 00:1c60 $cd $fd $06
    ld   A, B                                          ;; 00:1c63 $78
    and  A, A                                          ;; 00:1c64 $a7
    jr   Z, .jr_00_1c77                                ;; 00:1c65 $28 $10
    ld   HL, wC517                                     ;; 00:1c67 $21 $17 $c5
    ld   A, [wC45D]                                    ;; 00:1c6a $fa $5d $c4
    sub  A, [HL]                                       ;; 00:1c6d $96
    ld   [wC45D], A                                    ;; 00:1c6e $ea $5d $c4
    ld   [wC5DB], A                                    ;; 00:1c71 $ea $db $c5
    jp   jp_00_34f6                                    ;; 00:1c74 $c3 $f6 $34
.jr_00_1c77:
    xor  A, A                                          ;; 00:1c77 $af
    ld   [wC470], A                                    ;; 00:1c78 $ea $70 $c4
    ld   HL, wC476                                     ;; 00:1c7b $21 $76 $c4
    ld   A, [wC45D]                                    ;; 00:1c7e $fa $5d $c4
    cp   A, [HL]                                       ;; 00:1c81 $be
    ret  C                                             ;; 00:1c82 $d8
    ld   A, [HL]                                       ;; 00:1c83 $7e
    ld   [wC45D], A                                    ;; 00:1c84 $ea $5d $c4
    ld   [wC5DB], A                                    ;; 00:1c87 $ea $db $c5
    ret                                                ;; 00:1c8a $c9
.jp_00_1c8b:
    ld   A, $06                                        ;; 00:1c8b $3e $06
    ld   [wC460], A                                    ;; 00:1c8d $ea $60 $c4
    ld   [wD5DB], A                                    ;; 00:1c90 $ea $db $d5
    ld   A, $01                                        ;; 00:1c93 $3e $01
    ld   [wC461], A                                    ;; 00:1c95 $ea $61 $c4
    ld   B, $07                                        ;; 00:1c98 $06 $07
    ld   A, [wC517]                                    ;; 00:1c9a $fa $17 $c5
    ld   C, A                                          ;; 00:1c9d $4f
    call call_00_0542                                  ;; 00:1c9e $cd $42 $05
    ld   A, B                                          ;; 00:1ca1 $78
    ld   [wC45B], A                                    ;; 00:1ca2 $ea $5b $c4
.jp_00_1ca5:
    ld   A, [wD82C]                                    ;; 00:1ca5 $fa $2c $d8
    rra                                                ;; 00:1ca8 $1f
    ld   [wD82C], A                                    ;; 00:1ca9 $ea $2c $d8
    ld   HL, wC517                                     ;; 00:1cac $21 $17 $c5
    ld   A, [wC45D]                                    ;; 00:1caf $fa $5d $c4
    sub  A, [HL]                                       ;; 00:1cb2 $96
    ld   [wC45D], A                                    ;; 00:1cb3 $ea $5d $c4
    call call_00_3546                                  ;; 00:1cb6 $cd $46 $35
    call call_00_06fd                                  ;; 00:1cb9 $cd $fd $06
    ld   A, B                                          ;; 00:1cbc $78
    and  A, A                                          ;; 00:1cbd $a7
    jr   Z, .jr_00_1cd0                                ;; 00:1cbe $28 $10
    ld   HL, wC517                                     ;; 00:1cc0 $21 $17 $c5
    ld   A, [wC45D]                                    ;; 00:1cc3 $fa $5d $c4
    add  A, [HL]                                       ;; 00:1cc6 $86
    ld   [wC45D], A                                    ;; 00:1cc7 $ea $5d $c4
    ld   [wC5DB], A                                    ;; 00:1cca $ea $db $c5
    jp   jp_00_34f6                                    ;; 00:1ccd $c3 $f6 $34
.jr_00_1cd0:
    xor  A, A                                          ;; 00:1cd0 $af
    ld   [wC470], A                                    ;; 00:1cd1 $ea $70 $c4
    ld   HL, wC472                                     ;; 00:1cd4 $21 $72 $c4
    ld   A, [wC45D]                                    ;; 00:1cd7 $fa $5d $c4
    cp   A, [HL]                                       ;; 00:1cda $be
    ret  NC                                            ;; 00:1cdb $d0
    ld   A, [HL]                                       ;; 00:1cdc $7e
    ld   [wC45D], A                                    ;; 00:1cdd $ea $5d $c4
    ld   [wC5DB], A                                    ;; 00:1ce0 $ea $db $c5
    ret                                                ;; 00:1ce3 $c9
.jp_00_1ce4:
    ld   A, [wD5DB]                                    ;; 00:1ce4 $fa $db $d5
    ld   [wC460], A                                    ;; 00:1ce7 $ea $60 $c4
    ld   A, $02                                        ;; 00:1cea $3e $02
    ld   [wC461], A                                    ;; 00:1cec $ea $61 $c4
    ld   B, $07                                        ;; 00:1cef $06 $07
    ld   A, [wC517]                                    ;; 00:1cf1 $fa $17 $c5
    ld   C, A                                          ;; 00:1cf4 $4f
    call call_00_0542                                  ;; 00:1cf5 $cd $42 $05
    ld   A, B                                          ;; 00:1cf8 $78
    ld   [wC45B], A                                    ;; 00:1cf9 $ea $5b $c4
.jp_00_1cfc:
    ld   A, [wD82C]                                    ;; 00:1cfc $fa $2c $d8
    rla                                                ;; 00:1cff $17
    ld   [wD82C], A                                    ;; 00:1d00 $ea $2c $d8
    ld   HL, wC517                                     ;; 00:1d03 $21 $17 $c5
    ld   A, [wC45C]                                    ;; 00:1d06 $fa $5c $c4
    sub  A, [HL]                                       ;; 00:1d09 $96
    ld   [wC45C], A                                    ;; 00:1d0a $ea $5c $c4
    call call_00_3546                                  ;; 00:1d0d $cd $46 $35
    call call_00_06fd                                  ;; 00:1d10 $cd $fd $06
    ld   A, B                                          ;; 00:1d13 $78
    and  A, A                                          ;; 00:1d14 $a7
    jr   Z, .jr_00_1d27                                ;; 00:1d15 $28 $10
    ld   HL, wC517                                     ;; 00:1d17 $21 $17 $c5
    ld   A, [wC45C]                                    ;; 00:1d1a $fa $5c $c4
    add  A, [HL]                                       ;; 00:1d1d $86
    ld   [wC45C], A                                    ;; 00:1d1e $ea $5c $c4
    ld   [wC5DA], A                                    ;; 00:1d21 $ea $da $c5
    jp   jp_00_34f6                                    ;; 00:1d24 $c3 $f6 $34
.jr_00_1d27:
    xor  A, A                                          ;; 00:1d27 $af
    ld   [wC470], A                                    ;; 00:1d28 $ea $70 $c4
    ld   HL, wC471                                     ;; 00:1d2b $21 $71 $c4
    ld   A, [wC45C]                                    ;; 00:1d2e $fa $5c $c4
    cp   A, [HL]                                       ;; 00:1d31 $be
    ret  NC                                            ;; 00:1d32 $d0
    ld   A, [HL]                                       ;; 00:1d33 $7e
    ld   [wC45C], A                                    ;; 00:1d34 $ea $5c $c4
    ld   [wC5DA], A                                    ;; 00:1d37 $ea $da $c5
    ret                                                ;; 00:1d3a $c9
.jp_00_1d3b:
    ld   A, [wD5DB]                                    ;; 00:1d3b $fa $db $d5
    ld   [wC460], A                                    ;; 00:1d3e $ea $60 $c4
    ld   A, $03                                        ;; 00:1d41 $3e $03
    ld   [wC461], A                                    ;; 00:1d43 $ea $61 $c4
    ld   B, $07                                        ;; 00:1d46 $06 $07
    ld   A, [wC517]                                    ;; 00:1d48 $fa $17 $c5
    ld   C, A                                          ;; 00:1d4b $4f
    call call_00_0542                                  ;; 00:1d4c $cd $42 $05
    ld   A, B                                          ;; 00:1d4f $78
    ld   [wC45B], A                                    ;; 00:1d50 $ea $5b $c4
.jp_00_1d53:
    ld   A, [wD82C]                                    ;; 00:1d53 $fa $2c $d8
    sub  A, L                                          ;; 00:1d56 $95
    ld   [wD82C], A                                    ;; 00:1d57 $ea $2c $d8
    ld   HL, wC517                                     ;; 00:1d5a $21 $17 $c5
    ld   A, [wC45C]                                    ;; 00:1d5d $fa $5c $c4
    add  A, [HL]                                       ;; 00:1d60 $86
    ld   [wC45C], A                                    ;; 00:1d61 $ea $5c $c4
    call call_00_3546                                  ;; 00:1d64 $cd $46 $35
    call call_00_06fd                                  ;; 00:1d67 $cd $fd $06
    ld   A, B                                          ;; 00:1d6a $78
    and  A, A                                          ;; 00:1d6b $a7
    jr   Z, .jr_00_1d7e                                ;; 00:1d6c $28 $10
    ld   HL, wC517                                     ;; 00:1d6e $21 $17 $c5
    ld   A, [wC45C]                                    ;; 00:1d71 $fa $5c $c4
    sub  A, [HL]                                       ;; 00:1d74 $96
    ld   [wC45C], A                                    ;; 00:1d75 $ea $5c $c4
    ld   [wC5DA], A                                    ;; 00:1d78 $ea $da $c5
    jp   jp_00_34f6                                    ;; 00:1d7b $c3 $f6 $34
.jr_00_1d7e:
    xor  A, A                                          ;; 00:1d7e $af
    ld   [wC470], A                                    ;; 00:1d7f $ea $70 $c4
    ld   HL, wC475                                     ;; 00:1d82 $21 $75 $c4
    ld   A, [wC45C]                                    ;; 00:1d85 $fa $5c $c4
    cp   A, [HL]                                       ;; 00:1d88 $be
    ret  C                                             ;; 00:1d89 $d8
    ld   A, [HL]                                       ;; 00:1d8a $7e
    ld   [wC45C], A                                    ;; 00:1d8b $ea $5c $c4
    ld   [wC5DA], A                                    ;; 00:1d8e $ea $da $c5
    ret                                                ;; 00:1d91 $c9

call_00_1d92:
    call call_00_0fac                                  ;; 00:1d92 $cd $ac $0f
    ld   HL, wD82C                                     ;; 00:1d95 $21 $2c $d8
    sub  A, [HL]                                       ;; 00:1d98 $96
    ld   A, [wCB27]                                    ;; 00:1d99 $fa $27 $cb
    cp   A, $02                                        ;; 00:1d9c $fe $02
    ret  NZ                                            ;; 00:1d9e $c0
    ld   A, [wD58B]                                    ;; 00:1d9f $fa $8b $d5
    cp   A, $05                                        ;; 00:1da2 $fe $05
    jp   Z, .jp_00_1e00                                ;; 00:1da4 $ca $00 $1e
    cp   A, $01                                        ;; 00:1da7 $fe $01
    ret  NZ                                            ;; 00:1da9 $c0
    ld   A, [wC45B]                                    ;; 00:1daa $fa $5b $c4
    and  A, A                                          ;; 00:1dad $a7
    jr   NZ, .jr_00_1de9                               ;; 00:1dae $20 $39
    call call_00_105f                                  ;; 00:1db0 $cd $5f $10
    ld   A, B                                          ;; 00:1db3 $78
    and  A, A                                          ;; 00:1db4 $a7
    ret  NZ                                            ;; 00:1db5 $c0
    ld   A, [wJoypadPressed]                           ;; 00:1db6 $fa $7f $d5
    bit  0, A                                          ;; 00:1db9 $cb $47
    jp   NZ, .jp_00_1e2d                               ;; 00:1dbb $c2 $2d $1e
    bit  1, A                                          ;; 00:1dbe $cb $4f
    jp   NZ, .jp_00_1e31                               ;; 00:1dc0 $c2 $31 $1e
    bit  2, A                                          ;; 00:1dc3 $cb $57
    jp   NZ, .jp_00_1e64                               ;; 00:1dc5 $c2 $64 $1e
    bit  3, A                                          ;; 00:1dc8 $cb $5f
    jp   NZ, .jp_00_1e65                               ;; 00:1dca $c2 $65 $1e
    ld   A, [wJoypadDown]                              ;; 00:1dcd $fa $7e $d5
    bit  4, A                                          ;; 00:1dd0 $cb $67
    jp   NZ, .jp_00_1e90                               ;; 00:1dd2 $c2 $90 $1e
    bit  5, A                                          ;; 00:1dd5 $cb $6f
    jp   NZ, .jp_00_1f63                               ;; 00:1dd7 $c2 $63 $1f
    bit  6, A                                          ;; 00:1dda $cb $77
    jp   NZ, .jp_00_2034                               ;; 00:1ddc $c2 $34 $20
    bit  7, A                                          ;; 00:1ddf $cb $7f
    jp   NZ, .jp_00_2101                               ;; 00:1de1 $c2 $01 $21
.jr_00_1de4:
    xor  A, A                                          ;; 00:1de4 $af
    ld   [wC460], A                                    ;; 00:1de5 $ea $60 $c4
    ret                                                ;; 00:1de8 $c9
.jr_00_1de9:
    ld   HL, wC45B                                     ;; 00:1de9 $21 $5b $c4
    dec  [HL]                                          ;; 00:1dec $35
    ld   A, [wC461]                                    ;; 00:1ded $fa $61 $c4
    cp   A, $01                                        ;; 00:1df0 $fe $01
    jp   C, .jp_00_1eaa                                ;; 00:1df2 $da $aa $1e
    jp   Z, .jp_00_1f7e                                ;; 00:1df5 $ca $7e $1f
    cp   A, $03                                        ;; 00:1df8 $fe $03
    jp   C, .jp_00_204f                                ;; 00:1dfa $da $4f $20
    jp   .jp_00_211c                                   ;; 00:1dfd $c3 $1c $21
.jp_00_1e00:
    ld   A, [wC45B]                                    ;; 00:1e00 $fa $5b $c4
    and  A, $07                                        ;; 00:1e03 $e6 $07
    jr   NZ, .jr_00_1e07                               ;; 00:1e05 $20 $00
.jr_00_1e07:
    ld   A, [wC45B]                                    ;; 00:1e07 $fa $5b $c4
    and  A, A                                          ;; 00:1e0a $a7
    jr   Z, .jr_00_1de4                                ;; 00:1e0b $28 $d7
    call call_00_105f                                  ;; 00:1e0d $cd $5f $10
    ld   A, B                                          ;; 00:1e10 $78
    and  A, A                                          ;; 00:1e11 $a7
    ret  NZ                                            ;; 00:1e12 $c0
    ld   A, [wC45B]                                    ;; 00:1e13 $fa $5b $c4
    dec  A                                             ;; 00:1e16 $3d
    ld   [wC45B], A                                    ;; 00:1e17 $ea $5b $c4
    ld   A, [wC461]                                    ;; 00:1e1a $fa $61 $c4
    cp   A, $01                                        ;; 00:1e1d $fe $01
    jp   C, .jp_00_1eaa                                ;; 00:1e1f $da $aa $1e
    jp   Z, .jp_00_1f7e                                ;; 00:1e22 $ca $7e $1f
    cp   A, $03                                        ;; 00:1e25 $fe $03
    jp   C, .jp_00_204f                                ;; 00:1e27 $da $4f $20
    jp   .jp_00_211c                                   ;; 00:1e2a $c3 $1c $21
.jp_00_1e2d:
    call call_00_0779                                  ;; 00:1e2d $cd $79 $07
    ret                                                ;; 00:1e30 $c9
.jp_00_1e31:
    ld   A, $1e                                        ;; 00:1e31 $3e $1e
    call call_00_11a8                                  ;; 00:1e33 $cd $a8 $11
    call call_00_101f                                  ;; 00:1e36 $cd $1f $10
    ld   HL, wCA57                                     ;; 00:1e39 $21 $57 $ca
    ld   B, $09                                        ;; 00:1e3c $06 $09
    call memzeroSmall                                  ;; 00:1e3e $cd $8b $05
    ld   A, $1a                                        ;; 00:1e41 $3e $1a
    ld   [wBackupRomBank], A                           ;; 00:1e43 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1e46 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1e49 $ea $00 $20
    ld   HL, data_1a_5c4e                              ;; 00:1e4c $21 $4e $5c
    ld   DE, wCA4E                                     ;; 00:1e4f $11 $4e $ca
    ld   B, $09                                        ;; 00:1e52 $06 $09
    call memcopySmall                                  ;; 00:1e54 $cd $91 $05
    xor  A, A                                          ;; 00:1e57 $af
    ld   [wCA4D], A                                    ;; 00:1e58 $ea $4d $ca
    ld   [wC460], A                                    ;; 00:1e5b $ea $60 $c4
    ld   A, $03                                        ;; 00:1e5e $3e $03
    ld   [wD58B], A                                    ;; 00:1e60 $ea $8b $d5
    ret                                                ;; 00:1e63 $c9
.jp_00_1e64:
    ret                                                ;; 00:1e64 $c9
.jp_00_1e65:
    ld   A, $04                                        ;; 00:1e65 $3e $04
    ld   [wD58C], A                                    ;; 00:1e67 $ea $8c $d5
    xor  A, A                                          ;; 00:1e6a $af
    ld   [wD58B], A                                    ;; 00:1e6b $ea $8b $d5
    ld   A, $8f                                        ;; 00:1e6e $3e $8f
    ld   [wD5D2], A                                    ;; 00:1e70 $ea $d2 $d5
    ld   A, $01                                        ;; 00:1e73 $3e $01
    ld   [wD375], A                                    ;; 00:1e75 $ea $75 $d3
    xor  A, A                                          ;; 00:1e78 $af
    ld   [wD395], A                                    ;; 00:1e79 $ea $95 $d3
    ld   [wD376], A                                    ;; 00:1e7c $ea $76 $d3
    ld   [wD37E], A                                    ;; 00:1e7f $ea $7e $d3
    ld   [wD383], A                                    ;; 00:1e82 $ea $83 $d3
    ld   [wD38F], A                                    ;; 00:1e85 $ea $8f $d3
    ld   A, [wC461]                                    ;; 00:1e88 $fa $61 $c4
    inc  A                                             ;; 00:1e8b $3c
    ld   [wC148], A                                    ;; 00:1e8c $ea $48 $c1
    ret                                                ;; 00:1e8f $c9
.jp_00_1e90:
    call call_00_1292                                  ;; 00:1e90 $cd $92 $12
    ld   A, $01                                        ;; 00:1e93 $3e $01
    ld   [wC460], A                                    ;; 00:1e95 $ea $60 $c4
    xor  A, A                                          ;; 00:1e98 $af
    ld   [wC461], A                                    ;; 00:1e99 $ea $61 $c4
    ld   B, $08                                        ;; 00:1e9c $06 $08
    ld   A, [wC519]                                    ;; 00:1e9e $fa $19 $c5
    ld   C, A                                          ;; 00:1ea1 $4f
    call call_00_0542                                  ;; 00:1ea2 $cd $42 $05
    ld   A, B                                          ;; 00:1ea5 $78
    dec  A                                             ;; 00:1ea6 $3d
    ld   [wC45B], A                                    ;; 00:1ea7 $ea $5b $c4
.jp_00_1eaa:
    ld   B, $10                                        ;; 00:1eaa $06 $10
    call call_00_2217                                  ;; 00:1eac $cd $17 $22
    ld   HL, wC518                                     ;; 00:1eaf $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:1eb2 $2a
    ld   C, [HL]                                       ;; 00:1eb3 $4e
    ld   B, A                                          ;; 00:1eb4 $47
    ld   HL, wPlayerX                                  ;; 00:1eb5 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:1eb8 $2a
    ld   L, [HL]                                       ;; 00:1eb9 $6e
    ld   H, A                                          ;; 00:1eba $67
    add  HL, BC                                        ;; 00:1ebb $09
    call call_00_05ea                                  ;; 00:1ebc $cd $ea $05
    jr   C, .jr_00_1ec3                                ;; 00:1ebf $38 $02
    ld   H, D                                          ;; 00:1ec1 $62
    ld   L, E                                          ;; 00:1ec2 $6b
.jr_00_1ec3:
    ld   A, H                                          ;; 00:1ec3 $7c
    ld   [wPlayerX], A                                 ;; 00:1ec4 $ea $44 $c1
    ld   A, L                                          ;; 00:1ec7 $7d
    ld   [wPlayerX.low], A                             ;; 00:1ec8 $ea $45 $c1
    xor  A, A                                          ;; 00:1ecb $af
    ld   [wD5CA], A                                    ;; 00:1ecc $ea $ca $d5
    ld   HL, wPlayerX                                  ;; 00:1ecf $21 $44 $c1
    ld   DE, wD5BC                                     ;; 00:1ed2 $11 $bc $d5
    ld   B, $04                                        ;; 00:1ed5 $06 $04
    call memcopySmall                                  ;; 00:1ed7 $cd $91 $05
    ld   A, [wC45B]                                    ;; 00:1eda $fa $5b $c4
    ld   [wD837], A                                    ;; 00:1edd $ea $37 $d8
    ld   A, $04                                        ;; 00:1ee0 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:1ee2 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1ee5 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1ee8 $ea $00 $20
    call call_04_42cb                                  ;; 00:1eeb $cd $cb $42
    ld   A, B                                          ;; 00:1eee $78
    and  A, A                                          ;; 00:1eef $a7
    jr   NZ, .jr_00_1ef9                               ;; 00:1ef0 $20 $07
    ld   A, $01                                        ;; 00:1ef2 $3e $01
    ld   [wC459], A                                    ;; 00:1ef4 $ea $59 $c4
    jr   .jr_00_1f05                                   ;; 00:1ef7 $18 $0c
.jr_00_1ef9:
    ld   A, [wC459]                                    ;; 00:1ef9 $fa $59 $c4
    and  A, A                                          ;; 00:1efc $a7
    jr   NZ, .jr_00_1f2d                               ;; 00:1efd $20 $2e
    ld   A, [wD837]                                    ;; 00:1eff $fa $37 $d8
    ld   [wC45B], A                                    ;; 00:1f02 $ea $5b $c4
.jr_00_1f05:
    ld   A, [wC46B]                                    ;; 00:1f05 $fa $6b $c4
    and  A, A                                          ;; 00:1f08 $a7
    jr   NZ, .jr_00_1f3f                               ;; 00:1f09 $20 $34
    ld   HL, wPlayerY                                  ;; 00:1f0b $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:1f0e $2a
    ld   E, [HL]                                       ;; 00:1f0f $5e
    ld   D, A                                          ;; 00:1f10 $57
    ld   HL, wPlayerX                                  ;; 00:1f11 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:1f14 $2a
    ld   L, [HL]                                       ;; 00:1f15 $6e
    ld   H, A                                          ;; 00:1f16 $67
    ld   BC, $0f                                       ;; 00:1f17 $01 $0f $00
    add  HL, BC                                        ;; 00:1f1a $09
    call call_00_06ce                                  ;; 00:1f1b $cd $ce $06
    jr   NC, .jr_00_1f2d                               ;; 00:1f1e $30 $0d
    ld   A, $0f                                        ;; 00:1f20 $3e $0f
    add  A, E                                          ;; 00:1f22 $83
    ld   E, A                                          ;; 00:1f23 $5f
    ld   A, $00                                        ;; 00:1f24 $3e $00
    adc  A, D                                          ;; 00:1f26 $8a
    ld   D, A                                          ;; 00:1f27 $57
    call call_00_06ce                                  ;; 00:1f28 $cd $ce $06
    jr   C, .jr_00_1f3f                                ;; 00:1f2b $38 $12
.jr_00_1f2d:
    call call_00_1282                                  ;; 00:1f2d $cd $82 $12
    ld   HL, wC518                                     ;; 00:1f30 $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:1f33 $2a
    ld   C, [HL]                                       ;; 00:1f34 $4e
    ld   B, A                                          ;; 00:1f35 $47
    ld   HL, wPlayerX.low                              ;; 00:1f36 $21 $45 $c1
    ld   A, [HL]                                       ;; 00:1f39 $7e
    sub  A, C                                          ;; 00:1f3a $91
    ld   [HL-], A                                      ;; 00:1f3b $32
    ld   A, [HL]                                       ;; 00:1f3c $7e
    sbc  A, B                                          ;; 00:1f3d $98
    ld   [HL], A                                       ;; 00:1f3e $77
.jr_00_1f3f:
    ld   HL, wPlayerX                                  ;; 00:1f3f $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:1f42 $2a
    ld   L, [HL]                                       ;; 00:1f43 $6e
    ld   H, A                                          ;; 00:1f44 $67
    ld   DE, $49                                       ;; 00:1f45 $11 $49 $00
    call call_00_05ea                                  ;; 00:1f48 $cd $ea $05
    jp   C, call_00_21d5                               ;; 00:1f4b $da $d5 $21
    ld   B, $57                                        ;; 00:1f4e $06 $57
    call call_00_2217                                  ;; 00:1f50 $cd $17 $22
    call call_00_05ea                                  ;; 00:1f53 $cd $ea $05
    jp   NC, call_00_21d5                              ;; 00:1f56 $d2 $d5 $21
    ld   HL, wCEB6                                     ;; 00:1f59 $21 $b6 $ce
    xor  A, A                                          ;; 00:1f5c $af
    ld   [HL+], A                                      ;; 00:1f5d $22
    ld   [HL], $14                                     ;; 00:1f5e $36 $14
    jp   call_00_21f1                                  ;; 00:1f60 $c3 $f1 $21
.jp_00_1f63:
    call call_00_1292                                  ;; 00:1f63 $cd $92 $12
    ld   A, $02                                        ;; 00:1f66 $3e $02
    ld   [wC460], A                                    ;; 00:1f68 $ea $60 $c4
    ld   A, $01                                        ;; 00:1f6b $3e $01
    ld   [wC461], A                                    ;; 00:1f6d $ea $61 $c4
    ld   B, $08                                        ;; 00:1f70 $06 $08
    ld   A, [wC519]                                    ;; 00:1f72 $fa $19 $c5
    ld   C, A                                          ;; 00:1f75 $4f
    call call_00_0542                                  ;; 00:1f76 $cd $42 $05
    ld   A, B                                          ;; 00:1f79 $78
    dec  A                                             ;; 00:1f7a $3d
    ld   [wC45B], A                                    ;; 00:1f7b $ea $5b $c4
.jp_00_1f7e:
    ld   HL, wC518                                     ;; 00:1f7e $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:1f81 $2a
    ld   C, [HL]                                       ;; 00:1f82 $4e
    ld   B, A                                          ;; 00:1f83 $47
    ld   HL, wPlayerX                                  ;; 00:1f84 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:1f87 $2a
    ld   L, [HL]                                       ;; 00:1f88 $6e
    ld   H, A                                          ;; 00:1f89 $67
    ld   A, L                                          ;; 00:1f8a $7d
    sub  A, C                                          ;; 00:1f8b $91
    ld   L, A                                          ;; 00:1f8c $6f
    ld   A, H                                          ;; 00:1f8d $7c
    sbc  A, B                                          ;; 00:1f8e $98
    ld   H, A                                          ;; 00:1f8f $67
    ld   A, H                                          ;; 00:1f90 $7c
    bit  7, A                                          ;; 00:1f91 $cb $7f
    jr   Z, .jr_00_1f98                                ;; 00:1f93 $28 $03
    ld   HL, $00                                       ;; 00:1f95 $21 $00 $00
.jr_00_1f98:
    ld   A, H                                          ;; 00:1f98 $7c
    ld   [wPlayerX], A                                 ;; 00:1f99 $ea $44 $c1
    ld   A, L                                          ;; 00:1f9c $7d
    ld   [wPlayerX.low], A                             ;; 00:1f9d $ea $45 $c1
    xor  A, A                                          ;; 00:1fa0 $af
    ld   [wD5CA], A                                    ;; 00:1fa1 $ea $ca $d5
    ld   HL, wPlayerX                                  ;; 00:1fa4 $21 $44 $c1
    ld   DE, wD5BC                                     ;; 00:1fa7 $11 $bc $d5
    ld   B, $04                                        ;; 00:1faa $06 $04
    call memcopySmall                                  ;; 00:1fac $cd $91 $05
    ld   A, [wC45B]                                    ;; 00:1faf $fa $5b $c4
    ld   [wD837], A                                    ;; 00:1fb2 $ea $37 $d8
    ld   A, $04                                        ;; 00:1fb5 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:1fb7 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:1fba $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:1fbd $ea $00 $20
    call call_04_42cb                                  ;; 00:1fc0 $cd $cb $42
    ld   A, B                                          ;; 00:1fc3 $78
    and  A, A                                          ;; 00:1fc4 $a7
    jr   NZ, .jr_00_1fce                               ;; 00:1fc5 $20 $07
    ld   A, $01                                        ;; 00:1fc7 $3e $01
    ld   [wC459], A                                    ;; 00:1fc9 $ea $59 $c4
    jr   .jr_00_1fda                                   ;; 00:1fcc $18 $0c
.jr_00_1fce:
    ld   A, [wC459]                                    ;; 00:1fce $fa $59 $c4
    and  A, A                                          ;; 00:1fd1 $a7
    jr   NZ, .jr_00_1ffe                               ;; 00:1fd2 $20 $2a
    ld   A, [wD837]                                    ;; 00:1fd4 $fa $37 $d8
    ld   [wC45B], A                                    ;; 00:1fd7 $ea $5b $c4
.jr_00_1fda:
    ld   A, [wC46B]                                    ;; 00:1fda $fa $6b $c4
    and  A, A                                          ;; 00:1fdd $a7
    jr   NZ, .jr_00_2010                               ;; 00:1fde $20 $30
    ld   HL, wPlayerY                                  ;; 00:1fe0 $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:1fe3 $2a
    ld   E, [HL]                                       ;; 00:1fe4 $5e
    ld   D, A                                          ;; 00:1fe5 $57
    ld   HL, wPlayerX                                  ;; 00:1fe6 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:1fe9 $2a
    ld   L, [HL]                                       ;; 00:1fea $6e
    ld   H, A                                          ;; 00:1feb $67
    call call_00_06ce                                  ;; 00:1fec $cd $ce $06
    jr   NC, .jr_00_1ffe                               ;; 00:1fef $30 $0d
    ld   A, $0f                                        ;; 00:1ff1 $3e $0f
    add  A, E                                          ;; 00:1ff3 $83
    ld   E, A                                          ;; 00:1ff4 $5f
    ld   A, $00                                        ;; 00:1ff5 $3e $00
    adc  A, D                                          ;; 00:1ff7 $8a
    ld   D, A                                          ;; 00:1ff8 $57
    call call_00_06ce                                  ;; 00:1ff9 $cd $ce $06
    jr   C, .jr_00_2010                                ;; 00:1ffc $38 $12
.jr_00_1ffe:
    call call_00_1282                                  ;; 00:1ffe $cd $82 $12
    ld   HL, wC518                                     ;; 00:2001 $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:2004 $2a
    ld   C, [HL]                                       ;; 00:2005 $4e
    ld   B, A                                          ;; 00:2006 $47
    ld   HL, wPlayerX.low                              ;; 00:2007 $21 $45 $c1
    ld   A, C                                          ;; 00:200a $79
    add  A, [HL]                                       ;; 00:200b $86
    ld   [HL-], A                                      ;; 00:200c $32
    ld   A, B                                          ;; 00:200d $78
    adc  A, [HL]                                       ;; 00:200e $8e
    ld   [HL], A                                       ;; 00:200f $77
.jr_00_2010:
    ld   HL, wPlayerX                                  ;; 00:2010 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:2013 $2a
    ld   L, [HL]                                       ;; 00:2014 $6e
    ld   H, A                                          ;; 00:2015 $67
    ld   DE, $48                                       ;; 00:2016 $11 $48 $00
    call call_00_05ea                                  ;; 00:2019 $cd $ea $05
    jp   C, call_00_21d5                               ;; 00:201c $da $d5 $21
    ld   B, $58                                        ;; 00:201f $06 $58
    call call_00_2217                                  ;; 00:2021 $cd $17 $22
    call call_00_05ea                                  ;; 00:2024 $cd $ea $05
    jp   NC, call_00_21d5                              ;; 00:2027 $d2 $d5 $21
    ld   HL, wCEB6                                     ;; 00:202a $21 $b6 $ce
    ld   A, $ff                                        ;; 00:202d $3e $ff
    ld   [HL+], A                                      ;; 00:202f $22
    ld   [HL], A                                       ;; 00:2030 $77
    jp   call_00_21f1                                  ;; 00:2031 $c3 $f1 $21
.jp_00_2034:
    call call_00_1292                                  ;; 00:2034 $cd $92 $12
    ld   A, $03                                        ;; 00:2037 $3e $03
    ld   [wC460], A                                    ;; 00:2039 $ea $60 $c4
    ld   A, $02                                        ;; 00:203c $3e $02
    ld   [wC461], A                                    ;; 00:203e $ea $61 $c4
    ld   B, $08                                        ;; 00:2041 $06 $08
    ld   A, [wC519]                                    ;; 00:2043 $fa $19 $c5
    ld   C, A                                          ;; 00:2046 $4f
    call call_00_0542                                  ;; 00:2047 $cd $42 $05
    ld   A, B                                          ;; 00:204a $78
    dec  A                                             ;; 00:204b $3d
    ld   [wC45B], A                                    ;; 00:204c $ea $5b $c4
.jp_00_204f:
    ld   HL, wC518                                     ;; 00:204f $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:2052 $2a
    ld   C, [HL]                                       ;; 00:2053 $4e
    ld   B, A                                          ;; 00:2054 $47
    ld   HL, wPlayerY                                  ;; 00:2055 $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:2058 $2a
    ld   L, [HL]                                       ;; 00:2059 $6e
    ld   H, A                                          ;; 00:205a $67
    ld   A, L                                          ;; 00:205b $7d
    sub  A, C                                          ;; 00:205c $91
    ld   L, A                                          ;; 00:205d $6f
    ld   A, H                                          ;; 00:205e $7c
    sbc  A, B                                          ;; 00:205f $98
    ld   H, A                                          ;; 00:2060 $67
    ld   A, H                                          ;; 00:2061 $7c
    bit  7, A                                          ;; 00:2062 $cb $7f
    jr   Z, .jr_00_2069                                ;; 00:2064 $28 $03
    ld   HL, $00                                       ;; 00:2066 $21 $00 $00
.jr_00_2069:
    ld   A, H                                          ;; 00:2069 $7c
    ld   [wPlayerY], A                                 ;; 00:206a $ea $46 $c1
    ld   A, L                                          ;; 00:206d $7d
    ld   [wPlayerY.low], A                             ;; 00:206e $ea $47 $c1
    xor  A, A                                          ;; 00:2071 $af
    ld   [wD5CA], A                                    ;; 00:2072 $ea $ca $d5
    ld   HL, wPlayerX                                  ;; 00:2075 $21 $44 $c1
    ld   DE, wD5BC                                     ;; 00:2078 $11 $bc $d5
    ld   B, $04                                        ;; 00:207b $06 $04
    call memcopySmall                                  ;; 00:207d $cd $91 $05
    ld   A, [wC45B]                                    ;; 00:2080 $fa $5b $c4
    ld   [wD837], A                                    ;; 00:2083 $ea $37 $d8
    ld   A, $04                                        ;; 00:2086 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2088 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:208b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:208e $ea $00 $20
    call call_04_42cb                                  ;; 00:2091 $cd $cb $42
    ld   A, B                                          ;; 00:2094 $78
    and  A, A                                          ;; 00:2095 $a7
    jr   NZ, .jr_00_209f                               ;; 00:2096 $20 $07
    ld   A, $01                                        ;; 00:2098 $3e $01
    ld   [wC459], A                                    ;; 00:209a $ea $59 $c4
    jr   .jr_00_20ab                                   ;; 00:209d $18 $0c
.jr_00_209f:
    ld   A, [wC459]                                    ;; 00:209f $fa $59 $c4
    and  A, A                                          ;; 00:20a2 $a7
    jr   NZ, .jr_00_20cb                               ;; 00:20a3 $20 $26
    ld   A, [wD837]                                    ;; 00:20a5 $fa $37 $d8
    ld   [wC45B], A                                    ;; 00:20a8 $ea $5b $c4
.jr_00_20ab:
    ld   A, [wC46B]                                    ;; 00:20ab $fa $6b $c4
    and  A, A                                          ;; 00:20ae $a7
    jr   NZ, .jr_00_20dd                               ;; 00:20af $20 $2c
    ld   HL, wPlayerY                                  ;; 00:20b1 $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:20b4 $2a
    ld   E, [HL]                                       ;; 00:20b5 $5e
    ld   D, A                                          ;; 00:20b6 $57
    ld   HL, wPlayerX                                  ;; 00:20b7 $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:20ba $2a
    ld   L, [HL]                                       ;; 00:20bb $6e
    ld   H, A                                          ;; 00:20bc $67
    call call_00_06ce                                  ;; 00:20bd $cd $ce $06
    jr   NC, .jr_00_20cb                               ;; 00:20c0 $30 $09
    ld   BC, $0f                                       ;; 00:20c2 $01 $0f $00
    add  HL, BC                                        ;; 00:20c5 $09
    call call_00_06ce                                  ;; 00:20c6 $cd $ce $06
    jr   C, .jr_00_20dd                                ;; 00:20c9 $38 $12
.jr_00_20cb:
    call call_00_1282                                  ;; 00:20cb $cd $82 $12
    ld   HL, wC518                                     ;; 00:20ce $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:20d1 $2a
    ld   C, [HL]                                       ;; 00:20d2 $4e
    ld   B, A                                          ;; 00:20d3 $47
    ld   HL, wPlayerY.low                              ;; 00:20d4 $21 $47 $c1
    ld   A, C                                          ;; 00:20d7 $79
    add  A, [HL]                                       ;; 00:20d8 $86
    ld   [HL-], A                                      ;; 00:20d9 $32
    ld   A, B                                          ;; 00:20da $78
    adc  A, [HL]                                       ;; 00:20db $8e
    ld   [HL], A                                       ;; 00:20dc $77
.jr_00_20dd:
    ld   HL, wPlayerY                                  ;; 00:20dd $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:20e0 $2a
    ld   L, [HL]                                       ;; 00:20e1 $6e
    ld   H, A                                          ;; 00:20e2 $67
    ld   DE, $40                                       ;; 00:20e3 $11 $40 $00
    call call_00_05ea                                  ;; 00:20e6 $cd $ea $05
    jp   C, call_00_21e3                               ;; 00:20e9 $da $e3 $21
    ld   B, $50                                        ;; 00:20ec $06 $50
    call call_00_2223                                  ;; 00:20ee $cd $23 $22
    call call_00_05ea                                  ;; 00:20f1 $cd $ea $05
    jp   NC, call_00_21e3                              ;; 00:20f4 $d2 $e3 $21
    ld   HL, wCEB8                                     ;; 00:20f7 $21 $b8 $ce
    ld   A, $ff                                        ;; 00:20fa $3e $ff
    ld   [HL+], A                                      ;; 00:20fc $22
    ld   [HL], A                                       ;; 00:20fd $77
    jp   call_00_2204                                  ;; 00:20fe $c3 $04 $22
.jp_00_2101:
    call call_00_1292                                  ;; 00:2101 $cd $92 $12
    ld   A, $04                                        ;; 00:2104 $3e $04
    ld   [wC460], A                                    ;; 00:2106 $ea $60 $c4
    ld   A, $03                                        ;; 00:2109 $3e $03
    ld   [wC461], A                                    ;; 00:210b $ea $61 $c4
    ld   B, $08                                        ;; 00:210e $06 $08
    ld   A, [wC519]                                    ;; 00:2110 $fa $19 $c5
    ld   C, A                                          ;; 00:2113 $4f
    call call_00_0542                                  ;; 00:2114 $cd $42 $05
    ld   A, B                                          ;; 00:2117 $78
    dec  A                                             ;; 00:2118 $3d
    ld   [wC45B], A                                    ;; 00:2119 $ea $5b $c4
.jp_00_211c:
    ld   B, $10                                        ;; 00:211c $06 $10
    call call_00_2223                                  ;; 00:211e $cd $23 $22
    ld   HL, wC518                                     ;; 00:2121 $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:2124 $2a
    ld   C, [HL]                                       ;; 00:2125 $4e
    ld   B, A                                          ;; 00:2126 $47
    ld   HL, wPlayerY                                  ;; 00:2127 $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:212a $2a
    ld   L, [HL]                                       ;; 00:212b $6e
    ld   H, A                                          ;; 00:212c $67
    add  HL, BC                                        ;; 00:212d $09
    call call_00_05ea                                  ;; 00:212e $cd $ea $05
    jr   C, .jr_00_2135                                ;; 00:2131 $38 $02
    ld   H, D                                          ;; 00:2133 $62
    ld   L, E                                          ;; 00:2134 $6b
.jr_00_2135:
    ld   A, H                                          ;; 00:2135 $7c
    ld   [wPlayerY], A                                 ;; 00:2136 $ea $46 $c1
    ld   A, L                                          ;; 00:2139 $7d
    ld   [wPlayerY.low], A                             ;; 00:213a $ea $47 $c1
    xor  A, A                                          ;; 00:213d $af
    ld   [wD5CA], A                                    ;; 00:213e $ea $ca $d5
    ld   HL, wPlayerX                                  ;; 00:2141 $21 $44 $c1
    ld   DE, wD5BC                                     ;; 00:2144 $11 $bc $d5
    ld   B, $04                                        ;; 00:2147 $06 $04
    call memcopySmall                                  ;; 00:2149 $cd $91 $05
    ld   A, [wC45B]                                    ;; 00:214c $fa $5b $c4
    ld   [wD837], A                                    ;; 00:214f $ea $37 $d8
    ld   A, $04                                        ;; 00:2152 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2154 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2157 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:215a $ea $00 $20
    call call_04_42cb                                  ;; 00:215d $cd $cb $42
    ld   A, B                                          ;; 00:2160 $78
    and  A, A                                          ;; 00:2161 $a7
    jr   NZ, .jr_00_216b                               ;; 00:2162 $20 $07
    ld   A, $01                                        ;; 00:2164 $3e $01
    ld   [wC459], A                                    ;; 00:2166 $ea $59 $c4
    jr   .jr_00_2177                                   ;; 00:2169 $18 $0c
.jr_00_216b:
    ld   A, [wC459]                                    ;; 00:216b $fa $59 $c4
    and  A, A                                          ;; 00:216e $a7
    jr   NZ, .jr_00_219f                               ;; 00:216f $20 $2e
    ld   A, [wD837]                                    ;; 00:2171 $fa $37 $d8
    ld   [wC45B], A                                    ;; 00:2174 $ea $5b $c4
.jr_00_2177:
    ld   A, [wC46B]                                    ;; 00:2177 $fa $6b $c4
    and  A, A                                          ;; 00:217a $a7
    jr   NZ, .jr_00_21b1                               ;; 00:217b $20 $34
    ld   HL, wPlayerY                                  ;; 00:217d $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:2180 $2a
    ld   E, [HL]                                       ;; 00:2181 $5e
    ld   D, A                                          ;; 00:2182 $57
    ld   A, $0f                                        ;; 00:2183 $3e $0f
    add  A, E                                          ;; 00:2185 $83
    ld   E, A                                          ;; 00:2186 $5f
    ld   A, $00                                        ;; 00:2187 $3e $00
    adc  A, D                                          ;; 00:2189 $8a
    ld   D, A                                          ;; 00:218a $57
    ld   HL, wPlayerX                                  ;; 00:218b $21 $44 $c1
    ld   A, [HL+]                                      ;; 00:218e $2a
    ld   L, [HL]                                       ;; 00:218f $6e
    ld   H, A                                          ;; 00:2190 $67
    call call_00_06ce                                  ;; 00:2191 $cd $ce $06
    jr   NC, .jr_00_219f                               ;; 00:2194 $30 $09
    ld   BC, $0f                                       ;; 00:2196 $01 $0f $00
    add  HL, BC                                        ;; 00:2199 $09
    call call_00_06ce                                  ;; 00:219a $cd $ce $06
    jr   C, .jr_00_21b1                                ;; 00:219d $38 $12
.jr_00_219f:
    call call_00_1282                                  ;; 00:219f $cd $82 $12
    ld   HL, wC518                                     ;; 00:21a2 $21 $18 $c5
    ld   A, [HL+]                                      ;; 00:21a5 $2a
    ld   C, [HL]                                       ;; 00:21a6 $4e
    ld   B, A                                          ;; 00:21a7 $47
    ld   HL, wPlayerY.low                              ;; 00:21a8 $21 $47 $c1
    ld   A, [HL]                                       ;; 00:21ab $7e
    sub  A, C                                          ;; 00:21ac $91
    ld   [HL-], A                                      ;; 00:21ad $32
    ld   A, [HL]                                       ;; 00:21ae $7e
    sbc  A, B                                          ;; 00:21af $98
    ld   [HL], A                                       ;; 00:21b0 $77
.jr_00_21b1:
    ld   HL, wPlayerY                                  ;; 00:21b1 $21 $46 $c1
    ld   A, [HL+]                                      ;; 00:21b4 $2a
    ld   L, [HL]                                       ;; 00:21b5 $6e
    ld   H, A                                          ;; 00:21b6 $67
    ld   DE, $41                                       ;; 00:21b7 $11 $41 $00
    call call_00_05ea                                  ;; 00:21ba $cd $ea $05
    jp   C, call_00_21e3                               ;; 00:21bd $da $e3 $21
    ld   B, $4f                                        ;; 00:21c0 $06 $4f
    call call_00_2223                                  ;; 00:21c2 $cd $23 $22
    call call_00_05ea                                  ;; 00:21c5 $cd $ea $05
    jp   NC, call_00_21e3                              ;; 00:21c8 $d2 $e3 $21
    ld   HL, wCEB8                                     ;; 00:21cb $21 $b8 $ce
    xor  A, A                                          ;; 00:21ce $af
    ld   [HL+], A                                      ;; 00:21cf $22
    ld   [HL], $12                                     ;; 00:21d0 $36 $12
    jp   call_00_2204                                  ;; 00:21d2 $c3 $04 $22

call_00_21d5:
    ld   A, [wCEB3]                                    ;; 00:21d5 $fa $b3 $ce
    ld   B, A                                          ;; 00:21d8 $47
    ld   A, [wPlayerX.low]                             ;; 00:21d9 $fa $45 $c1
    sub  A, B                                          ;; 00:21dc $90
    add  A, $08                                        ;; 00:21dd $c6 $08
    ld   [wC45D], A                                    ;; 00:21df $ea $5d $c4
    ret                                                ;; 00:21e2 $c9

call_00_21e3:
    ld   A, [wCEB5]                                    ;; 00:21e3 $fa $b5 $ce
    ld   B, A                                          ;; 00:21e6 $47
    ld   A, [wPlayerY.low]                             ;; 00:21e7 $fa $47 $c1
    sub  A, B                                          ;; 00:21ea $90
    add  A, $10                                        ;; 00:21eb $c6 $10
    ld   [wC45C], A                                    ;; 00:21ed $ea $5c $c4
    ret                                                ;; 00:21f0 $c9

call_00_21f1:
    ld   HL, wPlayerX.low                              ;; 00:21f1 $21 $45 $c1
    ld   A, [HL-]                                      ;; 00:21f4 $3a
    sub  A, $48                                        ;; 00:21f5 $d6 $48
    ld   [wCEB3], A                                    ;; 00:21f7 $ea $b3 $ce
    ld   [wSCX], A                                     ;; 00:21fa $ea $88 $d5
    ld   A, [HL]                                       ;; 00:21fd $7e
    sbc  A, $00                                        ;; 00:21fe $de $00
    ld   [wCEB2], A                                    ;; 00:2200 $ea $b2 $ce
    ret                                                ;; 00:2203 $c9

call_00_2204:
    ld   HL, wPlayerY.low                              ;; 00:2204 $21 $47 $c1
    ld   A, [HL-]                                      ;; 00:2207 $3a
    sub  A, $40                                        ;; 00:2208 $d6 $40
    ld   [wCEB5], A                                    ;; 00:220a $ea $b5 $ce
    ld   [wSCY], A                                     ;; 00:220d $ea $87 $d5
    ld   A, [HL]                                       ;; 00:2210 $7e
    sbc  A, $00                                        ;; 00:2211 $de $00
    ld   [wCEB4], A                                    ;; 00:2213 $ea $b4 $ce
    ret                                                ;; 00:2216 $c9

call_00_2217:
    ld   A, [wD5AC]                                    ;; 00:2217 $fa $ac $d5
    sub  A, B                                          ;; 00:221a $90
    ld   E, A                                          ;; 00:221b $5f
    ld   A, [wD5AB]                                    ;; 00:221c $fa $ab $d5
    sbc  A, $00                                        ;; 00:221f $de $00
    ld   D, A                                          ;; 00:2221 $57
    ret                                                ;; 00:2222 $c9

call_00_2223:
    ld   A, [wD5AE]                                    ;; 00:2223 $fa $ae $d5
    sub  A, B                                          ;; 00:2226 $90
    ld   E, A                                          ;; 00:2227 $5f
    ld   A, [wD5AD]                                    ;; 00:2228 $fa $ad $d5
    sbc  A, $00                                        ;; 00:222b $de $00
    ld   D, A                                          ;; 00:222d $57
    ret                                                ;; 00:222e $c9

call_00_222f:
    push HL                                            ;; 00:222f $e5
    push DE                                            ;; 00:2230 $d5
    ld   HL, wC53F                                     ;; 00:2231 $21 $3f $c5
    ld   DE, wC547                                     ;; 00:2234 $11 $47 $c5
    ld   B, $08                                        ;; 00:2237 $06 $08
    ld   C, A                                          ;; 00:2239 $4f
.jr_00_223a:
    ld   A, [HL+]                                      ;; 00:223a $2a
    cp   A, C                                          ;; 00:223b $b9
    jr   Z, .jr_00_2262                                ;; 00:223c $28 $24
    cp   A, $ff                                        ;; 00:223e $fe $ff
    jr   Z, .jr_00_224c                                ;; 00:2240 $28 $0a
    inc  DE                                            ;; 00:2242 $13
    inc  DE                                            ;; 00:2243 $13
    dec  B                                             ;; 00:2244 $05
    jr   NZ, .jr_00_223a                               ;; 00:2245 $20 $f3
    pop  DE                                            ;; 00:2247 $d1
    pop  HL                                            ;; 00:2248 $e1
    ld   B, $02                                        ;; 00:2249 $06 $02
    ret                                                ;; 00:224b $c9
.jr_00_224c:
    dec  HL                                            ;; 00:224c $2b
    ld   [HL], C                                       ;; 00:224d $71
    ld   A, [wC53C]                                    ;; 00:224e $fa $3c $c5
    ld   [DE], A                                       ;; 00:2251 $12
    ld   [wC53E], A                                    ;; 00:2252 $ea $3e $c5
    inc  DE                                            ;; 00:2255 $13
    ld   A, [wC53B]                                    ;; 00:2256 $fa $3b $c5
    ld   [DE], A                                       ;; 00:2259 $12
    ld   [wC53D], A                                    ;; 00:225a $ea $3d $c5
    ld   B, $00                                        ;; 00:225d $06 $00
    pop  DE                                            ;; 00:225f $d1
    pop  HL                                            ;; 00:2260 $e1
    ret                                                ;; 00:2261 $c9
.jr_00_2262:
    ld   A, [DE]                                       ;; 00:2262 $1a
    ld   [wC53E], A                                    ;; 00:2263 $ea $3e $c5
    inc  DE                                            ;; 00:2266 $13
    ld   A, [DE]                                       ;; 00:2267 $1a
    ld   [wC53D], A                                    ;; 00:2268 $ea $3d $c5
    xor  A, A                                          ;; 00:226b $af
    ld   [wC557], A                                    ;; 00:226c $ea $57 $c5
    ld   B, $01                                        ;; 00:226f $06 $01
    pop  DE                                            ;; 00:2271 $d1
    pop  HL                                            ;; 00:2272 $e1
    ret                                                ;; 00:2273 $c9

call_00_2274:
    ld   A, [wBackupRomBank]                           ;; 00:2274 $fa $b5 $d5
    ld   [wD837], A                                    ;; 00:2277 $ea $37 $d8
    ld   A, [wC534]                                    ;; 00:227a $fa $34 $c5
    ld   [wBackupRomBank], A                           ;; 00:227d $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2280 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2283 $ea $00 $20
    ld   A, [wC532]                                    ;; 00:2286 $fa $32 $c5
    ld   C, A                                          ;; 00:2289 $4f
    ld   A, [wC53C]                                    ;; 00:228a $fa $3c $c5
    ld   B, A                                          ;; 00:228d $47
    add  A, C                                          ;; 00:228e $81
    ld   [wC53C], A                                    ;; 00:228f $ea $3c $c5
    ld   L, B                                          ;; 00:2292 $68
    ld   H, $00                                        ;; 00:2293 $26 $00
    add  HL, HL                                        ;; 00:2295 $29
    add  HL, HL                                        ;; 00:2296 $29
    add  HL, HL                                        ;; 00:2297 $29
    add  HL, HL                                        ;; 00:2298 $29
    ld   DE, $8000                                     ;; 00:2299 $11 $00 $80
    add  HL, DE                                        ;; 00:229c $19
    ld   D, H                                          ;; 00:229d $54
    ld   E, L                                          ;; 00:229e $5d
    ld   A, H                                          ;; 00:229f $7c
    ld   [wC558], A                                    ;; 00:22a0 $ea $58 $c5
    ld   A, L                                          ;; 00:22a3 $7d
    ld   [wC559], A                                    ;; 00:22a4 $ea $59 $c5
    ld   L, C                                          ;; 00:22a7 $69
    ld   H, $00                                        ;; 00:22a8 $26 $00
    add  HL, HL                                        ;; 00:22aa $29
    add  HL, HL                                        ;; 00:22ab $29
    add  HL, HL                                        ;; 00:22ac $29
    add  HL, HL                                        ;; 00:22ad $29
    ld   B, H                                          ;; 00:22ae $44
    ld   C, L                                          ;; 00:22af $4d
    ld   A, [wC557]                                    ;; 00:22b0 $fa $57 $c5
    and  A, A                                          ;; 00:22b3 $a7
    jr   NZ, .jr_00_22bf                               ;; 00:22b4 $20 $09
    ld   HL, wC535                                     ;; 00:22b6 $21 $35 $c5
    ld   A, [HL+]                                      ;; 00:22b9 $2a
    ld   L, [HL]                                       ;; 00:22ba $6e
    ld   H, A                                          ;; 00:22bb $67
    call memcopy                                       ;; 00:22bc $cd $4e $04
.jr_00_22bf:
    ld   A, [wD5BA]                                    ;; 00:22bf $fa $ba $d5
    and  A, A                                          ;; 00:22c2 $a7
    jr   NZ, .jr_00_22fb                               ;; 00:22c3 $20 $36
    ld   A, [wC538]                                    ;; 00:22c5 $fa $38 $c5
    ld   [wBackupRomBank], A                           ;; 00:22c8 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:22cb $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:22ce $ea $00 $20
    ld   A, [wC53B]                                    ;; 00:22d1 $fa $3b $c5
    add  A, A                                          ;; 00:22d4 $87
    add  A, A                                          ;; 00:22d5 $87
    add  A, A                                          ;; 00:22d6 $87
    ld   C, A                                          ;; 00:22d7 $4f
    ld   B, $00                                        ;; 00:22d8 $06 $00
    ld   HL, wCE65                                     ;; 00:22da $21 $65 $ce
    add  HL, BC                                        ;; 00:22dd $09
    ld   D, H                                          ;; 00:22de $54
    ld   E, L                                          ;; 00:22df $5d
    ld   HL, wC539                                     ;; 00:22e0 $21 $39 $c5
    ld   A, [HL+]                                      ;; 00:22e3 $2a
    ld   L, [HL]                                       ;; 00:22e4 $6e
    ld   H, A                                          ;; 00:22e5 $67
    ld   B, $08                                        ;; 00:22e6 $06 $08
    call memcopySmall                                  ;; 00:22e8 $cd $91 $05
    ld   A, [wC53B]                                    ;; 00:22eb $fa $3b $c5
    ld   [wC55A], A                                    ;; 00:22ee $ea $5a $c5
    inc  A                                             ;; 00:22f1 $3c
    cp   A, $07                                        ;; 00:22f2 $fe $07
    jr   C, .jr_00_22f8                                ;; 00:22f4 $38 $02
    ld   A, $07                                        ;; 00:22f6 $3e $07
.jr_00_22f8:
    ld   [wC53B], A                                    ;; 00:22f8 $ea $3b $c5
.jr_00_22fb:
    ld   A, [wD837]                                    ;; 00:22fb $fa $37 $d8
    ld   [wBackupRomBank], A                           ;; 00:22fe $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2301 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2304 $ea $00 $20
    ret                                                ;; 00:2307 $c9

jp_00_2308:
    ld   A, [wC534]                                    ;; 00:2308 $fa $34 $c5
    ld   [wBackupRomBank], A                           ;; 00:230b $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:230e $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2311 $ea $00 $20
    ld   HL, wC558                                     ;; 00:2314 $21 $58 $c5
    ld   A, [HL+]                                      ;; 00:2317 $2a
    ld   E, [HL]                                       ;; 00:2318 $5e
    ld   D, A                                          ;; 00:2319 $57
    ld   HL, wC535                                     ;; 00:231a $21 $35 $c5
    ld   A, [HL+]                                      ;; 00:231d $2a
    ld   L, [HL]                                       ;; 00:231e $6e
    ld   H, A                                          ;; 00:231f $67
    ld   B, $40                                        ;; 00:2320 $06 $40
    call memcopySmall                                  ;; 00:2322 $cd $91 $05
    ld   A, H                                          ;; 00:2325 $7c
    ld   [wC535], A                                    ;; 00:2326 $ea $35 $c5
    ld   A, L                                          ;; 00:2329 $7d
    ld   [wC536], A                                    ;; 00:232a $ea $36 $c5
    ld   HL, wC558                                     ;; 00:232d $21 $58 $c5
    ld   A, D                                          ;; 00:2330 $7a
    ld   [HL+], A                                      ;; 00:2331 $22
    ld   [HL], E                                       ;; 00:2332 $73
    ld   A, [wC532]                                    ;; 00:2333 $fa $32 $c5
    sub  A, $04                                        ;; 00:2336 $d6 $04
    ld   [wC532], A                                    ;; 00:2338 $ea $32 $c5
    ret  NZ                                            ;; 00:233b $c0
    xor  A, A                                          ;; 00:233c $af
    ld   [wC557], A                                    ;; 00:233d $ea $57 $c5
    ld   A, [wD5BA]                                    ;; 00:2340 $fa $ba $d5
    and  A, A                                          ;; 00:2343 $a7
    ret  NZ                                            ;; 00:2344 $c0
    ld   A, [wC538]                                    ;; 00:2345 $fa $38 $c5
    ld   [wBackupRomBank], A                           ;; 00:2348 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:234b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:234e $ea $00 $20
    ld   HL, wC539                                     ;; 00:2351 $21 $39 $c5
    ld   A, [HL+]                                      ;; 00:2354 $2a
    ld   L, [HL]                                       ;; 00:2355 $6e
    ld   H, A                                          ;; 00:2356 $67
    ld   A, [wC55A]                                    ;; 00:2357 $fa $5a $c5
    call setSingleSpritePaletteEntry                   ;; 00:235a $cd $d0 $04
    ret                                                ;; 00:235d $c9

call_00_235e:
    ld   A, [wD5D7]                                    ;; 00:235e $fa $d7 $d5
    and  A, A                                          ;; 00:2361 $a7
    ret  Z                                             ;; 00:2362 $c8
    ld   B, A                                          ;; 00:2363 $47
    ld   C, $00                                        ;; 00:2364 $0e $00
    ld   HL, wCF36                                     ;; 00:2366 $21 $36 $cf
.jr_00_2369:
    push BC                                            ;; 00:2369 $c5
    ld   HL, wCF36                                     ;; 00:236a $21 $36 $cf
    call ld_HL_from_HL_add_2C                          ;; 00:236d $cd $7a $06
    call call_00_2379                                  ;; 00:2370 $cd $79 $23
    pop  BC                                            ;; 00:2373 $c1
    inc  C                                             ;; 00:2374 $0c
    dec  B                                             ;; 00:2375 $05
    jr   NZ, .jr_00_2369                               ;; 00:2376 $20 $f1
    ret                                                ;; 00:2378 $c9

call_00_2379:
    ld   A, [HL]                                       ;; 00:2379 $7e
    cp   A, $ff                                        ;; 00:237a $fe $ff
    ret  Z                                             ;; 00:237c $c8
    cp   A, $fe                                        ;; 00:237d $fe $fe
    jr   NZ, .jr_00_2386                               ;; 00:237f $20 $05
    ld   A, $01                                        ;; 00:2381 $3e $01
    ld   [wCF35], A                                    ;; 00:2383 $ea $35 $cf
.jr_00_2386:
    push HL                                            ;; 00:2386 $e5
    ld   BC, $14                                       ;; 00:2387 $01 $14 $00
    add  HL, BC                                        ;; 00:238a $09
    ld   A, [HL-]                                      ;; 00:238b $3a
    and  A, A                                          ;; 00:238c $a7
    jr   NZ, .jr_00_2399                               ;; 00:238d $20 $0a
    ld   [HL], $01                                     ;; 00:238f $36 $01
    ld   DE, $03                                       ;; 00:2391 $11 $03 $00
    add  HL, DE                                        ;; 00:2394 $19
    ld   [HL], $00                                     ;; 00:2395 $36 $00
    jr   .jr_00_239c                                   ;; 00:2397 $18 $03
.jr_00_2399:
    dec  [HL]                                          ;; 00:2399 $35
    jr   Z, .jr_00_23d8                                ;; 00:239a $28 $3c
.jr_00_239c:
    pop  HL                                            ;; 00:239c $e1
    ld   DE, $04                                       ;; 00:239d $11 $04 $00
    add  HL, DE                                        ;; 00:23a0 $19
    ld   A, [HL+]                                      ;; 00:23a1 $2a
    ld   [wCF2F], A                                    ;; 00:23a2 $ea $2f $cf
    ld   A, [HL+]                                      ;; 00:23a5 $2a
    ld   [wCF30], A                                    ;; 00:23a6 $ea $30 $cf
    inc  HL                                            ;; 00:23a9 $23
    ld   A, [HL+]                                      ;; 00:23aa $2a
    ld   [wBackupRomBank], A                           ;; 00:23ab $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:23ae $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:23b1 $ea $00 $20
    ld   BC, $08                                       ;; 00:23b4 $01 $08 $00
    add  HL, BC                                        ;; 00:23b7 $09
    ld   A, [HL+]                                      ;; 00:23b8 $2a
    ld   [wCF31], A                                    ;; 00:23b9 $ea $31 $cf
    ld   A, [HL+]                                      ;; 00:23bc $2a
    ld   [wCF32], A                                    ;; 00:23bd $ea $32 $cf
    ld   BC, $05                                       ;; 00:23c0 $01 $05 $00
    add  HL, BC                                        ;; 00:23c3 $09
    ld   A, [HL+]                                      ;; 00:23c4 $2a
    ld   B, A                                          ;; 00:23c5 $47
    ld   [wD5BB], A                                    ;; 00:23c6 $ea $bb $d5
    ld   A, [HL+]                                      ;; 00:23c9 $2a
    ld   D, A                                          ;; 00:23ca $57
    ld   A, [HL+]                                      ;; 00:23cb $2a
    ld   E, A                                          ;; 00:23cc $5f
    ld   A, [HL+]                                      ;; 00:23cd $2a
    ld   [wCF33], A                                    ;; 00:23ce $ea $33 $cf
    ld   A, [HL+]                                      ;; 00:23d1 $2a
    ld   [wCF34], A                                    ;; 00:23d2 $ea $34 $cf
    jp   .jp_00_2487                                   ;; 00:23d5 $c3 $87 $24
.jr_00_23d8:
    pop  HL                                            ;; 00:23d8 $e1
    ld   DE, $04                                       ;; 00:23d9 $11 $04 $00
    add  HL, DE                                        ;; 00:23dc $19
    ld   A, [HL+]                                      ;; 00:23dd $2a
    ld   [wCF2F], A                                    ;; 00:23de $ea $2f $cf
    ld   A, [HL+]                                      ;; 00:23e1 $2a
    ld   [wCF30], A                                    ;; 00:23e2 $ea $30 $cf
    inc  HL                                            ;; 00:23e5 $23
    ld   A, [HL+]                                      ;; 00:23e6 $2a
    ld   A, A                                          ;; 00:23e7 $7f
    ld   [wBackupRomBank], A                           ;; 00:23e8 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:23eb $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:23ee $ea $00 $20
    ld   A, [HL+]                                      ;; 00:23f1 $2a
    ld   D, A                                          ;; 00:23f2 $57
    ld   A, [HL+]                                      ;; 00:23f3 $2a
    ld   E, A                                          ;; 00:23f4 $5f
    ld   BC, $06                                       ;; 00:23f5 $01 $06 $00
    add  HL, BC                                        ;; 00:23f8 $09
    ld   A, [HL+]                                      ;; 00:23f9 $2a
    ld   [wCF31], A                                    ;; 00:23fa $ea $31 $cf
    ld   A, [HL+]                                      ;; 00:23fd $2a
    ld   [wCF32], A                                    ;; 00:23fe $ea $32 $cf
    inc  HL                                            ;; 00:2401 $23
    inc  HL                                            ;; 00:2402 $23
    ld   A, [HL+]                                      ;; 00:2403 $2a
    push HL                                            ;; 00:2404 $e5
    ld   H, D                                          ;; 00:2405 $62
    ld   L, E                                          ;; 00:2406 $6b
    ld   C, A                                          ;; 00:2407 $4f
    call ld_DE_from_HL_add_2C                          ;; 00:2408 $cd $83 $06
    pop  HL                                            ;; 00:240b $e1
    inc  HL                                            ;; 00:240c $23
    ld   A, [HL]                                       ;; 00:240d $7e
    add  A, E                                          ;; 00:240e $83
    ld   E, A                                          ;; 00:240f $5f
    ld   A, $00                                        ;; 00:2410 $3e $00
    adc  A, D                                          ;; 00:2412 $8a
    ld   D, A                                          ;; 00:2413 $57
    ld   A, [DE]                                       ;; 00:2414 $1a
    cp   A, $ff                                        ;; 00:2415 $fe $ff
    jr   Z, .jr_00_2459                                ;; 00:2417 $28 $40
    cp   A, $fe                                        ;; 00:2419 $fe $fe
    jr   Z, .jr_00_2452                                ;; 00:241b $28 $35
    cp   A, $fd                                        ;; 00:241d $fe $fd
    jr   Z, .jr_00_243f                                ;; 00:241f $28 $1e
    cp   A, $fc                                        ;; 00:2421 $fe $fc
    jr   Z, .jr_00_2438                                ;; 00:2423 $28 $13
    cp   A, $fb                                        ;; 00:2425 $fe $fb
    jr   Z, .jr_00_242b                                ;; 00:2427 $28 $02
    jr   .jr_00_2463                                   ;; 00:2429 $18 $38
.jr_00_242b:
    dec  HL                                            ;; 00:242b $2b
    dec  HL                                            ;; 00:242c $2b
    dec  HL                                            ;; 00:242d $2b
    ld   A, $01                                        ;; 00:242e $3e $01
    ld   [HL+], A                                      ;; 00:2430 $22
    inc  DE                                            ;; 00:2431 $13
    ld   A, [DE]                                       ;; 00:2432 $1a
    dec  DE                                            ;; 00:2433 $1b
    ld   [HL+], A                                      ;; 00:2434 $22
    inc  HL                                            ;; 00:2435 $23
    jr   .jr_00_2459                                   ;; 00:2436 $18 $21
.jr_00_2438:
    inc  DE                                            ;; 00:2438 $13
    ld   A, [DE]                                       ;; 00:2439 $1a
    dec  DE                                            ;; 00:243a $1b
    dec  HL                                            ;; 00:243b $2b
    dec  HL                                            ;; 00:243c $2b
    ld   [HL+], A                                      ;; 00:243d $22
    inc  HL                                            ;; 00:243e $23
.jr_00_243f:
    push HL                                            ;; 00:243f $e5
    ld   BC, hFFEA                                     ;; 00:2440 $01 $ea $ff
    add  HL, BC                                        ;; 00:2443 $09
    ld   A, $ff                                        ;; 00:2444 $3e $ff
    ld   [HL], A                                       ;; 00:2446 $77
    ld   HL, wCF31                                     ;; 00:2447 $21 $31 $cf
    ld   A, $a0                                        ;; 00:244a $3e $a0
    ld   [HL+], A                                      ;; 00:244c $22
    ld   [HL], $b4                                     ;; 00:244d $36 $b4
    pop  HL                                            ;; 00:244f $e1
    jr   .jr_00_2459                                   ;; 00:2450 $18 $07
.jr_00_2452:
    dec  HL                                            ;; 00:2452 $2b
    dec  HL                                            ;; 00:2453 $2b
    ld   A, [HL+]                                      ;; 00:2454 $2a
    ld   [HL-], A                                      ;; 00:2455 $32
    xor  A, A                                          ;; 00:2456 $af
    ld   [HL+], A                                      ;; 00:2457 $22
    inc  HL                                            ;; 00:2458 $23
.jr_00_2459:
    ld   [HL], $00                                     ;; 00:2459 $36 $00
    inc  DE                                            ;; 00:245b $13
    inc  DE                                            ;; 00:245c $13
    ld   A, [DE]                                       ;; 00:245d $1a
    ld   B, A                                          ;; 00:245e $47
    inc  DE                                            ;; 00:245f $13
    ld   A, [DE]                                       ;; 00:2460 $1a
    ld   E, A                                          ;; 00:2461 $5f
    ld   D, B                                          ;; 00:2462 $50
.jr_00_2463:
    ld   A, [HL]                                       ;; 00:2463 $7e
    add  A, $04                                        ;; 00:2464 $c6 $04
    ld   [HL-], A                                      ;; 00:2466 $32
    dec  HL                                            ;; 00:2467 $2b
    dec  HL                                            ;; 00:2468 $2b
    ld   A, [DE]                                       ;; 00:2469 $1a
    ld   [HL+], A                                      ;; 00:246a $22
    inc  DE                                            ;; 00:246b $13
    ld   BC, $03                                       ;; 00:246c $01 $03 $00
    add  HL, BC                                        ;; 00:246f $09
    ld   A, [DE]                                       ;; 00:2470 $1a
    ld   [HL+], A                                      ;; 00:2471 $22
    ld   B, A                                          ;; 00:2472 $47
    ld   [wD5BB], A                                    ;; 00:2473 $ea $bb $d5
    inc  DE                                            ;; 00:2476 $13
    ld   A, [DE]                                       ;; 00:2477 $1a
    ld   [HL+], A                                      ;; 00:2478 $22
    ld   C, A                                          ;; 00:2479 $4f
    inc  DE                                            ;; 00:247a $13
    ld   A, [DE]                                       ;; 00:247b $1a
    ld   [HL+], A                                      ;; 00:247c $22
    ld   E, A                                          ;; 00:247d $5f
    ld   D, C                                          ;; 00:247e $51
    ld   A, [HL+]                                      ;; 00:247f $2a
    ld   [wCF33], A                                    ;; 00:2480 $ea $33 $cf
    ld   A, [HL+]                                      ;; 00:2483 $2a
    ld   [wCF34], A                                    ;; 00:2484 $ea $34 $cf
.jp_00_2487:
    ld   HL, wCF2F                                     ;; 00:2487 $21 $2f $cf
    ld   A, [HL+]                                      ;; 00:248a $2a
    ld   L, [HL]                                       ;; 00:248b $6e
    ld   H, A                                          ;; 00:248c $67
    call call_00_25ab                                  ;; 00:248d $cd $ab $25
    ld   A, [wCF35]                                    ;; 00:2490 $fa $35 $cf
    and  A, A                                          ;; 00:2493 $a7
    jr   Z, .jr_00_249b                                ;; 00:2494 $28 $05
    xor  A, A                                          ;; 00:2496 $af
    ld   [wCF35], A                                    ;; 00:2497 $ea $35 $cf
    ret                                                ;; 00:249a $c9
.jr_00_249b:
    ldh  A, [rLCDC]                                    ;; 00:249b $f0 $40
    bit  5, A                                          ;; 00:249d $cb $6f
    ret  Z                                             ;; 00:249f $c8
    ld   HL, wCF2F                                     ;; 00:24a0 $21 $2f $cf
    ld   A, [HL+]                                      ;; 00:24a3 $2a
    ld   L, [HL]                                       ;; 00:24a4 $6e
    ld   H, A                                          ;; 00:24a5 $67
    ld   A, [wD5BB]                                    ;; 00:24a6 $fa $bb $d5
    ld   B, A                                          ;; 00:24a9 $47
    ld   A, [wD589]                                    ;; 00:24aa $fa $89 $d5
    and  A, A                                          ;; 00:24ad $a7
    jp   NZ, jp_00_2595                                ;; 00:24ae $c2 $95 $25
    ld   DE, $03                                       ;; 00:24b1 $11 $03 $00
    ld   C, $50                                        ;; 00:24b4 $0e $50
.jr_00_24b6:
    ld   A, [HL+]                                      ;; 00:24b6 $2a
    cp   A, C                                          ;; 00:24b7 $b9
    jr   NC, .jr_00_24bc                               ;; 00:24b8 $30 $02
    ld   [HL], $f0                                     ;; 00:24ba $36 $f0
.jr_00_24bc:
    add  HL, DE                                        ;; 00:24bc $19
    dec  B                                             ;; 00:24bd $05
    jr   NZ, .jr_00_24b6                               ;; 00:24be $20 $f6
    ret                                                ;; 00:24c0 $c9

call_00_24c1:
    ld   A, [wC46C]                                    ;; 00:24c1 $fa $6c $c4
    and  A, A                                          ;; 00:24c4 $a7
    jr   Z, .jr_00_24d2                                ;; 00:24c5 $28 $0b
    ld   HL, wC469                                     ;; 00:24c7 $21 $69 $c4
    ld   A, [HL+]                                      ;; 00:24ca $2a
    ld   L, [HL]                                       ;; 00:24cb $6e
    ld   H, A                                          ;; 00:24cc $67
    ld   B, $10                                        ;; 00:24cd $06 $10
    jp   memzeroSmall                                  ;; 00:24cf $c3 $8b $05
.jr_00_24d2:
    ld   A, $1a                                        ;; 00:24d2 $3e $1a
    ld   [wBackupRomBank], A                           ;; 00:24d4 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:24d7 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:24da $ea $00 $20
    ld   A, [wC460]                                    ;; 00:24dd $fa $60 $c4
    and  A, A                                          ;; 00:24e0 $a7
    jr   NZ, .jr_00_24ec                               ;; 00:24e1 $20 $09
    ld   [wC462], A                                    ;; 00:24e3 $ea $62 $c4
    inc  A                                             ;; 00:24e6 $3c
    ld   [wC463], A                                    ;; 00:24e7 $ea $63 $c4
    jr   .jr_00_2534                                   ;; 00:24ea $18 $48
.jr_00_24ec:
    ld   HL, wC463                                     ;; 00:24ec $21 $63 $c4
    dec  [HL]                                          ;; 00:24ef $35
    jr   NZ, .jr_00_2534                               ;; 00:24f0 $20 $42
    ld   A, [wC460]                                    ;; 00:24f2 $fa $60 $c4
    ld   C, A                                          ;; 00:24f5 $4f
    ld   HL, wC46D                                     ;; 00:24f6 $21 $6d $c4
    ld   A, [HL+]                                      ;; 00:24f9 $2a
    ld   L, [HL]                                       ;; 00:24fa $6e
    ld   H, A                                          ;; 00:24fb $67
    call ld_HL_from_HL_add_2C                          ;; 00:24fc $cd $7a $06
    ld   A, [wC462]                                    ;; 00:24ff $fa $62 $c4
    ld   C, A                                          ;; 00:2502 $4f
    add  HL, BC                                        ;; 00:2503 $09
    ld   A, [HL]                                       ;; 00:2504 $7e
    cp   A, $ff                                        ;; 00:2505 $fe $ff
    jr   Z, .jr_00_2513                                ;; 00:2507 $28 $0a
    cp   A, $fe                                        ;; 00:2509 $fe $fe
    jr   Z, .jr_00_250f                                ;; 00:250b $28 $02
    jr   .jr_00_251c                                   ;; 00:250d $18 $0d
.jr_00_250f:
    xor  A, A                                          ;; 00:250f $af
    ld   [wC460], A                                    ;; 00:2510 $ea $60 $c4
.jr_00_2513:
    xor  A, A                                          ;; 00:2513 $af
    ld   [wC462], A                                    ;; 00:2514 $ea $62 $c4
    inc  HL                                            ;; 00:2517 $23
    inc  HL                                            ;; 00:2518 $23
    ld   A, [HL+]                                      ;; 00:2519 $2a
    ld   L, [HL]                                       ;; 00:251a $6e
    ld   H, A                                          ;; 00:251b $67
.jr_00_251c:
    ld   A, [wC462]                                    ;; 00:251c $fa $62 $c4
    add  A, $04                                        ;; 00:251f $c6 $04
    ld   [wC462], A                                    ;; 00:2521 $ea $62 $c4
    ld   A, [HL+]                                      ;; 00:2524 $2a
    ld   [wC463], A                                    ;; 00:2525 $ea $63 $c4
    ld   A, [HL+]                                      ;; 00:2528 $2a
    ld   [wC464], A                                    ;; 00:2529 $ea $64 $c4
    ld   A, [HL+]                                      ;; 00:252c $2a
    ld   [wC465], A                                    ;; 00:252d $ea $65 $c4
    ld   A, [HL+]                                      ;; 00:2530 $2a
    ld   [wC466], A                                    ;; 00:2531 $ea $66 $c4
.jr_00_2534:
    ld   HL, wC45C                                     ;; 00:2534 $21 $5c $c4
    ld   DE, wCF31                                     ;; 00:2537 $11 $31 $cf
    ld   B, $04                                        ;; 00:253a $06 $04
    call memcopySmall                                  ;; 00:253c $cd $91 $05
    ld   HL, wC465                                     ;; 00:253f $21 $65 $c4
    ld   A, [HL+]                                      ;; 00:2542 $2a
    ld   E, [HL]                                       ;; 00:2543 $5e
    ld   D, A                                          ;; 00:2544 $57
    ld   HL, wC469                                     ;; 00:2545 $21 $69 $c4
    ld   A, [HL+]                                      ;; 00:2548 $2a
    ld   L, [HL]                                       ;; 00:2549 $6e
    ld   H, A                                          ;; 00:254a $67
    ld   A, [wC464]                                    ;; 00:254b $fa $64 $c4
    ld   B, A                                          ;; 00:254e $47
    call call_00_25ab                                  ;; 00:254f $cd $ab $25
    ldh  A, [rLCDC]                                    ;; 00:2552 $f0 $40
    bit  5, A                                          ;; 00:2554 $cb $6f
    ret  Z                                             ;; 00:2556 $c8
    ld   A, [wD589]                                    ;; 00:2557 $fa $89 $d5
    and  A, A                                          ;; 00:255a $a7
    ret  Z                                             ;; 00:255b $c8
    ld   HL, wC469                                     ;; 00:255c $21 $69 $c4
    ld   A, [HL+]                                      ;; 00:255f $2a
    ld   L, [HL]                                       ;; 00:2560 $6e
    ld   H, A                                          ;; 00:2561 $67
    ld   A, [wC464]                                    ;; 00:2562 $fa $64 $c4
    ld   B, A                                          ;; 00:2565 $47
    ld   A, [wMainGameState]                           ;; 00:2566 $fa $86 $d5
    cp   A, $01                                        ;; 00:2569 $fe $01
    jp   NZ, jp_00_2595                                ;; 00:256b $c2 $95 $25
    ldh  A, [hIsGBC]                                   ;; 00:256e $f0 $fe
    and  A, A                                          ;; 00:2570 $a7
    jp   Z, jp_00_2595                                 ;; 00:2571 $ca $95 $25
    ld   DE, $2591                                     ;; 00:2574 $11 $91 $25
    ld   A, [wD589]                                    ;; 00:2577 $fa $89 $d5
    add  A, $10                                        ;; 00:257a $c6 $10
    ld   C, A                                          ;; 00:257c $4f
.jr_00_257d:
    ld   A, [DE]                                       ;; 00:257d $1a
    add  A, [HL]                                       ;; 00:257e $86
    cp   A, C                                          ;; 00:257f $b9
    jr   C, .jr_00_2584                                ;; 00:2580 $38 $02
    ld   [HL], $00                                     ;; 00:2582 $36 $00
.jr_00_2584:
    ld   A, $04                                        ;; 00:2584 $3e $04
    add  A, L                                          ;; 00:2586 $85
    ld   L, A                                          ;; 00:2587 $6f
    ld   A, $00                                        ;; 00:2588 $3e $00
    adc  A, H                                          ;; 00:258a $8c
    ld   H, A                                          ;; 00:258b $67
    inc  DE                                            ;; 00:258c $13
    dec  B                                             ;; 00:258d $05
    jr   NZ, .jr_00_257d                               ;; 00:258e $20 $ed
    ret                                                ;; 00:2590 $c9
    db   $10, $10, $07, $07                            ;; 00:2591 ....

jp_00_2595:
    ld   A, [wD589]                                    ;; 00:2595 $fa $89 $d5
    add  A, $10                                        ;; 00:2598 $c6 $10
    ld   C, A                                          ;; 00:259a $4f
    ld   DE, $03                                       ;; 00:259b $11 $03 $00
.jr_00_259e:
    ld   A, [HL+]                                      ;; 00:259e $2a
    add  A, $0f                                        ;; 00:259f $c6 $0f
    cp   A, C                                          ;; 00:25a1 $b9
    jr   C, .jr_00_25a6                                ;; 00:25a2 $38 $02
    ld   [HL], $f0                                     ;; 00:25a4 $36 $f0
.jr_00_25a6:
    add  HL, DE                                        ;; 00:25a6 $19
    dec  B                                             ;; 00:25a7 $05
    jr   NZ, .jr_00_259e                               ;; 00:25a8 $20 $f4
    ret                                                ;; 00:25aa $c9

call_00_25ab:
    ld   A, [DE]                                       ;; 00:25ab $1a
    ld   C, A                                          ;; 00:25ac $4f
    ld   A, [wCF31]                                    ;; 00:25ad $fa $31 $cf
    add  A, C                                          ;; 00:25b0 $81
    ld   [HL+], A                                      ;; 00:25b1 $22
    inc  DE                                            ;; 00:25b2 $13
    ld   A, [DE]                                       ;; 00:25b3 $1a
    ld   C, A                                          ;; 00:25b4 $4f
    ld   A, [wCF32]                                    ;; 00:25b5 $fa $32 $cf
    add  A, C                                          ;; 00:25b8 $81
    ld   [HL+], A                                      ;; 00:25b9 $22
    inc  DE                                            ;; 00:25ba $13
    ld   A, [DE]                                       ;; 00:25bb $1a
    ld   C, A                                          ;; 00:25bc $4f
    ld   A, [wCF34]                                    ;; 00:25bd $fa $34 $cf
    add  A, C                                          ;; 00:25c0 $81
    ld   [HL+], A                                      ;; 00:25c1 $22
    inc  DE                                            ;; 00:25c2 $13
    ld   A, [DE]                                       ;; 00:25c3 $1a
    cp   A, $ff                                        ;; 00:25c4 $fe $ff
    jr   NZ, .jr_00_25ce                               ;; 00:25c6 $20 $06
    dec  HL                                            ;; 00:25c8 $2b
    dec  HL                                            ;; 00:25c9 $2b
    xor  A, A                                          ;; 00:25ca $af
    ld   [HL+], A                                      ;; 00:25cb $22
    inc  HL                                            ;; 00:25cc $23
    inc  HL                                            ;; 00:25cd $23
.jr_00_25ce:
    ld   C, A                                          ;; 00:25ce $4f
    ld   A, [wCF33]                                    ;; 00:25cf $fa $33 $cf
    add  A, C                                          ;; 00:25d2 $81
    ld   [HL+], A                                      ;; 00:25d3 $22
    inc  DE                                            ;; 00:25d4 $13
    dec  B                                             ;; 00:25d5 $05
    jr   NZ, call_00_25ab                              ;; 00:25d6 $20 $d3
    ret                                                ;; 00:25d8 $c9

call_00_25d9:
    xor  A, A                                          ;; 00:25d9 $af
    ld   [wD1C6], A                                    ;; 00:25da $ea $c6 $d1
    ld   A, [wD129]                                    ;; 00:25dd $fa $29 $d1
    inc  A                                             ;; 00:25e0 $3c
    ld   HL, wD126                                     ;; 00:25e1 $21 $26 $d1
    cp   A, [HL]                                       ;; 00:25e4 $be
    jp   C, .jp_00_28ca                                ;; 00:25e5 $da $ca $28
    ld   A, [wD139]                                    ;; 00:25e8 $fa $39 $d1
    ld   [wBackupRomBank], A                           ;; 00:25eb $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:25ee $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:25f1 $ea $00 $20
    ld   HL, wD13A                                     ;; 00:25f4 $21 $3a $d1
    ld   A, [HL+]                                      ;; 00:25f7 $2a
    ld   L, [HL]                                       ;; 00:25f8 $6e
    ld   H, A                                          ;; 00:25f9 $67
    ld   A, [HL]                                       ;; 00:25fa $7e
    cp   A, $97                                        ;; 00:25fb $fe $97
    jp   Z, .jp_00_2649                                ;; 00:25fd $ca $49 $26
    cp   A, $f2                                        ;; 00:2600 $fe $f2
    jp   Z, .jp_00_266e                                ;; 00:2602 $ca $6e $26
    cp   A, $f3                                        ;; 00:2605 $fe $f3
    jp   Z, .jp_00_267d                                ;; 00:2607 $ca $7d $26
    cp   A, $f4                                        ;; 00:260a $fe $f4
    jp   Z, .jp_00_26b1                                ;; 00:260c $ca $b1 $26
    cp   A, $f7                                        ;; 00:260f $fe $f7
    jp   Z, .jp_00_26d8                                ;; 00:2611 $ca $d8 $26
    cp   A, $f6                                        ;; 00:2614 $fe $f6
    jp   Z, .jp_00_26f5                                ;; 00:2616 $ca $f5 $26
    cp   A, $f5                                        ;; 00:2619 $fe $f5
    jp   Z, .jp_00_2741                                ;; 00:261b $ca $41 $27
    cp   A, $f8                                        ;; 00:261e $fe $f8
    jp   Z, .jp_00_2796                                ;; 00:2620 $ca $96 $27
    cp   A, $f9                                        ;; 00:2623 $fe $f9
    jp   Z, .jp_00_2912                                ;; 00:2625 $ca $12 $29
    cp   A, $fa                                        ;; 00:2628 $fe $fa
    jp   Z, .jp_00_27bb                                ;; 00:262a $ca $bb $27
    cp   A, $fb                                        ;; 00:262d $fe $fb
    jp   Z, .jp_00_27c2                                ;; 00:262f $ca $c2 $27
    cp   A, $fc                                        ;; 00:2632 $fe $fc
    jp   Z, .jp_00_27d3                                ;; 00:2634 $ca $d3 $27
    cp   A, $fd                                        ;; 00:2637 $fe $fd
    jp   Z, .jp_00_2891                                ;; 00:2639 $ca $91 $28
    cp   A, $fe                                        ;; 00:263c $fe $fe
    jp   Z, .jp_00_28d3                                ;; 00:263e $ca $d3 $28
    cp   A, $ff                                        ;; 00:2641 $fe $ff
    jp   Z, .jp_00_2904                                ;; 00:2643 $ca $04 $29
    jp   .jp_00_2918                                   ;; 00:2646 $c3 $18 $29
.jp_00_2649:
    inc  HL                                            ;; 00:2649 $23
    ld   A, H                                          ;; 00:264a $7c
    ld   [wD13A], A                                    ;; 00:264b $ea $3a $d1
    ld   A, L                                          ;; 00:264e $7d
    ld   [wD13B], A                                    ;; 00:264f $ea $3b $d1
    call call_00_2afc                                  ;; 00:2652 $cd $fc $2a
    ld   A, [wD126]                                    ;; 00:2655 $fa $26 $d1
    add  A, E                                          ;; 00:2658 $83
    ld   E, A                                          ;; 00:2659 $5f
    ld   D, $00                                        ;; 00:265a $16 $00
    ld   HL, wD13C                                     ;; 00:265c $21 $3c $d1
    add  HL, DE                                        ;; 00:265f $19
    ld   [HL], $00                                     ;; 00:2660 $36 $00
    ld   A, [wD128]                                    ;; 00:2662 $fa $28 $d1
    ld   E, A                                          ;; 00:2665 $5f
    add  HL, DE                                        ;; 00:2666 $19
    ld   [HL], $00                                     ;; 00:2667 $36 $00
    ld   HL, wD126                                     ;; 00:2669 $21 $26 $d1
    inc  [HL]                                          ;; 00:266c $34
    ret                                                ;; 00:266d $c9
.jp_00_266e:
    inc  HL                                            ;; 00:266e $23
    ld   A, H                                          ;; 00:266f $7c
    ld   [wD13A], A                                    ;; 00:2670 $ea $3a $d1
    ld   A, L                                          ;; 00:2673 $7d
    ld   [wD13B], A                                    ;; 00:2674 $ea $3b $d1
    ld   A, [wD1E9]                                    ;; 00:2677 $fa $e9 $d1
    jp   call_00_11a8                                  ;; 00:267a $c3 $a8 $11
.jp_00_267d:
    push HL                                            ;; 00:267d $e5
    ld   HL, wC100                                     ;; 00:267e $21 $00 $c1
    ld   A, [HL+]                                      ;; 00:2681 $2a
    ld   [wC102], A                                    ;; 00:2682 $ea $02 $c1
    ld   A, [HL+]                                      ;; 00:2685 $2a
    ld   [wC103], A                                    ;; 00:2686 $ea $03 $c1
    ld   HL, wC104                                     ;; 00:2689 $21 $04 $c1
    ld   A, [HL+]                                      ;; 00:268c $2a
    ld   [wC106], A                                    ;; 00:268d $ea $06 $c1
    ld   A, [HL+]                                      ;; 00:2690 $2a
    ld   [wC107], A                                    ;; 00:2691 $ea $07 $c1
    pop  HL                                            ;; 00:2694 $e1
    inc  HL                                            ;; 00:2695 $23
    ld   A, H                                          ;; 00:2696 $7c
    ld   [wD13A], A                                    ;; 00:2697 $ea $3a $d1
    ld   A, L                                          ;; 00:269a $7d
    ld   [wD13B], A                                    ;; 00:269b $ea $3b $d1
    ld   A, $01                                        ;; 00:269e $3e $01
    ld   [$2000], A                                    ;; 00:26a0 $ea $00 $20
    call call_01_4109 ;@bank 1                         ;; 00:26a3 $cd $09 $41
    call call_01_4175 ;@bank 1                         ;; 00:26a6 $cd $75 $41
    ld   A, $18                                        ;; 00:26a9 $3e $18
    call call_00_11a8                                  ;; 00:26ab $cd $a8 $11
    jp   call_00_25d9                                  ;; 00:26ae $c3 $d9 $25
.jp_00_26b1:
    inc  HL                                            ;; 00:26b1 $23
    push HL                                            ;; 00:26b2 $e5
    ld   C, [HL]                                       ;; 00:26b3 $4e
    ld   B, $00                                        ;; 00:26b4 $06 $00
    ld   HL, wC155                                     ;; 00:26b6 $21 $55 $c1
    add  HL, BC                                        ;; 00:26b9 $09
    ld   A, [HL]                                       ;; 00:26ba $7e
    and  A, A                                          ;; 00:26bb $a7
    jr   NZ, .jr_00_26cb                               ;; 00:26bc $20 $0d
    ld   [HL], $01                                     ;; 00:26be $36 $01
    ld   A, C                                          ;; 00:26c0 $79
    call call_00_1301                                  ;; 00:26c1 $cd $01 $13
    ld   A, $05                                        ;; 00:26c4 $3e $05
    ld   [wD58B], A                                    ;; 00:26c6 $ea $8b $d5
    pop  HL                                            ;; 00:26c9 $e1
    ret                                                ;; 00:26ca $c9
.jr_00_26cb:
    pop  HL                                            ;; 00:26cb $e1
    inc  HL                                            ;; 00:26cc $23
    ld   A, H                                          ;; 00:26cd $7c
    ld   [wD13A], A                                    ;; 00:26ce $ea $3a $d1
    ld   A, L                                          ;; 00:26d1 $7d
    ld   [wD13B], A                                    ;; 00:26d2 $ea $3b $d1
    jp   call_00_25d9                                  ;; 00:26d5 $c3 $d9 $25
.jp_00_26d8:
    inc  HL                                            ;; 00:26d8 $23
    ld   DE, wC155                                     ;; 00:26d9 $11 $55 $c1
    ld   A, [HL]                                       ;; 00:26dc $7e
    add  A, E                                          ;; 00:26dd $83
    ld   E, A                                          ;; 00:26de $5f
    ld   A, $00                                        ;; 00:26df $3e $00
    adc  A, D                                          ;; 00:26e1 $8a
    ld   D, A                                          ;; 00:26e2 $57
    ld   A, [DE]                                       ;; 00:26e3 $1a
    and  A, A                                          ;; 00:26e4 $a7
    jr   Z, .jr_00_26e9                                ;; 00:26e5 $28 $02
    inc  HL                                            ;; 00:26e7 $23
    inc  HL                                            ;; 00:26e8 $23
.jr_00_26e9:
    inc  HL                                            ;; 00:26e9 $23
    ld   A, [HL+]                                      ;; 00:26ea $2a
    ld   [wD13A], A                                    ;; 00:26eb $ea $3a $d1
    ld   A, [HL+]                                      ;; 00:26ee $2a
    ld   [wD13B], A                                    ;; 00:26ef $ea $3b $d1
    jp   call_00_25d9                                  ;; 00:26f2 $c3 $d9 $25
.jp_00_26f5:
    inc  HL                                            ;; 00:26f5 $23
    ld   A, [HL]                                       ;; 00:26f6 $7e
    cp   A, $10                                        ;; 00:26f7 $fe $10
    jr   NC, .jr_00_2714                               ;; 00:26f9 $30 $19
    push HL                                            ;; 00:26fb $e5
    ld   HL, wC113                                     ;; 00:26fc $21 $13 $c1
    ld   C, A                                          ;; 00:26ff $4f
    ld   B, $14                                        ;; 00:2700 $06 $14
.jr_00_2702:
    ld   A, [HL+]                                      ;; 00:2702 $2a
    cp   A, C                                          ;; 00:2703 $b9
    jr   Z, .jr_00_270d                                ;; 00:2704 $28 $07
    dec  B                                             ;; 00:2706 $05
    jr   NZ, .jr_00_2702                               ;; 00:2707 $20 $f9
    pop  HL                                            ;; 00:2709 $e1
    inc  HL                                            ;; 00:270a $23
    jr   .jr_00_2727                                   ;; 00:270b $18 $1a
.jr_00_270d:
    pop  HL                                            ;; 00:270d $e1
    ld   DE, $03                                       ;; 00:270e $11 $03 $00
    add  HL, DE                                        ;; 00:2711 $19
    jr   .jr_00_2727                                   ;; 00:2712 $18 $13
.jr_00_2714:
    sub  A, $10                                        ;; 00:2714 $d6 $10
    ld   DE, wC127                                     ;; 00:2716 $11 $27 $c1
    ld   A, A                                          ;; 00:2719 $7f
    add  A, E                                          ;; 00:271a $83
    ld   E, A                                          ;; 00:271b $5f
    ld   A, $00                                        ;; 00:271c $3e $00
    adc  A, D                                          ;; 00:271e $8a
    ld   D, A                                          ;; 00:271f $57
    ld   A, [DE]                                       ;; 00:2720 $1a
    and  A, A                                          ;; 00:2721 $a7
    jr   Z, .jr_00_2726                                ;; 00:2722 $28 $02
    inc  HL                                            ;; 00:2724 $23
    inc  HL                                            ;; 00:2725 $23
.jr_00_2726:
    inc  HL                                            ;; 00:2726 $23
.jr_00_2727:
    ld   A, [HL+]                                      ;; 00:2727 $2a
    ld   [wD13A], A                                    ;; 00:2728 $ea $3a $d1
    ld   A, [HL+]                                      ;; 00:272b $2a
    ld   [wD13B], A                                    ;; 00:272c $ea $3b $d1
    ld   HL, wD13C                                     ;; 00:272f $21 $3c $d1
    ld   B, $6c                                        ;; 00:2732 $06 $6c
    call memzeroSmall                                  ;; 00:2734 $cd $8b $05
    xor  A, A                                          ;; 00:2737 $af
    ld   [wD126], A                                    ;; 00:2738 $ea $26 $d1
    ld   [wD127], A                                    ;; 00:273b $ea $27 $d1
    jp   call_00_25d9                                  ;; 00:273e $c3 $d9 $25
.jp_00_2741:
    inc  HL                                            ;; 00:2741 $23
    ld   A, [HL]                                       ;; 00:2742 $7e
    cp   A, $10                                        ;; 00:2743 $fe $10
    jr   NC, .jr_00_2778                               ;; 00:2745 $30 $31
    push HL                                            ;; 00:2747 $e5
    ld   D, A                                          ;; 00:2748 $57
    ld   A, [wC112]                                    ;; 00:2749 $fa $12 $c1
    cp   A, $14                                        ;; 00:274c $fe $14
    jr   NC, .jr_00_2762                               ;; 00:274e $30 $12
    ld   A, [wC112]                                    ;; 00:2750 $fa $12 $c1
    ld   C, A                                          ;; 00:2753 $4f
    ld   B, $00                                        ;; 00:2754 $06 $00
    ld   HL, wC113                                     ;; 00:2756 $21 $13 $c1
    add  HL, BC                                        ;; 00:2759 $09
    ld   [HL], D                                       ;; 00:275a $72
    ld   HL, wC112                                     ;; 00:275b $21 $12 $c1
    inc  [HL]                                          ;; 00:275e $34
    pop  HL                                            ;; 00:275f $e1
    jr   .jr_00_2785                                   ;; 00:2760 $18 $23
.jr_00_2762:
    pop  HL                                            ;; 00:2762 $e1
    ld   HL, wD13A                                     ;; 00:2763 $21 $3a $d1
    ld   A, $42                                        ;; 00:2766 $3e $42
    ld   [HL+], A                                      ;; 00:2768 $22
    ld   A, $05                                        ;; 00:2769 $3e $05
    ld   [HL+], A                                      ;; 00:276b $22
    ld   HL, wD138                                     ;; 00:276c $21 $38 $d1
    ld   A, $00                                        ;; 00:276f $3e $00
    ld   [HL+], A                                      ;; 00:2771 $22
    ld   A, $14                                        ;; 00:2772 $3e $14
    ld   [HL+], A                                      ;; 00:2774 $22
    jp   call_00_25d9                                  ;; 00:2775 $c3 $d9 $25
.jr_00_2778:
    sub  A, $10                                        ;; 00:2778 $d6 $10
    add  A, $27                                        ;; 00:277a $c6 $27
    ld   E, A                                          ;; 00:277c $5f
    ld   A, $c1                                        ;; 00:277d $3e $c1
    adc  A, $00                                        ;; 00:277f $ce $00
    ld   D, A                                          ;; 00:2781 $57
    ld   A, $01                                        ;; 00:2782 $3e $01
    ld   [DE], A                                       ;; 00:2784 $12
.jr_00_2785:
    inc  HL                                            ;; 00:2785 $23
    ld   A, H                                          ;; 00:2786 $7c
    ld   [wD13A], A                                    ;; 00:2787 $ea $3a $d1
    ld   A, L                                          ;; 00:278a $7d
    ld   [wD13B], A                                    ;; 00:278b $ea $3b $d1
    ld   A, $07                                        ;; 00:278e $3e $07
    call call_00_11a8                                  ;; 00:2790 $cd $a8 $11
    jp   call_00_25d9                                  ;; 00:2793 $c3 $d9 $25
.jp_00_2796:
    ld   A, [wD12B]                                    ;; 00:2796 $fa $2b $d1
    cp   A, $01                                        ;; 00:2799 $fe $01
    jr   C, .jr_00_27a4                                ;; 00:279b $38 $07
    jr   Z, .jr_00_27aa                                ;; 00:279d $28 $0b
    dec  A                                             ;; 00:279f $3d
    ld   [wD12B], A                                    ;; 00:27a0 $ea $2b $d1
    ret                                                ;; 00:27a3 $c9
.jr_00_27a4:
    inc  HL                                            ;; 00:27a4 $23
    ld   A, [HL+]                                      ;; 00:27a5 $2a
    ld   [wD12B], A                                    ;; 00:27a6 $ea $2b $d1
    ret                                                ;; 00:27a9 $c9
.jr_00_27aa:
    xor  A, A                                          ;; 00:27aa $af
    ld   [wD12B], A                                    ;; 00:27ab $ea $2b $d1
    inc  HL                                            ;; 00:27ae $23
    inc  HL                                            ;; 00:27af $23
    ld   A, H                                          ;; 00:27b0 $7c
    ld   [wD13A], A                                    ;; 00:27b1 $ea $3a $d1
    ld   A, L                                          ;; 00:27b4 $7d
    ld   [wD13B], A                                    ;; 00:27b5 $ea $3b $d1
    jp   call_00_25d9                                  ;; 00:27b8 $c3 $d9 $25
.jp_00_27bb:
    ld   A, $0f                                        ;; 00:27bb $3e $0f
    ld   [wD5D2], A                                    ;; 00:27bd $ea $d2 $d5
    jr   .jr_00_27c7                                   ;; 00:27c0 $18 $05
.jp_00_27c2:
    ld   A, $8f                                        ;; 00:27c2 $3e $8f
    ld   [wD5D2], A                                    ;; 00:27c4 $ea $d2 $d5
.jr_00_27c7:
    ld   A, $02                                        ;; 00:27c7 $3e $02
    ld   [wD58D], A                                    ;; 00:27c9 $ea $8d $d5
    xor  A, A                                          ;; 00:27cc $af
    ld   [wD58B], A                                    ;; 00:27cd $ea $8b $d5
    jp   .jp_00_28e9                                   ;; 00:27d0 $c3 $e9 $28
.jp_00_27d3:
    ld   A, [wJoypadPressed]                           ;; 00:27d3 $fa $7f $d5
    bit  0, A                                          ;; 00:27d6 $cb $47
    jr   NZ, .jr_00_2856                               ;; 00:27d8 $20 $7c
    ld   A, $02                                        ;; 00:27da $3e $02
    ld   [wD1C6], A                                    ;; 00:27dc $ea $c6 $d1
    ld   A, [wJoypadDown]                              ;; 00:27df $fa $7e $d5
    bit  4, A                                          ;; 00:27e2 $cb $67
    jr   NZ, .jr_00_2807                               ;; 00:27e4 $20 $21
    bit  5, A                                          ;; 00:27e6 $cb $6f
    jr   NZ, .jr_00_27ec                               ;; 00:27e8 $20 $02
    jr   .jr_00_2821                                   ;; 00:27ea $18 $35
.jr_00_27ec:
    ld   A, [wD12E]                                    ;; 00:27ec $fa $2e $d1
    and  A, A                                          ;; 00:27ef $a7
    jr   Z, .jr_00_27f7                                ;; 00:27f0 $28 $05
    ld   A, $02                                        ;; 00:27f2 $3e $02
    call call_00_11a8                                  ;; 00:27f4 $cd $a8 $11
.jr_00_27f7:
    xor  A, A                                          ;; 00:27f7 $af
    ld   [wD12E], A                                    ;; 00:27f8 $ea $2e $d1
    ld   A, $04                                        ;; 00:27fb $3e $04
    ld   [wD12F], A                                    ;; 00:27fd $ea $2f $d1
    ld   A, $0c                                        ;; 00:2800 $3e $0c
    ld   [wD130], A                                    ;; 00:2802 $ea $30 $d1
    jr   .jr_00_2821                                   ;; 00:2805 $18 $1a
.jr_00_2807:
    ld   A, [wD12E]                                    ;; 00:2807 $fa $2e $d1
    and  A, A                                          ;; 00:280a $a7
    jr   NZ, .jr_00_2812                               ;; 00:280b $20 $05
    ld   A, $02                                        ;; 00:280d $3e $02
    call call_00_11a8                                  ;; 00:280f $cd $a8 $11
.jr_00_2812:
    ld   A, $01                                        ;; 00:2812 $3e $01
    ld   [wD12E], A                                    ;; 00:2814 $ea $2e $d1
    ld   A, $0c                                        ;; 00:2817 $3e $0c
    ld   [wD12F], A                                    ;; 00:2819 $ea $2f $d1
    ld   A, $04                                        ;; 00:281c $3e $04
    ld   [wD130], A                                    ;; 00:281e $ea $30 $d1
.jr_00_2821:
    ld   A, [wD126]                                    ;; 00:2821 $fa $26 $d1
    ld   B, A                                          ;; 00:2824 $47
    ld   A, [wD128]                                    ;; 00:2825 $fa $28 $d1
    ld   C, A                                          ;; 00:2828 $4f
    call call_00_0542                                  ;; 00:2829 $cd $42 $05
    inc  B                                             ;; 00:282c $04
    sla  B                                             ;; 00:282d $cb $20
    ld   L, B                                          ;; 00:282f $68
    ld   H, $00                                        ;; 00:2830 $26 $00
    call multiply_HL_32                                ;; 00:2832 $cd $a1 $06
    push HL                                            ;; 00:2835 $e5
    ld   A, [wD12F]                                    ;; 00:2836 $fa $2f $d1
    ld   E, A                                          ;; 00:2839 $5f
    ld   D, $9c                                        ;; 00:283a $16 $9c
    add  HL, DE                                        ;; 00:283c $19
    ld   A, H                                          ;; 00:283d $7c
    ld   [wD1C0], A                                    ;; 00:283e $ea $c0 $d1
    ld   A, L                                          ;; 00:2841 $7d
    ld   [wD1C1], A                                    ;; 00:2842 $ea $c1 $d1
    pop  HL                                            ;; 00:2845 $e1
    ld   A, [wD130]                                    ;; 00:2846 $fa $30 $d1
    ld   E, A                                          ;; 00:2849 $5f
    ld   D, $9c                                        ;; 00:284a $16 $9c
    add  HL, DE                                        ;; 00:284c $19
    ld   A, H                                          ;; 00:284d $7c
    ld   [wD1C2], A                                    ;; 00:284e $ea $c2 $d1
    ld   A, L                                          ;; 00:2851 $7d
    ld   [wD1C3], A                                    ;; 00:2852 $ea $c3 $d1
    ret                                                ;; 00:2855 $c9
.jr_00_2856:
    ld   HL, wD13A                                     ;; 00:2856 $21 $3a $d1
    ld   A, [HL+]                                      ;; 00:2859 $2a
    ld   L, [HL]                                       ;; 00:285a $6e
    ld   H, A                                          ;; 00:285b $67
    inc  HL                                            ;; 00:285c $23
    ld   A, [wD12E]                                    ;; 00:285d $fa $2e $d1
    ld   [wD523], A                                    ;; 00:2860 $ea $23 $d5
    and  A, A                                          ;; 00:2863 $a7
    jr   Z, .jr_00_2868                                ;; 00:2864 $28 $02
    inc  HL                                            ;; 00:2866 $23
    inc  HL                                            ;; 00:2867 $23
.jr_00_2868:
    ld   A, [HL+]                                      ;; 00:2868 $2a
    ld   [wD13A], A                                    ;; 00:2869 $ea $3a $d1
    ld   A, [HL+]                                      ;; 00:286c $2a
    ld   [wD13B], A                                    ;; 00:286d $ea $3b $d1
    ld   HL, wD13C                                     ;; 00:2870 $21 $3c $d1
    ld   B, $6c                                        ;; 00:2873 $06 $6c
    call memzeroSmall                                  ;; 00:2875 $cd $8b $05
    ld   A, $04                                        ;; 00:2878 $3e $04
    ld   [wD12F], A                                    ;; 00:287a $ea $2f $d1
    ld   A, $0c                                        ;; 00:287d $3e $0c
    ld   [wD130], A                                    ;; 00:287f $ea $30 $d1
    xor  A, A                                          ;; 00:2882 $af
    ld   [wD126], A                                    ;; 00:2883 $ea $26 $d1
    ld   [wD127], A                                    ;; 00:2886 $ea $27 $d1
    ld   [wD12E], A                                    ;; 00:2889 $ea $2e $d1
    ld   A, $01                                        ;; 00:288c $3e $01
    jp   call_00_11a8                                  ;; 00:288e $c3 $a8 $11
.jp_00_2891:
    ld   A, [wD128]                                    ;; 00:2891 $fa $28 $d1
    ld   C, A                                          ;; 00:2894 $4f
    ld   A, [wD126]                                    ;; 00:2895 $fa $26 $d1
.jr_00_2898:
    sub  A, C                                          ;; 00:2898 $91
    jr   C, .jr_00_28ab                                ;; 00:2899 $38 $10
    jr   Z, .jr_00_289f                                ;; 00:289b $28 $02
    jr   .jr_00_2898                                   ;; 00:289d $18 $f9
.jr_00_289f:
    ld   HL, wD13B                                     ;; 00:289f $21 $3b $d1
    ld   A, $01                                        ;; 00:28a2 $3e $01
    add  A, [HL]                                       ;; 00:28a4 $86
    ld   [HL-], A                                      ;; 00:28a5 $32
    ld   A, $00                                        ;; 00:28a6 $3e $00
    adc  A, [HL]                                       ;; 00:28a8 $8e
    ld   [HL], A                                       ;; 00:28a9 $77
    ret                                                ;; 00:28aa $c9
.jr_00_28ab:
    call call_00_2afc                                  ;; 00:28ab $cd $fc $2a
    ld   A, [wD128]                                    ;; 00:28ae $fa $28 $d1
    add  A, E                                          ;; 00:28b1 $83
    ld   [wD126], A                                    ;; 00:28b2 $ea $26 $d1
    ld   B, A                                          ;; 00:28b5 $47
    ld   A, [wD129]                                    ;; 00:28b6 $fa $29 $d1
    cp   A, B                                          ;; 00:28b9 $b8
    jr   C, .jp_00_28e9                                ;; 00:28ba $38 $2d
    jr   Z, .jp_00_28e9                                ;; 00:28bc $28 $2b
    ld   HL, wD13B                                     ;; 00:28be $21 $3b $d1
    ld   A, $01                                        ;; 00:28c1 $3e $01
    add  A, [HL]                                       ;; 00:28c3 $86
    ld   [HL-], A                                      ;; 00:28c4 $32
    ld   A, $00                                        ;; 00:28c5 $3e $00
    adc  A, [HL]                                       ;; 00:28c7 $8e
    ld   [HL], A                                       ;; 00:28c8 $77
    ret                                                ;; 00:28c9 $c9
.jp_00_28ca:
    ld   A, [wJoypadPressed]                           ;; 00:28ca $fa $7f $d5
    bit  0, A                                          ;; 00:28cd $cb $47
    jr   NZ, .jr_00_28f4                               ;; 00:28cf $20 $23
    jr   .jr_00_28da                                   ;; 00:28d1 $18 $07
.jp_00_28d3:
    ld   A, [wJoypadPressed]                           ;; 00:28d3 $fa $7f $d5
    bit  0, A                                          ;; 00:28d6 $cb $47
    jr   NZ, .jp_00_28e9                               ;; 00:28d8 $20 $0f
.jr_00_28da:
    ld   A, $01                                        ;; 00:28da $3e $01
    ld   [wD1C6], A                                    ;; 00:28dc $ea $c6 $d1
    ld   A, [wD12D]                                    ;; 00:28df $fa $2d $d1
    inc  A                                             ;; 00:28e2 $3c
    and  A, $1f                                        ;; 00:28e3 $e6 $1f
    ld   [wD12D], A                                    ;; 00:28e5 $ea $2d $d1
    ret                                                ;; 00:28e8 $c9
.jp_00_28e9:
    ld   HL, wD13B                                     ;; 00:28e9 $21 $3b $d1
    ld   A, $01                                        ;; 00:28ec $3e $01
    add  A, [HL]                                       ;; 00:28ee $86
    ld   [HL-], A                                      ;; 00:28ef $32
    ld   A, $00                                        ;; 00:28f0 $3e $00
    adc  A, [HL]                                       ;; 00:28f2 $8e
    ld   [HL], A                                       ;; 00:28f3 $77
.jr_00_28f4:
    ld   HL, wD13C                                     ;; 00:28f4 $21 $3c $d1
    ld   B, $6c                                        ;; 00:28f7 $06 $6c
    call memzeroSmall                                  ;; 00:28f9 $cd $8b $05
    xor  A, A                                          ;; 00:28fc $af
    ld   [wD126], A                                    ;; 00:28fd $ea $26 $d1
    ld   [wD127], A                                    ;; 00:2900 $ea $27 $d1
    ret                                                ;; 00:2903 $c9
.jp_00_2904:
    ld   A, [wJoypadPressed]                           ;; 00:2904 $fa $7f $d5
    bit  0, A                                          ;; 00:2907 $cb $47
    ret  Z                                             ;; 00:2909 $c8
    ld   A, $03                                        ;; 00:290a $3e $03
    ld   [wD1C6], A                                    ;; 00:290c $ea $c6 $d1
    jp   jp_00_2a41                                    ;; 00:290f $c3 $41 $2a
.jp_00_2912:
    ld   A, $03                                        ;; 00:2912 $3e $03
    ld   [wD1C6], A                                    ;; 00:2914 $ea $c6 $d1
    ret                                                ;; 00:2917 $c9
.jp_00_2918:
    ld   C, A                                          ;; 00:2918 $4f
    ld   A, [wD12A]                                    ;; 00:2919 $fa $2a $d1
    ld   B, A                                          ;; 00:291c $47
    ld   A, [wD127]                                    ;; 00:291d $fa $27 $d1
    cp   A, B                                          ;; 00:2920 $b8
    jp   NC, .jp_00_28ca                               ;; 00:2921 $d2 $ca $28
    inc  HL                                            ;; 00:2924 $23
    ld   A, H                                          ;; 00:2925 $7c
    ld   [wD13A], A                                    ;; 00:2926 $ea $3a $d1
    ld   A, L                                          ;; 00:2929 $7d
    ld   [wD13B], A                                    ;; 00:292a $ea $3b $d1
    ld   A, C                                          ;; 00:292d $79
    cp   A, $9b                                        ;; 00:292e $fe $9b
    jr   C, .jr_00_294f                                ;; 00:2930 $38 $1d
    cp   A, $aa                                        ;; 00:2932 $fe $aa
    jr   C, .jr_00_2953                                ;; 00:2934 $38 $1d
    cp   A, $af                                        ;; 00:2936 $fe $af
    jr   C, .jr_00_2963                                ;; 00:2938 $38 $29
    cp   A, $b4                                        ;; 00:293a $fe $b4
    jr   C, .jr_00_295b                                ;; 00:293c $38 $1d
    cp   A, $c3                                        ;; 00:293e $fe $c3
    jr   C, .jr_00_296b                                ;; 00:2940 $38 $29
    cp   A, $c8                                        ;; 00:2942 $fe $c8
    jr   C, .jr_00_297b                                ;; 00:2944 $38 $35
    cp   A, $cd                                        ;; 00:2946 $fe $cd
    jr   C, .jr_00_2973                                ;; 00:2948 $38 $29
    jr   Z, .jr_00_2983                                ;; 00:294a $28 $37
    sub  A, $33                                        ;; 00:294c $d6 $33
    ld   C, A                                          ;; 00:294e $4f
.jr_00_294f:
    ld   B, $00                                        ;; 00:294f $06 $00
    jr   .jr_00_2987                                   ;; 00:2951 $18 $34
.jr_00_2953:
    ld   A, C                                          ;; 00:2953 $79
    sub  A, $96                                        ;; 00:2954 $d6 $96
    ld   C, A                                          ;; 00:2956 $4f
    ld   B, $01                                        ;; 00:2957 $06 $01
    jr   .jr_00_2987                                   ;; 00:2959 $18 $2c
.jr_00_295b:
    ld   A, C                                          ;; 00:295b $79
    sub  A, $96                                        ;; 00:295c $d6 $96
    ld   C, A                                          ;; 00:295e $4f
    ld   B, $02                                        ;; 00:295f $06 $02
    jr   .jr_00_2987                                   ;; 00:2961 $18 $24
.jr_00_2963:
    ld   A, C                                          ;; 00:2963 $79
    sub  A, $91                                        ;; 00:2964 $d6 $91
    ld   C, A                                          ;; 00:2966 $4f
    ld   B, $01                                        ;; 00:2967 $06 $01
    jr   .jr_00_2987                                   ;; 00:2969 $18 $1c
.jr_00_296b:
    ld   A, C                                          ;; 00:296b $79
    sub  A, $7d                                        ;; 00:296c $d6 $7d
    ld   C, A                                          ;; 00:296e $4f
    ld   B, $01                                        ;; 00:296f $06 $01
    jr   .jr_00_2987                                   ;; 00:2971 $18 $14
.jr_00_2973:
    ld   A, C                                          ;; 00:2973 $79
    sub  A, $7d                                        ;; 00:2974 $d6 $7d
    ld   C, A                                          ;; 00:2976 $4f
    ld   B, $02                                        ;; 00:2977 $06 $02
    jr   .jr_00_2987                                   ;; 00:2979 $18 $0c
.jr_00_297b:
    ld   A, C                                          ;; 00:297b $79
    sub  A, $78                                        ;; 00:297c $d6 $78
    ld   C, A                                          ;; 00:297e $4f
    ld   B, $01                                        ;; 00:297f $06 $01
    jr   .jr_00_2987                                   ;; 00:2981 $18 $04
.jr_00_2983:
    ld   C, $34                                        ;; 00:2983 $0e $34
    ld   B, $01                                        ;; 00:2985 $06 $01
.jr_00_2987:
    call call_00_2afc                                  ;; 00:2987 $cd $fc $2a
    ld   A, [wD126]                                    ;; 00:298a $fa $26 $d1
    add  A, E                                          ;; 00:298d $83
    ld   E, A                                          ;; 00:298e $5f
    ld   D, $00                                        ;; 00:298f $16 $00
    ld   HL, wD13C                                     ;; 00:2991 $21 $3c $d1
    add  HL, DE                                        ;; 00:2994 $19
    ld   [HL], B                                       ;; 00:2995 $70
    ld   A, [wD128]                                    ;; 00:2996 $fa $28 $d1
    ld   E, A                                          ;; 00:2999 $5f
    add  HL, DE                                        ;; 00:299a $19
    ld   A, [wD127]                                    ;; 00:299b $fa $27 $d1
    ld   B, A                                          ;; 00:299e $47
    ld   A, [wD1A8]                                    ;; 00:299f $fa $a8 $d1
    add  A, B                                          ;; 00:29a2 $80
    ld   [HL], A                                       ;; 00:29a3 $77
    ld   HL, wD1A9                                     ;; 00:29a4 $21 $a9 $d1
    ld   A, [HL+]                                      ;; 00:29a7 $2a
    ld   E, [HL]                                       ;; 00:29a8 $5e
    ld   D, A                                          ;; 00:29a9 $57
    ld   A, [wD127]                                    ;; 00:29aa $fa $27 $d1
    ld   L, A                                          ;; 00:29ad $6f
    ld   H, $00                                        ;; 00:29ae $26 $00
    add  HL, HL                                        ;; 00:29b0 $29
    add  HL, HL                                        ;; 00:29b1 $29
    add  HL, HL                                        ;; 00:29b2 $29
    add  HL, HL                                        ;; 00:29b3 $29
    add  HL, DE                                        ;; 00:29b4 $19
    ld   A, H                                          ;; 00:29b5 $7c
    ld   [wD1BB], A                                    ;; 00:29b6 $ea $bb $d1
    ld   A, L                                          ;; 00:29b9 $7d
    ld   [wD1BC], A                                    ;; 00:29ba $ea $bc $d1
    ld   A, $22                                        ;; 00:29bd $3e $22
    ld   [wBackupRomBank], A                           ;; 00:29bf $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:29c2 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:29c5 $ea $00 $20
    ld   H, $00                                        ;; 00:29c8 $26 $00
    ld   L, C                                          ;; 00:29ca $69
    add  HL, HL                                        ;; 00:29cb $29
    add  HL, HL                                        ;; 00:29cc $29
    add  HL, HL                                        ;; 00:29cd $29
    add  HL, HL                                        ;; 00:29ce $29
    ld   DE, $6ec0                                     ;; 00:29cf $11 $c0 $6e
    add  HL, DE                                        ;; 00:29d2 $19
    ld   DE, wD1AB                                     ;; 00:29d3 $11 $ab $d1
    ld   B, $10                                        ;; 00:29d6 $06 $10
    call memcopySmall                                  ;; 00:29d8 $cd $91 $05
    ld   HL, wD126                                     ;; 00:29db $21 $26 $d1
    inc  [HL]                                          ;; 00:29de $34
    ld   HL, wD127                                     ;; 00:29df $21 $27 $d1
    inc  [HL]                                          ;; 00:29e2 $34
    ret                                                ;; 00:29e3 $c9

jp_00_29e4:
    ld   [wStackPointerBackup], SP                     ;; 00:29e4 $08 $8e $d5
    ld   HL, wD13C                                     ;; 00:29e7 $21 $3c $d1
    ld   SP, HL                                        ;; 00:29ea $f9
    ld   HL, wD134                                     ;; 00:29eb $21 $34 $d1
    ld   A, [HL+]                                      ;; 00:29ee $2a
    ld   L, [HL]                                       ;; 00:29ef $6e
    ld   H, A                                          ;; 00:29f0 $67
    ld   A, [wD132]                                    ;; 00:29f1 $fa $32 $d1
    ld   B, A                                          ;; 00:29f4 $47
.jr_00_29f5:
    ld   A, [wD131]                                    ;; 00:29f5 $fa $31 $d1
    ld   C, A                                          ;; 00:29f8 $4f
.jr_00_29f9:
    pop  DE                                            ;; 00:29f9 $d1
    ld   A, E                                          ;; 00:29fa $7b
    ld   [HL+], A                                      ;; 00:29fb $22
    ld   A, D                                          ;; 00:29fc $7a
    ld   [HL+], A                                      ;; 00:29fd $22
    dec  C                                             ;; 00:29fe $0d
    jr   NZ, .jr_00_29f9                               ;; 00:29ff $20 $f8
    ld   A, [wD133]                                    ;; 00:2a01 $fa $33 $d1
    ld   E, A                                          ;; 00:2a04 $5f
    ld   D, $00                                        ;; 00:2a05 $16 $00
    add  HL, DE                                        ;; 00:2a07 $19
    dec  B                                             ;; 00:2a08 $05
    jr   NZ, .jr_00_29f5                               ;; 00:2a09 $20 $ea
    ld   HL, wStackPointerBackup                       ;; 00:2a0b $21 $8e $d5
    ld   A, [HL+]                                      ;; 00:2a0e $2a
    ld   H, [HL]                                       ;; 00:2a0f $66
    ld   L, A                                          ;; 00:2a10 $6f
    ld   SP, HL                                        ;; 00:2a11 $f9
    ret                                                ;; 00:2a12 $c9

call_00_2a13:
    ld   [wStackPointerBackup], SP                     ;; 00:2a13 $08 $8e $d5
    ld   HL, wD1AB                                     ;; 00:2a16 $21 $ab $d1
    ld   SP, HL                                        ;; 00:2a19 $f9
    ld   HL, wD1BB                                     ;; 00:2a1a $21 $bb $d1
    ld   A, [HL+]                                      ;; 00:2a1d $2a
    ld   L, [HL]                                       ;; 00:2a1e $6e
    ld   H, A                                          ;; 00:2a1f $67
    ld   B, $02                                        ;; 00:2a20 $06 $02
.jr_00_2a22:
    pop  DE                                            ;; 00:2a22 $d1
    ld   A, E                                          ;; 00:2a23 $7b
    ld   [HL+], A                                      ;; 00:2a24 $22
    ld   A, D                                          ;; 00:2a25 $7a
    ld   [HL+], A                                      ;; 00:2a26 $22
    pop  DE                                            ;; 00:2a27 $d1
    ld   A, E                                          ;; 00:2a28 $7b
    ld   [HL+], A                                      ;; 00:2a29 $22
    ld   A, D                                          ;; 00:2a2a $7a
    ld   [HL+], A                                      ;; 00:2a2b $22
    pop  DE                                            ;; 00:2a2c $d1
    ld   A, E                                          ;; 00:2a2d $7b
    ld   [HL+], A                                      ;; 00:2a2e $22
    ld   A, D                                          ;; 00:2a2f $7a
    ld   [HL+], A                                      ;; 00:2a30 $22
    pop  DE                                            ;; 00:2a31 $d1
    ld   A, E                                          ;; 00:2a32 $7b
    ld   [HL+], A                                      ;; 00:2a33 $22
    ld   A, D                                          ;; 00:2a34 $7a
    ld   [HL+], A                                      ;; 00:2a35 $22
    dec  B                                             ;; 00:2a36 $05
    jr   NZ, .jr_00_2a22                               ;; 00:2a37 $20 $e9
    ld   HL, wStackPointerBackup                       ;; 00:2a39 $21 $8e $d5
    ld   A, [HL+]                                      ;; 00:2a3c $2a
    ld   H, [HL]                                       ;; 00:2a3d $66
    ld   L, A                                          ;; 00:2a3e $6f
    ld   SP, HL                                        ;; 00:2a3f $f9
    ret                                                ;; 00:2a40 $c9

jp_00_2a41:
    ld   A, [wD139]                                    ;; 00:2a41 $fa $39 $d1
    ld   [wBackupRomBank], A                           ;; 00:2a44 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2a47 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2a4a $ea $00 $20
    ld   HL, wD13A                                     ;; 00:2a4d $21 $3a $d1
    ld   A, [HL+]                                      ;; 00:2a50 $2a
    ld   L, [HL]                                       ;; 00:2a51 $6e
    ld   H, A                                          ;; 00:2a52 $67
    inc  HL                                            ;; 00:2a53 $23
    ld   A, [HL+]                                      ;; 00:2a54 $2a
    ld   L, [HL]                                       ;; 00:2a55 $6e
    ld   H, A                                          ;; 00:2a56 $67
    push HL                                            ;; 00:2a57 $e5
    ld   HL, wD1BD                                     ;; 00:2a58 $21 $bd $d1
    ld   A, [HL+]                                      ;; 00:2a5b $2a
    ld   L, [HL]                                       ;; 00:2a5c $6e
    ld   H, A                                          ;; 00:2a5d $67
    ld   A, [HL+]                                      ;; 00:2a5e $2a
    cp   A, $01                                        ;; 00:2a5f $fe $01
    jp   C, .jp_00_2aec                                ;; 00:2a61 $da $ec $2a
    jr   Z, .jr_00_2a68                                ;; 00:2a64 $28 $02
    pop  HL                                            ;; 00:2a66 $e1
    ret                                                ;; 00:2a67 $c9
.jr_00_2a68:
    push HL                                            ;; 00:2a68 $e5
    ld   C, [HL]                                       ;; 00:2a69 $4e
    ld   B, $00                                        ;; 00:2a6a $06 $00
    ld   HL, wC255                                     ;; 00:2a6c $21 $55 $c2
    add  HL, BC                                        ;; 00:2a6f $09
    bit  0, [HL]                                       ;; 00:2a70 $cb $46
    jr   NZ, .jr_00_2aaf                               ;; 00:2a72 $20 $3b
    ld   C, [HL]                                       ;; 00:2a74 $4e
    srl  C                                             ;; 00:2a75 $cb $39
    srl  C                                             ;; 00:2a77 $cb $39
    ld   A, C                                          ;; 00:2a79 $79
    cp   A, $10                                        ;; 00:2a7a $fe $10
    jr   C, .jr_00_2a92                                ;; 00:2a7c $38 $14
    ld   A, [wC138]                                    ;; 00:2a7e $fa $38 $c1
    cp   A, $ff                                        ;; 00:2a81 $fe $ff
    jr   Z, .jr_00_2ab9                                ;; 00:2a83 $28 $34
    set  0, [HL]                                       ;; 00:2a85 $cb $c6
    inc  A                                             ;; 00:2a87 $3c
    ld   [wC138], A                                    ;; 00:2a88 $ea $38 $c1
    ld   A, $07                                        ;; 00:2a8b $3e $07
    call call_00_11a8                                  ;; 00:2a8d $cd $a8 $11
    jr   .jr_00_2aaf                                   ;; 00:2a90 $18 $1d
.jr_00_2a92:
    ld   A, [wC112]                                    ;; 00:2a92 $fa $12 $c1
    cp   A, $14                                        ;; 00:2a95 $fe $14
    jr   NC, .jr_00_2ab9                               ;; 00:2a97 $30 $20
    set  0, [HL]                                       ;; 00:2a99 $cb $c6
    ld   A, [wC112]                                    ;; 00:2a9b $fa $12 $c1
    ld   E, A                                          ;; 00:2a9e $5f
    ld   D, $00                                        ;; 00:2a9f $16 $00
    ld   HL, wC113                                     ;; 00:2aa1 $21 $13 $c1
    add  HL, DE                                        ;; 00:2aa4 $19
    ld   [HL], C                                       ;; 00:2aa5 $71
    inc  A                                             ;; 00:2aa6 $3c
    ld   [wC112], A                                    ;; 00:2aa7 $ea $12 $c1
    ld   A, $07                                        ;; 00:2aaa $3e $07
    call call_00_11a8                                  ;; 00:2aac $cd $a8 $11
.jr_00_2aaf:
    pop  HL                                            ;; 00:2aaf $e1
    ld   DE, $09                                       ;; 00:2ab0 $11 $09 $00
    add  HL, DE                                        ;; 00:2ab3 $19
    pop  DE                                            ;; 00:2ab4 $d1
    ld   A, D                                          ;; 00:2ab5 $7a
    ld   [HL+], A                                      ;; 00:2ab6 $22
    ld   [HL], E                                       ;; 00:2ab7 $73
    ret                                                ;; 00:2ab8 $c9
.jr_00_2ab9:
    pop  HL                                            ;; 00:2ab9 $e1
    pop  DE                                            ;; 00:2aba $d1
    ld   DE, $07                                       ;; 00:2abb $11 $07 $00
    add  HL, DE                                        ;; 00:2abe $19
    ld   A, [HL]                                       ;; 00:2abf $7e
    cp   A, $57                                        ;; 00:2ac0 $fe $57
    jr   NZ, .jr_00_2aca                               ;; 00:2ac2 $20 $06
    inc  HL                                            ;; 00:2ac4 $23
    ld   A, [HL]                                       ;; 00:2ac5 $7e
    cp   A, $c6                                        ;; 00:2ac6 $fe $c6
    ret  Z                                             ;; 00:2ac8 $c8
    dec  HL                                            ;; 00:2ac9 $2b
.jr_00_2aca:
    ld   A, $57                                        ;; 00:2aca $3e $57
    ld   [HL+], A                                      ;; 00:2acc $22
    ld   A, $c6                                        ;; 00:2acd $3e $c6
    ld   [HL+], A                                      ;; 00:2acf $22
    ld   HL, wD13A                                     ;; 00:2ad0 $21 $3a $d1
    ld   A, $41                                        ;; 00:2ad3 $3e $41
    ld   [HL+], A                                      ;; 00:2ad5 $22
    ld   A, $99                                        ;; 00:2ad6 $3e $99
    ld   [HL+], A                                      ;; 00:2ad8 $22
    xor  A, A                                          ;; 00:2ad9 $af
    ld   [wD126], A                                    ;; 00:2ada $ea $26 $d1
    ld   [wD127], A                                    ;; 00:2add $ea $27 $d1
    ld   HL, wD13C                                     ;; 00:2ae0 $21 $3c $d1
    ld   B, $6c                                        ;; 00:2ae3 $06 $6c
    call memzeroSmall                                  ;; 00:2ae5 $cd $8b $05
    pop  HL                                            ;; 00:2ae8 $e1
    jp   call_00_25d9                                  ;; 00:2ae9 $c3 $d9 $25
.jp_00_2aec:
    pop  DE                                            ;; 00:2aec $d1
    ld   C, [HL]                                       ;; 00:2aed $4e
    ld   HL, $323                                      ;; 00:2aee $21 $23 $03
    call ld_HL_from_HL_add_2C                          ;; 00:2af1 $cd $7a $06
    ld   BC, $07                                       ;; 00:2af4 $01 $07 $00
    add  HL, BC                                        ;; 00:2af7 $09
    ld   A, D                                          ;; 00:2af8 $7a
    ld   [HL+], A                                      ;; 00:2af9 $22
    ld   [HL], E                                       ;; 00:2afa $73
    ret                                                ;; 00:2afb $c9

call_00_2afc:
    ld   D, $00                                        ;; 00:2afc $16 $00
    ld   A, [wD128]                                    ;; 00:2afe $fa $28 $d1
    ld   E, A                                          ;; 00:2b01 $5f
    ld   A, [wD126]                                    ;; 00:2b02 $fa $26 $d1
    cp   A, E                                          ;; 00:2b05 $bb
    jr   NC, .jr_00_2b0b                               ;; 00:2b06 $30 $03
    ld   E, $00                                        ;; 00:2b08 $1e $00
    ret                                                ;; 00:2b0a $c9
.jr_00_2b0b:
    sub  A, E                                          ;; 00:2b0b $93
    jr   C, .jr_00_2b11                                ;; 00:2b0c $38 $03
    inc  D                                             ;; 00:2b0e $14
    jr   .jr_00_2b0b                                   ;; 00:2b0f $18 $fa
.jr_00_2b11:
    scf                                                ;; 00:2b11 $37
    ccf                                                ;; 00:2b12 $3f
    rr   E                                             ;; 00:2b13 $cb $1b
.jr_00_2b15:
    rl   E                                             ;; 00:2b15 $cb $13
    dec  D                                             ;; 00:2b17 $15
    jr   NZ, .jr_00_2b15                               ;; 00:2b18 $20 $fb
    ret                                                ;; 00:2b1a $c9

call_00_2b1b:
    ld   A, $07                                        ;; 00:2b1b $3e $07
    ld   [wD58A], A                                    ;; 00:2b1d $ea $8a $d5
    ld   A, [wC45C]                                    ;; 00:2b20 $fa $5c $c4
    cp   A, $58                                        ;; 00:2b23 $fe $58
    jr   C, .jr_00_2b2d                                ;; 00:2b25 $38 $06
    xor  A, A                                          ;; 00:2b27 $af
    ld   [wD589], A                                    ;; 00:2b28 $ea $89 $d5
    jr   .jr_00_2b32                                   ;; 00:2b2b $18 $05
.jr_00_2b2d:
    ld   A, $50                                        ;; 00:2b2d $3e $50
    ld   [wD589], A                                    ;; 00:2b2f $ea $89 $d5
.jr_00_2b32:
    ld   HL, wD13C                                     ;; 00:2b32 $21 $3c $d1
    ld   B, $6c                                        ;; 00:2b35 $06 $6c
    call memzeroSmall                                  ;; 00:2b37 $cd $8b $05
    xor  A, A                                          ;; 00:2b3a $af
    ld   [wC460], A                                    ;; 00:2b3b $ea $60 $c4
    ld   A, $90                                        ;; 00:2b3e $3e $90
    ld   [wD1A8], A                                    ;; 00:2b40 $ea $a8 $d1
    ld   A, $89                                        ;; 00:2b43 $3e $89
    ld   [wD1A9], A                                    ;; 00:2b45 $ea $a9 $d1
    ld   A, $00                                        ;; 00:2b48 $3e $00
    ld   [wD1AA], A                                    ;; 00:2b4a $ea $aa $d1
    ld   A, $03                                        ;; 00:2b4d $3e $03
    ld   [wCurrentRomBank], A                          ;; 00:2b4f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2b52 $ea $00 $20
    ld   HL, $40da                                     ;; 00:2b55 $21 $da $40
    ld   DE, wD126                                     ;; 00:2b58 $11 $26 $d1
    ld   B, $10                                        ;; 00:2b5b $06 $10
    call memcopySmall                                  ;; 00:2b5d $cd $91 $05
    ld   A, [wBackupRomBank]                           ;; 00:2b60 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2b63 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2b66 $ea $00 $20
    ld   A, [wD58B]                                    ;; 00:2b69 $fa $8b $d5
    cp   A, $05                                        ;; 00:2b6c $fe $05
    jr   Z, .jr_00_2b76                                ;; 00:2b6e $28 $06
    cp   A, $09                                        ;; 00:2b70 $fe $09
    jr   Z, .jr_00_2b76                                ;; 00:2b72 $28 $02
    ld   A, $01                                        ;; 00:2b74 $3e $01
.jr_00_2b76:
    ld   [wD1C5], A                                    ;; 00:2b76 $ea $c5 $d1
    ld   A, $02                                        ;; 00:2b79 $3e $02
    ld   [wD58B], A                                    ;; 00:2b7b $ea $8b $d5
    ret                                                ;; 00:2b7e $c9

call_00_2b7f:
    ld   A, $03                                        ;; 00:2b7f $3e $03
    ld   [wBackupRomBank], A                           ;; 00:2b81 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2b84 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2b87 $ea $00 $20
    ld   DE, $9c00                                     ;; 00:2b8a $11 $00 $9c
    ld   HL, $40a0                                     ;; 00:2b8d $21 $a0 $40
    ld   B, $14                                        ;; 00:2b90 $06 $14
    call memcopySmall                                  ;; 00:2b92 $cd $91 $05
    ld   DE, $9ce0                                     ;; 00:2b95 $11 $e0 $9c
    ld   B, $14                                        ;; 00:2b98 $06 $14
    call memcopySmall                                  ;; 00:2b9a $cd $91 $05
    ld   A, $cc                                        ;; 00:2b9d $3e $cc
    ld   [v9C20], A                                    ;; 00:2b9f $ea $20 $9c
    ld   [v9C40], A                                    ;; 00:2ba2 $ea $40 $9c
    ld   [v9C60], A                                    ;; 00:2ba5 $ea $60 $9c
    ld   [v9C80], A                                    ;; 00:2ba8 $ea $80 $9c
    ld   [v9CA0], A                                    ;; 00:2bab $ea $a0 $9c
    ld   [v9CC0], A                                    ;; 00:2bae $ea $c0 $9c
    ld   [v9C33], A                                    ;; 00:2bb1 $ea $33 $9c
    ld   [v9C53], A                                    ;; 00:2bb4 $ea $53 $9c
    ld   [v9C73], A                                    ;; 00:2bb7 $ea $73 $9c
    ld   [v9C93], A                                    ;; 00:2bba $ea $93 $9c
    ld   [v9CB3], A                                    ;; 00:2bbd $ea $b3 $9c
    ld   [v9CD3], A                                    ;; 00:2bc0 $ea $d3 $9c
    ret                                                ;; 00:2bc3 $c9

call_00_2bc4:
    call startHardwareTimer                            ;; 00:2bc4 $cd $39 $0f
    call disableLCD                                    ;; 00:2bc7 $cd $23 $04
    call clearVRAM                                     ;; 00:2bca $cd $5f $04
    ld   A, $04                                        ;; 00:2bcd $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2bcf $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2bd2 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2bd5 $ea $00 $20
    call call_04_60a7                                  ;; 00:2bd8 $cd $a7 $60
    ld   A, $1a                                        ;; 00:2bdb $3e $1a
    ld   [wBackupRomBank], A                           ;; 00:2bdd $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2be0 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2be3 $ea $00 $20
    ld   HL, data_1a_5c4e ;@=ptr bank=0x1A             ;; 00:2be6 $21 $4e $5c
    ld   DE, wCA4E                                     ;; 00:2be9 $11 $4e $ca
    ld   B, $09                                        ;; 00:2bec $06 $09
    call memcopySmall                                  ;; 00:2bee $cd $91 $05
    call call_1a_60ac                                  ;; 00:2bf1 $cd $ac $60
    ld   A, $03                                        ;; 00:2bf4 $3e $03
    ld   [wBackupRomBank], A                           ;; 00:2bf6 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2bf9 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2bfc $ea $00 $20
    ld   HL, data_03_4080 ;@=ptr bank=0x03             ;; 00:2bff $21 $80 $40
    ld   DE, wCF36                                     ;; 00:2c02 $11 $36 $cf
    ld   B, $18                                        ;; 00:2c05 $06 $18
    call memcopySmall                                  ;; 00:2c07 $cd $91 $05
    ld   HL, wCurrentMap                               ;; 00:2c0a $21 $42 $c1
    ld   A, [HL+]                                      ;; 00:2c0d $2a
    ld   E, [HL]                                       ;; 00:2c0e $5e
    ld   D, A                                          ;; 00:2c0f $57
    ld   HL, something_038b ;@=ptr                     ;; 00:2c10 $21 $8b $03
    ld   B, $0b                                        ;; 00:2c13 $06 $0b
.jr_00_2c15:
    push BC                                            ;; 00:2c15 $c5
    ld   A, [HL+]                                      ;; 00:2c16 $2a
    ld   B, A                                          ;; 00:2c17 $47
    ld   A, [HL+]                                      ;; 00:2c18 $2a
    ld   C, A                                          ;; 00:2c19 $4f
    call is_BC_DE_equal                                ;; 00:2c1a $cd $f2 $05
    jr   NZ, .jr_00_2c3a                               ;; 00:2c1d $20 $1b
    push HL                                            ;; 00:2c1f $e5
    inc  HL                                            ;; 00:2c20 $23
    ld   C, [HL]                                       ;; 00:2c21 $4e
    ld   B, $00                                        ;; 00:2c22 $06 $00
    ld   HL, wC155                                     ;; 00:2c24 $21 $55 $c1
    add  HL, BC                                        ;; 00:2c27 $09
    ld   A, [HL]                                       ;; 00:2c28 $7e
    pop  HL                                            ;; 00:2c29 $e1
    and  A, A                                          ;; 00:2c2a $a7
    jr   NZ, .jr_00_2c3a                               ;; 00:2c2b $20 $0d
    inc  HL                                            ;; 00:2c2d $23
    inc  HL                                            ;; 00:2c2e $23
    ld   A, [HL+]                                      ;; 00:2c2f $2a
    ld   [wCurrentMap], A                              ;; 00:2c30 $ea $42 $c1
    ld   A, [HL+]                                      ;; 00:2c33 $2a
    ld   [wCurrentMap.low], A                          ;; 00:2c34 $ea $43 $c1
    pop  BC                                            ;; 00:2c37 $c1
    jr   .jr_00_2c42                                   ;; 00:2c38 $18 $08
.jr_00_2c3a:
    ld   BC, $04                                       ;; 00:2c3a $01 $04 $00
    add  HL, BC                                        ;; 00:2c3d $09
    pop  BC                                            ;; 00:2c3e $c1
    dec  B                                             ;; 00:2c3f $05
    jr   NZ, .jr_00_2c15                               ;; 00:2c40 $20 $d3
.jr_00_2c42:
    ld   DE, data_03_40ea ;@=ptr bank=3                ;; 00:2c42 $11 $ea $40
    call call_00_0fc4                                  ;; 00:2c45 $cd $c4 $0f
    ld   A, [wD5B9]                                    ;; 00:2c48 $fa $b9 $d5
    and  A, A                                          ;; 00:2c4b $a7
    jr   Z, .jr_00_2c51                                ;; 00:2c4c $28 $03
    inc  HL                                            ;; 00:2c4e $23
    jr   .jr_00_2c80                                   ;; 00:2c4f $18 $2f
.jr_00_2c51:
    ld   A, [wD31A]                                    ;; 00:2c51 $fa $1a $d3
    and  A, A                                          ;; 00:2c54 $a7
    jr   Z, .jr_00_2c6c                                ;; 00:2c55 $28 $15
    ld   A, [HL+]                                      ;; 00:2c57 $2a
    ld   [wD31B], A                                    ;; 00:2c58 $ea $1b $d3
    ld   A, [wD31C]                                    ;; 00:2c5b $fa $1c $d3
    ld   [wD1E9], A                                    ;; 00:2c5e $ea $e9 $d1
    xor  A, A                                          ;; 00:2c61 $af
    ld   [wD31A], A                                    ;; 00:2c62 $ea $1a $d3
    ld   A, $01                                        ;; 00:2c65 $3e $01
    ld   [wD5DF], A                                    ;; 00:2c67 $ea $df $d5
    jr   .jr_00_2c80                                   ;; 00:2c6a $18 $14
.jr_00_2c6c:
    ld   A, [HL+]                                      ;; 00:2c6c $2a
    ld   B, A                                          ;; 00:2c6d $47
    ld   A, [wD1E9]                                    ;; 00:2c6e $fa $e9 $d1
    cp   A, B                                          ;; 00:2c71 $b8
    jr   Z, .jr_00_2c80                                ;; 00:2c72 $28 $0c
    ld   A, B                                          ;; 00:2c74 $78
    ld   [wD1E9], A                                    ;; 00:2c75 $ea $e9 $d1
    ld   A, $01                                        ;; 00:2c78 $3e $01
    ld   [wD2BD], A                                    ;; 00:2c7a $ea $bd $d2
    ld   [wD5DF], A                                    ;; 00:2c7d $ea $df $d5
.jr_00_2c80:
    ld   DE, wMapHeaderStart                           ;; 00:2c80 $11 $90 $d5
    ld   B, $24                                        ;; 00:2c83 $06 $24
    call memcopySmall                                  ;; 00:2c85 $cd $91 $05
    ld   A, $23                                        ;; 00:2c88 $3e $23
    ld   [wBackupRomBank], A                           ;; 00:2c8a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2c8d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2c90 $ea $00 $20
    ld   A, [wD5B2]                                    ;; 00:2c93 $fa $b2 $d5
    add  A, A                                          ;; 00:2c96 $87
    ld   C, A                                          ;; 00:2c97 $4f
    ld   B, $00                                        ;; 00:2c98 $06 $00
    ld   HL, $4000                                     ;; 00:2c9a $21 $00 $40
    add  HL, BC                                        ;; 00:2c9d $09
    ld   A, [HL+]                                      ;; 00:2c9e $2a
    ld   [wD5CF], A                                    ;; 00:2c9f $ea $cf $d5
    ld   A, [HL+]                                      ;; 00:2ca2 $2a
    ld   [wD5D0], A                                    ;; 00:2ca3 $ea $d0 $d5
    ld   A, $01                                        ;; 00:2ca6 $3e $01
    ld   [wD5CC], A                                    ;; 00:2ca8 $ea $cc $d5
    xor  A, A                                          ;; 00:2cab $af
    ld   [wD5CD], A                                    ;; 00:2cac $ea $cd $d5
    ld   HL, wShadowOAM                                ;; 00:2caf $21 $00 $c0
    ld   B, $a0                                        ;; 00:2cb2 $06 $a0
    call memzeroSmall                                  ;; 00:2cb4 $cd $8b $05
    ld   A, [wRoomGraphicsBank]                        ;; 00:2cb7 $fa $9a $d5
    ld   [wBackupRomBank], A                           ;; 00:2cba $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2cbd $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2cc0 $ea $00 $20
    ld   HL, wRoomGraphicsPointer                      ;; 00:2cc3 $21 $a3 $d5
    ld   A, [HL+]                                      ;; 00:2cc6 $2a
    ld   L, [HL]                                       ;; 00:2cc7 $6e
    ld   H, A                                          ;; 00:2cc8 $67
    ld   DE, $8ce0                                     ;; 00:2cc9 $11 $e0 $8c
    ld   BC, $b20                                      ;; 00:2ccc $01 $20 $0b
    call memcopy                                       ;; 00:2ccf $cd $4e $04
    ld   A, [wD5BA]                                    ;; 00:2cd2 $fa $ba $d5
    and  A, A                                          ;; 00:2cd5 $a7
    jr   Z, .jr_00_2cfb                                ;; 00:2cd6 $28 $23
    ld   A, $03                                        ;; 00:2cd8 $3e $03
    ld   [wBackupRomBank], A                           ;; 00:2cda $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2cdd $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2ce0 $ea $00 $20
    ld   HL, $4000                                     ;; 00:2ce3 $21 $00 $40
    ld   DE, wCE25                                     ;; 00:2ce6 $11 $25 $ce
    ld   B, $40                                        ;; 00:2ce9 $06 $40
    call memcopySmall                                  ;; 00:2ceb $cd $91 $05
    ld   HL, $4040                                     ;; 00:2cee $21 $40 $40
    ld   DE, wCE65                                     ;; 00:2cf1 $11 $65 $ce
    ld   B, $40                                        ;; 00:2cf4 $06 $40
    call memcopySmall                                  ;; 00:2cf6 $cd $91 $05
    jr   .jr_00_2d15                                   ;; 00:2cf9 $18 $1a
.jr_00_2cfb:
    ld   A, [wD59C]                                    ;; 00:2cfb $fa $9c $d5
    ld   [wBackupRomBank], A                           ;; 00:2cfe $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2d01 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2d04 $ea $00 $20
    ld   HL, wD5A5                                     ;; 00:2d07 $21 $a5 $d5
    ld   A, [HL+]                                      ;; 00:2d0a $2a
    ld   L, [HL]                                       ;; 00:2d0b $6e
    ld   H, A                                          ;; 00:2d0c $67
    ld   DE, wCE25                                     ;; 00:2d0d $11 $25 $ce
    ld   B, $40                                        ;; 00:2d10 $06 $40
    call memcopySmall                                  ;; 00:2d12 $cd $91 $05
.jr_00_2d15:
    call call_00_1255                                  ;; 00:2d15 $cd $55 $12
    ld   HL, wC255                                     ;; 00:2d18 $21 $55 $c2
    ld   DE, wC355                                     ;; 00:2d1b $11 $55 $c3
    ld   BC, $100                                      ;; 00:2d1e $01 $00 $01
.jr_00_2d21:
    ld   A, [HL]                                       ;; 00:2d21 $7e
    and  A, $fd                                        ;; 00:2d22 $e6 $fd
    ld   [HL+], A                                      ;; 00:2d24 $22
    ld   A, [DE]                                       ;; 00:2d25 $1a
    and  A, $fd                                        ;; 00:2d26 $e6 $fd
    ld   [DE], A                                       ;; 00:2d28 $12
    inc  DE                                            ;; 00:2d29 $13
    dec  BC                                            ;; 00:2d2a $0b
    ld   A, B                                          ;; 00:2d2b $78
    or   A, C                                          ;; 00:2d2c $b1
    jr   NZ, .jr_00_2d21                               ;; 00:2d2d $20 $f2
    ld   A, [wD82F]                                    ;; 00:2d2f $fa $2f $d8
    and  A, A                                          ;; 00:2d32 $a7
    jr   NZ, .jr_00_2d48                               ;; 00:2d33 $20 $13
    call call_00_064c                                  ;; 00:2d35 $cd $4c $06
    and  A, $07                                        ;; 00:2d38 $e6 $07
    add  A, $1c                                        ;; 00:2d3a $c6 $1c
    ld   HL, wC133                                     ;; 00:2d3c $21 $33 $c1
    bit  0, [HL]                                       ;; 00:2d3f $cb $46
    jr   Z, .jr_00_2d45                                ;; 00:2d41 $28 $02
    sla  A                                             ;; 00:2d43 $cb $27
.jr_00_2d45:
    ld   [wD82F], A                                    ;; 00:2d45 $ea $2f $d8
.jr_00_2d48:
    ld   A, $02                                        ;; 00:2d48 $3e $02
    ld   [wCB27], A                                    ;; 00:2d4a $ea $27 $cb
    ld   A, $90                                        ;; 00:2d4d $3e $90
    ldh  [rWY], A                                      ;; 00:2d4f $e0 $4a
    ld   [wD589], A                                    ;; 00:2d51 $ea $89 $d5
    ld   A, $07                                        ;; 00:2d54 $3e $07
    ldh  [rWX], A                                      ;; 00:2d56 $e0 $4b
    ld   [wD58A], A                                    ;; 00:2d58 $ea $8a $d5
    xor  A, A                                          ;; 00:2d5b $af
    ld   [wSCY], A                                     ;; 00:2d5c $ea $87 $d5
    ld   [wSCX], A                                     ;; 00:2d5f $ea $88 $d5
    ld   [wD136], A                                    ;; 00:2d62 $ea $36 $d1
    ld   [wCA4D], A                                    ;; 00:2d65 $ea $4d $ca
    ld   [wCEA8], A                                    ;; 00:2d68 $ea $a8 $ce
    ld   [wC46B], A                                    ;; 00:2d6b $ea $6b $c4
    ld   [wC459], A                                    ;; 00:2d6e $ea $59 $c4
    ld   [wC523], A                                    ;; 00:2d71 $ea $23 $c5
    call call_00_1858                                  ;; 00:2d74 $cd $58 $18
    ld   HL, wCEBA                                     ;; 00:2d77 $21 $ba $ce
    ld   B, $1a                                        ;; 00:2d7a $06 $1a
    call memzeroSmall                                  ;; 00:2d7c $cd $8b $05
    ld   A, $04                                        ;; 00:2d7f $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2d81 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2d84 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2d87 $ea $00 $20
    call call_04_613a                                  ;; 00:2d8a $cd $3a $61
    call call_04_61b1                                  ;; 00:2d8d $cd $b1 $61
    ld   A, [wC46C]                                    ;; 00:2d90 $fa $6c $c4
    ld   [wD837], A                                    ;; 00:2d93 $ea $37 $d8
    xor  A, A                                          ;; 00:2d96 $af
    ld   [wC46C], A                                    ;; 00:2d97 $ea $6c $c4
    call call_00_24c1                                  ;; 00:2d9a $cd $c1 $24
    ld   A, [wD837]                                    ;; 00:2d9d $fa $37 $d8
    ld   [wC46C], A                                    ;; 00:2da0 $ea $6c $c4
    call call_00_24c1                                  ;; 00:2da3 $cd $c1 $24
    ld   A, $01                                        ;; 00:2da6 $3e $01
    ld   [wD5C5], A                                    ;; 00:2da8 $ea $c5 $d5
    ld   A, [wD5C4]                                    ;; 00:2dab $fa $c4 $d5
    and  A, A                                          ;; 00:2dae $a7
    jp   Z, .jp_00_2dc2                                ;; 00:2daf $ca $c2 $2d
    ld   A, $04                                        ;; 00:2db2 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2db4 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2db7 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2dba $ea $00 $20
    call call_04_61ea                                  ;; 00:2dbd $cd $ea $61
    jr   .jr_00_2dc9                                   ;; 00:2dc0 $18 $07
.jp_00_2dc2:
    xor  A, A                                          ;; 00:2dc2 $af
    ld   [wD5D8], A                                    ;; 00:2dc3 $ea $d8 $d5
    call call_00_0936                                  ;; 00:2dc6 $cd $36 $09
.jr_00_2dc9:
    xor  A, A                                          ;; 00:2dc9 $af
    ld   [wD5C5], A                                    ;; 00:2dca $ea $c5 $d5
    call call_00_0afa                                  ;; 00:2dcd $cd $fa $0a
    call clearTilemapVRAM                              ;; 00:2dd0 $cd $7f $04
    ld   A, $fe                                        ;; 00:2dd3 $3e $fe
    ld   [wCEB8], A                                    ;; 00:2dd5 $ea $b8 $ce
    ld   [wCEB9], A                                    ;; 00:2dd8 $ea $b9 $ce
    ld   B, $15                                        ;; 00:2ddb $06 $15
.jr_00_2ddd:
    push BC                                            ;; 00:2ddd $c5
    call call_00_15a6                                  ;; 00:2dde $cd $a6 $15
    call call_00_1688                                  ;; 00:2de1 $cd $88 $16
    call call_00_1701                                  ;; 00:2de4 $cd $01 $17
    ld   HL, wCEB9                                     ;; 00:2de7 $21 $b9 $ce
    ld   A, $01                                        ;; 00:2dea $3e $01
    add  A, [HL]                                       ;; 00:2dec $86
    ld   [HL-], A                                      ;; 00:2ded $32
    ld   A, $00                                        ;; 00:2dee $3e $00
    adc  A, [HL]                                       ;; 00:2df0 $8e
    ld   [HL], A                                       ;; 00:2df1 $77
    pop  BC                                            ;; 00:2df2 $c1
    dec  B                                             ;; 00:2df3 $05
    jr   NZ, .jr_00_2ddd                               ;; 00:2df4 $20 $e7
    ld   A, $ff                                        ;; 00:2df6 $3e $ff
    ld   [wCEB8], A                                    ;; 00:2df8 $ea $b8 $ce
    ld   [wCEB9], A                                    ;; 00:2dfb $ea $b9 $ce
    ld   [wCEB6], A                                    ;; 00:2dfe $ea $b6 $ce
    ld   [wCEB7], A                                    ;; 00:2e01 $ea $b7 $ce
    ld   HL, wCEB2                                     ;; 00:2e04 $21 $b2 $ce
    ld   A, [HL+]                                      ;; 00:2e07 $2a
    ld   E, [HL]                                       ;; 00:2e08 $5e
    ld   D, A                                          ;; 00:2e09 $57
    call divide_DE_8                                   ;; 00:2e0a $cd $b4 $06
    dec  DE                                            ;; 00:2e0d $1b
    ld   HL, wCEBA                                     ;; 00:2e0e $21 $ba $ce
    ld   A, D                                          ;; 00:2e11 $7a
    ld   [HL+], A                                      ;; 00:2e12 $22
    ld   [HL], E                                       ;; 00:2e13 $73
    ld   HL, wCEB4                                     ;; 00:2e14 $21 $b4 $ce
    ld   A, [HL+]                                      ;; 00:2e17 $2a
    ld   E, [HL]                                       ;; 00:2e18 $5e
    ld   D, A                                          ;; 00:2e19 $57
    call divide_DE_8                                   ;; 00:2e1a $cd $b4 $06
    dec  DE                                            ;; 00:2e1d $1b
    ld   HL, wCEBC                                     ;; 00:2e1e $21 $bc $ce
    ld   A, D                                          ;; 00:2e21 $7a
    ld   [HL+], A                                      ;; 00:2e22 $22
    ld   [HL], E                                       ;; 00:2e23 $73
    call call_00_235e                                  ;; 00:2e24 $cd $5e $23
    xor  A, A                                          ;; 00:2e27 $af
    ld   [wD5CA], A                                    ;; 00:2e28 $ea $ca $d5
    ld   HL, wPlayerX                                  ;; 00:2e2b $21 $44 $c1
    ld   DE, wD5BC                                     ;; 00:2e2e $11 $bc $d5
    ld   B, $04                                        ;; 00:2e31 $06 $04
    call memcopySmall                                  ;; 00:2e33 $cd $91 $05
    ld   A, $04                                        ;; 00:2e36 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2e38 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2e3b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2e3e $ea $00 $20
    call call_04_42cb                                  ;; 00:2e41 $cd $cb $42
    ld   A, B                                          ;; 00:2e44 $78
    and  A, A                                          ;; 00:2e45 $a7
    jr   NZ, .jr_00_2e4d                               ;; 00:2e46 $20 $05
    ld   A, $01                                        ;; 00:2e48 $3e $01
    ld   [wC459], A                                    ;; 00:2e4a $ea $59 $c4
.jr_00_2e4d:
    ld   A, $04                                        ;; 00:2e4d $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2e4f $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2e52 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2e55 $ea $00 $20
    call call_04_6268                                  ;; 00:2e58 $cd $68 $62
    xor  A, A                                          ;; 00:2e5b $af
    ldh  [rIF], A                                      ;; 00:2e5c $e0 $0f
    ld   A, $03                                        ;; 00:2e5e $3e $03
    ldh  [rIE], A                                      ;; 00:2e60 $e0 $ff
    ld   A, $40                                        ;; 00:2e62 $3e $40
    ldh  [rSTAT], A                                    ;; 00:2e64 $e0 $41
    xor  A, A                                          ;; 00:2e66 $af
    ldh  [rIF], A                                      ;; 00:2e67 $e0 $0f
    ld   A, $3f                                        ;; 00:2e69 $3e $3f
    ldh  [rLYC], A                                     ;; 00:2e6b $e0 $45
    ld   A, $c7                                        ;; 00:2e6d $3e $c7
    ldh  [rLCDC], A                                    ;; 00:2e6f $e0 $40
    ld   A, [wD5DF]                                    ;; 00:2e71 $fa $df $d5
    and  A, A                                          ;; 00:2e74 $a7
    ret  Z                                             ;; 00:2e75 $c8
    xor  A, A                                          ;; 00:2e76 $af
    ld   [wD5DF], A                                    ;; 00:2e77 $ea $df $d5
    ld   A, [wD1E9]                                    ;; 00:2e7a $fa $e9 $d1
    call call_00_11a8                                  ;; 00:2e7d $cd $a8 $11
    ret                                                ;; 00:2e80 $c9

call_00_2e81:
    ld   A, $11                                        ;; 00:2e81 $3e $11
    ld   [$2000], A                                    ;; 00:2e83 $ea $00 $20
    call call_11_59a6                                  ;; 00:2e86 $cd $a6 $59
    ld   A, [wBackupRomBank]                           ;; 00:2e89 $fa $b5 $d5
    ld   [$2000], A                                    ;; 00:2e8c $ea $00 $20
    ld   A, [wC523]                                    ;; 00:2e8f $fa $23 $c5
    and  A, A                                          ;; 00:2e92 $a7
    jr   NZ, .jr_00_2ebe                               ;; 00:2e93 $20 $29
    call call_00_1d92                                  ;; 00:2e95 $cd $92 $1d
    ld   A, [wD58B]                                    ;; 00:2e98 $fa $8b $d5
    cp   A, $01                                        ;; 00:2e9b $fe $01
    jr   C, .jr_00_2ebf                                ;; 00:2e9d $38 $20
    jr   Z, .jr_00_2ec3                                ;; 00:2e9f $28 $22
    cp   A, $03                                        ;; 00:2ea1 $fe $03
    jr   C, .jr_00_2eea                                ;; 00:2ea3 $38 $45
    jr   Z, .jr_00_2ef4                                ;; 00:2ea5 $28 $4d
    cp   A, $05                                        ;; 00:2ea7 $fe $05
    jr   C, .jr_00_2f09                                ;; 00:2ea9 $38 $5e
    jr   Z, .jr_00_2f0a                                ;; 00:2eab $28 $5d
    cp   A, $07                                        ;; 00:2ead $fe $07
    jp   C, .jp_00_2f3f                                ;; 00:2eaf $da $3f $2f
    jp   Z, .jp_00_2f54                                ;; 00:2eb2 $ca $54 $2f
    cp   A, $09                                        ;; 00:2eb5 $fe $09
    jp   C, .jp_00_2f63                                ;; 00:2eb7 $da $63 $2f
    jp   Z, .jp_00_2f72                                ;; 00:2eba $ca $72 $2f
    ret                                                ;; 00:2ebd $c9
.jr_00_2ebe:
    ret                                                ;; 00:2ebe $c9
.jr_00_2ebf:
    call call_00_122b                                  ;; 00:2ebf $cd $2b $12
    ret                                                ;; 00:2ec2 $c9
.jr_00_2ec3:
    call call_00_0c68                                  ;; 00:2ec3 $cd $68 $0c
    call call_00_0afa                                  ;; 00:2ec6 $cd $fa $0a
    ld   A, $04                                        ;; 00:2ec9 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2ecb $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2ece $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2ed1 $ea $00 $20
    call call_04_41a1                                  ;; 00:2ed4 $cd $a1 $41
    call call_00_24c1                                  ;; 00:2ed7 $cd $c1 $24
    call call_00_235e                                  ;; 00:2eda $cd $5e $23
    call call_00_1415                                  ;; 00:2edd $cd $15 $14
    call call_00_14e4                                  ;; 00:2ee0 $cd $e4 $14
    call call_00_15a6                                  ;; 00:2ee3 $cd $a6 $15
    call call_00_1688                                  ;; 00:2ee6 $cd $88 $16
    ret                                                ;; 00:2ee9 $c9
.jr_00_2eea:
    call call_00_25d9                                  ;; 00:2eea $cd $d9 $25
    call call_00_24c1                                  ;; 00:2eed $cd $c1 $24
    call call_00_235e                                  ;; 00:2ef0 $cd $5e $23
    ret                                                ;; 00:2ef3 $c9
.jr_00_2ef4:
    ld   A, $10                                        ;; 00:2ef4 $3e $10
    ld   [wBackupRomBank], A                           ;; 00:2ef6 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2ef9 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2efc $ea $00 $20
    call call_10_4bb7                                  ;; 00:2eff $cd $b7 $4b
    call call_00_24c1                                  ;; 00:2f02 $cd $c1 $24
    call call_00_235e                                  ;; 00:2f05 $cd $5e $23
    ret                                                ;; 00:2f08 $c9
.jr_00_2f09:
    ret                                                ;; 00:2f09 $c9
.jr_00_2f0a:
    ld   A, $05                                        ;; 00:2f0a $3e $05
    ld   [wBackupRomBank], A                           ;; 00:2f0c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2f0f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2f12 $ea $00 $20
    call call_05_40cb                                  ;; 00:2f15 $cd $cb $40
    call call_00_24c1                                  ;; 00:2f18 $cd $c1 $24
    call call_00_0e8f                                  ;; 00:2f1b $cd $8f $0e
    call call_00_0afa                                  ;; 00:2f1e $cd $fa $0a
    ld   A, $04                                        ;; 00:2f21 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2f23 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2f26 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2f29 $ea $00 $20
    call call_04_41a1                                  ;; 00:2f2c $cd $a1 $41
    call call_00_235e                                  ;; 00:2f2f $cd $5e $23
    call call_00_1415                                  ;; 00:2f32 $cd $15 $14
    call call_00_14e4                                  ;; 00:2f35 $cd $e4 $14
    call call_00_15a6                                  ;; 00:2f38 $cd $a6 $15
    call call_00_1688                                  ;; 00:2f3b $cd $88 $16
    ret                                                ;; 00:2f3e $c9
.jp_00_2f3f:
    ld   A, $04                                        ;; 00:2f3f $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2f41 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2f44 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2f47 $ea $00 $20
    call call_04_43cf ;@bank 4                         ;; 00:2f4a $cd $cf $43
    call call_00_24c1                                  ;; 00:2f4d $cd $c1 $24
    call call_00_235e                                  ;; 00:2f50 $cd $5e $23
    ret                                                ;; 00:2f53 $c9
.jp_00_2f54:
    ld   A, $05                                        ;; 00:2f54 $3e $05
    ld   [wBackupRomBank], A                           ;; 00:2f56 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2f59 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2f5c $ea $00 $20
    call call_05_40cb                                  ;; 00:2f5f $cd $cb $40
    ret                                                ;; 00:2f62 $c9
.jp_00_2f63:
    ld   A, $04                                        ;; 00:2f63 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2f65 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2f68 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2f6b $ea $00 $20
    call call_04_4c43 ;@bank 4                         ;; 00:2f6e $cd $43 $4c
    ret                                                ;; 00:2f71 $c9
.jp_00_2f72:
    ld   A, $11                                        ;; 00:2f72 $3e $11
    ld   [$2000], A                                    ;; 00:2f74 $ea $00 $20
    call call_11_5a1e ;@bank 17                        ;; 00:2f77 $cd $1e $5a
    ld   A, [wBackupRomBank]                           ;; 00:2f7a $fa $b5 $d5
    ld   [$2000], A                                    ;; 00:2f7d $ea $00 $20
    call call_00_24c1                                  ;; 00:2f80 $cd $c1 $24
    call call_00_235e                                  ;; 00:2f83 $cd $5e $23
    ret                                                ;; 00:2f86 $c9

call_00_2f87:
    xor  A, A                                          ;; 00:2f87 $af
    ldh  [rNR52], A                                    ;; 00:2f88 $e0 $26
    ld   A, $80                                        ;; 00:2f8a $3e $80
    ldh  [rNR52], A                                    ;; 00:2f8c $e0 $26
    call disableLCD                                    ;; 00:2f8e $cd $23 $04
    call clearVRAM                                     ;; 00:2f91 $cd $5f $04
    ld   A, $03                                        ;; 00:2f94 $3e $03
    ld   [wBackupRomBank], A                           ;; 00:2f96 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2f99 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2f9c $ea $00 $20
    ld   HL, $4080                                     ;; 00:2f9f $21 $80 $40
    ld   DE, wCF36                                     ;; 00:2fa2 $11 $36 $cf
    ld   B, $20                                        ;; 00:2fa5 $06 $20
    call memcopySmall                                  ;; 00:2fa7 $cd $91 $05
    ld   A, $04                                        ;; 00:2faa $3e $04
    ld   [wBackupRomBank], A                           ;; 00:2fac $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2faf $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2fb2 $ea $00 $20
    call call_04_6972 ;@bank 4                         ;; 00:2fb5 $cd $72 $69
    ld   HL, $62cd                                     ;; 00:2fb8 $21 $cd $62
    ld   DE, $8000                                     ;; 00:2fbb $11 $00 $80
    ld   BC, $640                                      ;; 00:2fbe $01 $40 $06
    call memcopy                                       ;; 00:2fc1 $cd $4e $04
    ld   HL, $690d                                     ;; 00:2fc4 $21 $0d $69
    ld   DE, wCE65                                     ;; 00:2fc7 $11 $65 $ce
    ld   B, $28                                        ;; 00:2fca $06 $28
    call memcopySmall                                  ;; 00:2fcc $cd $91 $05
    ld   HL, $628d                                     ;; 00:2fcf $21 $8d $62
    ld   DE, $9000                                     ;; 00:2fd2 $11 $00 $90
    ld   B, $40                                        ;; 00:2fd5 $06 $40
    call memcopySmall                                  ;; 00:2fd7 $cd $91 $05
    ld   A, $1a                                        ;; 00:2fda $3e $1a
    ld   [wBackupRomBank], A                           ;; 00:2fdc $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:2fdf $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:2fe2 $ea $00 $20
    ld   HL, $5c60                                     ;; 00:2fe5 $21 $60 $5c
    ld   DE, $9200                                     ;; 00:2fe8 $11 $00 $92
    ld   BC, $200                                      ;; 00:2feb $01 $00 $02
    call memcopy                                       ;; 00:2fee $cd $4e $04
    ld   HL, $5c57                                     ;; 00:2ff1 $21 $57 $5c
    ld   DE, wCA4E                                     ;; 00:2ff4 $11 $4e $ca
    ld   B, $09                                        ;; 00:2ff7 $06 $09
    call memcopySmall                                  ;; 00:2ff9 $cd $91 $05
    call call_1a_60ac ;@bank 26                        ;; 00:2ffc $cd $ac $60
    ld   HL, wCA62                                     ;; 00:2fff $21 $62 $ca
    ld   DE, $9c00                                     ;; 00:3002 $11 $00 $9c
    ld   B, $20                                        ;; 00:3005 $06 $20
    call memcopySmall                                  ;; 00:3007 $cd $91 $05
    ld   A, $04                                        ;; 00:300a $3e $04
    ld   [wBackupRomBank], A                           ;; 00:300c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:300f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3012 $ea $00 $20
    call call_04_69ff ;@bank 4                         ;; 00:3015 $cd $ff $69
    ld   A, $08                                        ;; 00:3018 $3e $08
    ld   [wBackupRomBank], A                           ;; 00:301a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:301d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3020 $ea $00 $20
    ld   A, [wD318]                                    ;; 00:3023 $fa $18 $d3
    and  A, A                                          ;; 00:3026 $a7
    jr   Z, .jr_00_3033                                ;; 00:3027 $28 $0a
    dec  A                                             ;; 00:3029 $3d
    ld   C, A                                          ;; 00:302a $4f
    ld   HL, $4527                                     ;; 00:302b $21 $27 $45
    call ld_HL_from_HL_add_2C                          ;; 00:302e $cd $7a $06
    jr   .jr_00_3047                                   ;; 00:3031 $18 $14
.jr_00_3033:
    ld   A, [wD591]                                    ;; 00:3033 $fa $91 $d5
    ld   C, A                                          ;; 00:3036 $4f
    ld   HL, $4615                                     ;; 00:3037 $21 $15 $46
    call ld_HL_from_HL_add_2C                          ;; 00:303a $cd $7a $06
    call call_00_064c                                  ;; 00:303d $cd $4c $06
    rlca                                               ;; 00:3040 $07
    and  A, $07                                        ;; 00:3041 $e6 $07
    ld   C, A                                          ;; 00:3043 $4f
    call ld_HL_from_HL_add_2C                          ;; 00:3044 $cd $7a $06
.jr_00_3047:
    ld   A, [HL+]                                      ;; 00:3047 $2a
    ld   [wC5AA], A                                    ;; 00:3048 $ea $aa $c5
    ld   A, [HL+]                                      ;; 00:304b $2a
    ld   [wC5AB], A                                    ;; 00:304c $ea $ab $c5
    ld   A, [HL+]                                      ;; 00:304f $2a
    ld   [wC5AC], A                                    ;; 00:3050 $ea $ac $c5
    push HL                                            ;; 00:3053 $e5
    ld   C, A                                          ;; 00:3054 $4f
    ld   HL, $4010                                     ;; 00:3055 $21 $10 $40
    call ld_HL_from_HL_add_2C                          ;; 00:3058 $cd $7a $06
    ld   DE, wC5AE                                     ;; 00:305b $11 $ae $c5
    ld   B, $0c                                        ;; 00:305e $06 $0c
    call memcopySmall                                  ;; 00:3060 $cd $91 $05
    ld   A, [HL+]                                      ;; 00:3063 $2a
    ld   [wC45C], A                                    ;; 00:3064 $ea $5c $c4
    ld   [wC5DA], A                                    ;; 00:3067 $ea $da $c5
    ld   A, [HL+]                                      ;; 00:306a $2a
    ld   [wC45D], A                                    ;; 00:306b $ea $5d $c4
    ld   [wC5DB], A                                    ;; 00:306e $ea $db $c5
    ld   B, [HL]                                       ;; 00:3071 $46
    ld   HL, wD599                                     ;; 00:3072 $21 $99 $d5
    ld   A, $00                                        ;; 00:3075 $3e $00
    ld   [HL+], A                                      ;; 00:3077 $22
    ld   A, B                                          ;; 00:3078 $78
    ld   [HL+], A                                      ;; 00:3079 $22
    ld   A, B                                          ;; 00:307a $78
    ld   [wBackupRomBank], A                           ;; 00:307b $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:307e $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3081 $ea $00 $20
    ld   HL, wC5AE                                     ;; 00:3084 $21 $ae $c5
    ld   A, [HL+]                                      ;; 00:3087 $2a
    ld   L, [HL]                                       ;; 00:3088 $6e
    ld   H, A                                          ;; 00:3089 $67
    ld   DE, $9400                                     ;; 00:308a $11 $00 $94
    ld   BC, $400                                      ;; 00:308d $01 $00 $04
    call memcopy                                       ;; 00:3090 $cd $4e $04
    ldh  A, [hIsGBC]                                   ;; 00:3093 $f0 $fe
    and  A, A                                          ;; 00:3095 $a7
    jr   Z, .jr_00_30e2                                ;; 00:3096 $28 $4a
    ld   A, $01                                        ;; 00:3098 $3e $01
    ldh  [rVBK], A                                     ;; 00:309a $e0 $4f
    ld   A, [wRoomGraphicsBank]                        ;; 00:309c $fa $9a $d5
    ld   [wBackupRomBank], A                           ;; 00:309f $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:30a2 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:30a5 $ea $00 $20
    ld   HL, wC5B2                                     ;; 00:30a8 $21 $b2 $c5
    ld   A, [HL+]                                      ;; 00:30ab $2a
    ld   E, [HL]                                       ;; 00:30ac $5e
    ld   D, A                                          ;; 00:30ad $57
    ld   HL, $9800                                     ;; 00:30ae $21 $00 $98
    ld   B, $12                                        ;; 00:30b1 $06 $12
    ld   A, $32                                        ;; 00:30b3 $3e $32
    call call_00_05ba                                  ;; 00:30b5 $cd $ba $05
    ld   HL, $9a40                                     ;; 00:30b8 $21 $40 $9a
    ld   BC, $1c0                                      ;; 00:30bb $01 $c0 $01
    ld   E, $32                                        ;; 00:30be $1e $32
    call memset                                        ;; 00:30c0 $cd $57 $04
    ld   A, [wRoomGraphicsBank]                        ;; 00:30c3 $fa $9a $d5
    ld   [wBackupRomBank], A                           ;; 00:30c6 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:30c9 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:30cc $ea $00 $20
    ld   HL, wC5B2                                     ;; 00:30cf $21 $b2 $c5
    ld   A, [HL+]                                      ;; 00:30d2 $2a
    ld   L, [HL]                                       ;; 00:30d3 $6e
    ld   H, A                                          ;; 00:30d4 $67
    ld   DE, wC8B3                                     ;; 00:30d5 $11 $b3 $c8
    ld   BC, $168                                      ;; 00:30d8 $01 $68 $01
    call memcopy                                       ;; 00:30db $cd $4e $04
    ld   A, $00                                        ;; 00:30de $3e $00
    ldh  [rVBK], A                                     ;; 00:30e0 $e0 $4f
.jr_00_30e2:
    ld   A, [wRoomGraphicsBank]                        ;; 00:30e2 $fa $9a $d5
    ld   [wBackupRomBank], A                           ;; 00:30e5 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:30e8 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:30eb $ea $00 $20
    ld   HL, wC5B0                                     ;; 00:30ee $21 $b0 $c5
    ld   A, [HL+]                                      ;; 00:30f1 $2a
    ld   E, [HL]                                       ;; 00:30f2 $5e
    ld   D, A                                          ;; 00:30f3 $57
    ld   HL, $9800                                     ;; 00:30f4 $21 $00 $98
    ld   B, $12                                        ;; 00:30f7 $06 $12
    ld   A, $32                                        ;; 00:30f9 $3e $32
    call call_00_05ba                                  ;; 00:30fb $cd $ba $05
    ld   HL, $9a40                                     ;; 00:30fe $21 $40 $9a
    ld   BC, $1c0                                      ;; 00:3101 $01 $c0 $01
    ld   E, $32                                        ;; 00:3104 $1e $32
    call memset                                        ;; 00:3106 $cd $57 $04
    ld   A, [wRoomGraphicsBank]                        ;; 00:3109 $fa $9a $d5
    ld   [wBackupRomBank], A                           ;; 00:310c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:310f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3112 $ea $00 $20
    ld   HL, wC5B0                                     ;; 00:3115 $21 $b0 $c5
    ld   A, [HL+]                                      ;; 00:3118 $2a
    ld   L, [HL]                                       ;; 00:3119 $6e
    ld   H, A                                          ;; 00:311a $67
    ld   DE, wC74B                                     ;; 00:311b $11 $4b $c7
    ld   BC, $168                                      ;; 00:311e $01 $68 $01
    call memcopy                                       ;; 00:3121 $cd $4e $04
    ld   HL, wC5B4                                     ;; 00:3124 $21 $b4 $c5
    ld   A, [HL+]                                      ;; 00:3127 $2a
    ld   L, [HL]                                       ;; 00:3128 $6e
    ld   H, A                                          ;; 00:3129 $67
    ld   DE, wCE25                                     ;; 00:312a $11 $25 $ce
    ld   B, $38                                        ;; 00:312d $06 $38
    call memcopySmall                                  ;; 00:312f $cd $91 $05
    ld   A, $08                                        ;; 00:3132 $3e $08
    ld   [wBackupRomBank], A                           ;; 00:3134 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3137 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:313a $ea $00 $20
    pop  HL                                            ;; 00:313d $e1
    ld   A, [HL+]                                      ;; 00:313e $2a
    ld   [wC589], A                                    ;; 00:313f $ea $89 $c5
    ld   B, A                                          ;; 00:3142 $47
    ld   C, $00                                        ;; 00:3143 $0e $00
.jr_00_3145:
    push BC                                            ;; 00:3145 $c5
    ld   A, [HL+]                                      ;; 00:3146 $2a
    ld   B, A                                          ;; 00:3147 $47
    ld   A, [HL+]                                      ;; 00:3148 $2a
    ld   C, A                                          ;; 00:3149 $4f
    ld   A, [HL+]                                      ;; 00:314a $2a
    ld   D, A                                          ;; 00:314b $57
    ld   A, [HL+]                                      ;; 00:314c $2a
    ld   E, A                                          ;; 00:314d $5f
    push HL                                            ;; 00:314e $e5
    call call_08_4271 ;@bank 8                         ;; 00:314f $cd $71 $42
    call call_08_4313 ;@bank 8                         ;; 00:3152 $cd $13 $43
    pop  HL                                            ;; 00:3155 $e1
    pop  BC                                            ;; 00:3156 $c1
    inc  C                                             ;; 00:3157 $0c
    dec  B                                             ;; 00:3158 $05
    jr   NZ, .jr_00_3145                               ;; 00:3159 $20 $ea
    call call_00_235e                                  ;; 00:315b $cd $5e $23
    ld   A, $04                                        ;; 00:315e $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3160 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3163 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3166 $ea $00 $20
    call call_04_6a8d ;@bank 4                         ;; 00:3169 $cd $8d $6a
    call call_04_6aa9 ;@bank 4                         ;; 00:316c $cd $a9 $6a
    call call_04_6ac9 ;@bank 4                         ;; 00:316f $cd $c9 $6a
    ld   A, $0f                                        ;; 00:3172 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:3174 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3177 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:317a $ea $00 $20
    call call_0f_4f88 ;@bank 15                        ;; 00:317d $cd $88 $4f
    call call_00_24c1                                  ;; 00:3180 $cd $c1 $24
    xor  A, A                                          ;; 00:3183 $af
    ld   [wC460], A                                    ;; 00:3184 $ea $60 $c4
    call call_00_1255                                  ;; 00:3187 $cd $55 $12
    ld   A, $0f                                        ;; 00:318a $3e $0f
    ld   [wD5D2], A                                    ;; 00:318c $ea $d2 $d5
    ld   A, $03                                        ;; 00:318f $3e $03
    ld   [wMainGameState], A                           ;; 00:3191 $ea $86 $d5
    ld   [wD58C], A                                    ;; 00:3194 $ea $8c $d5
    xor  A, A                                          ;; 00:3197 $af
    ld   [wD58B], A                                    ;; 00:3198 $ea $8b $d5
    ld   A, $01                                        ;; 00:319b $3e $01
    ld   [wD58D], A                                    ;; 00:319d $ea $8d $d5
    ld   A, [wC5AA]                                    ;; 00:31a0 $fa $aa $c5
    call call_00_11a8                                  ;; 00:31a3 $cd $a8 $11
    xor  A, A                                          ;; 00:31a6 $af
    ldh  [rIF], A                                      ;; 00:31a7 $e0 $0f
    ld   A, $03                                        ;; 00:31a9 $3e $03
    ldh  [rIE], A                                      ;; 00:31ab $e0 $ff
    xor  A, A                                          ;; 00:31ad $af
    ldh  [rSTAT], A                                    ;; 00:31ae $e0 $41
    ldh  [rIF], A                                      ;; 00:31b0 $e0 $0f
    ld   A, $e7                                        ;; 00:31b2 $3e $e7
    ldh  [rLCDC], A                                    ;; 00:31b4 $e0 $40
    ret                                                ;; 00:31b6 $c9

call_00_31b7:
    call call_00_1a56                                  ;; 00:31b7 $cd $56 $1a
    ld   A, [wD58B]                                    ;; 00:31ba $fa $8b $d5
    cp   A, $01                                        ;; 00:31bd $fe $01
    jr   C, .jr_00_31dc                                ;; 00:31bf $38 $1b
    jr   Z, .jr_00_31e5                                ;; 00:31c1 $28 $22
    cp   A, $03                                        ;; 00:31c3 $fe $03
    jp   C, .jp_00_3240                                ;; 00:31c5 $da $40 $32
    jp   Z, .jp_00_327f                                ;; 00:31c8 $ca $7f $32
    cp   A, $05                                        ;; 00:31cb $fe $05
    jp   C, .jp_00_32c9                                ;; 00:31cd $da $c9 $32
    jp   Z, .jp_00_3310                                ;; 00:31d0 $ca $10 $33
    cp   A, $07                                        ;; 00:31d3 $fe $07
    jp   C, .jp_00_335a                                ;; 00:31d5 $da $5a $33
    jp   Z, .jp_00_337d                                ;; 00:31d8 $ca $7d $33
    ret                                                ;; 00:31db $c9
.jr_00_31dc:
    ld   A, [wC523]                                    ;; 00:31dc $fa $23 $c5
    and  A, A                                          ;; 00:31df $a7
    ret  NZ                                            ;; 00:31e0 $c0
    call call_00_122b                                  ;; 00:31e1 $cd $2b $12
    ret                                                ;; 00:31e4 $c9
.jr_00_31e5:
    ld   A, [wC523]                                    ;; 00:31e5 $fa $23 $c5
    and  A, A                                          ;; 00:31e8 $a7
    ret  NZ                                            ;; 00:31e9 $c0
    ld   A, $08                                        ;; 00:31ea $3e $08
    ld   [wBackupRomBank], A                           ;; 00:31ec $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:31ef $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:31f2 $ea $00 $20
    call call_08_4142 ;@bank 8                         ;; 00:31f5 $cd $42 $41
    ld   A, $10                                        ;; 00:31f8 $3e $10
    ld   [wBackupRomBank], A                           ;; 00:31fa $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:31fd $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3200 $ea $00 $20
    call call_10_4fa5 ;@bank 16                        ;; 00:3203 $cd $a5 $4f
    ld   A, $24                                        ;; 00:3206 $3e $24
    ld   [wBackupRomBank], A                           ;; 00:3208 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:320b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:320e $ea $00 $20
    call call_24_6c20 ;@bank 36                        ;; 00:3211 $cd $20 $6c
    call call_00_24c1                                  ;; 00:3214 $cd $c1 $24
    call call_00_235e                                  ;; 00:3217 $cd $5e $23
    ld   A, $0f                                        ;; 00:321a $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:321c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:321f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3222 $ea $00 $20
    call call_0f_4c57 ;@bank 15                        ;; 00:3225 $cd $57 $4c
    call call_0f_5131 ;@bank 15                        ;; 00:3228 $cd $31 $51
    call call_0f_4fa7 ;@bank 15                        ;; 00:322b $cd $a7 $4f
    ld   A, $04                                        ;; 00:322e $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3230 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3233 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3236 $ea $00 $20
    call call_04_6c15 ;@bank 4                         ;; 00:3239 $cd $15 $6c
    call call_04_6c6b ;@bank 4                         ;; 00:323c $cd $6b $6c
    ret                                                ;; 00:323f $c9
.jp_00_3240:
    ld   A, [wC523]                                    ;; 00:3240 $fa $23 $c5
    and  A, A                                          ;; 00:3243 $a7
    ret  NZ                                            ;; 00:3244 $c0
    call call_00_25d9                                  ;; 00:3245 $cd $d9 $25
    ld   A, $24                                        ;; 00:3248 $3e $24
    ld   [wBackupRomBank], A                           ;; 00:324a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:324d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3250 $ea $00 $20
    call call_24_6c20 ;@bank 36                        ;; 00:3253 $cd $20 $6c
    call call_00_24c1                                  ;; 00:3256 $cd $c1 $24
    call call_00_235e                                  ;; 00:3259 $cd $5e $23
    ld   A, $0f                                        ;; 00:325c $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:325e $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3261 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3264 $ea $00 $20
    call call_0f_4c57 ;@bank 15                        ;; 00:3267 $cd $57 $4c
    call call_0f_4fa7 ;@bank 15                        ;; 00:326a $cd $a7 $4f
    ld   A, $04                                        ;; 00:326d $3e $04
    ld   [wBackupRomBank], A                           ;; 00:326f $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3272 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3275 $ea $00 $20
    call call_04_6c15 ;@bank 4                         ;; 00:3278 $cd $15 $6c
    call call_04_6c6b ;@bank 4                         ;; 00:327b $cd $6b $6c
    ret                                                ;; 00:327e $c9
.jp_00_327f:
    ld   A, [wC523]                                    ;; 00:327f $fa $23 $c5
    and  A, A                                          ;; 00:3282 $a7
    ret  NZ                                            ;; 00:3283 $c0
    ld   A, $10                                        ;; 00:3284 $3e $10
    ld   [wBackupRomBank], A                           ;; 00:3286 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3289 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:328c $ea $00 $20
    call call_10_4bb7 ;@bank 16                        ;; 00:328f $cd $b7 $4b
    ld   A, $24                                        ;; 00:3292 $3e $24
    ld   [wBackupRomBank], A                           ;; 00:3294 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3297 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:329a $ea $00 $20
    call call_24_6c20 ;@bank 36                        ;; 00:329d $cd $20 $6c
    call call_00_24c1                                  ;; 00:32a0 $cd $c1 $24
    call call_00_235e                                  ;; 00:32a3 $cd $5e $23
    ld   A, $0f                                        ;; 00:32a6 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:32a8 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:32ab $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:32ae $ea $00 $20
    call call_0f_4c57 ;@bank 15                        ;; 00:32b1 $cd $57 $4c
    call call_0f_4fa7 ;@bank 15                        ;; 00:32b4 $cd $a7 $4f
    ld   A, $04                                        ;; 00:32b7 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:32b9 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:32bc $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:32bf $ea $00 $20
    call call_04_6c15 ;@bank 4                         ;; 00:32c2 $cd $15 $6c
    call call_04_6c6b ;@bank 4                         ;; 00:32c5 $cd $6b $6c
    ret                                                ;; 00:32c8 $c9
.jp_00_32c9:
    ld   A, [wC523]                                    ;; 00:32c9 $fa $23 $c5
    and  A, A                                          ;; 00:32cc $a7
    ret  NZ                                            ;; 00:32cd $c0
    ld   A, $10                                        ;; 00:32ce $3e $10
    ld   [wBackupRomBank], A                           ;; 00:32d0 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:32d3 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:32d6 $ea $00 $20
    call call_10_4fa5 ;@bank 16                        ;; 00:32d9 $cd $a5 $4f
    call call_00_3437                                  ;; 00:32dc $cd $37 $34
    ld   A, $24                                        ;; 00:32df $3e $24
    ld   [wBackupRomBank], A                           ;; 00:32e1 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:32e4 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:32e7 $ea $00 $20
    call call_24_6c20 ;@bank 36                        ;; 00:32ea $cd $20 $6c
    call call_00_24c1                                  ;; 00:32ed $cd $c1 $24
    call call_00_235e                                  ;; 00:32f0 $cd $5e $23
    ld   A, $0f                                        ;; 00:32f3 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:32f5 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:32f8 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:32fb $ea $00 $20
    call call_0f_4fa7 ;@bank 15                        ;; 00:32fe $cd $a7 $4f
    ld   A, $04                                        ;; 00:3301 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3303 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3306 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3309 $ea $00 $20
    call call_04_6c15 ;@bank 4                         ;; 00:330c $cd $15 $6c
    ret                                                ;; 00:330f $c9
.jp_00_3310:
    ld   A, [wC523]                                    ;; 00:3310 $fa $23 $c5
    and  A, A                                          ;; 00:3313 $a7
    ret  NZ                                            ;; 00:3314 $c0
    ld   A, $18                                        ;; 00:3315 $3e $18
    ld   [wBackupRomBank], A                           ;; 00:3317 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:331a $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:331d $ea $00 $20
    call call_18_5fd1 ;@bank 24                        ;; 00:3320 $cd $d1 $5f
    ld   A, $24                                        ;; 00:3323 $3e $24
    ld   [wBackupRomBank], A                           ;; 00:3325 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3328 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:332b $ea $00 $20
    call call_24_6c20 ;@bank 36                        ;; 00:332e $cd $20 $6c
    call call_00_24c1                                  ;; 00:3331 $cd $c1 $24
    call call_00_235e                                  ;; 00:3334 $cd $5e $23
    ld   A, $0f                                        ;; 00:3337 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:3339 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:333c $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:333f $ea $00 $20
    call call_0f_4c57 ;@bank 15                        ;; 00:3342 $cd $57 $4c
    call call_0f_4fa7 ;@bank 15                        ;; 00:3345 $cd $a7 $4f
    ld   A, $04                                        ;; 00:3348 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:334a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:334d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3350 $ea $00 $20
    call call_04_6c15 ;@bank 4                         ;; 00:3353 $cd $15 $6c
    call call_04_6c6b ;@bank 4                         ;; 00:3356 $cd $6b $6c
    ret                                                ;; 00:3359 $c9
.jp_00_335a:
    ld   A, $04                                        ;; 00:335a $3e $04
    ld   [wBackupRomBank], A                           ;; 00:335c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:335f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3362 $ea $00 $20
    call call_04_43cf ;@bank 4                         ;; 00:3365 $cd $cf $43
    ld   A, $24                                        ;; 00:3368 $3e $24
    ld   [wBackupRomBank], A                           ;; 00:336a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:336d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3370 $ea $00 $20
    call call_24_6c20 ;@bank 36                        ;; 00:3373 $cd $20 $6c
    call call_00_24c1                                  ;; 00:3376 $cd $c1 $24
    call call_00_235e                                  ;; 00:3379 $cd $5e $23
    ret                                                ;; 00:337c $c9
.jp_00_337d:
    call call_00_33b2                                  ;; 00:337d $cd $b2 $33
    ld   A, $24                                        ;; 00:3380 $3e $24
    ld   [wBackupRomBank], A                           ;; 00:3382 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3385 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3388 $ea $00 $20
    call call_24_6c2e ;@bank 36                        ;; 00:338b $cd $2e $6c
    call call_00_24c1                                  ;; 00:338e $cd $c1 $24
    ldh  A, [hIsGBC]                                   ;; 00:3391 $f0 $fe
    and  A, A                                          ;; 00:3393 $a7
    jr   NZ, .jr_00_339c                               ;; 00:3394 $20 $06
    ld   A, [wC523]                                    ;; 00:3396 $fa $23 $c5
    and  A, A                                          ;; 00:3399 $a7
    jr   NZ, .jr_00_339f                               ;; 00:339a $20 $03
.jr_00_339c:
    call call_00_235e                                  ;; 00:339c $cd $5e $23
.jr_00_339f:
    ld   A, [wD5D2]                                    ;; 00:339f $fa $d2 $d5
    and  A, $7f                                        ;; 00:33a2 $e6 $7f
    ret  Z                                             ;; 00:33a4 $c8
    ld   HL, wD5D3                                     ;; 00:33a5 $21 $d3 $d5
    dec  [HL]                                          ;; 00:33a8 $35
    ret  NZ                                            ;; 00:33a9 $c0
    ld   A, $06                                        ;; 00:33aa $3e $06
    ld   [wD5D3], A                                    ;; 00:33ac $ea $d3 $d5
    jp   jp_00_1240                                    ;; 00:33af $c3 $40 $12

call_00_33b2:
    ld   HL, wC51F                                     ;; 00:33b2 $21 $1f $c5
    ld   A, [HL+]                                      ;; 00:33b5 $2a
    ld   L, [HL]                                       ;; 00:33b6 $6e
    ld   H, A                                          ;; 00:33b7 $67
    inc  HL                                            ;; 00:33b8 $23
    ld   A, H                                          ;; 00:33b9 $7c
    ld   [wC51F], A                                    ;; 00:33ba $ea $1f $c5
    ld   A, L                                          ;; 00:33bd $7d
    ld   [wC520], A                                    ;; 00:33be $ea $20 $c5
    ld   DE, $01                                       ;; 00:33c1 $11 $01 $00
    call call_00_05ea                                  ;; 00:33c4 $cd $ea $05
    jr   Z, .jr_00_33e2                                ;; 00:33c7 $28 $19
    ld   DE, $28                                       ;; 00:33c9 $11 $28 $00
    call call_00_05ea                                  ;; 00:33cc $cd $ea $05
    jr   Z, .jr_00_33f5                                ;; 00:33cf $28 $24
    ld   DE, $a0                                       ;; 00:33d1 $11 $a0 $00
    call call_00_05ea                                  ;; 00:33d4 $cd $ea $05
    jr   Z, .jr_00_3404                                ;; 00:33d7 $28 $2b
    ld   DE, $17c                                      ;; 00:33d9 $11 $7c $01
    call call_00_05ea                                  ;; 00:33dc $cd $ea $05
    jr   Z, .jr_00_342a                                ;; 00:33df $28 $49
    ret                                                ;; 00:33e1 $c9
.jr_00_33e2:
    ld   HL, wShadowOAM                                ;; 00:33e2 $21 $00 $c0
    ld   B, $30                                        ;; 00:33e5 $06 $30
    call memzeroSmall                                  ;; 00:33e7 $cd $8b $05
    ld   A, $01                                        ;; 00:33ea $3e $01
    ld   [$2000], A                                    ;; 00:33ec $ea $00 $20
    call call_01_4109 ;@bank 1                         ;; 00:33ef $cd $09 $41
    jp   call_01_4175 ;@bank 1                         ;; 00:33f2 $c3 $75 $41
.jr_00_33f5:
    ld   A, $10                                        ;; 00:33f5 $3e $10
    ld   [wC460], A                                    ;; 00:33f7 $ea $60 $c4
    ld   A, $01                                        ;; 00:33fa $3e $01
    ld   [wC463], A                                    ;; 00:33fc $ea $63 $c4
    xor  A, A                                          ;; 00:33ff $af
    ld   [wC462], A                                    ;; 00:3400 $ea $62 $c4
    ret                                                ;; 00:3403 $c9
.jr_00_3404:
    ld   A, $01                                        ;; 00:3404 $3e $01
    ld   B, $dc                                        ;; 00:3406 $06 $dc
    ld   C, $02                                        ;; 00:3408 $0e $02
    ld   DE, wD70C                                     ;; 00:340a $11 $0c $d7
    call call_00_1858                                  ;; 00:340d $cd $58 $18
    ld   A, $9f                                        ;; 00:3410 $3e $9f
    ld   [wD5D2], A                                    ;; 00:3412 $ea $d2 $d5
    ld   A, $06                                        ;; 00:3415 $3e $06
    ld   [wD5D3], A                                    ;; 00:3417 $ea $d3 $d5
    ld   A, $07                                        ;; 00:341a $3e $07
    ld   [wD58D], A                                    ;; 00:341c $ea $8d $d5
    ld   A, $03                                        ;; 00:341f $3e $03
    ld   [wD58C], A                                    ;; 00:3421 $ea $8c $d5
    ld   A, $19                                        ;; 00:3424 $3e $19
    call call_00_11a8                                  ;; 00:3426 $cd $a8 $11
    ret                                                ;; 00:3429 $c9
.jr_00_342a:
    ld   A, $06                                        ;; 00:342a $3e $06
    ld   [wMainGameState], A                           ;; 00:342c $ea $86 $d5
    xor  A, A                                          ;; 00:342f $af
    ld   [wD569], A                                    ;; 00:3430 $ea $69 $d5
    ld   [wD4FA], A                                    ;; 00:3433 $ea $fa $d4
    ret                                                ;; 00:3436 $c9

call_00_3437:
    ld   A, [wCB27]                                    ;; 00:3437 $fa $27 $cb
    cp   A, $02                                        ;; 00:343a $fe $02
    ret  NZ                                            ;; 00:343c $c0
    ld   A, [wC460]                                    ;; 00:343d $fa $60 $c4
    and  A, A                                          ;; 00:3440 $a7
    jr   NZ, .jr_00_344c                               ;; 00:3441 $20 $09
    ld   [wShadowOAM.3C], A                            ;; 00:3443 $ea $3c $c0
    ld   [wShadowOAM.30], A                            ;; 00:3446 $ea $30 $c0
    ld   [wC51A], A                                    ;; 00:3449 $ea $1a $c5
.jr_00_344c:
    ld   HL, wC56B                                     ;; 00:344c $21 $6b $c5
    dec  [HL]                                          ;; 00:344f $35
    jr   NZ, .jr_00_3465                               ;; 00:3450 $20 $13
    ld   A, $8f                                        ;; 00:3452 $3e $8f
    ld   [wD5D2], A                                    ;; 00:3454 $ea $d2 $d5
    xor  A, A                                          ;; 00:3457 $af
    ld   [wD58C], A                                    ;; 00:3458 $ea $8c $d5
    ld   [wD58B], A                                    ;; 00:345b $ea $8b $d5
    ld   A, [wC56D]                                    ;; 00:345e $fa $6d $c5
    ld   [wC148], A                                    ;; 00:3461 $ea $48 $c1
    ret                                                ;; 00:3464 $c9
.jr_00_3465:
    ld   A, [HL]                                       ;; 00:3465 $7e
    cp   A, $96                                        ;; 00:3466 $fe $96
    jp   Z, .jp_00_34d9                                ;; 00:3468 $ca $d9 $34
    cp   A, $01                                        ;; 00:346b $fe $01
    jr   Z, .jr_00_3470                                ;; 00:346d $28 $01
    ret                                                ;; 00:346f $c9
.jr_00_3470:
    ld   A, [wC573]                                    ;; 00:3470 $fa $73 $c5
    and  A, A                                          ;; 00:3473 $a7
    ret  NZ                                            ;; 00:3474 $c0
    xor  A, A                                          ;; 00:3475 $af
    ld   [wShadowOAM.30], A                            ;; 00:3476 $ea $30 $c0
    ld   [wShadowOAM.3C], A                            ;; 00:3479 $ea $3c $c0
    ld   A, [wC585]                                    ;; 00:347c $fa $85 $c5
    cp   A, $01                                        ;; 00:347f $fe $01
    ret  C                                             ;; 00:3481 $d8
    jr   Z, .jr_00_34a1                                ;; 00:3482 $28 $1d
    ld   A, $04                                        ;; 00:3484 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3486 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3489 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:348c $ea $00 $20
    call call_04_4725 ;@bank 4                         ;; 00:348f $cd $25 $47
    ld   A, $04                                        ;; 00:3492 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3494 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3497 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:349a $ea $00 $20
    call call_04_43a3 ;@bank 4                         ;; 00:349d $cd $a3 $43
    ret                                                ;; 00:34a0 $c9
.jr_00_34a1:
    ld   A, $04                                        ;; 00:34a1 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:34a3 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:34a6 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:34a9 $ea $00 $20
    ld   A, [wC586]                                    ;; 00:34ac $fa $86 $c5
    ld   C, A                                          ;; 00:34af $4f
    ld   HL, $417d                                     ;; 00:34b0 $21 $7d $41
    call ld_HL_from_HL_add_2C                          ;; 00:34b3 $cd $7a $06
    ld   A, H                                          ;; 00:34b6 $7c
    ld   [wD13A], A                                    ;; 00:34b7 $ea $3a $d1
    ld   A, L                                          ;; 00:34ba $7d
    ld   [wD13B], A                                    ;; 00:34bb $ea $3b $d1
    ld   HL, wD138                                     ;; 00:34be $21 $38 $d1
    ld   A, $00                                        ;; 00:34c1 $3e $00
    ld   [HL+], A                                      ;; 00:34c3 $22
    ld   A, $14                                        ;; 00:34c4 $3e $14
    ld   [HL+], A                                      ;; 00:34c6 $22
    call call_00_2b1b                                  ;; 00:34c7 $cd $1b $2b
    ld   A, $04                                        ;; 00:34ca $3e $04
    ld   [wD1C5], A                                    ;; 00:34cc $ea $c5 $d1
    ld   A, $50                                        ;; 00:34cf $3e $50
    ld   [wD589], A                                    ;; 00:34d1 $ea $89 $d5
    ld   A, $07                                        ;; 00:34d4 $3e $07
    jp   call_00_11a8                                  ;; 00:34d6 $c3 $a8 $11
.jp_00_34d9:
    ld   A, $0f                                        ;; 00:34d9 $3e $0f
    ld   [wC460], A                                    ;; 00:34db $ea $60 $c4
    ld   A, $ff                                        ;; 00:34de $3e $ff
    ld   [wD1E9], A                                    ;; 00:34e0 $ea $e9 $d1
    ld   A, $04                                        ;; 00:34e3 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:34e5 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:34e8 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:34eb $ea $00 $20
    call call_04_437f ;@bank 4                         ;; 00:34ee $cd $7f $43
    ld   A, $17                                        ;; 00:34f1 $3e $17
    jp   call_00_11a8                                  ;; 00:34f3 $c3 $a8 $11

jp_00_34f6:
    ld   A, [wC566]                                    ;; 00:34f6 $fa $66 $c5
    and  A, A                                          ;; 00:34f9 $a7
    ret  NZ                                            ;; 00:34fa $c0
    ld   A, [wCB27]                                    ;; 00:34fb $fa $27 $cb
    cp   A, $02                                        ;; 00:34fe $fe $02
    ret  NZ                                            ;; 00:3500 $c0
    ld   A, [wD318]                                    ;; 00:3501 $fa $18 $d3
    cp   A, $06                                        ;; 00:3504 $fe $06
    ret  Z                                             ;; 00:3506 $c8
    cp   A, $0f                                        ;; 00:3507 $fe $0f
    ret  Z                                             ;; 00:3509 $c8
    cp   A, $12                                        ;; 00:350a $fe $12
    ret  Z                                             ;; 00:350c $c8
    sla  C                                             ;; 00:350d $cb $21
    ld   B, $00                                        ;; 00:350f $06 $00
    ld   HL, $33b                                      ;; 00:3511 $21 $3b $03
    add  HL, BC                                        ;; 00:3514 $09
    ld   A, [HL+]                                      ;; 00:3515 $2a
    ld   [wCB25], A                                    ;; 00:3516 $ea $25 $cb
    ld   A, [HL+]                                      ;; 00:3519 $2a
    ld   [wCB26], A                                    ;; 00:351a $ea $26 $cb
    dec  C                                             ;; 00:351d $0d
    dec  C                                             ;; 00:351e $0d
    ld   HL, wCF36                                     ;; 00:351f $21 $36 $cf
    add  HL, BC                                        ;; 00:3522 $09
    ld   A, [HL+]                                      ;; 00:3523 $2a
    ld   L, [HL]                                       ;; 00:3524 $6e
    ld   H, A                                          ;; 00:3525 $67
    inc  HL                                            ;; 00:3526 $23
    inc  HL                                            ;; 00:3527 $23
    ld   A, [HL+]                                      ;; 00:3528 $2a
    add  A, A                                          ;; 00:3529 $87
    add  A, A                                          ;; 00:352a $87
    ld   [wC5A3], A                                    ;; 00:352b $ea $a3 $c5
    inc  HL                                            ;; 00:352e $23
    ld   A, [HL+]                                      ;; 00:352f $2a
    ld   [wC5A4], A                                    ;; 00:3530 $ea $a4 $c5
    ld   A, [HL+]                                      ;; 00:3533 $2a
    ld   [wC5A5], A                                    ;; 00:3534 $ea $a5 $c5
    ld   A, [wC470]                                    ;; 00:3537 $fa $70 $c4
    and  A, A                                          ;; 00:353a $a7
    ret  NZ                                            ;; 00:353b $c0
    ld   A, $01                                        ;; 00:353c $3e $01
    ld   [wC470], A                                    ;; 00:353e $ea $70 $c4
    xor  A, A                                          ;; 00:3541 $af
    ld   [wC45B], A                                    ;; 00:3542 $ea $5b $c4
    ret                                                ;; 00:3545 $c9

call_00_3546:
    ld   HL, wC59A                                     ;; 00:3546 $21 $9a $c5
    ld   A, [wC45C]                                    ;; 00:3549 $fa $5c $c4
    ld   [wC5DA], A                                    ;; 00:354c $ea $da $c5
    ld   [HL+], A                                      ;; 00:354f $22
    ld   A, [wC45D]                                    ;; 00:3550 $fa $5d $c4
    ld   [wC5DB], A                                    ;; 00:3553 $ea $db $c5
    ld   [HL+], A                                      ;; 00:3556 $22
    ld   A, $10                                        ;; 00:3557 $3e $10
    ld   [HL+], A                                      ;; 00:3559 $22
    ld   [HL+], A                                      ;; 00:355a $22
    ld   [HL], $00                                     ;; 00:355b $36 $00
    ret                                                ;; 00:355d $c9

call_00_355e:
    push HL                                            ;; 00:355e $e5
    ld   A, $08                                        ;; 00:355f $3e $08
    ld   [wCurrentRomBank], A                          ;; 00:3561 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3564 $ea $00 $20
    call call_08_43bd ;@bank 8                         ;; 00:3567 $cd $bd $43
    pop  HL                                            ;; 00:356a $e1
    ld   DE, wC477                                     ;; 00:356b $11 $77 $c4
    call call_08_4442 ;@bank 8                         ;; 00:356e $cd $42 $44
    ld   A, [wBackupRomBank]                           ;; 00:3571 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3574 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3577 $ea $00 $20
    ret                                                ;; 00:357a $c9

call_00_357b:
    ld   A, [wBackupRomBank]                           ;; 00:357b $fa $b5 $d5
    ld   [wD5B8], A                                    ;; 00:357e $ea $b8 $d5
    ld   A, $0f                                        ;; 00:3581 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:3583 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3586 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3589 $ea $00 $20
    call call_0f_5179 ;@bank 15                        ;; 00:358c $cd $79 $51
    ld   A, [wD5B8]                                    ;; 00:358f $fa $b8 $d5
    ld   [wBackupRomBank], A                           ;; 00:3592 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3595 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3598 $ea $00 $20
    ret                                                ;; 00:359b $c9
    db   $3e, $10, $ea, $b5, $d5, $ea, $b7, $d5        ;; 00:359c ????????
    db   $ea, $00, $20, $11, $06, $00, $19, $11        ;; 00:35a4 ????????
    db   $02, $cb, $06, $19, $cd, $91, $05, $3e        ;; 00:35ac ????????
    db   $01, $ea, $22, $cc, $3e, $00, $ea, $2e        ;; 00:35b4 ????????
    db   $cc, $3e, $00, $ea, $2f, $cc, $3e, $36        ;; 00:35bc ????????
    db   $ea, $24, $cc, $3e, $18, $ea, $25, $cc        ;; 00:35c4 ????????
    db   $fa, $0d, $cb, $ea, $1d, $cb, $21, $1e        ;; 00:35cc ????????
    db   $cb, $fa, $0e, $cb, $22, $fa, $0f, $cb        ;; 00:35d4 ????????
    db   $22, $3e, $8f, $22, $3e, $00, $22, $3e        ;; 00:35dc ????????
    db   $0f, $ea, $b5, $d5, $ea, $b7, $d5, $ea        ;; 00:35e4 ????????
    db   $00, $20, $c9                                 ;; 00:35ec ???

jp_00_35ef:
    ld   A, [wCC22]                                    ;; 00:35ef $fa $22 $cc
    and  A, A                                          ;; 00:35f2 $a7
    ret  NZ                                            ;; 00:35f3 $c0
    ld   A, $01                                        ;; 00:35f4 $3e $01
    ld   [wCB27], A                                    ;; 00:35f6 $ea $27 $cb
    ld   A, $00                                        ;; 00:35f9 $3e $00
    ld   [wCB29], A                                    ;; 00:35fb $ea $29 $cb
    ld   A, $10                                        ;; 00:35fe $3e $10
    ld   [wBackupRomBank], A                           ;; 00:3600 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3603 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3606 $ea $00 $20
    call call_10_4e37 ;@bank 16                        ;; 00:3609 $cd $37 $4e
    ld   A, $0f                                        ;; 00:360c $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:360e $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3611 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3614 $ea $00 $20
    ret                                                ;; 00:3617 $c9
    db   $21, $1e, $cb, $11, $20, $cb, $06, $10        ;; 00:3618 ????????
    db   $0e, $13, $cd, $fa, $05, $21, $1d, $cb        ;; 00:3620 ????????
    db   $35, $35, $c0, $af, $ea, $22, $cc, $f0        ;; 00:3628 ????????
    db   $fe, $a7, $c8, $c3, $da, $36                  ;; 00:3630 ??????

jp_00_3636:
    ld   A, [wC566]                                    ;; 00:3636 $fa $66 $c5
    cp   A, $02                                        ;; 00:3639 $fe $02
    jr   Z, .jr_00_363e                                ;; 00:363b $28 $01
    xor  A, A                                          ;; 00:363d $af
.jr_00_363e:
    ld   [wC566], A                                    ;; 00:363e $ea $66 $c5
    xor  A, A                                          ;; 00:3641 $af
    ld   [wC5BB], A                                    ;; 00:3642 $ea $bb $c5
    ld   A, $05                                        ;; 00:3645 $3e $05
    ld   [wC5BA], A                                    ;; 00:3647 $ea $ba $c5
    ld   HL, wC568                                     ;; 00:364a $21 $68 $c5
    ld   A, [HL+]                                      ;; 00:364d $2a
    ld   L, [HL]                                       ;; 00:364e $6e
    ld   H, A                                          ;; 00:364f $67
    ld   [HL], $01                                     ;; 00:3650 $36 $01
    ld   HL, wC589                                     ;; 00:3652 $21 $89 $c5
    ld   A, [wC567]                                    ;; 00:3655 $fa $67 $c5
    inc  A                                             ;; 00:3658 $3c
    cp   A, [HL]                                       ;; 00:3659 $be
    jr   C, .jr_00_365d                                ;; 00:365a $38 $01
    xor  A, A                                          ;; 00:365c $af
.jr_00_365d:
    ld   [wC567], A                                    ;; 00:365d $ea $67 $c5
    ld   A, [wD318]                                    ;; 00:3660 $fa $18 $d3
    cp   A, $06                                        ;; 00:3663 $fe $06
    jr   Z, .jr_00_3670                                ;; 00:3665 $28 $09
    cp   A, $0f                                        ;; 00:3667 $fe $0f
    jr   Z, .jr_00_3670                                ;; 00:3669 $28 $05
    cp   A, $12                                        ;; 00:366b $fe $12
    jr   Z, .jr_00_3670                                ;; 00:366d $28 $01
    ret                                                ;; 00:366f $c9
.jr_00_3670:
    xor  A, A                                          ;; 00:3670 $af
    ld   [wC5BA], A                                    ;; 00:3671 $ea $ba $c5
    ret                                                ;; 00:3674 $c9

call_00_3675:
    push HL                                            ;; 00:3675 $e5
    ld   A, $04                                        ;; 00:3676 $3e $04
    ld   [wCurrentRomBank], A                          ;; 00:3678 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:367b $ea $00 $20
    call call_04_4a9b ;@bank 4                         ;; 00:367e $cd $9b $4a
    ld   A, [wBackupRomBank]                           ;; 00:3681 $fa $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3684 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3687 $ea $00 $20
    pop  HL                                            ;; 00:368a $e1
    ret                                                ;; 00:368b $c9

jp_00_368c:
    ld   A, $10                                        ;; 00:368c $3e $10
    ld   [wBackupRomBank], A                           ;; 00:368e $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3691 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3694 $ea $00 $20
    ld   DE, $06                                       ;; 00:3697 $11 $06 $00
    add  HL, DE                                        ;; 00:369a $19
    ld   DE, wCB02                                     ;; 00:369b $11 $02 $cb
    ld   B, $19                                        ;; 00:369e $06 $19
    call memcopySmall                                  ;; 00:36a0 $cd $91 $05
    xor  A, A                                          ;; 00:36a3 $af
    ld   [wCB27], A                                    ;; 00:36a4 $ea $27 $cb
    ld   [wC460], A                                    ;; 00:36a7 $ea $60 $c4
    ld   A, $00                                        ;; 00:36aa $3e $00
    ld   [wCB29], A                                    ;; 00:36ac $ea $29 $cb
    ld   A, [wCB0D]                                    ;; 00:36af $fa $0d $cb
    ld   [wCB1D], A                                    ;; 00:36b2 $ea $1d $cb
    ld   HL, wCB1E                                     ;; 00:36b5 $21 $1e $cb
    ld   A, [wCB0E]                                    ;; 00:36b8 $fa $0e $cb
    ld   [HL+], A                                      ;; 00:36bb $22
    ld   A, [wCB0F]                                    ;; 00:36bc $fa $0f $cb
    ld   [HL+], A                                      ;; 00:36bf $22
    ld   A, $8f                                        ;; 00:36c0 $3e $8f
    ld   [HL+], A                                      ;; 00:36c2 $22
    ld   A, $00                                        ;; 00:36c3 $3e $00
    ld   [HL+], A                                      ;; 00:36c5 $22
    call call_10_4e37 ;@bank 16                        ;; 00:36c6 $cd $37 $4e
    ld   A, $05                                        ;; 00:36c9 $3e $05
    ld   [wCA1B], A                                    ;; 00:36cb $ea $1b $ca
    ld   A, $18                                        ;; 00:36ce $3e $18
    ld   [wBackupRomBank], A                           ;; 00:36d0 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:36d3 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:36d6 $ea $00 $20
    ret                                                ;; 00:36d9 $c9

call_00_36da:
    ldh  A, [hIsGBC]                                   ;; 00:36da $f0 $fe
    and  A, A                                          ;; 00:36dc $a7
    ret  Z                                             ;; 00:36dd $c8
    ld   A, $13                                        ;; 00:36de $3e $13
    ld   [wCurrentRomBank], A                          ;; 00:36e0 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:36e3 $ea $00 $20
    ld   HL, $36ff                                     ;; 00:36e6 $21 $ff $36
    push HL                                            ;; 00:36e9 $e5
    ld   HL, wCB17                                     ;; 00:36ea $21 $17 $cb
    ld   A, [HL+]                                      ;; 00:36ed $2a
    ld   L, [HL]                                       ;; 00:36ee $6e
    ld   H, A                                          ;; 00:36ef $67
    ld   A, [wCB19]                                    ;; 00:36f0 $fa $19 $cb
    ld   B, A                                          ;; 00:36f3 $47
    ld   A, [wCB13]                                    ;; 00:36f4 $fa $13 $cb
    bit  0, B                                          ;; 00:36f7 $cb $40
    jp   Z, setSingleBackgroundPaletteEntry            ;; 00:36f9 $ca $bb $04
    jp   setSingleSpritePaletteEntry                   ;; 00:36fc $c3 $d0 $04
    db   $11, $fd, $cd, $fa, $19, $cb, $a7, $20        ;; 00:36ff ????????
    db   $03, $11, $dd, $cd, $21, $17, $cb, $2a        ;; 00:3707 ????????
    db   $6e, $67, $06, $08, $cd, $91, $05, $fa        ;; 00:370f ????????
    db   $b5, $d5, $ea, $b7, $d5, $ea, $00, $20        ;; 00:3717 ????????
    db   $c9                                           ;; 00:371f ?

jump_hl_in_bank_0F:
    ld   A, $0f                                        ;; 00:3720 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:3722 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3725 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3728 $ea $00 $20
    jp   HL                                            ;; 00:372b $e9

call_00_372c:
    ld   A, [wCB1A]                                    ;; 00:372c $fa $1a $cb
    ld   [wBackupRomBank], A                           ;; 00:372f $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3732 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3735 $ea $00 $20
    ld   HL, .return ;@=ptr                            ;; 00:3738 $21 $43 $37
    push HL                                            ;; 00:373b $e5
    ld   HL, wCB0B                                     ;; 00:373c $21 $0b $cb
    ld   A, [HL+]                                      ;; 00:373f $2a
    ld   L, [HL]                                       ;; 00:3740 $6e
    ld   H, A                                          ;; 00:3741 $67
    jp   HL                                            ;; 00:3742 $e9
;@code
.return:
    ld   A, $10                                        ;; 00:3743 $3e $10
    ld   [wBackupRomBank], A                           ;; 00:3745 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3748 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:374b $ea $00 $20
    ret                                                ;; 00:374e $c9

call_00_374f:
    ld   A, [wC566]                                    ;; 00:374f $fa $66 $c5
    cp   A, $02                                        ;; 00:3752 $fe $02
    jr   Z, .jr_00_3758                                ;; 00:3754 $28 $02
    ld   A, $01                                        ;; 00:3756 $3e $01
.jr_00_3758:
    ld   [wC566], A                                    ;; 00:3758 $ea $66 $c5
    ld   A, $01                                        ;; 00:375b $3e $01
    ld   [wC463], A                                    ;; 00:375d $ea $63 $c4
    ld   A, $03                                        ;; 00:3760 $3e $03
    ld   [wC46F], A                                    ;; 00:3762 $ea $6f $c4
    xor  A, A                                          ;; 00:3765 $af
    ld   [wC470], A                                    ;; 00:3766 $ea $70 $c4
    ld   [wShadowOAM.3C], A                            ;; 00:3769 $ea $3c $c0
    ld   [wC462], A                                    ;; 00:376c $ea $62 $c4
    ld   A, $14                                        ;; 00:376f $3e $14
    ld   [wC56C], A                                    ;; 00:3771 $ea $6c $c5
    ld   HL, wC521                                     ;; 00:3774 $21 $21 $c5
    ld   A, [wC45C]                                    ;; 00:3777 $fa $5c $c4
    sub  A, [HL]                                       ;; 00:377a $96
    jr   NC, .jr_00_377f                               ;; 00:377b $30 $02
    cpl                                                ;; 00:377d $2f
    inc  A                                             ;; 00:377e $3c
.jr_00_377f:
    ld   B, A                                          ;; 00:377f $47
    inc  HL                                            ;; 00:3780 $23
    ld   A, [wC45D]                                    ;; 00:3781 $fa $5d $c4
    sub  A, [HL]                                       ;; 00:3784 $96
    jr   NC, .jr_00_3789                               ;; 00:3785 $30 $02
    cpl                                                ;; 00:3787 $2f
    inc  A                                             ;; 00:3788 $3c
.jr_00_3789:
    add  A, B                                          ;; 00:3789 $80
    srl  A                                             ;; 00:378a $cb $3f
    srl  A                                             ;; 00:378c $cb $3f
    srl  A                                             ;; 00:378e $cb $3f
    ld   B, A                                          ;; 00:3790 $47
    ld   C, $02                                        ;; 00:3791 $0e $02
    ld   A, [wC109]                                    ;; 00:3793 $fa $09 $c1
    cp   A, $19                                        ;; 00:3796 $fe $19
    jr   NC, .jr_00_379c                               ;; 00:3798 $30 $02
    ld   C, $0a                                        ;; 00:379a $0e $0a
.jr_00_379c:
    call call_00_052d                                  ;; 00:379c $cd $2d $05
    ld   HL, wC13C                                     ;; 00:379f $21 $3c $c1
    add  A, [HL]                                       ;; 00:37a2 $86
    cp   A, $64                                        ;; 00:37a3 $fe $64
    jr   C, .jr_00_37bf                                ;; 00:37a5 $38 $18
    ld   HL, wC108                                     ;; 00:37a7 $21 $08 $c1
    ld   A, [HL+]                                      ;; 00:37aa $2a
    ld   L, [HL]                                       ;; 00:37ab $6e
    ld   H, A                                          ;; 00:37ac $67
    inc  HL                                            ;; 00:37ad $23
    ld   DE, $100                                      ;; 00:37ae $11 $00 $01
    call call_00_05ea                                  ;; 00:37b1 $cd $ea $05
    jr   NC, .jr_00_37be                               ;; 00:37b4 $30 $08
    ld   A, H                                          ;; 00:37b6 $7c
    ld   [wC108], A                                    ;; 00:37b7 $ea $08 $c1
    ld   A, L                                          ;; 00:37ba $7d
    ld   [wC109], A                                    ;; 00:37bb $ea $09 $c1
.jr_00_37be:
    xor  A, A                                          ;; 00:37be $af
.jr_00_37bf:
    ld   [wC13C], A                                    ;; 00:37bf $ea $3c $c1
    ret                                                ;; 00:37c2 $c9

call_00_37c3:
    ld   A, [wC566]                                    ;; 00:37c3 $fa $66 $c5
    cp   A, $01                                        ;; 00:37c6 $fe $01
    ret  NZ                                            ;; 00:37c8 $c0
    ld   A, [wC13B]                                    ;; 00:37c9 $fa $3b $c1
    add  A, $06                                        ;; 00:37cc $c6 $06
    cp   A, $64                                        ;; 00:37ce $fe $64
    jr   C, .jr_00_37ea                                ;; 00:37d0 $38 $18
    ld   HL, wC100                                     ;; 00:37d2 $21 $00 $c1
    ld   A, [HL+]                                      ;; 00:37d5 $2a
    ld   L, [HL]                                       ;; 00:37d6 $6e
    ld   H, A                                          ;; 00:37d7 $67
    inc  HL                                            ;; 00:37d8 $23
    ld   DE, $1f4                                      ;; 00:37d9 $11 $f4 $01
    call call_00_05ea                                  ;; 00:37dc $cd $ea $05
    jr   NC, .jr_00_37e9                               ;; 00:37df $30 $08
    ld   A, H                                          ;; 00:37e1 $7c
    ld   [wC100], A                                    ;; 00:37e2 $ea $00 $c1
    ld   A, L                                          ;; 00:37e5 $7d
    ld   [wC101], A                                    ;; 00:37e6 $ea $01 $c1
.jr_00_37e9:
    xor  A, A                                          ;; 00:37e9 $af
.jr_00_37ea:
    ld   [wC13B], A                                    ;; 00:37ea $ea $3b $c1
    ret                                                ;; 00:37ed $c9
    db   $c9                                           ;; 00:37ee ?

jp_00_37ef:
    ldh  A, [hIsGBC]                                   ;; 00:37ef $f0 $fe
    and  A, A                                          ;; 00:37f1 $a7
    jr   Z, .dmg                                       ;; 00:37f2 $28 $0d
    ld   HL, wCDE5                                     ;; 00:37f4 $21 $e5 $cd
    call setSpritePaletteData                          ;; 00:37f7 $cd $ad $04
    ld   HL, wCDA5                                     ;; 00:37fa $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 00:37fd $cd $9f $04
    ret                                                ;; 00:3800 $c9
.dmg:
    ld   A, [wBGP]                                     ;; 00:3801 $fa $d4 $d5
    ldh  [rBGP], A                                     ;; 00:3804 $e0 $47
    ld   A, [wOBP0]                                    ;; 00:3806 $fa $d5 $d5
    ldh  [rOBP0], A                                    ;; 00:3809 $e0 $48
    ret                                                ;; 00:380b $c9

jp_00_380c:
    ld   A, [wMainGameState]                           ;; 00:380c $fa $86 $d5
    cp   A, $03                                        ;; 00:380f $fe $03
    jr   Z, .jr_00_384a                                ;; 00:3811 $28 $37
    ldh  A, [rLCDC]                                    ;; 00:3813 $f0 $40
    and  A, $df                                        ;; 00:3815 $e6 $df
    ldh  [rLCDC], A                                    ;; 00:3817 $e0 $40
    call call_00_1565                                  ;; 00:3819 $cd $65 $15
    call call_00_1701                                  ;; 00:381c $cd $01 $17
    ld   A, [wCC22]                                    ;; 00:381f $fa $22 $cc
    and  A, A                                          ;; 00:3822 $a7
    jr   Z, .jr_00_3838                                ;; 00:3823 $28 $13
    ld   A, [wCC2F]                                    ;; 00:3825 $fa $2f $cc
    ld   [wBackupRomBank], A                           ;; 00:3828 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:382b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:382e $ea $00 $20
    ld   HL, wCC24                                     ;; 00:3831 $21 $24 $cc
    ld   A, [HL+]                                      ;; 00:3834 $2a
    ld   L, [HL]                                       ;; 00:3835 $6e
    ld   H, A                                          ;; 00:3836 $67
    jp   HL                                            ;; 00:3837 $e9
.jr_00_3838:
    ld   A, $23                                        ;; 00:3838 $3e $23
    ld   [wBackupRomBank], A                           ;; 00:383a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:383d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3840 $ea $00 $20
    ld   HL, wD5CF                                     ;; 00:3843 $21 $cf $d5
    ld   A, [HL+]                                      ;; 00:3846 $2a
    ld   L, [HL]                                       ;; 00:3847 $6e
    ld   H, A                                          ;; 00:3848 $67
    jp   HL                                            ;; 00:3849 $e9
.jr_00_384a:
    ld   A, $04                                        ;; 00:384a $3e $04
    ld   [wBackupRomBank], A                           ;; 00:384c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:384f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3852 $ea $00 $20
    call call_04_6b4f ;@bank 4                         ;; 00:3855 $cd $4f $6b
    ld   A, $0f                                        ;; 00:3858 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:385a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:385d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3860 $ea $00 $20
    call call_0f_4c03 ;@bank 15                        ;; 00:3863 $cd $03 $4c
    ld   A, [wCC22]                                    ;; 00:3866 $fa $22 $cc
    and  A, A                                          ;; 00:3869 $a7
    jr   Z, .jr_00_387f                                ;; 00:386a $28 $13
    ld   A, [wCC2F]                                    ;; 00:386c $fa $2f $cc
    ld   [wBackupRomBank], A                           ;; 00:386f $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3872 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3875 $ea $00 $20
    ld   HL, wCC24                                     ;; 00:3878 $21 $24 $cc
    ld   A, [HL+]                                      ;; 00:387b $2a
    ld   L, [HL]                                       ;; 00:387c $6e
    ld   H, A                                          ;; 00:387d $67
    jp   HL                                            ;; 00:387e $e9
.jr_00_387f:
    call call_00_1040                                  ;; 00:387f $cd $40 $10
    ld   A, $0f                                        ;; 00:3882 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:3884 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3887 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:388a $ea $00 $20
    call call_0f_4c82 ;@bank 15                        ;; 00:388d $cd $82 $4c
    call call_0f_4c95 ;@bank 15                        ;; 00:3890 $cd $95 $4c
    ld   A, $23                                        ;; 00:3893 $3e $23
    ld   [wBackupRomBank], A                           ;; 00:3895 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3898 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:389b $ea $00 $20
    ld   HL, wD5CF                                     ;; 00:389e $21 $cf $d5
    ld   A, [HL+]                                      ;; 00:38a1 $2a
    ld   L, [HL]                                       ;; 00:38a2 $6e
    ld   H, A                                          ;; 00:38a3 $67
    jp   HL                                            ;; 00:38a4 $e9

jp_00_38a5:
    ld   A, [wD58A]                                    ;; 00:38a5 $fa $8a $d5
    ldh  [rWX], A                                      ;; 00:38a8 $e0 $4b
    ld   A, [wD589]                                    ;; 00:38aa $fa $89 $d5
    ldh  [rWY], A                                      ;; 00:38ad $e0 $4a
    ld   A, [wD136]                                    ;; 00:38af $fa $36 $d1
    and  A, A                                          ;; 00:38b2 $a7
    jr   NZ, .jr_00_38cb                               ;; 00:38b3 $20 $16
    ld   A, $01                                        ;; 00:38b5 $3e $01
    ld   [wD136], A                                    ;; 00:38b7 $ea $36 $d1
    ldh  A, [rLCDC]                                    ;; 00:38ba $f0 $40
    or   A, $20                                        ;; 00:38bc $f6 $20
    ldh  [rLCDC], A                                    ;; 00:38be $e0 $40
    call call_00_2b7f                                  ;; 00:38c0 $cd $7f $2b
    ld   A, [wD127]                                    ;; 00:38c3 $fa $27 $d1
    and  A, A                                          ;; 00:38c6 $a7
    ret  Z                                             ;; 00:38c7 $c8
    jp   call_00_2a13                                  ;; 00:38c8 $c3 $13 $2a
.jr_00_38cb:
    ld   A, [wD1C6]                                    ;; 00:38cb $fa $c6 $d1
    cp   A, $01                                        ;; 00:38ce $fe $01
    jr   C, .jr_00_38db                                ;; 00:38d0 $38 $09
    jr   Z, .jr_00_38f7                                ;; 00:38d2 $28 $23
    cp   A, $03                                        ;; 00:38d4 $fe $03
    jr   C, .jr_00_38e6                                ;; 00:38d6 $38 $0e
    jr   Z, .jr_00_3908                                ;; 00:38d8 $28 $2e
    ret                                                ;; 00:38da $c9
.jr_00_38db:
    ld   A, $cd                                        ;; 00:38db $3e $cd
    ld   [v9CEA], A                                    ;; 00:38dd $ea $ea $9c
    call call_00_2a13                                  ;; 00:38e0 $cd $13 $2a
    jp   jp_00_29e4                                    ;; 00:38e3 $c3 $e4 $29
.jr_00_38e6:
    ld   HL, wD1C2                                     ;; 00:38e6 $21 $c2 $d1
    ld   A, [HL+]                                      ;; 00:38e9 $2a
    ld   L, [HL]                                       ;; 00:38ea $6e
    ld   H, A                                          ;; 00:38eb $67
    ld   [HL], $00                                     ;; 00:38ec $36 $00
    ld   HL, wD1C0                                     ;; 00:38ee $21 $c0 $d1
    ld   A, [HL+]                                      ;; 00:38f1 $2a
    ld   L, [HL]                                       ;; 00:38f2 $6e
    ld   H, A                                          ;; 00:38f3 $67
    ld   [HL], $c6                                     ;; 00:38f4 $36 $c6
    ret                                                ;; 00:38f6 $c9
.jr_00_38f7:
    ld   A, [wD12D]                                    ;; 00:38f7 $fa $2d $d1
    cp   A, $10                                        ;; 00:38fa $fe $10
    jr   C, .jr_00_3902                                ;; 00:38fc $38 $04
    ld   A, $cd                                        ;; 00:38fe $3e $cd
    jr   .jr_00_3904                                   ;; 00:3900 $18 $02
.jr_00_3902:
    ld   A, $c7                                        ;; 00:3902 $3e $c7
.jr_00_3904:
    ld   [v9CEA], A                                    ;; 00:3904 $ea $ea $9c
    ret                                                ;; 00:3907 $c9
.jr_00_3908:
    xor  A, A                                          ;; 00:3908 $af
    ld   [wD136], A                                    ;; 00:3909 $ea $36 $d1
    ld   A, [wD1C5]                                    ;; 00:390c $fa $c5 $d1
    ld   [wD58B], A                                    ;; 00:390f $ea $8b $d5
    ld   A, [wMainGameState]                           ;; 00:3912 $fa $86 $d5
    cp   A, $01                                        ;; 00:3915 $fe $01
    ret  NZ                                            ;; 00:3917 $c0
    ld   A, [wD1C5]                                    ;; 00:3918 $fa $c5 $d1
    cp   A, $09                                        ;; 00:391b $fe $09
    jr   NZ, .jr_00_3924                               ;; 00:391d $20 $05
    ld   A, [wD51E]                                    ;; 00:391f $fa $1e $d5
    and  A, A                                          ;; 00:3922 $a7
    ret  Z                                             ;; 00:3923 $c8
.jr_00_3924:
    ld   A, $04                                        ;; 00:3924 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3926 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3929 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:392c $ea $00 $20
    ld   HL, data_04_5a0f                              ;; 00:392f $21 $0f $5a
    ld   DE, $8c20                                     ;; 00:3932 $11 $20 $8c
    ld   B, $40                                        ;; 00:3935 $06 $40
    jp   memcopySmall                                  ;; 00:3937 $c3 $91 $05

jp_00_393a:
    ld   A, $1a                                        ;; 00:393a $3e $1a
    ld   [wBackupRomBank], A                           ;; 00:393c $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:393f $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3942 $ea $00 $20
    ld   A, [wCA4D]                                    ;; 00:3945 $fa $4d $ca
    cp   A, $04                                        ;; 00:3948 $fe $04
    jp   Z, jp_1a_5f16                                 ;; 00:394a $ca $16 $5f
    jp   C, jp_1a_5f00                                 ;; 00:394d $da $00 $5f
    cp   A, $06                                        ;; 00:3950 $fe $06
    jp   C, jp_1a_5f6b                                 ;; 00:3952 $da $6b $5f
    jp   Z, jp_1a_5f83                                 ;; 00:3955 $ca $83 $5f
    cp   A, $08                                        ;; 00:3958 $fe $08
    jp   C, jp_1a_6012                                 ;; 00:395a $da $12 $60
    jp   jp_1a_6071                                    ;; 00:395d $c3 $71 $60

jp_00_3960:
    ld   A, [wMainGameState]                           ;; 00:3960 $fa $86 $d5
    cp   A, $03                                        ;; 00:3963 $fe $03
    jr   NZ, .jr_00_39b3                               ;; 00:3965 $20 $4c
    ld   A, [wC56B]                                    ;; 00:3967 $fa $6b $c5
    cp   A, $02                                        ;; 00:396a $fe $02
    jr   NZ, .jr_00_399e                               ;; 00:396c $20 $30
    ld   A, $04                                        ;; 00:396e $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3970 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3973 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3976 $ea $00 $20
    ld   [wStackPointerBackup], SP                     ;; 00:3979 $08 $8e $d5
    ld   HL, $5a0f                                     ;; 00:397c $21 $0f $5a
    ld   SP, HL                                        ;; 00:397f $f9
    ld   HL, $8c20                                     ;; 00:3980 $21 $20 $8c
    ld   B, $20                                        ;; 00:3983 $06 $20
.jr_00_3985:
    pop  DE                                            ;; 00:3985 $d1
    ld   A, E                                          ;; 00:3986 $7b
    ld   [HL+], A                                      ;; 00:3987 $22
    ld   A, D                                          ;; 00:3988 $7a
    ld   [HL+], A                                      ;; 00:3989 $22
    pop  DE                                            ;; 00:398a $d1
    ld   A, E                                          ;; 00:398b $7b
    ld   [HL+], A                                      ;; 00:398c $22
    ld   A, D                                          ;; 00:398d $7a
    ld   [HL+], A                                      ;; 00:398e $22
    pop  DE                                            ;; 00:398f $d1
    ld   A, E                                          ;; 00:3990 $7b
    ld   [HL+], A                                      ;; 00:3991 $22
    ld   A, D                                          ;; 00:3992 $7a
    ld   [HL+], A                                      ;; 00:3993 $22
    dec  B                                             ;; 00:3994 $05
    jr   NZ, .jr_00_3985                               ;; 00:3995 $20 $ee
    ld   HL, wStackPointerBackup                       ;; 00:3997 $21 $8e $d5
    ld   A, [HL+]                                      ;; 00:399a $2a
    ld   H, [HL]                                       ;; 00:399b $66
    ld   L, A                                          ;; 00:399c $6f
    ld   SP, HL                                        ;; 00:399d $f9
.jr_00_399e:
    ld   A, $88                                        ;; 00:399e $3e $88
    ldh  [rWY], A                                      ;; 00:39a0 $e0 $4a
    ld   A, $0f                                        ;; 00:39a2 $3e $0f
    ld   [wBackupRomBank], A                           ;; 00:39a4 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:39a7 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:39aa $ea $00 $20
    call call_0f_4c82 ;@bank 15                        ;; 00:39ad $cd $82 $4c
    jp   call_0f_4c95 ;@bank 15                        ;; 00:39b0 $c3 $95 $4c
.jr_00_39b3:
    ret                                                ;; 00:39b3 $c9

jp_00_39b4:
    ld   A, [wMainGameState]                           ;; 00:39b4 $fa $86 $d5
    cp   A, $03                                        ;; 00:39b7 $fe $03
    jp   Z, .jp_00_3b18                                ;; 00:39b9 $ca $18 $3b
    ld   A, [wC557]                                    ;; 00:39bc $fa $57 $c5
    and  A, A                                          ;; 00:39bf $a7
    jr   Z, .jr_00_39c5                                ;; 00:39c0 $28 $03
    jp   jp_00_2308                                    ;; 00:39c2 $c3 $08 $23
.jr_00_39c5:
    ld   A, [wD36C]                                    ;; 00:39c5 $fa $6c $d3
    and  A, A                                          ;; 00:39c8 $a7
    jp   NZ, .jp_00_3a6a                               ;; 00:39c9 $c2 $6a $3a
    ld   A, [wD36D]                                    ;; 00:39cc $fa $6d $d3
    and  A, A                                          ;; 00:39cf $a7
    jp   NZ, .jp_00_3ab5                               ;; 00:39d0 $c2 $b5 $3a
    ld   A, [wD30E]                                    ;; 00:39d3 $fa $0e $d3
    and  A, A                                          ;; 00:39d6 $a7
    jr   NZ, .jr_00_39f7                               ;; 00:39d7 $20 $1e
    ld   A, [wD310]                                    ;; 00:39d9 $fa $10 $d3
    and  A, A                                          ;; 00:39dc $a7
    jp   Z, .jp_00_3b00                                ;; 00:39dd $ca $00 $3b
    cp   A, $01                                        ;; 00:39e0 $fe $01
    jp   Z, .jp_00_3a38                                ;; 00:39e2 $ca $38 $3a
    cp   A, $02                                        ;; 00:39e5 $fe $02
    jp   Z, .jp_00_3a49                                ;; 00:39e7 $ca $49 $3a
    cp   A, $03                                        ;; 00:39ea $fe $03
    jp   Z, .jp_00_3a49                                ;; 00:39ec $ca $49 $3a
    cp   A, $04                                        ;; 00:39ef $fe $04
    jp   Z, .jp_00_3a49                                ;; 00:39f1 $ca $49 $3a
    jp   .jp_00_3b00                                   ;; 00:39f4 $c3 $00 $3b
.jr_00_39f7:
    ld   A, [wD30F]                                    ;; 00:39f7 $fa $0f $d3
    ld   E, A                                          ;; 00:39fa $5f
    ld   D, $00                                        ;; 00:39fb $16 $00
    ld   A, $01                                        ;; 00:39fd $3e $01
    ldh  [rVBK], A                                     ;; 00:39ff $e0 $4f
    ld   HL, $9800                                     ;; 00:3a01 $21 $00 $98
    add  HL, DE                                        ;; 00:3a04 $19
    ld   DE, $20                                       ;; 00:3a05 $11 $20 $00
    ld   B, $14                                        ;; 00:3a08 $06 $14
    ld   A, $06                                        ;; 00:3a0a $3e $06
.jr_00_3a0c:
    ld   [HL], A                                       ;; 00:3a0c $77
    add  HL, DE                                        ;; 00:3a0d $19
    dec  B                                             ;; 00:3a0e $05
    jr   NZ, .jr_00_3a0c                               ;; 00:3a0f $20 $fb
    ld   A, [wD30F]                                    ;; 00:3a11 $fa $0f $d3
    ld   E, A                                          ;; 00:3a14 $5f
    ld   D, $00                                        ;; 00:3a15 $16 $00
    xor  A, A                                          ;; 00:3a17 $af
    ldh  [rVBK], A                                     ;; 00:3a18 $e0 $4f
    ld   HL, $9800                                     ;; 00:3a1a $21 $00 $98
    add  HL, DE                                        ;; 00:3a1d $19
    ld   DE, $20                                       ;; 00:3a1e $11 $20 $00
    ld   B, $14                                        ;; 00:3a21 $06 $14
    ld   A, $d0                                        ;; 00:3a23 $3e $d0
.jr_00_3a25:
    ld   [HL], A                                       ;; 00:3a25 $77
    add  HL, DE                                        ;; 00:3a26 $19
    dec  B                                             ;; 00:3a27 $05
    jr   NZ, .jr_00_3a25                               ;; 00:3a28 $20 $fb
    ld   A, [wD30F]                                    ;; 00:3a2a $fa $0f $d3
    inc  A                                             ;; 00:3a2d $3c
    ld   [wD30F], A                                    ;; 00:3a2e $ea $0f $d3
    xor  A, A                                          ;; 00:3a31 $af
    ld   [wD30E], A                                    ;; 00:3a32 $ea $0e $d3
    jp   .jp_00_3b00                                   ;; 00:3a35 $c3 $00 $3b
.jp_00_3a38:
    ld   A, $05                                        ;; 00:3a38 $3e $05
    ld   [wBackupRomBank], A                           ;; 00:3a3a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3a3d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3a40 $ea $00 $20
    call call_05_4bd5                                  ;; 00:3a43 $cd $d5 $4b
    jp   .jp_00_3b00                                   ;; 00:3a46 $c3 $00 $3b
.jp_00_3a49:
    ldh  A, [hIsGBC]                                   ;; 00:3a49 $f0 $fe
    and  A, A                                          ;; 00:3a4b $a7
    jr   Z, .jr_00_3a5d                                ;; 00:3a4c $28 $0f
    ld   HL, wCDE5                                     ;; 00:3a4e $21 $e5 $cd
    call setSpritePaletteData                          ;; 00:3a51 $cd $ad $04
    ld   HL, wCDA5                                     ;; 00:3a54 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 00:3a57 $cd $9f $04
    jp   .jp_00_3b00                                   ;; 00:3a5a $c3 $00 $3b
.jr_00_3a5d:
    ld   A, [wBGP]                                     ;; 00:3a5d $fa $d4 $d5
    ldh  [rBGP], A                                     ;; 00:3a60 $e0 $47
    ld   A, [wOBP0]                                    ;; 00:3a62 $fa $d5 $d5
    ldh  [rOBP0], A                                    ;; 00:3a65 $e0 $48
    jp   .jp_00_3b00                                   ;; 00:3a67 $c3 $00 $3b
.jp_00_3a6a:
    ld   A, [wD36C]                                    ;; 00:3a6a $fa $6c $d3
    cp   A, $02                                        ;; 00:3a6d $fe $02
    jr   C, .jr_00_3a95                                ;; 00:3a6f $38 $24
    jr   Z, .jr_00_3a84                                ;; 00:3a71 $28 $11
    ld   A, $7f                                        ;; 00:3a73 $3e $7f
    ld   [wBackupRomBank], A                           ;; 00:3a75 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3a78 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3a7b $ea $00 $20
    call call_7f_43c6 ;@bank 127                       ;; 00:3a7e $cd $c6 $43
    jp   .jp_00_3b00                                   ;; 00:3a81 $c3 $00 $3b
.jr_00_3a84:
    ld   A, $7f                                        ;; 00:3a84 $3e $7f
    ld   [wBackupRomBank], A                           ;; 00:3a86 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3a89 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3a8c $ea $00 $20
    call call_7f_4000 ;@bank 127                       ;; 00:3a8f $cd $00 $40
    jp   .jp_00_3b00                                   ;; 00:3a92 $c3 $00 $3b
.jr_00_3a95:
    ld   A, [wD36B]                                    ;; 00:3a95 $fa $6b $d3
    and  A, A                                          ;; 00:3a98 $a7
    jr   NZ, .jr_00_3aa3                               ;; 00:3a99 $20 $08
    ld   A, $02                                        ;; 00:3a9b $3e $02
    ld   [wD36C], A                                    ;; 00:3a9d $ea $6c $d3
    jp   .jp_00_3b00                                   ;; 00:3aa0 $c3 $00 $3b
.jr_00_3aa3:
    ld   A, $05                                        ;; 00:3aa3 $3e $05
    ld   [wBackupRomBank], A                           ;; 00:3aa5 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3aa8 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3aab $ea $00 $20
    xor  A, A                                          ;; 00:3aae $af
    ld   [wD36C], A                                    ;; 00:3aaf $ea $6c $d3
    jp   .jp_00_3b00                                   ;; 00:3ab2 $c3 $00 $3b
.jp_00_3ab5:
    ld   A, [wD36D]                                    ;; 00:3ab5 $fa $6d $d3
    cp   A, $02                                        ;; 00:3ab8 $fe $02
    jr   C, .jr_00_3af8                                ;; 00:3aba $38 $3c
    jr   Z, .jr_00_3adb                                ;; 00:3abc $28 $1d
    ld   A, $7f                                        ;; 00:3abe $3e $7f
    ld   [wBackupRomBank], A                           ;; 00:3ac0 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3ac3 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3ac6 $ea $00 $20
    ld   A, [wD36F]                                    ;; 00:3ac9 $fa $6f $d3
    and  A, A                                          ;; 00:3acc $a7
    jr   NZ, .jr_00_3ad5                               ;; 00:3acd $20 $06
    call call_7f_4872 ;@bank 127                       ;; 00:3acf $cd $72 $48
    jp   .jp_00_3b00                                   ;; 00:3ad2 $c3 $00 $3b
.jr_00_3ad5:
    call call_7f_4ade ;@bank 127                       ;; 00:3ad5 $cd $de $4a
    jp   .jp_00_3b00                                   ;; 00:3ad8 $c3 $00 $3b
.jr_00_3adb:
    ld   A, $7f                                        ;; 00:3adb $3e $7f
    ld   [wBackupRomBank], A                           ;; 00:3add $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3ae0 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3ae3 $ea $00 $20
    ld   A, [wD36F]                                    ;; 00:3ae6 $fa $6f $d3
    and  A, A                                          ;; 00:3ae9 $a7
    jr   NZ, .jr_00_3af2                               ;; 00:3aea $20 $06
    call call_7f_47c3 ;@bank 127                       ;; 00:3aec $cd $c3 $47
    jp   .jp_00_3b00                                   ;; 00:3aef $c3 $00 $3b
.jr_00_3af2:
    call call_7f_4a1d ;@bank 127                       ;; 00:3af2 $cd $1d $4a
    jp   .jp_00_3b00                                   ;; 00:3af5 $c3 $00 $3b
.jr_00_3af8:
    ld   A, $02                                        ;; 00:3af8 $3e $02
    ld   [wD36D], A                                    ;; 00:3afa $ea $6d $d3
    jp   .jp_00_3b00                                   ;; 00:3afd $c3 $00 $3b
.jp_00_3b00:
    call call_00_1565                                  ;; 00:3b00 $cd $65 $15
    call call_00_1701                                  ;; 00:3b03 $cd $01 $17
    ld   A, $23                                        ;; 00:3b06 $3e $23
    ld   [wBackupRomBank], A                           ;; 00:3b08 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3b0b $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3b0e $ea $00 $20
    ld   HL, wD5CF                                     ;; 00:3b11 $21 $cf $d5
    ld   A, [HL+]                                      ;; 00:3b14 $2a
    ld   L, [HL]                                       ;; 00:3b15 $6e
    ld   H, A                                          ;; 00:3b16 $67
    jp   HL                                            ;; 00:3b17 $e9
.jp_00_3b18:
    ld   A, $18                                        ;; 00:3b18 $3e $18
    ld   [wBackupRomBank], A                           ;; 00:3b1a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3b1d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3b20 $ea $00 $20
    ld   A, [wCA1B]                                    ;; 00:3b23 $fa $1b $ca
    cp   A, $01                                        ;; 00:3b26 $fe $01
    jp   C, $6177                                      ;; 00:3b28 $da $77 $61
    jp   Z, $61a1                                      ;; 00:3b2b $ca $a1 $61
    cp   A, $03                                        ;; 00:3b2e $fe $03
    jp   C, $61f1                                      ;; 00:3b30 $da $f1 $61
    jp   Z, $6205                                      ;; 00:3b33 $ca $05 $62
    cp   A, $05                                        ;; 00:3b36 $fe $05
    jp   C, $6206                                      ;; 00:3b38 $da $06 $62
    jp   Z, $623c                                      ;; 00:3b3b $ca $3c $62
    ret                                                ;; 00:3b3e $c9

jp_00_3b3f:
    ld   A, $04                                        ;; 00:3b3f $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3b41 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3b44 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3b47 $ea $00 $20
    ld   A, [wCC52]                                    ;; 00:3b4a $fa $52 $cc
    cp   A, $01                                        ;; 00:3b4d $fe $01
    jp   C, $452a                                      ;; 00:3b4f $da $2a $45
    jp   Z, $454a                                      ;; 00:3b52 $ca $4a $45
    cp   A, $03                                        ;; 00:3b55 $fe $03
    jp   C, $45be                                      ;; 00:3b57 $da $be $45
    jp   Z, $45d1                                      ;; 00:3b5a $ca $d1 $45
    cp   A, $05                                        ;; 00:3b5d $fe $05
    jp   C, $460b                                      ;; 00:3b5f $da $0b $46
    jp   Z, $469b                                      ;; 00:3b62 $ca $9b $46
    jp   $46e3                                         ;; 00:3b65 $c3 $e3 $46

jp_00_3b68:
    ld   A, [wMainGameState]                           ;; 00:3b68 $fa $86 $d5
    cp   A, $03                                        ;; 00:3b6b $fe $03
    ret  NZ                                            ;; 00:3b6d $c0
    ld   A, $90                                        ;; 00:3b6e $3e $90
    ldh  [rWY], A                                      ;; 00:3b70 $e0 $4a
    ld   [wD589], A                                    ;; 00:3b72 $ea $89 $d5
    ld   A, [wD5D2]                                    ;; 00:3b75 $fa $d2 $d5
    and  A, $7f                                        ;; 00:3b78 $e6 $7f
    ret  Z                                             ;; 00:3b7a $c8
    ldh  A, [hIsGBC]                                   ;; 00:3b7b $f0 $fe
    and  A, A                                          ;; 00:3b7d $a7
    jr   Z, .jr_00_3b8d                                ;; 00:3b7e $28 $0d
    ld   HL, wCDE5                                     ;; 00:3b80 $21 $e5 $cd
    call setSpritePaletteData                          ;; 00:3b83 $cd $ad $04
    ld   HL, wCDA5                                     ;; 00:3b86 $21 $a5 $cd
    call setBackgroundPaletteData                      ;; 00:3b89 $cd $9f $04
    ret                                                ;; 00:3b8c $c9
.jr_00_3b8d:
    ld   A, [wBGP]                                     ;; 00:3b8d $fa $d4 $d5
    ldh  [rBGP], A                                     ;; 00:3b90 $e0 $47
    ld   A, [wOBP0]                                    ;; 00:3b92 $fa $d5 $d5
    ldh  [rOBP0], A                                    ;; 00:3b95 $e0 $48
    ret                                                ;; 00:3b97 $c9

jp_00_3b98:
    ld   A, $04                                        ;; 00:3b98 $3e $04
    ld   [wBackupRomBank], A                           ;; 00:3b9a $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3b9d $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3ba0 $ea $00 $20
    ld   A, [wD502]                                    ;; 00:3ba3 $fa $02 $d5
    cp   A, $01                                        ;; 00:3ba6 $fe $01
    jp   C, $4d0b                                      ;; 00:3ba8 $da $0b $4d
    jp   $4d1c                                         ;; 00:3bab $c3 $1c $4d

jp_00_3bae:
    ld   A, $11                                        ;; 00:3bae $3e $11
    ld   [wBackupRomBank], A                           ;; 00:3bb0 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3bb3 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3bb6 $ea $00 $20
    ld   A, [wD4FA]                                    ;; 00:3bb9 $fa $fa $d4
    cp   A, $01                                        ;; 00:3bbc $fe $01
    ret  C                                             ;; 00:3bbe $d8
    jp   Z, $5e03                                      ;; 00:3bbf $ca $03 $5e
    cp   A, $03                                        ;; 00:3bc2 $fe $03
    jp   C, $5e45                                      ;; 00:3bc4 $da $45 $5e
    jp   Z, $5e77                                      ;; 00:3bc7 $ca $77 $5e
    cp   A, $05                                        ;; 00:3bca $fe $05
    jp   C, $5e8d                                      ;; 00:3bcc $da $8d $5e
    jp   Z, $5ed3                                      ;; 00:3bcf $ca $d3 $5e
    cp   A, $07                                        ;; 00:3bd2 $fe $07
    jp   C, $5ef8                                      ;; 00:3bd4 $da $f8 $5e
    jp   $5f0b                                         ;; 00:3bd7 $c3 $0b $5f
    db   $c9                                           ;; 00:3bda ?

jp_00_3bdb:
    ld   A, $06                                        ;; 00:3bdb $3e $06
    ld   [wBackupRomBank], A                           ;; 00:3bdd $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3be0 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3be3 $ea $00 $20
    ld   A, [wD38F]                                    ;; 00:3be6 $fa $8f $d3
    and  A, A                                          ;; 00:3be9 $a7
    jr   Z, .jr_00_3bef                                ;; 00:3bea $28 $03
    jp   jp_06_5725                                    ;; 00:3bec $c3 $25 $57
.jr_00_3bef:
    ld   A, [wD395]                                    ;; 00:3bef $fa $95 $d3
    and  A, A                                          ;; 00:3bf2 $a7
    ret  Z                                             ;; 00:3bf3 $c8
    jp   jp_06_5783                                    ;; 00:3bf4 $c3 $83 $57

call_00_3bf7:
    ld   A, $0a                                        ;; 00:3bf7 $3e $0a
    ld   [$0000], A                                    ;; 00:3bf9 $ea $00 $00
    ld   HL, wC456                                     ;; 00:3bfc $21 $56 $c4
    ld   B, $03                                        ;; 00:3bff $06 $03
    call memzeroSmall                                  ;; 00:3c01 $cd $8b $05
    ld   HL, sA000                                     ;; 00:3c04 $21 $00 $a0
    ld   BC, wC456                                     ;; 00:3c07 $01 $56 $c4
    ld   A, $03                                        ;; 00:3c0a $3e $03
.jr_00_3c0c:
    ld   [wD5BB], A                                    ;; 00:3c0c $ea $bb $d5
    push BC                                            ;; 00:3c0f $c5
    call call_00_3c8e                                  ;; 00:3c10 $cd $8e $3c
    pop  BC                                            ;; 00:3c13 $c1
    ld   A, [HL+]                                      ;; 00:3c14 $2a
    cp   A, D                                          ;; 00:3c15 $ba
    jr   NZ, .jr_00_3c1f                               ;; 00:3c16 $20 $07
    ld   A, [HL]                                       ;; 00:3c18 $7e
    cp   A, E                                          ;; 00:3c19 $bb
    jr   NZ, .jr_00_3c1f                               ;; 00:3c1a $20 $03
    ld   A, $01                                        ;; 00:3c1c $3e $01
    ld   [BC], A                                       ;; 00:3c1e $02
.jr_00_3c1f:
    inc  BC                                            ;; 00:3c1f $03
    inc  HL                                            ;; 00:3c20 $23
    ld   A, [wD5BB]                                    ;; 00:3c21 $fa $bb $d5
    dec  A                                             ;; 00:3c24 $3d
    jr   NZ, .jr_00_3c0c                               ;; 00:3c25 $20 $e5
    xor  A, A                                          ;; 00:3c27 $af
    ld   [$0000], A                                    ;; 00:3c28 $ea $00 $00
    ret                                                ;; 00:3c2b $c9

call_00_3c2c:
    ld   A, $0a                                        ;; 00:3c2c $3e $0a
    ld   [$0000], A                                    ;; 00:3c2e $ea $00 $00
    ld   B, $00                                        ;; 00:3c31 $06 $00
    ld   DE, $358                                      ;; 00:3c33 $11 $58 $03
    call call_00_0555                                  ;; 00:3c36 $cd $55 $05
    ld   DE, sA000                                     ;; 00:3c39 $11 $00 $a0
    add  HL, DE                                        ;; 00:3c3c $19
    push HL                                            ;; 00:3c3d $e5
    call call_00_3c8e                                  ;; 00:3c3e $cd $8e $3c
    ld   A, [HL+]                                      ;; 00:3c41 $2a
    ld   C, [HL]                                       ;; 00:3c42 $4e
    ld   B, A                                          ;; 00:3c43 $47
    ld   A, D                                          ;; 00:3c44 $7a
    cp   A, B                                          ;; 00:3c45 $b8
    jr   NZ, .jr_00_3c5d                               ;; 00:3c46 $20 $15
    ld   A, E                                          ;; 00:3c48 $7b
    cp   A, C                                          ;; 00:3c49 $b9
    jr   NZ, .jr_00_3c5d                               ;; 00:3c4a $20 $11
    pop  HL                                            ;; 00:3c4c $e1
    ld   DE, wC100                                     ;; 00:3c4d $11 $00 $c1
    ld   BC, $356                                      ;; 00:3c50 $01 $56 $03
    call memcopy                                       ;; 00:3c53 $cd $4e $04
    ld   B, $00                                        ;; 00:3c56 $06 $00
    xor  A, A                                          ;; 00:3c58 $af
    ld   [$0000], A                                    ;; 00:3c59 $ea $00 $00
    ret                                                ;; 00:3c5c $c9
.jr_00_3c5d:
    pop  HL                                            ;; 00:3c5d $e1
    ld   B, $01                                        ;; 00:3c5e $06 $01
    xor  A, A                                          ;; 00:3c60 $af
    ld   [$0000], A                                    ;; 00:3c61 $ea $00 $00
    ret                                                ;; 00:3c64 $c9

call_00_3c65:
    ld   A, $0a                                        ;; 00:3c65 $3e $0a
    ld   [$0000], A                                    ;; 00:3c67 $ea $00 $00
    ld   B, $00                                        ;; 00:3c6a $06 $00
    ld   DE, $358                                      ;; 00:3c6c $11 $58 $03
    call call_00_0555                                  ;; 00:3c6f $cd $55 $05
    ld   DE, sA000                                     ;; 00:3c72 $11 $00 $a0
    add  HL, DE                                        ;; 00:3c75 $19
    push HL                                            ;; 00:3c76 $e5
    ld   D, H                                          ;; 00:3c77 $54
    ld   E, L                                          ;; 00:3c78 $5d
    ld   HL, wC100                                     ;; 00:3c79 $21 $00 $c1
    ld   BC, $356                                      ;; 00:3c7c $01 $56 $03
    call memcopy                                       ;; 00:3c7f $cd $4e $04
    pop  HL                                            ;; 00:3c82 $e1
    call call_00_3c8e                                  ;; 00:3c83 $cd $8e $3c
    ld   A, D                                          ;; 00:3c86 $7a
    ld   [HL+], A                                      ;; 00:3c87 $22
    ld   [HL], E                                       ;; 00:3c88 $73
    xor  A, A                                          ;; 00:3c89 $af
    ld   [$0000], A                                    ;; 00:3c8a $ea $00 $00
    ret                                                ;; 00:3c8d $c9

call_00_3c8e:
    ld   BC, $356                                      ;; 00:3c8e $01 $56 $03
    ld   DE, $00                                       ;; 00:3c91 $11 $00 $00
.jr_00_3c94:
    ld   A, [HL+]                                      ;; 00:3c94 $2a
    add  A, E                                          ;; 00:3c95 $83
    ld   E, A                                          ;; 00:3c96 $5f
    ld   A, $00                                        ;; 00:3c97 $3e $00
    adc  A, D                                          ;; 00:3c99 $8a
    ld   D, A                                          ;; 00:3c9a $57
    dec  BC                                            ;; 00:3c9b $0b
    ld   A, B                                          ;; 00:3c9c $78
    or   A, C                                          ;; 00:3c9d $b1
    jr   NZ, .jr_00_3c94                               ;; 00:3c9e $20 $f4
    ret                                                ;; 00:3ca0 $c9

call_00_3ca1:
    ld   A, $06                                        ;; 00:3ca1 $3e $06
    ld   [wBackupRomBank], A                           ;; 00:3ca3 $ea $b5 $d5
    ld   [wCurrentRomBank], A                          ;; 00:3ca6 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3ca9 $ea $00 $20
    ld   A, [wD4F9]                                    ;; 00:3cac $fa $f9 $d4
    and  A, A                                          ;; 00:3caf $a7
    jp   NZ, jp_06_57da                                ;; 00:3cb0 $c2 $da $57
    ld   A, [wD375]                                    ;; 00:3cb3 $fa $75 $d3
    and  A, A                                          ;; 00:3cb6 $a7
    jp   Z, .jp_00_3cc6                                ;; 00:3cb7 $ca $c6 $3c
    xor  A, A                                          ;; 00:3cba $af
    ld   [wD375], A                                    ;; 00:3cbb $ea $75 $d3
    ld   [wD395], A                                    ;; 00:3cbe $ea $95 $d3
    ld   A, $01                                        ;; 00:3cc1 $3e $01
    ld   [wD377], A                                    ;; 00:3cc3 $ea $77 $d3
.jp_00_3cc6:
    call call_06_4000                                  ;; 00:3cc6 $cd $00 $40
    ret                                                ;; 00:3cc9 $c9

jump_hl_in_bank_B:
    ld   [wD4FC], A                                    ;; 00:3cca $ea $fc $d4
    ld   A, B                                          ;; 00:3ccd $78
    ld   [wCurrentRomBank], A                          ;; 00:3cce $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3cd1 $ea $00 $20
    jp   HL                                            ;; 00:3cd4 $e9

function_3cd5:
    ld   A, [wD4FC]                                    ;; 00:3cd5 $fa $fc $d4
    ld   [wCurrentRomBank], A                          ;; 00:3cd8 $ea $b7 $d5
    ld   [$2000], A                                    ;; 00:3cdb $ea $00 $20
    ret                                                ;; 00:3cde $c9
    ldh  A, [hIsGBC]                                   ;; 00:3cdf $f0 $fe
    and  A, A                                          ;; 00:3ce1 $a7
    jr   Z, .jr_00_3d02                                ;; 00:3ce2 $28 $1e
    ld   A, [wD4FB]                                    ;; 00:3ce4 $fa $fb $d4
    add  A, A                                          ;; 00:3ce7 $87
    ld   HL, $3d30                                     ;; 00:3ce8 $21 $30 $3d
    add  A, L                                          ;; 00:3ceb $85
    ld   L, A                                          ;; 00:3cec $6f
    jr   NC, .jr_00_3cf0                               ;; 00:3ced $30 $01
    inc  H                                             ;; 00:3cef $24
.jr_00_3cf0:
    ldh  A, [rSTAT]                                    ;; 00:3cf0 $f0 $41
    and  A, $03                                        ;; 00:3cf2 $e6 $03
    jr   NZ, .jr_00_3cf0                               ;; 00:3cf4 $20 $fa
    ld   A, $86                                        ;; 00:3cf6 $3e $86
    ldh  [rBCPS], A                                    ;; 00:3cf8 $e0 $68
    ld   A, [HL+]                                      ;; 00:3cfa $2a
    ldh  [rBCPD], A                                    ;; 00:3cfb $e0 $69
    ld   A, [HL]                                       ;; 00:3cfd $7e
    ldh  [rBCPD], A                                    ;; 00:3cfe $e0 $69
    jr   .jr_00_3d10                                   ;; 00:3d00 $18 $0e
.jr_00_3d02:
    ld   A, [wD4FB]                                    ;; 00:3d02 $fa $fb $d4
    ld   HL, $3d3e                                     ;; 00:3d05 $21 $3e $3d
    add  A, L                                          ;; 00:3d08 $85
    ld   L, A                                          ;; 00:3d09 $6f
    jr   NC, .jr_00_3d0d                               ;; 00:3d0a $30 $01
    inc  H                                             ;; 00:3d0c $24
.jr_00_3d0d:
    ld   A, [HL]                                       ;; 00:3d0d $7e
    ldh  [rBGP], A                                     ;; 00:3d0e $e0 $47
.jr_00_3d10:
    ld   A, [wD4FB]                                    ;; 00:3d10 $fa $fb $d4
    add  A, A                                          ;; 00:3d13 $87
    ld   HL, $3d45                                     ;; 00:3d14 $21 $45 $3d
    add  A, L                                          ;; 00:3d17 $85
    ld   L, A                                          ;; 00:3d18 $6f
    jr   NC, .jr_00_3d1c                               ;; 00:3d19 $30 $01
    inc  H                                             ;; 00:3d1b $24
.jr_00_3d1c:
    ld   A, [HL+]                                      ;; 00:3d1c $2a
    ld   [wD4FB], A                                    ;; 00:3d1d $ea $fb $d4
    ld   A, [HL]                                       ;; 00:3d20 $7e
    ldh  [rLYC], A                                     ;; 00:3d21 $e0 $45
    pop  HL                                            ;; 00:3d23 $e1
    pop  AF                                            ;; 00:3d24 $f1
    reti                                               ;; 00:3d25 $d9
    db   $fa, $88, $d5, $2f, $3c, $e0, $43, $e1        ;; 00:3d26 ????????
    db   $f1, $d9, $ff, $7f, $b5, $56, $4a, $29        ;; 00:3d2e ??......
    db   $00, $00, $4a, $29, $b5, $56, $ff, $7f        ;; 00:3d36 ........
    db   $00, $40, $80, $c0, $80, $40, $00, $01        ;; 00:3d3e ???????.
    db   $18, $02, $1c, $03, $20, $04, $70, $05        ;; 00:3d46 ........
    db   $74, $06, $78, $00, $01, $71, $5f, $ca        ;; 00:3d4e .....???
    db   $9a, $5f, $fe, $03, $da, $e9, $5f, $ca        ;; 00:3d56 ????????
    db   $fd, $5f, $fe, $05, $da, $fe, $5f, $ca        ;; 00:3d5e ????????
    db   $34, $60, $c9, $3e, $04, $ea, $50, $d3        ;; 00:3d66 ????????
    db   $ea, $52, $d3, $ea, $00, $20, $fa, $bc        ;; 00:3d6e ????????
    db   $cc, $fe, $01, $da, $2b, $45, $ca, $4b        ;; 00:3d76 ????????
    db   $45, $fe, $03, $da, $bf, $45, $ca, $d2        ;; 00:3d7e ????????
    db   $45, $fe, $05, $da, $0c, $46, $ca, $9c        ;; 00:3d86 ????????
    db   $46, $c3, $e4, $46, $fa, $62, $c4, $fe        ;; 00:3d8e ????????
    db   $03, $c0, $3e, $90, $e0, $4a, $ea, $65        ;; 00:3d96 ????????
    db   $c4, $fa, $6f, $d3, $e6, $7f, $c8, $f0        ;; 00:3d9e ????????
    db   $fe, $a7, $28, $0d, $21, $4f, $ce, $cd        ;; 00:3da6 ????????
    db   $dd, $04, $21, $0f, $ce, $cd, $cf, $04        ;; 00:3dae ????????
    db   $c9, $fa, $71, $d3, $e0, $47, $fa, $72        ;; 00:3db6 ????????
    db   $d3, $e0, $48, $c9, $fa, $62, $c4, $fe        ;; 00:3dbe ????????
    db   $03, $ca, $e0, $3d, $3e, $04, $ea, $50        ;; 00:3dc6 ????????
    db   $d3, $ea, $52, $d3, $ea, $00, $20, $fa        ;; 00:3dce ????????
    db   $1c, $d8, $fe, $01, $da, $07, $4b, $c3        ;; 00:3dd6 ????????
    db   $18, $4b, $3e, $18, $ea, $50, $d3, $ea        ;; 00:3dde ????????
    db   $52, $d3, $ea, $00, $20, $c3, $1e, $64        ;; 00:3de6 ????????
    db   $3e, $11, $ea, $50, $d3, $ea, $52, $d3        ;; 00:3dee ????????
    db   $ea, $00, $20, $fa, $14, $d8, $fe, $01        ;; 00:3df6 ????????
    db   $d8, $ca, $d5, $5d, $fe, $03, $da, $17        ;; 00:3dfe ????????
    db   $5e, $ca, $49, $5e, $fe, $05, $da, $5f        ;; 00:3e06 ????????
    db   $5e, $ca, $a5, $5e, $fe, $07, $da, $ca        ;; 00:3e0e ????????
    db   $5e, $c3, $dd, $5e, $c9, $3e, $06, $ea        ;; 00:3e16 ????????
    db   $50, $d3, $ea, $52, $d3, $ea, $00, $20        ;; 00:3e1e ????????
    db   $fa, $a8, $d6, $a7, $28, $03, $c3, $fb        ;; 00:3e26 ????????
    db   $58, $fa, $ae, $d6, $a7, $c8, $c3, $59        ;; 00:3e2e ????????
    db   $59, $a0, $00, $a3, $58, $a6, $b0, $3e        ;; 00:3e36 ????????
    db   $0a, $ea, $00, $00, $21, $56, $c4, $06        ;; 00:3e3e ????????
    db   $03, $cd, $bb, $05, $21, $00, $a0, $01        ;; 00:3e46 ????????
    db   $56, $c4, $3e, $03, $ea, $58, $d3, $c5        ;; 00:3e4e ????????
    db   $cd, $c8, $3e, $c1, $2a, $ba, $20, $07        ;; 00:3e56 ????????
    db   $7e, $bb, $20, $03, $3e, $01, $02, $03        ;; 00:3e5e ????????
    db   $23, $fa, $58, $d3, $3d, $20, $e5, $af        ;; 00:3e66 ????????
    db   $ea, $00, $00, $c9, $3e, $0a, $ea, $00        ;; 00:3e6e ????????
    db   $00, $21, $37, $3e, $cd, $aa, $06, $e5        ;; 00:3e76 ????????
    db   $cd, $c8, $3e, $2a, $4e, $47, $7a, $b8        ;; 00:3e7e ????????
    db   $20, $15, $7b, $b9, $20, $11, $e1, $11        ;; 00:3e86 ????????
    db   $00, $c1, $01, $56, $03, $cd, $7e, $04        ;; 00:3e8e ????????
    db   $06, $00, $af, $ea, $00, $00, $c9, $e1        ;; 00:3e96 ????????
    db   $06, $01, $af, $ea, $00, $00, $c9, $3e        ;; 00:3e9e ????????
    db   $0a, $ea, $00, $00, $21, $37, $3e, $cd        ;; 00:3ea6 ????????
    db   $aa, $06, $e5, $54, $5d, $21, $00, $c1        ;; 00:3eae ????????
    db   $01, $56, $03, $cd, $7e, $04, $e1, $cd        ;; 00:3eb6 ????????
    db   $c8, $3e, $7a, $22, $73, $af, $ea, $00        ;; 00:3ebe ????????
    db   $00, $c9, $01, $56, $03, $11, $00, $00        ;; 00:3ec6 ????????
    db   $2a, $83, $5f, $3e, $00, $8a, $57, $0b        ;; 00:3ece ????????
    db   $78, $b1, $20, $f4, $c9, $3e, $06, $ea        ;; 00:3ed6 ????????
    db   $50, $d3, $ea, $52, $d3, $ea, $00, $20        ;; 00:3ede ????????
    db   $fa, $13, $d8, $a7, $c2, $b0, $59, $fa        ;; 00:3ee6 ????????
    db   $8e, $d6, $a7, $ca, $00, $3f, $af, $ea        ;; 00:3eee ????????
    db   $8e, $d6, $ea, $ae, $d6, $3e, $01, $ea        ;; 00:3ef6 ????????
    db   $90, $d6, $cd, $00, $40, $c9, $ea, $16        ;; 00:3efe ????????
    db   $d8, $78, $ea, $52, $d3, $ea, $00, $20        ;; 00:3f06 ????????
    db   $e9, $fa, $16, $d8, $ea, $52, $d3, $ea        ;; 00:3f0e ????????
    db   $00, $20, $c9, $f0, $fe, $a7, $28, $1e        ;; 00:3f16 ????????
    db   $fa, $15, $d8, $87, $21, $6a, $3f, $85        ;; 00:3f1e ????????
    db   $6f, $30, $01, $24, $f0, $41, $e6, $03        ;; 00:3f26 ????????
    db   $20, $fa, $3e, $86, $e0, $68, $2a, $e0        ;; 00:3f2e ????????
    db   $69, $7e, $e0, $69, $18, $0e, $fa, $15        ;; 00:3f36 ????????
    db   $d8, $21, $78, $3f, $85, $6f, $30, $01        ;; 00:3f3e ????????
    db   $24, $7e, $e0, $47, $fa, $15, $d8, $87        ;; 00:3f46 ????????
    db   $21, $7f, $3f, $85, $6f, $30, $01, $24        ;; 00:3f4e ????????
    db   $2a, $ea, $15, $d8, $7e, $e0, $45, $e1        ;; 00:3f56 ????????
    db   $f1, $d9, $fa, $64, $c4, $2f, $3c, $e0        ;; 00:3f5e ????????
    db   $43, $e1, $f1, $d9, $ff, $7f, $b5, $56        ;; 00:3f66 ????????
    db   $4a, $29, $00, $00, $4a, $29, $b5, $56        ;; 00:3f6e ????????
    db   $ff, $7f, $00, $40, $80, $c0, $80, $40        ;; 00:3f76 ????????
    db   $00, $01, $18, $02, $1c, $03, $20, $04        ;; 00:3f7e ????????
    db   $70, $05, $74, $06, $78, $00, $01             ;; 00:3f86 ???????
