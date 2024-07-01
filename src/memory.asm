;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "wram0", WRAM0[$c000]

wShadowOAM:
    ds 1                                               ;; c000
.01:
    ds 1                                               ;; c001
.02:
    ds 1                                               ;; c002
.03:
    ds 1                                               ;; c003
.04:
    ds 1                                               ;; c004
.05:
    ds 1                                               ;; c005
.06:
    ds 1                                               ;; c006
.07:
    ds 1                                               ;; c007
.08:
    ds 1                                               ;; c008
.09:
    ds 1                                               ;; c009
.0A:
    ds 1                                               ;; c00a
.0B:
    ds 1                                               ;; c00b
.0C:
    ds 1                                               ;; c00c
.0D:
    ds 1                                               ;; c00d
.0E:
    ds 1                                               ;; c00e
.0F:
    ds 1                                               ;; c00f
.10:
    ds 1                                               ;; c010
.11:
    ds 1                                               ;; c011
.12:
    ds 1                                               ;; c012
.13:
    ds 1                                               ;; c013
.14:
    ds 8                                               ;; c014
.1C:
    ds 20                                              ;; c01c
.30:
    ds 4                                               ;; c030

wC034:
    ds 8                                               ;; c034

wShadowOAM.3C:
    ds 68                                              ;; c03c

wC080:
    ds 8                                               ;; c080

wC088:
    ds 1                                               ;; c088

wC089:
    ds 1                                               ;; c089

wC08A:
    ds 1                                               ;; c08a

wC08B:
    ds 1                                               ;; c08b

wC08C:
    ds 1                                               ;; c08c

wC08D:
    ds 1                                               ;; c08d

wC08E:
    ds 1                                               ;; c08e

wC08F:
    ds 1                                               ;; c08f

wC090:
    ds 1                                               ;; c090

wC091:
    ds 111                                             ;; c091

wC100:
    ds 1                                               ;; c100

wC101:
    ds 1                                               ;; c101

wC102:
    ds 1                                               ;; c102

wC103:
    ds 1                                               ;; c103

wC104:
    ds 1                                               ;; c104

wC105:
    ds 1                                               ;; c105

wC106:
    ds 1                                               ;; c106

wC107:
    ds 1                                               ;; c107

wC108:
    ds 1                                               ;; c108

wC109:
    ds 1                                               ;; c109

wC10A:
    ds 1                                               ;; c10a

wC10B:
    ds 3                                               ;; c10b

wC10E:
    ds 1                                               ;; c10e

wC10F:
    ds 1                                               ;; c10f

wC110:
    ds 1                                               ;; c110

wC111:
    ds 1                                               ;; c111

wC112:
    ds 1                                               ;; c112

wC113:
    ds 20                                              ;; c113

wC127:
    ds 6                                               ;; c127

wC12D:
    ds 6                                               ;; c12d

wC133:
    ds 1                                               ;; c133

wC134:
    ds 1                                               ;; c134

wC135:
    ds 2                                               ;; c135

wC137:
    ds 1                                               ;; c137

wC138:
    ds 1                                               ;; c138

wC139:
    ds 1                                               ;; c139

wC13A:
    ds 1                                               ;; c13a

wC13B:
    ds 1                                               ;; c13b

wC13C:
    ds 1                                               ;; c13c

wC13D:
    ds 1                                               ;; c13d

wC13E:
    ds 1                                               ;; c13e

wC13F:
    ds 1                                               ;; c13f

wC140:
    ds 1                                               ;; c140

wC141:
    ds 1                                               ;; c141

wCurrentMap:
    ds 1                                               ;; c142
.low:
    ds 1                                               ;; c143

wPlayerX:
    ds 1                                               ;; c144
.low:
    ds 1                                               ;; c145

wPlayerY:
    ds 1                                               ;; c146
.low:
    ds 1                                               ;; c147

wC148:
    ds 1                                               ;; c148

wC149:
    ds 6                                               ;; c149

wC14F:
    ds 6                                               ;; c14f

wC155:
    ds 256                                             ;; c155

wC255:
    ds 256                                             ;; c255

wC355:
    ds 256                                             ;; c355

wC455:
    ds 1                                               ;; c455

wC456:
    ds 3                                               ;; c456

wC459:
    ds 1                                               ;; c459

wC45A:
    ds 1                                               ;; c45a

wC45B:
    ds 1                                               ;; c45b

wC45C:
    ds 1                                               ;; c45c

wC45D:
    ds 3                                               ;; c45d

wC460:
    ds 1                                               ;; c460

wC461:
    ds 1                                               ;; c461

wC462:
    ds 1                                               ;; c462

wC463:
    ds 1                                               ;; c463

wC464:
    ds 1                                               ;; c464

wC465:
    ds 1                                               ;; c465

wC466:
    ds 3                                               ;; c466

wC469:
    ds 1                                               ;; c469

wC46A:
    ds 1                                               ;; c46a

wC46B:
    ds 1                                               ;; c46b

wHidePlayer:
    ds 1                                               ;; c46c

wC46D:
    ds 1                                               ;; c46d

wC46E:
    ds 1                                               ;; c46e

wC46F:
    ds 1                                               ;; c46f

wC470:
    ds 1                                               ;; c470

wC471:
    ds 1                                               ;; c471

wC472:
    ds 3                                               ;; c472

wC475:
    ds 1                                               ;; c475

wC476:
    ds 1                                               ;; c476

wC477:
    ds 2                                               ;; c477

wC479:
    ds 2                                               ;; c479

wC47B:
    ds 2                                               ;; c47b

wC47D:
    ds 2                                               ;; c47d

wC47F:
    ds 1                                               ;; c47f

