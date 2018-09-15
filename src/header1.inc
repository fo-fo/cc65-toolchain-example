.if .not .defined(HEADER1_INCLUDED)
HEADER1_INCLUDED = 1

; This file is here merely to demonstrate that changes in header
; dependencies trigger recompilation automatically.

SOME_CONSTANT = $45

.endif
