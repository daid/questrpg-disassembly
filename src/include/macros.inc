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
MACRO data_bbWWWWWWWWWWWWWWWWbbb
db \1
shift
db \1
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db high(\1), low(\1)
shift
db \1
shift
db \1
shift
db \1
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
MACRO short_stop
db $10
ENDM