wC480:
    ds 1                                               ;; c480

wC481:
    ds 40                                              ;; c481

wC4A9:
    ds 40                                              ;; c4a9

wC4D1:
    ds 30                                              ;; c4d1

wC4EF:
    ds 30                                              ;; c4ef

wC50D:
    ds 2                                               ;; c50d

wC50F:
    ds 3                                               ;; c50f

wC512:
    ds 2                                               ;; c512

wC514:
    ds 3                                               ;; c514

wC517:
    ds 1                                               ;; c517

wC518:
    ds 1                                               ;; c518

wC519:
    ds 1                                               ;; c519

wC51A:
    ds 1                                               ;; c51a

wC51B:
    ds 1                                               ;; c51b

wC51C:
    ds 1                                               ;; c51c

wC51D:
    ds 1                                               ;; c51d

wC51E:
    ds 1                                               ;; c51e

wC51F:
    ds 1                                               ;; c51f

wC520:
    ds 1                                               ;; c520

wC521:
    ds 1                                               ;; c521

wC522:
    ds 1                                               ;; c522

wC523:
    ds 1                                               ;; c523

wC524:
    ds 1                                               ;; c524

wC525:
    ds 1                                               ;; c525

wC526:
    ds 1                                               ;; c526

wC527:
    ds 1                                               ;; c527

wC528:
    ds 1                                               ;; c528

wC529:
    ds 2                                               ;; c529

wC52B:
    ds 1                                               ;; c52b

wC52C:
    ds 1                                               ;; c52c

wC52D:
    ds 1                                               ;; c52d

wC52E:
    ds 1                                               ;; c52e

wC52F:
    ds 1                                               ;; c52f

wC530:
    ds 2                                               ;; c530

wC532:
    ds 1                                               ;; c532

wC533:
    ds 1                                               ;; c533

wC534:
    ds 1                                               ;; c534

wC535:
    ds 1                                               ;; c535

wC536:
    ds 1                                               ;; c536

wC537:
    ds 1                                               ;; c537

wC538:
    ds 1                                               ;; c538

wC539:
    ds 1                                               ;; c539

wC53A:
    ds 1                                               ;; c53a

wC53B:
    ds 1                                               ;; c53b

wC53C:
    ds 1                                               ;; c53c

wC53D:
    ds 1                                               ;; c53d

wC53E:
    ds 1                                               ;; c53e

wC53F:
    ds 8                                               ;; c53f

wC547:
    ds 16                                              ;; c547

wC557:
    ds 1                                               ;; c557

wC558:
    ds 1                                               ;; c558

wC559:
    ds 1                                               ;; c559

wC55A:
    ds 2                                               ;; c55a

wC55C:
    ds 1                                               ;; c55c

wC55D:
    ds 1                                               ;; c55d

wC55E:
    ds 1                                               ;; c55e

wC55F:
    ds 1                                               ;; c55f

wC560:
    ds 1                                               ;; c560

wC561:
    ds 1                                               ;; c561

wC562:
    ds 1                                               ;; c562

wC563:
    ds 1                                               ;; c563

wC564:
    ds 1                                               ;; c564

wC565:
    ds 1                                               ;; c565

wC566:
    ds 1                                               ;; c566

wC567:
    ds 1                                               ;; c567

wC568:
    ds 1                                               ;; c568

wC569:
    ds 1                                               ;; c569

wC56A:
    ds 1                                               ;; c56a

wC56B:
    ds 1                                               ;; c56b

wC56C:
    ds 1                                               ;; c56c

wC56D:
    ds 1                                               ;; c56d

wC56E:
    ds 2                                               ;; c56e

wC570:
    ds 3                                               ;; c570

wC573:
    ds 1                                               ;; c573

wC574:
    ds 1                                               ;; c574

wC575:
    ds 1                                               ;; c575

wC576:
    ds 1                                               ;; c576

wC577:
    ds 1                                               ;; c577

wC578:
    ds 9                                               ;; c578

wC581:
    ds 1                                               ;; c581

wC582:
    ds 1                                               ;; c582

wC583:
    ds 2                                               ;; c583

wC585:
    ds 1                                               ;; c585

wC586:
    ds 1                                               ;; c586

wC587:
    ds 1                                               ;; c587

wC588:
    ds 1                                               ;; c588

wC589:
    ds 1                                               ;; c589

wC58A:
    ds 13                                              ;; c58a

wC597:
    ds 2                                               ;; c597

wC599:
    ds 1                                               ;; c599

wC59A:
    ds 1                                               ;; c59a

wC59B:
    ds 1                                               ;; c59b

wC59C:
    ds 1                                               ;; c59c

wC59D:
    ds 1                                               ;; c59d

wC59E:
    ds 5                                               ;; c59e

wC5A3:
    ds 1                                               ;; c5a3

wC5A4:
    ds 1                                               ;; c5a4

wC5A5:
    ds 1                                               ;; c5a5

wC5A6:
    ds 1                                               ;; c5a6

wC5A7:
    ds 1                                               ;; c5a7

wC5A8:
    ds 1                                               ;; c5a8

wC5A9:
    ds 1                                               ;; c5a9

wC5AA:
    ds 1                                               ;; c5aa

wC5AB:
    ds 1                                               ;; c5ab

wC5AC:
    ds 1                                               ;; c5ac

wC5AD:
    ds 1                                               ;; c5ad

wC5AE:
    ds 2                                               ;; c5ae

wC5B0:
    ds 2                                               ;; c5b0

wC5B2:
    ds 2                                               ;; c5b2

wC5B4:
    ds 2                                               ;; c5b4

wC5B6:
    ds 1                                               ;; c5b6

