.syntax unified
.cpu cortex-a15
.fpu vfpv3-d16
.data
.align	2
.DEBUG: .ascii "Hit Debug\n\000"
.DEBUGINT: .ascii "Hit Debug, r0 was: %d\n\000"
.INTEGER: .ascii "%d \000"
.FLOAT: .ascii "%f \000"
.NEWLINE: .ascii "\n \000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (main) with depth 2
_main:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting DECLARATION: adding space on stack
	push	{r6}
#3 Ending DECLARATION
#4 Starting ASSIGNMENT_STATEMENT
#5 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#6 End VARIABLE a, depth difference: 0, stack offset: -4
	mov	r1, r0
#7 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #12
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	str	r0, [r6]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	str	r0, [r6, #4]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	str	r0, [r6, #8]
	mov	r0, r6
	pop {r1-r6}
	push	{r0}
#8 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [r1]
#9 End ASSIGNMENT_STATEMENT
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting EXPRESSION of type ARRAY_INDEX
#12 Starting EXPRESSION of type ARRAY_INDEX
#13 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#14 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#15 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#16 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#17 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#18 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#19 End ASSIGNMENT_STATEMENT
#20 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#21 Starting EXPRESSION of type ARRAY_INDEX
#22 Starting EXPRESSION of type ARRAY_INDEX
#23 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#24 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#25 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#26 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#27 Ending PRINT_STATEMENT
#28 Starting DECLARATION: adding space on stack
	push	{r6}
#29 Ending DECLARATION
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#32 End VARIABLE b, depth difference: 0, stack offset: -8
	mov	r1, r0
#33 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #16
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6, #4]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6, #8]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6, #12]
	mov	r0, r6
	pop {r1-r6}
	push	{r0}
#34 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [r1]
#35 End ASSIGNMENT_STATEMENT
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting EXPRESSION of type ARRAY_INDEX
#38 Starting EXPRESSION of type ARRAY_INDEX
#39 Starting EXPRESSION of type ARRAY_INDEX
#40 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#41 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#42 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0]
	push	{r0}
#43 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#44 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#45 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#46 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#47 End ASSIGNMENT_STATEMENT
#48 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#49 Starting EXPRESSION of type ARRAY_INDEX
#50 Starting EXPRESSION of type ARRAY_INDEX
#51 Starting EXPRESSION of type ARRAY_INDEX
#52 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#53 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#54 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0]
	push	{r0}
#55 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#56 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#57 Ending PRINT_STATEMENT
#58 Starting DECLARATION: adding space on stack
	push	{r6}
#59 Ending DECLARATION
#60 Starting ASSIGNMENT_STATEMENT
#61 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#62 End VARIABLE c, depth difference: 0, stack offset: -12
	mov	r1, r0
#63 Starting EXPRESSION of type FUNC_CALL
	push {r1-r6}
	bl	_create
	pop {r1-r6}
	push	{r0}
#64 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	str	r0, [r1]
#65 End ASSIGNMENT_STATEMENT
#66 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#67 Starting EXPRESSION of type ARRAY_INDEX
#68 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#69 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#70 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#71 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#72 Leaving FUNCTION (main) with depth 2
#73 Starting FUNCTION (create) with depth 2
_create:
	push	{lr}
	push	{fp}
	mov	fp, sp
#74 Starting DECLARATION: adding space on stack
	push	{r6}
#75 Ending DECLARATION
#76 Starting ASSIGNMENT_STATEMENT
#77 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#78 End VARIABLE a, depth difference: 0, stack offset: -4
	mov	r1, r0
#79 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #12
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#80 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [r1]
#81 End ASSIGNMENT_STATEMENT
#82 Starting ASSIGNMENT_STATEMENT
#83 Starting EXPRESSION of type ARRAY_INDEX
#84 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#85 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0]
	push	{r0}
#86 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#87 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#88 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#89 End ASSIGNMENT_STATEMENT
#90 Starting ASSIGNMENT_STATEMENT
#91 Starting EXPRESSION of type ARRAY_INDEX
#92 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#93 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#94 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#95 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#96 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#97 End ASSIGNMENT_STATEMENT
#98 Starting ASSIGNMENT_STATEMENT
#99 Starting EXPRESSION of type ARRAY_INDEX
#100 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#101 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#102 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#103 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#104 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#105 End ASSIGNMENT_STATEMENT
#106 Starting RETURN_STATEMENT
#107 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#108 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
#109 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#110 Leaving FUNCTION (create) with depth 2
debugprint:
	push {r0-r11, lr}
	movw	r0, #:lower16:.DEBUG
	movt	r0, #:upper16:.DEBUG
	bl	printf
	pop {r0-r11, pc}
debugprint_r0:
	push {r0-r11, lr}
	mov	r1, r0
	movw	r0, #:lower16:.DEBUGINT
	movt	r0, #:upper16:.DEBUGINT
	bl	printf
	pop {r0-r11, pc}
_malloc:
	push	{lr}
	push	{fp}
	ldr	r0, [sp, #8]
	bl	malloc
	pop	{fp}
	pop {pc}
main:
	push	{lr}
	push	{fp}
	mov	fp, sp
	mov	r5, r0
	sub	r5, r5, #1
	cmp	r5,#0
	beq	noargs
	mov	r6, r1
pusharg:
	ldr	r0, [r6, #4]
	add	r6, r6, #4
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	push	{r0}
	sub	r5, r5, #1
	cmp	r5,#0
	bne	pusharg
noargs:
	bl	_main
#111 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
