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
	push	{r0}
#3 Ending DECLARATION
#4 Starting DECLARATION: adding space on stack
	push	{r0}
#5 Ending DECLARATION
#6 Starting ASSIGNMENT_STATEMENT
#7 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:40
	movt	r0, #:upper16:40
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#8 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#9 End ASSIGNMENT_STATEMENT
#10 Starting DECLARATION: adding space on stack
	push	{r0}
#11 Ending DECLARATION
#12 Starting FOR_STATEMENT
#13 Starting ASSIGNMENT_STATEMENT
#14 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#15 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#16 End ASSIGNMENT_STATEMENT
_for_start1:
#17 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#18 End VARIABLE i, depth difference: 0, stack offset: -12
#19 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#20 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end1
#21 Starting ASSIGNMENT_STATEMENT
#22 Starting EXPRESSION of type -
#23 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#24 End CONSTANT
#25 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#26 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#27 Ending EXPRESSION of type -
#28 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#29 End VARIABLE a, depth difference: 0, stack offset: -4
#30 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#31 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#32 End ASSIGNMENT_STATEMENT
#33 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#34 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start1
_for_end1:
#35 End FOR_STATEMENT
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting EXPRESSION of type FUNC_CALL
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#39 End VARIABLE a, depth difference: 0, stack offset: -4
	bl	_sort
	add	sp, sp, $4
	push	{r0}
#40 Ending EXPRESSION of type (null)
#41 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#42 End ASSIGNMENT_STATEMENT
#43 Starting FOR_STATEMENT
#44 Starting ASSIGNMENT_STATEMENT
#45 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#46 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#47 End ASSIGNMENT_STATEMENT
_for_start2:
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#49 End VARIABLE i, depth difference: 0, stack offset: -12
#50 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#51 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end2
#52 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#53 Starting EXPRESSION of type ARRAY_INDEX
#54 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#55 End VARIABLE b, depth difference: 0, stack offset: -8
#56 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#57 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#58 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#59 Ending PRINT_STATEMENT
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#61 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start2
_for_end2:
#62 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#63 Leaving FUNCTION (main) with depth 2
#64 Starting FUNCTION (sort) with depth 2
_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#65 Starting DECLARATION: adding space on stack
	push	{r0}
#66 Ending DECLARATION
#67 Starting DECLARATION: adding space on stack
	push	{r0}
#68 Ending DECLARATION
#69 Starting DECLARATION: adding space on stack
	push	{r0}
#70 Ending DECLARATION
#71 Starting FOR_STATEMENT
#72 Starting ASSIGNMENT_STATEMENT
#73 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#74 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#75 End ASSIGNMENT_STATEMENT
_for_start3:
#76 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#77 End VARIABLE i, depth difference: 0, stack offset: -4
#78 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#79 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end3
#80 Starting FOR_STATEMENT
#81 Starting ASSIGNMENT_STATEMENT
#82 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#83 End VARIABLE i, depth difference: 0, stack offset: -4
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#84 End ASSIGNMENT_STATEMENT
_for_start4:
#85 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#86 End VARIABLE j, depth difference: 0, stack offset: -8
#87 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#88 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end4
#89 Starting IF_STATEMENT'
#90 Starting EXPRESSION of type <
#91 Starting EXPRESSION of type ARRAY_INDEX
#92 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#93 End VARIABLE a, depth difference: 0, stack offset: 8
#94 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#95 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#96 Ending EXPRESSION of type ARRAY_INDEX
#97 Starting EXPRESSION of type ARRAY_INDEX
#98 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#99 End VARIABLE a, depth difference: 0, stack offset: 8
#100 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#101 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#102 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movlt	 r0, #1
	push	{r0}
#103 Ending EXPRESSION of type <
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_end5
#104 Starting ASSIGNMENT_STATEMENT
#105 Starting EXPRESSION of type ARRAY_INDEX
#106 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#107 End VARIABLE a, depth difference: 0, stack offset: 8
#108 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#109 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#110 Ending EXPRESSION of type ARRAY_INDEX
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#111 End ASSIGNMENT_STATEMENT
#112 Starting ASSIGNMENT_STATEMENT
#113 Starting EXPRESSION of type ARRAY_INDEX
#114 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#115 End VARIABLE a, depth difference: 0, stack offset: 8
#116 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#117 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#118 Ending EXPRESSION of type ARRAY_INDEX
#119 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#120 End VARIABLE a, depth difference: 0, stack offset: 8
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#122 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#123 End ASSIGNMENT_STATEMENT
#124 Starting ASSIGNMENT_STATEMENT
#125 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#126 End VARIABLE temp, depth difference: 0, stack offset: -12
#127 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#128 End VARIABLE a, depth difference: 0, stack offset: 8
#129 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#130 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#131 End ASSIGNMENT_STATEMENT
_end5:
#132 End IF_STATEMENT
#133 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#134 End VARIABLE j, depth difference: 0, stack offset: -8
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-8]
	beq	_for_start4
_for_end4:
#135 End FOR_STATEMENT
#136 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#137 End VARIABLE i, depth difference: 0, stack offset: -4
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-4]
	beq	_for_start3
_for_end3:
#138 End FOR_STATEMENT
#139 Starting RETURN_STATEMENT
#140 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#141 End VARIABLE a, depth difference: 0, stack offset: 8
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#142 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#143 Leaving FUNCTION (sort) with depth 2
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
#144 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
