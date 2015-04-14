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
#36 Starting FOR_STATEMENT
#37 Starting ASSIGNMENT_STATEMENT
#38 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#39 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#40 End ASSIGNMENT_STATEMENT
_for_start2:
#41 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#42 End VARIABLE i, depth difference: 0, stack offset: -12
#43 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#44 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end2
#45 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#46 Starting EXPRESSION of type ARRAY_INDEX
#47 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#48 End VARIABLE a, depth difference: 0, stack offset: -4
#49 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#50 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#51 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#52 Ending PRINT_STATEMENT
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#54 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start2
_for_end2:
#55 End FOR_STATEMENT
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting EXPRESSION of type FUNC_CALL
#58 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#59 End VARIABLE a, depth difference: 0, stack offset: -4
	bl	_sort
	add	sp, sp, $4
	push	{r0}
#60 Ending EXPRESSION of type (null)
#61 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#62 End ASSIGNMENT_STATEMENT
#63 Starting FOR_STATEMENT
#64 Starting ASSIGNMENT_STATEMENT
#65 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#66 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#67 End ASSIGNMENT_STATEMENT
_for_start3:
#68 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#69 End VARIABLE i, depth difference: 0, stack offset: -12
#70 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#71 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end3
#72 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#73 Starting EXPRESSION of type ARRAY_INDEX
#74 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#75 End VARIABLE b, depth difference: 0, stack offset: -8
#76 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#77 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#78 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#79 Ending PRINT_STATEMENT
#80 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#81 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start3
_for_end3:
#82 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#83 Leaving FUNCTION (main) with depth 2
#84 Starting FUNCTION (sort) with depth 2
_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#85 Starting DECLARATION: adding space on stack
	push	{r0}
#86 Ending DECLARATION
#87 Starting DECLARATION: adding space on stack
	push	{r0}
#88 Ending DECLARATION
#89 Starting DECLARATION: adding space on stack
	push	{r0}
#90 Ending DECLARATION
#91 Starting FOR_STATEMENT
#92 Starting ASSIGNMENT_STATEMENT
#93 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#94 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#95 End ASSIGNMENT_STATEMENT
_for_start4:
#96 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#97 End VARIABLE i, depth difference: 0, stack offset: -4
#98 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#99 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end4
#100 Starting FOR_STATEMENT
#101 Starting ASSIGNMENT_STATEMENT
#102 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#103 End VARIABLE i, depth difference: 0, stack offset: -4
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#104 End ASSIGNMENT_STATEMENT
_for_start5:
#105 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#106 End VARIABLE j, depth difference: 0, stack offset: -8
#107 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#108 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end5
#109 Starting IF_STATEMENT'
#110 Starting EXPRESSION of type <
#111 Starting EXPRESSION of type ARRAY_INDEX
#112 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#113 End VARIABLE a, depth difference: 0, stack offset: 8
#114 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#115 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#116 Ending EXPRESSION of type ARRAY_INDEX
#117 Starting EXPRESSION of type ARRAY_INDEX
#118 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#119 End VARIABLE a, depth difference: 0, stack offset: 8
#120 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#121 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#122 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movlt	 r0, #1
	push	{r0}
#123 Ending EXPRESSION of type <
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_end6
#124 Starting ASSIGNMENT_STATEMENT
#125 Starting EXPRESSION of type ARRAY_INDEX
#126 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#127 End VARIABLE a, depth difference: 0, stack offset: 8
#128 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#129 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#130 Ending EXPRESSION of type ARRAY_INDEX
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#131 End ASSIGNMENT_STATEMENT
#132 Starting ASSIGNMENT_STATEMENT
#133 Starting EXPRESSION of type ARRAY_INDEX
#134 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#135 End VARIABLE a, depth difference: 0, stack offset: 8
#136 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#137 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#138 Ending EXPRESSION of type ARRAY_INDEX
#139 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#140 End VARIABLE a, depth difference: 0, stack offset: 8
#141 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#142 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#143 End ASSIGNMENT_STATEMENT
#144 Starting ASSIGNMENT_STATEMENT
#145 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#146 End VARIABLE temp, depth difference: 0, stack offset: -12
#147 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#148 End VARIABLE a, depth difference: 0, stack offset: 8
#149 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#150 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#151 End ASSIGNMENT_STATEMENT
_end6:
#152 End IF_STATEMENT
#153 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#154 End VARIABLE j, depth difference: 0, stack offset: -8
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-8]
	beq	_for_start5
_for_end5:
#155 End FOR_STATEMENT
#156 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#157 End VARIABLE i, depth difference: 0, stack offset: -4
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-4]
	beq	_for_start4
_for_end4:
#158 End FOR_STATEMENT
#159 Starting RETURN_STATEMENT
#160 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#161 End VARIABLE a, depth difference: 0, stack offset: 8
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#162 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#163 Leaving FUNCTION (sort) with depth 2
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
#164 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