wC5B7:
    ds 3                                               ;; c5b7

wC5BA:
    ds 1                                               ;; c5ba

wC5BB:
    ds 7                                               ;; c5bb

wC5C2:
    ds 2                                               ;; c5c2

wC5C4:
    ds 3                                               ;; c5c4

wC5C7:
    ds 2                                               ;; c5c7

wC5C9:
    ds 3                                               ;; c5c9

wC5CC:
    ds 2                                               ;; c5cc

wC5CE:
    ds 3                                               ;; c5ce

wC5D1:
    ds 2                                               ;; c5d1

wC5D3:
    ds 3                                               ;; c5d3

wC5D6:
    ds 1                                               ;; c5d6

wC5D7:
    ds 3                                               ;; c5d7

wC5DA:
    ds 1                                               ;; c5da

wC5DB:
    ds 17                                              ;; c5db

wC5EC:
    ds 1                                               ;; c5ec

wC5ED:
    ds 1                                               ;; c5ed

wC5EE:
    ds 2                                               ;; c5ee

wC5F0:
    ds 2                                               ;; c5f0

wC5F2:
    ds 1                                               ;; c5f2

wC5F3:
    ds 3                                               ;; c5f3

wC5F6:
    ds 10                                              ;; c5f6

wC600:
    ds 2                                               ;; c600

wC602:
    ds 6                                               ;; c602

wC608:
    ds 8                                               ;; c608

wC610:
    ds 2                                               ;; c610

wC612:
    ds 1                                               ;; c612

wC613:
    ds 46                                              ;; c613

wC641:
    ds 1                                               ;; c641

wC642:
    ds 61                                              ;; c642

wC67F:
    ds 1                                               ;; c67f

wC680:
    ds 203                                             ;; c680

wC74B:
    ds 360                                             ;; c74b

wC8B3:
    ds 360                                             ;; c8b3

wCA1B:
    ds 1                                               ;; ca1b

wCA1C:
    ds 1                                               ;; ca1c

wCA1D:
    ds 1                                               ;; ca1d

wCA1E:
    ds 1                                               ;; ca1e

wCA1F:
    ds 1                                               ;; ca1f

wCA20:
    ds 1                                               ;; ca20

wCA21:
    ds 1                                               ;; ca21

wCA22:
    ds 1                                               ;; ca22

wCA23:
    ds 1                                               ;; ca23

wCA24:
    ds 1                                               ;; ca24

wCA25:
    ds 40                                              ;; ca25

wCA4D:
    ds 1                                               ;; ca4d

wCA4E:
    ds 1                                               ;; ca4e

wCA4F:
    ds 1                                               ;; ca4f

wCA50:
    ds 1                                               ;; ca50

wCA51:
    ds 1                                               ;; ca51

wCA52:
    ds 2                                               ;; ca52

wCA54:
    ds 1                                               ;; ca54

wCA55:
    ds 2                                               ;; ca55

wCA57:
    ds 3                                               ;; ca57

wCA5A:
    ds 3                                               ;; ca5a

wCA5D:
    ds 3                                               ;; ca5d

wCA60:
    ds 1                                               ;; ca60

wCA61:
    ds 1                                               ;; ca61

wCA62:
    ds 160                                             ;; ca62

wCB02:
    ds 1                                               ;; cb02

wCB03:
    ds 1                                               ;; cb03

wCB04:
    ds 1                                               ;; cb04

wCB05:
    ds 1                                               ;; cb05

wCB06:
    ds 1                                               ;; cb06

wCB07:
    ds 1                                               ;; cb07

wCB08:
    ds 2                                               ;; cb08

wCB0A:
    ds 1                                               ;; cb0a

wCB0B:
    ds 2                                               ;; cb0b

wCB0D:
    ds 1                                               ;; cb0d

wCB0E:
    ds 1                                               ;; cb0e

wCB0F:
    ds 1                                               ;; cb0f

wCB10:
    ds 1                                               ;; cb10

wCB11:
    ds 1                                               ;; cb11

wCB12:
    ds 1                                               ;; cb12

wCB13:
    ds 4                                               ;; cb13

wCB17:
    ds 2                                               ;; cb17

wCB19:
    ds 1                                               ;; cb19

wCB1A:
    ds 1                                               ;; cb1a

wCB1B:
    ds 1                                               ;; cb1b

wCB1C:
    ds 1                                               ;; cb1c

wCB1D:
    ds 1                                               ;; cb1d

wCB1E:
    ds 2                                               ;; cb1e

wCB20:
    ds 3                                               ;; cb20

wCB23:
    ds 1                                               ;; cb23

wCB24:
    ds 1                                               ;; cb24

wCB25:
    ds 1                                               ;; cb25

wCB26:
    ds 1                                               ;; cb26

wCB27:
    ds 1                                               ;; cb27

wCB28:
    ds 1                                               ;; cb28

wCB29:
    ds 1                                               ;; cb29

wCB2A:
    ds 248                                             ;; cb2a

wCC22:
    ds 2                                               ;; cc22

wCC24:
    ds 11                                              ;; cc24

wCC2F:
    ds 13                                              ;; cc2f

wCC3C:
    ds 2                                               ;; cc3c

wCC3E:
    ds 2                                               ;; cc3e

wCC40:
    ds 18                                              ;; cc40

wCC52:
    ds 1                                               ;; cc52

wCC53:
    ds 1                                               ;; cc53

wCC54:
    ds 1                                               ;; cc54

wCC55:
    ds 2                                               ;; cc55

wCC57:
    ds 1                                               ;; cc57

wCC58:
    ds 1                                               ;; cc58

wCC59:
    ds 2                                               ;; cc59

