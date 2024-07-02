MACRO data_P
db high(\1), low(\1)
shift
ENDM
MACRO data_WWW
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
ENDM
MACRO ld_long_load
db $FA
dw \2
ENDM
MACRO ld_long_store
db $EA
dw \1
ENDM
MACRO map_header

        db \1, \2, HIGH(\3), LOW(\3)
        db HIGH(BANK(\4)), LOW(BANK(\4))
        db HIGH(BANK(\5)), LOW(BANK(\5))
        db HIGH(BANK(\6)), LOW(BANK(\6))
        db HIGH(BANK(\7)), LOW(BANK(\7))
        db HIGH(BANK(\8)), LOW(BANK(\8))
        db HIGH(\4), LOW(\4)
        db HIGH(\5), LOW(\5)
        db HIGH(\6), LOW(\6)
        db HIGH(\7), LOW(\7)
        db HIGH(\8), LOW(\8)
        SHIFT 8
        db HIGH(\1), LOW(\1)
        db HIGH(\2), LOW(\2)
        db HIGH(\1 * 8), LOW(\1 * 8)
        db HIGH(\2 * 8), LOW(\2 * 8)
        SHIFT 2
        db HIGH(\1), LOW(\1)
        db HIGH(\2), LOW(\2)
        db \3
ENDM
MACRO short_stop
db $10
ENDM
MACRO string_data
PUSHC
SETCHARMAP STRING_DATA
db \#
POPC
ENDM
