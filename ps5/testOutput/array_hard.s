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
#5 Starting EXPRESSION of type NEW
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
#6 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [fp, #-4]
#7 End ASSIGNMENT_STATEMENT
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#10 End CONSTANT
	pop	{r1}
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
	pop	{r0}
	str	r1, [r0]
#17 End ASSIGNMENT_STATEMENT
#18 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#19 Starting EXPRESSION of type ARRAY_INDEX
#20 Starting EXPRESSION of type ARRAY_INDEX
#21 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#22 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#23 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#24 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#25 Ending PRINT_STATEMENT
#26 Starting DECLARATION: adding space on stack
	push	{r6}
#27 Ending DECLARATION
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting EXPRESSION of type NEW
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
#30 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [fp, #-8]
#31 End ASSIGNMENT_STATEMENT
#32 Starting ASSIGNMENT_STATEMENT
#33 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#34 End CONSTANT
	pop	{r1}
#35 Starting EXPRESSION of type ARRAY_INDEX
#36 Starting EXPRESSION of type ARRAY_INDEX
#37 Starting EXPRESSION of type ARRAY_INDEX
#38 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#39 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#40 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0]
	push	{r0}
#41 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#42 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	str	r1, [r0]
#43 End ASSIGNMENT_STATEMENT
#44 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#45 Starting EXPRESSION of type ARRAY_INDEX
#46 Starting EXPRESSION of type ARRAY_INDEX
#47 Starting EXPRESSION of type ARRAY_INDEX
#48 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#49 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#50 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0]
	push	{r0}
#51 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#52 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#53 Ending PRINT_STATEMENT
#54 Starting DECLARATION: adding space on stack
	push	{r6}
#55 Ending DECLARATION
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting EXPRESSION of type FUNC_CALL
	push {r1-r6}
	bl	_create
	pop {r1-r6}
	push	{r0}
#58 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	str	r0, [fp, #-12]
#59 End ASSIGNMENT_STATEMENT
#60 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#61 Starting EXPRESSION of type ARRAY_INDEX
#62 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#63 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#64 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#65 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#66 Leaving FUNCTION (main) with depth 2
#67 Starting FUNCTION (create) with depth 2
_create:
	push	{lr}
	push	{fp}
	mov	fp, sp
#68 Starting DECLARATION: adding space on stack
	push	{r6}
#69 Ending DECLARATION
#70 Starting ASSIGNMENT_STATEMENT
#71 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #12
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#72 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [fp, #-4]
#73 End ASSIGNMENT_STATEMENT
#74 Starting ASSIGNMENT_STATEMENT
#75 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#76 End CONSTANT
	pop	{r1}
#77 Starting EXPRESSION of type ARRAY_INDEX
#78 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#79 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0]
	push	{r0}
#80 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	str	r1, [r0]
#81 End ASSIGNMENT_STATEMENT
#82 Starting ASSIGNMENT_STATEMENT
#83 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#84 End CONSTANT
	pop	{r1}
#85 Starting EXPRESSION of type ARRAY_INDEX
#86 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#87 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#88 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	str	r1, [r0]
#89 End ASSIGNMENT_STATEMENT
#90 Starting ASSIGNMENT_STATEMENT
#91 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#92 End CONSTANT
	pop	{r1}
#93 Starting EXPRESSION of type ARRAY_INDEX
#94 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#95 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#96 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	str	r1, [r0]
#97 End ASSIGNMENT_STATEMENT
#98 Starting RETURN_STATEMENT
#99 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#100 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
#101 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#102 Leaving FUNCTION (create) with depth 2
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
#103 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