wCC5B:
    ds 1                                               ;; cc5b

wCC5C:
    ds 1                                               ;; cc5c

wCC5D:
    ds 1                                               ;; cc5d

wCC5E:
    ds 1                                               ;; cc5e

wCC5F:
    ds 1                                               ;; cc5f

wCC60:
    ds 325                                             ;; cc60

wCDA5:
    ds 64                                              ;; cda5

wCDE5:
    ds 64                                              ;; cde5

wBackgroundPalette:
    ds 64                                              ;; ce25

wCE65:
    ds 56                                              ;; ce65

wCE9D:
    ds 8                                               ;; ce9d

wCEA5:
    ds 1                                               ;; cea5

wCEA6:
    ds 1                                               ;; cea6

wCEA7:
    ds 1                                               ;; cea7

wCEA8:
    ds 8                                               ;; cea8

wCEB0:
    ds 1                                               ;; ceb0

wCEB1:
    ds 1                                               ;; ceb1

wCEB2:
    ds 1                                               ;; ceb2

wCEB3:
    ds 1                                               ;; ceb3

wCEB4:
    ds 1                                               ;; ceb4

wCEB5:
    ds 1                                               ;; ceb5

wCEB6:
    ds 1                                               ;; ceb6

wCEB7:
    ds 1                                               ;; ceb7

wCEB8:
    ds 1                                               ;; ceb8

wCEB9:
    ds 1                                               ;; ceb9

wCEBA:
    ds 1                                               ;; ceba

wCEBB:
    ds 1                                               ;; cebb

wCEBC:
    ds 1                                               ;; cebc

wCEBD:
    ds 1                                               ;; cebd

wCEBE:
    ds 1                                               ;; cebe

wCEBF:
    ds 1                                               ;; cebf

wCEC0:
    ds 1                                               ;; cec0

wCEC1:
    ds 5                                               ;; cec1

wCEC6:
    ds 1                                               ;; cec6

wCEC7:
    ds 1                                               ;; cec7

wCEC8:
    ds 1                                               ;; cec8

wCEC9:
    ds 5                                               ;; cec9

wCECE:
    ds 1                                               ;; cece

wCECF:
    ds 1                                               ;; cecf

wCED0:
    ds 1                                               ;; ced0

wCED1:
    ds 1                                               ;; ced1

wCED2:
    ds 1                                               ;; ced2

wCED3:
    ds 1                                               ;; ced3

wCED4:
    ds 1                                               ;; ced4

wCED5:
    ds 1                                               ;; ced5

wCED6:
    ds 1                                               ;; ced6

wCED7:
    ds 1                                               ;; ced7

wCED8:
    ds 1                                               ;; ced8

wCED9:
    ds 1                                               ;; ced9

wCEDA:
    ds 1                                               ;; ceda

wCEDB:
    ds 20                                              ;; cedb

wCEEF:
    ds 22                                              ;; ceef

wCF05:
    ds 20                                              ;; cf05

wCF19:
    ds 22                                              ;; cf19

wCF2F:
    ds 1                                               ;; cf2f

wCF30:
    ds 1                                               ;; cf30

wCF31:
    ds 1                                               ;; cf31

wCF32:
    ds 1                                               ;; cf32

wCF33:
    ds 1                                               ;; cf33

wCF34:
    ds 1                                               ;; cf34

wCF35:
    ds 1                                               ;; cf35

wCF36:
    ds 35                                              ;; cf36

wCF59:
    ds 14                                              ;; cf59

wCF67:
    ds 15                                              ;; cf67

wCF76:
    ds 14                                              ;; cf76

wCF84:
    ds 29                                              ;; cf84

wCFA1:
    ds 57                                              ;; cfa1

wCFDA:
    ds 1                                               ;; cfda

wCFDB:
    ds 41                                              ;; cfdb

wD004:
    ds 16                                              ;; d004

wD014:
    ds 245                                             ;; d014

wD109:
    ds 29                                              ;; d109

wD126:
    ds 1                                               ;; d126

wD127:
    ds 1                                               ;; d127

wD128:
    ds 1                                               ;; d128

wD129:
    ds 1                                               ;; d129

wD12A:
    ds 1                                               ;; d12a

wD12B:
    ds 2                                               ;; d12b

wD12D:
    ds 1                                               ;; d12d

wD12E:
    ds 1                                               ;; d12e

wD12F:
    ds 1                                               ;; d12f

wD130:
    ds 1                                               ;; d130

wD131:
    ds 1                                               ;; d131

wD132:
    ds 1                                               ;; d132

wD133:
    ds 1                                               ;; d133

wD134:
    ds 2                                               ;; d134

wD136:
    ds 2                                               ;; d136

wD138:
    ds 1                                               ;; d138

wMessageBank:
    ds 1                                               ;; d139

wMessageAddr:
    ds 1                                               ;; d13a
.low:
    ds 1                                               ;; d13b

wD13C:
    ds 108                                             ;; d13c

wD1A8:
    ds 1                                               ;; d1a8

wD1A9:
    ds 1                                               ;; d1a9

wD1AA:
    ds 1                                               ;; d1aa

wD1AB:
    ds 16                                              ;; d1ab

wD1BB:
    ds 1                                               ;; d1bb

wD1BC:
    ds 1                                               ;; d1bc

wD1BD:
    ds 1                                               ;; d1bd

wD1BE:
    ds 2                                               ;; d1be

wD1C0:
    ds 1                                               ;; d1c0

wD1C1:
    ds 1                                               ;; d1c1

wD1C2:
    ds 1                                               ;; d1c2

wD1C3:
    ds 2                                               ;; d1c3

