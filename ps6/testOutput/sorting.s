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
#46 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#47 End VARIABLE i, depth difference: 0, stack offset: -12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#48 Ending PRINT_STATEMENT
#49 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#50 Starting EXPRESSION of type ARRAY_INDEX
#51 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#52 End VARIABLE a, depth difference: 0, stack offset: -4
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#54 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#55 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#56 Ending PRINT_STATEMENT
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#58 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start2
_for_end2:
#59 End FOR_STATEMENT
#60 Starting ASSIGNMENT_STATEMENT
#61 Starting EXPRESSION of type FUNC_CALL
#62 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#63 End VARIABLE a, depth difference: 0, stack offset: -4
	bl	_sort
	add	sp, sp, $4
	push	{r0}
#64 Ending EXPRESSION of type (null)
#65 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#66 End ASSIGNMENT_STATEMENT
#67 Starting FOR_STATEMENT
#68 Starting ASSIGNMENT_STATEMENT
#69 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#70 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#71 End ASSIGNMENT_STATEMENT
_for_start3:
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#73 End VARIABLE i, depth difference: 0, stack offset: -12
#74 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#75 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end3
#76 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#77 Starting EXPRESSION of type ARRAY_INDEX
#78 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#79 End VARIABLE b, depth difference: 0, stack offset: -8
#80 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#81 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#82 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#83 Ending PRINT_STATEMENT
#84 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#85 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start3
_for_end3:
#86 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#87 Leaving FUNCTION (main) with depth 2
#88 Starting FUNCTION (sort) with depth 2
_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#89 Starting DECLARATION: adding space on stack
	push	{r0}
#90 Ending DECLARATION
#91 Starting DECLARATION: adding space on stack
	push	{r0}
#92 Ending DECLARATION
#93 Starting DECLARATION: adding space on stack
	push	{r0}
#94 Ending DECLARATION
#95 Starting FOR_STATEMENT
#96 Starting ASSIGNMENT_STATEMENT
#97 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#98 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#99 End ASSIGNMENT_STATEMENT
_for_start4:
#100 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#101 End VARIABLE i, depth difference: 0, stack offset: -4
#102 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#103 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end4
#104 Starting FOR_STATEMENT
#105 Starting ASSIGNMENT_STATEMENT
#106 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#107 End VARIABLE i, depth difference: 0, stack offset: -4
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#108 End ASSIGNMENT_STATEMENT
_for_start5:
#109 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#110 End VARIABLE j, depth difference: 0, stack offset: -8
#111 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#112 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end5
#113 Starting IF_STATEMENT'
#114 Starting EXPRESSION of type <
#115 Starting EXPRESSION of type ARRAY_INDEX
#116 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#117 End VARIABLE a, depth difference: 0, stack offset: 8
#118 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#119 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#120 Ending EXPRESSION of type ARRAY_INDEX
#121 Starting EXPRESSION of type ARRAY_INDEX
#122 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#123 End VARIABLE a, depth difference: 0, stack offset: 8
#124 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#125 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#126 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movlt	 r0, #1
	push	{r0}
#127 Ending EXPRESSION of type <
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_end6
#128 Starting ASSIGNMENT_STATEMENT
#129 Starting EXPRESSION of type ARRAY_INDEX
#130 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#131 End VARIABLE a, depth difference: 0, stack offset: 8
#132 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#133 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#134 Ending EXPRESSION of type ARRAY_INDEX
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#135 End ASSIGNMENT_STATEMENT
#136 Starting ASSIGNMENT_STATEMENT
#137 Starting EXPRESSION of type ARRAY_INDEX
#138 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#139 End VARIABLE a, depth difference: 0, stack offset: 8
#140 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#141 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#142 Ending EXPRESSION of type ARRAY_INDEX
#143 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#144 End VARIABLE a, depth difference: 0, stack offset: 8
#145 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#146 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#147 End ASSIGNMENT_STATEMENT
#148 Starting ASSIGNMENT_STATEMENT
#149 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#150 End VARIABLE temp, depth difference: 0, stack offset: -12
#151 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#152 End VARIABLE a, depth difference: 0, stack offset: 8
#153 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#154 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#155 End ASSIGNMENT_STATEMENT
_end6:
#156 End IF_STATEMENT
#157 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#158 End VARIABLE j, depth difference: 0, stack offset: -8
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-8]
	beq	_for_start5
_for_end5:
#159 End FOR_STATEMENT
#160 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#161 End VARIABLE i, depth difference: 0, stack offset: -4
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-4]
	beq	_for_start4
_for_end4:
#162 End FOR_STATEMENT
#163 Starting RETURN_STATEMENT
#164 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#165 End VARIABLE a, depth difference: 0, stack offset: 8
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#166 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#167 Leaving FUNCTION (sort) with depth 2
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
#168 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
