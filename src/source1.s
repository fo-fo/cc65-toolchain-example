.global some_external_var

.segment "CODE"

main:
    lda some_external_var
    jmp *