wD1C5:
    ds 1                                               ;; d1c5

wD1C6:
    ds 1                                               ;; d1c6

wD1C7:
    ds 2                                               ;; d1c7

wD1C9:
    ds 1                                               ;; d1c9

wD1CA:
    ds 1                                               ;; d1ca

wD1CB:
    ds 1                                               ;; d1cb

wD1CC:
    ds 1                                               ;; d1cc

wD1CD:
    ds 1                                               ;; d1cd

wD1CE:
    ds 1                                               ;; d1ce

wD1CF:
    ds 1                                               ;; d1cf

wD1D0:
    ds 4                                               ;; d1d0

wD1D4:
    ds 1                                               ;; d1d4

wD1D5:
    ds 9                                               ;; d1d5

wD1DE:
    ds 1                                               ;; d1de

wD1DF:
    ds 1                                               ;; d1df

wD1E0:
    ds 1                                               ;; d1e0

wD1E1:
    ds 4                                               ;; d1e1

wD1E5:
    ds 1                                               ;; d1e5

wD1E6:
    ds 2                                               ;; d1e6

wD1E8:
    ds 1                                               ;; d1e8

wD1E9:
    ds 2                                               ;; d1e9

wD1EB:
    ds 1                                               ;; d1eb

wD1EC:
    ds 96                                              ;; d1ec

wD24C:
    ds 96                                              ;; d24c

wD2AC:
    ds 2                                               ;; d2ac

wD2AE:
    ds 2                                               ;; d2ae

wD2B0:
    ds 1                                               ;; d2b0

wD2B1:
    ds 1                                               ;; d2b1

wD2B2:
    ds 2                                               ;; d2b2

wD2B4:
    ds 3                                               ;; d2b4

wD2B7:
    ds 1                                               ;; d2b7

wD2B8:
    ds 1                                               ;; d2b8

wD2B9:
    ds 1                                               ;; d2b9

wD2BA:
    ds 1                                               ;; d2ba

wD2BB:
    ds 1                                               ;; d2bb

wD2BC:
    ds 1                                               ;; d2bc

wD2BD:
    ds 1                                               ;; d2bd

wD2BE:
    ds 1                                               ;; d2be

wD2BF:
    ds 4                                               ;; d2bf

wScriptIndex:
    ds 2                                               ;; d2c3

wScriptPointer:
    ds 1                                               ;; d2c5
.low:
    ds 1                                               ;; d2c6

wD2C7:
    ds 1                                               ;; d2c7

wD2C8:
    ds 1                                               ;; d2c8

wD2C9:
    ds 9                                               ;; d2c9

wD2D2:
    ds 1                                               ;; d2d2

wD2D3:
    ds 1                                               ;; d2d3

wD2D4:
    ds 1                                               ;; d2d4

wScriptDelay:
    ds 1                                               ;; d2d5

wD2D6:
    ds 2                                               ;; d2d6

wD2D8:
    ds 1                                               ;; d2d8

wD2D9:
    ds 1                                               ;; d2d9

wD2DA:
    ds 1                                               ;; d2da

wD2DB:
    ds 1                                               ;; d2db

wD2DC:
    ds 1                                               ;; d2dc

wD2DD:
    ds 2                                               ;; d2dd

wD2DF:
    ds 9                                               ;; d2df

wD2E8:
    ds 1                                               ;; d2e8

wD2E9:
    ds 1                                               ;; d2e9

wD2EA:
    ds 2                                               ;; d2ea

wD2EC:
    ds 33                                              ;; d2ec

wD30D:
    ds 1                                               ;; d30d

wD30E:
    ds 1                                               ;; d30e

wD30F:
    ds 1                                               ;; d30f

wD310:
    ds 1                                               ;; d310

wD311:
    ds 1                                               ;; d311

wD312:
    ds 1                                               ;; d312

wD313:
    ds 1                                               ;; d313

wD314:
    ds 1                                               ;; d314

wD315:
    ds 1                                               ;; d315

wD316:
    ds 1                                               ;; d316

wD317:
    ds 1                                               ;; d317

wD318:
    ds 1                                               ;; d318

wD319:
    ds 1                                               ;; d319

wD31A:
    ds 1                                               ;; d31a

wD31B:
    ds 1                                               ;; d31b

wD31C:
    ds 1                                               ;; d31c

wD31D:
    ds 1                                               ;; d31d

wD31E:
    ds 1                                               ;; d31e

wD31F:
    ds 1                                               ;; d31f

wD320:
    ds 1                                               ;; d320

wD321:
    ds 1                                               ;; d321

wD322:
    ds 1                                               ;; d322

wD323:
    ds 1                                               ;; d323

wD324:
    ds 1                                               ;; d324

wD325:
    ds 1                                               ;; d325

wD326:
    ds 1                                               ;; d326

wD327:
    ds 1                                               ;; d327

wD328:
    ds 1                                               ;; d328

wD329:
    ds 1                                               ;; d329

wD32A:
    ds 1                                               ;; d32a

wD32B:
    ds 1                                               ;; d32b

wD32C:
    ds 1                                               ;; d32c

wD32D:
    ds 1                                               ;; d32d

wD32E:
    ds 1                                               ;; d32e

wD32F:
    ds 1                                               ;; d32f

wD330:
    ds 1                                               ;; d330

wD331:
    ds 1                                               ;; d331

wD332:
    ds 1                                               ;; d332

wD333:
    ds 1                                               ;; d333

wD334:
    ds 1                                               ;; d334

wD335:
    ds 1                                               ;; d335

wD336:
    ds 1                                               ;; d336

wD337:
    ds 1                                               ;; d337

wD338:
    ds 1                                               ;; d338

wD339:
    ds 1                                               ;; d339

wD33A:
    ds 1                                               ;; d33a

wD33B:
    ds 1                                               ;; d33b

wD33C:
    ds 1                                               ;; d33c

wD33D:
    ds 1                                               ;; d33d

wD33E:
    ds 1                                               ;; d33e

wD33F:
    ds 1                                               ;; d33f

wD340:
    ds 1                                               ;; d340

wD341:
    ds 1                                               ;; d341

wD342:
    ds 1                                               ;; d342

wD343:
    ds 1                                               ;; d343

wD344:
    ds 1                                               ;; d344

wD345:
    ds 1                                               ;; d345

wD346:
    ds 1                                               ;; d346

wD347:
    ds 1                                               ;; d347

wD348:
    ds 1                                               ;; d348

wD349:
    ds 1                                               ;; d349

wD34A:
    ds 1                                               ;; d34a

wD34B:
    ds 1                                               ;; d34b

wD34C:
    ds 1                                               ;; d34c

wD34D:
    ds 1                                               ;; d34d

wD34E:
    ds 1                                               ;; d34e

wD34F:
    ds 1                                               ;; d34f

wD350:
    ds 1                                               ;; d350

wD351:
    ds 1                                               ;; d351

wD352:
    ds 1                                               ;; d352

wD353:
    ds 1                                               ;; d353

wD354:
    ds 1                                               ;; d354

wD355:
    ds 1                                               ;; d355

wD356:
    ds 1                                               ;; d356

wD357:
    ds 1                                               ;; d357

wD358:
    ds 1                                               ;; d358

wD359:
    ds 1                                               ;; d359

wD35A:
    ds 1                                               ;; d35a

wD35B:
    ds 1                                               ;; d35b

wD35C:
    ds 1                                               ;; d35c

wD35D:
    ds 1                                               ;; d35d

wD35E:
    ds 1                                               ;; d35e

wD35F:
    ds 1                                               ;; d35f

wD360:
    ds 1                                               ;; d360

wD361:
    ds 1                                               ;; d361

wD362:
    ds 1                                               ;; d362

wD363:
    ds 1                                               ;; d363

wD364:
    ds 1                                               ;; d364

wD365:
    ds 1                                               ;; d365

wD366:
    ds 1                                               ;; d366

wD367:
    ds 1                                               ;; d367

wD368:
    ds 1                                               ;; d368

wD369:
    ds 1                                               ;; d369

wD36A:
    ds 1                                               ;; d36a

wD36B:
    ds 1                                               ;; d36b

wD36C:
    ds 1                                               ;; d36c

wD36D:
    ds 1                                               ;; d36d

wD36E:
    ds 1                                               ;; d36e

wD36F:
    ds 1                                               ;; d36f

wD370:
    ds 1                                               ;; d370

wD371:
    ds 1                                               ;; d371

wD372:
    ds 1                                               ;; d372

wD373:
    ds 1                                               ;; d373

wD374:
    ds 1                                               ;; d374

wD375:
    ds 1                                               ;; d375

wD376:
    ds 1                                               ;; d376

wD377:
    ds 1                                               ;; d377

wD378:
    ds 1                                               ;; d378

wD379:
    ds 1                                               ;; d379

wD37A:
    ds 1                                               ;; d37a

wD37B:
    ds 1                                               ;; d37b

wD37C:
    ds 1                                               ;; d37c

wD37D:
    ds 1                                               ;; d37d

wD37E:
    ds 1                                               ;; d37e

wD37F:
    ds 1                                               ;; d37f

wD380:
    ds 2                                               ;; d380

wD382:
    ds 1                                               ;; d382

wD383:
    ds 1                                               ;; d383

wD384:
    ds 2                                               ;; d384

wD386:
    ds 2                                               ;; d386

wD388:
    ds 3                                               ;; d388

wD38B:
    ds 1                                               ;; d38b

wD38C:
    ds 1                                               ;; d38c

wD38D:
    ds 1                                               ;; d38d

wD38E:
    ds 1                                               ;; d38e

wD38F:
    ds 1                                               ;; d38f

wD390:
    ds 1                                               ;; d390

wD391:
    ds 1                                               ;; d391

wD392:
    ds 1                                               ;; d392

wD393:
    ds 1                                               ;; d393

wD394:
    ds 1                                               ;; d394

wD395:
    ds 1                                               ;; d395

wD396:
    ds 2                                               ;; d396

wD398:
    ds 2                                               ;; d398

wD39A:
    ds 2                                               ;; d39a

wD39C:
    ds 3                                               ;; d39c

wD39F:
    ds 1                                               ;; d39f

wD3A0:
    ds 4                                               ;; d3a0

wD3A4:
    ds 1                                               ;; d3a4

wD3A5:
    ds 1                                               ;; d3a5

wD3A6:
    ds 1                                               ;; d3a6

wD3A7:
    ds 3                                               ;; d3a7

wD3AA:
    ds 1                                               ;; d3aa

wD3AB:
    ds 7                                               ;; d3ab

wD3B2:
    ds 20                                              ;; d3b2

wD3C6:
    ds 6                                               ;; d3c6

wD3CC:
    ds 137                                             ;; d3cc

wD455:
    ds 5                                               ;; d455

wD45A:
    ds 1                                               ;; d45a

wD45B:
    ds 1                                               ;; d45b

wD45C:
    ds 1                                               ;; d45c

wD45D:
    ds 1                                               ;; d45d

wD45E:
    ds 1                                               ;; d45e

wD45F:
    ds 3                                               ;; d45f

wD462:
    ds 1                                               ;; d462

wD463:
    ds 1                                               ;; d463

wD464:
    ds 1                                               ;; d464

wD465:
    ds 1                                               ;; d465

wD466:
    ds 1                                               ;; d466

wD467:
    ds 1                                               ;; d467

wD468:
    ds 1                                               ;; d468

wD469:
    ds 1                                               ;; d469

wD46A:
    ds 1                                               ;; d46a

wD46B:
    ds 1                                               ;; d46b

wD46C:
    ds 138                                             ;; d46c

wD4F6:
    ds 1                                               ;; d4f6

wD4F7:
    ds 1                                               ;; d4f7

wD4F8:
    ds 1                                               ;; d4f8

wD4F9:
    ds 1                                               ;; d4f9

wD4FA:
    ds 1                                               ;; d4fa

wD4FB:
    ds 1                                               ;; d4fb

wD4FC:
    ds 4                                               ;; d4fc

wD500:
    ds 1                                               ;; d500

wD501:
    ds 1                                               ;; d501

wD502:
    ds 1                                               ;; d502

wD503:
    ds 1                                               ;; d503

wD504:
    ds 1                                               ;; d504

wD505:
    ds 1                                               ;; d505

wD506:
    ds 1                                               ;; d506

wD507:
    ds 1                                               ;; d507

wD508:
    ds 1                                               ;; d508

wD509:
    ds 1                                               ;; d509

wD50A:
    ds 16                                              ;; d50a

wD51A:
    ds 1                                               ;; d51a

wD51B:
    ds 1                                               ;; d51b

wD51C:
    ds 1                                               ;; d51c

wD51D:
    ds 1                                               ;; d51d

wD51E:
    ds 1                                               ;; d51e

wD51F:
    ds 1                                               ;; d51f

wD520:
    ds 1                                               ;; d520

wD521:
    ds 1                                               ;; d521

wD522:
    ds 1                                               ;; d522

wD523:
    ds 1                                               ;; d523

wD524:
    ds 1                                               ;; d524

wD525:
    ds 1                                               ;; d525

wD526:
    ds 3                                               ;; d526

wD529:
    ds 31                                              ;; d529

wD548:
    ds 1                                               ;; d548

wD549:
    ds 10                                              ;; d549

wD553:
    ds 22                                              ;; d553

wD569:
    ds 2                                               ;; d569

wD56B:
    ds 1                                               ;; d56b

wD56C:
    ds 1                                               ;; d56c

wD56D:
    ds 1                                               ;; d56d

wD56E:
    ds 1                                               ;; d56e

wD56F:
    ds 1                                               ;; d56f

wD570:
    ds 2                                               ;; d570

wD572:
    ds 1                                               ;; d572

wD573:
    ds 1                                               ;; d573

wD574:
    ds 1                                               ;; d574

wD575:
    ds 2                                               ;; d575

wD577:
    ds 1                                               ;; d577

wD578:
    ds 1                                               ;; d578

wD579:
    ds 1                                               ;; d579

wD57A:
    ds 4                                               ;; d57a

wJoypadDown:
    ds 1                                               ;; d57e

wJoypadPressed:
    ds 5                                               ;; d57f

wVBlankDone:
    ds 1                                               ;; d584

wIEBackup:
    ds 1                                               ;; d585

;0=load map
;1=on map
wMainGameState:
    ds 1                                               ;; d586

wSCY:
    ds 1                                               ;; d587

wSCX:
    ds 1                                               ;; d588

wD589:
    ds 1                                               ;; d589

wD58A:
    ds 1                                               ;; d58a

wD58B:
    ds 1                                               ;; d58b

wD58C:
    ds 1                                               ;; d58c

wD58D:
    ds 1                                               ;; d58d

wStackPointerBackup:
    ds 2                                               ;; d58e

wMapHeaderStart:
    ds 1                                               ;; d590

wD591:
    ds 3                                               ;; d591

wRoomTilemapBank:
    ds 2                                               ;; d594

wRoomAttrmapBank:
    ds 2                                               ;; d596

wRoomCollisionBank:
    ds 1                                               ;; d598

wD599:
    ds 1                                               ;; d599

wRoomGraphicsBank:
    ds 2                                               ;; d59a

wRoomPaletteBank:
    ds 1                                               ;; d59c

wRoomTilemapPointer:
    ds 2                                               ;; d59d

wRoomAttrmapPointer:
    ds 2                                               ;; d59f

wRoomCollisionPointer:
    ds 2                                               ;; d5a1

wRoomGraphicsPointer:
    ds 2                                               ;; d5a3

wRoomPalettePointer:
    ds 2                                               ;; d5a5

wRoomWidthTiles:
    ds 1                                               ;; d5a7
.low:
    ds 1                                               ;; d5a8

wRoomHeightTiles:
    ds 2                                               ;; d5a9

wRoomWidthPixels:
    ds 1                                               ;; d5ab
.low:
    ds 1                                               ;; d5ac

wRoomHeightPixels:
    ds 1                                               ;; d5ad
.low:
    ds 2                                               ;; d5ae

wD5B0:
    ds 1                                               ;; d5b0
.low:
    ds 1                                               ;; d5b1

wD5B2:
    ds 1                                               ;; d5b2

wD5B3:
    ds 2                                               ;; d5b3

wBackupRomBank:
    ds 2                                               ;; d5b5

wCurrentRomBank:
    ds 1                                               ;; d5b7

wD5B8:
    ds 1                                               ;; d5b8

wD5B9:
    ds 1                                               ;; d5b9

wD5BA:
    ds 1                                               ;; d5ba

wD5BB:
    ds 1                                               ;; d5bb

wD5BC:
    ds 1                                               ;; d5bc

wD5BD:
    ds 1                                               ;; d5bd

wD5BE:
    ds 1                                               ;; d5be

wD5BF:
    ds 1                                               ;; d5bf

wD5C0:
    ds 3                                               ;; d5c0

wD5C3:
    ds 1                                               ;; d5c3

wD5C4:
    ds 1                                               ;; d5c4

wD5C5:
    ds 1                                               ;; d5c5

wD5C6:
    ds 1                                               ;; d5c6

wD5C7:
    ds 1                                               ;; d5c7

wD5C8:
    ds 1                                               ;; d5c8

wD5C9:
    ds 1                                               ;; d5c9

wD5CA:
    ds 2                                               ;; d5ca

wD5CC:
    ds 1                                               ;; d5cc

wD5CD:
    ds 2                                               ;; d5cd

wD5CF:
    ds 1                                               ;; d5cf

wD5D0:
    ds 2                                               ;; d5d0

wD5D2:
    ds 1                                               ;; d5d2

wD5D3:
    ds 1                                               ;; d5d3

wBGP:
    ds 1                                               ;; d5d4

wOBP0:
    ds 1                                               ;; d5d5

wD5D6:
    ds 1                                               ;; d5d6

wD5D7:
    ds 1                                               ;; d5d7

wD5D8:
    ds 3                                               ;; d5d8

wD5DB:
    ds 1                                               ;; d5db

wD5DC:
    ds 1                                               ;; d5dc

wD5DD:
    ds 1                                               ;; d5dd

wD5DE:
    ds 1                                               ;; d5de

wD5DF:
    ds 1                                               ;; d5df

wD5E0:
    ds 1                                               ;; d5e0

wD5E1:
    ds 1                                               ;; d5e1

wD5E2:
    ds 1                                               ;; d5e2

wD5E3:
    ds 1                                               ;; d5e3

wD5E4:
    ds 4                                               ;; d5e4

wD5E8:
    ds 1                                               ;; d5e8

wD5E9:
    ds 1                                               ;; d5e9

wD5EA:
    ds 1                                               ;; d5ea

wD5EB:
    ds 1                                               ;; d5eb

wD5EC:
    ds 288                                             ;; d5ec

wD70C:
    ds 288                                             ;; d70c

wD82C:
    ds 1                                               ;; d82c

wD82D:
    ds 1                                               ;; d82d

wD82E:
    ds 1                                               ;; d82e

wD82F:
    ds 8                                               ;; d82f

wD837:
    ds 1                                               ;; d837

wD838:
    ds 1                                               ;; d838

wD839:
    ds 1                                               ;; d839

wD83A:
    ds 1                                               ;; d83a

wD83B:
    ds 2                                               ;; d83b

wD83D:
    ds 1987                                            ;; d83d

SECTION "hram", HRAM[$ff80]
    ds 10                                              ;; ff80

hFF8A:
    ds 96                                              ;; ff8a

hFFEA:
    ds 6                                               ;; ffea

hFFF0:
    ds 1                                               ;; fff0

hFFF1:
    ds 1                                               ;; fff1

hFFF2:
    ds 1                                               ;; fff2

hFFF3:
    ds 1                                               ;; fff3

hFFF4:
    ds 4                                               ;; fff4

hFFF8:
    ds 1                                               ;; fff8

hFFF9:
    ds 1                                               ;; fff9

hFFFA:
    ds 1                                               ;; fffa

hFFFB:
    ds 1                                               ;; fffb

hFFFC:
    ds 2                                               ;; fffc

hIsGBC:
    ds 1                                               ;; fffe

SECTION "vram", VRAM[$8000]
    ds 7171                                            ;; 8000

v9C03:
    ds 1                                               ;; 9c03

v9C04:
    ds 1                                               ;; 9c04

v9C05:
    ds 5                                               ;; 9c05

v9C0A:
    ds 1                                               ;; 9c0a

v9C0B:
    ds 1                                               ;; 9c0b

v9C0C:
    ds 3                                               ;; 9c0c

v9C0F:
    ds 2                                               ;; 9c0f

v9C11:
    ds 2                                               ;; 9c11

v9C13:
    ds 13                                              ;; 9c13

v9C20:
    ds 1                                               ;; 9c20

v9C21:
    ds 1                                               ;; 9c21

v9C22:
    ds 17                                              ;; 9c22

v9C33:
    ds 13                                              ;; 9c33

v9C40:
    ds 3                                               ;; 9c40

v9C43:
    ds 2                                               ;; 9c43

v9C45:
    ds 4                                               ;; 9c45

v9C49:
    ds 4                                               ;; 9c49

v9C4D:
    ds 4                                               ;; 9c4d

v9C51:
    ds 1                                               ;; 9c51

v9C52:
    ds 1                                               ;; 9c52

v9C53:
    ds 13                                              ;; 9c53

v9C60:
    ds 3                                               ;; 9c60

v9C63:
    ds 16                                              ;; 9c63

v9C73:
    ds 13                                              ;; 9c73

v9C80:
    ds 1                                               ;; 9c80

v9C81:
    ds 1                                               ;; 9c81

v9C82:
    ds 17                                              ;; 9c82

v9C93:
    ds 13                                              ;; 9c93

v9CA0:
    ds 19                                              ;; 9ca0

v9CB3:
    ds 13                                              ;; 9cb3

v9CC0:
    ds 19                                              ;; 9cc0

v9CD3:
    ds 23                                              ;; 9cd3

v9CEA:
    ds 790                                             ;; 9cea

SECTION "sram", SRAM[$a000]

sA000:
    ds 854                                             ;; a000

sA356:
    ds 7338                                            ;; a356
