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
#6 Starting DECLARATION: adding space on stack
	push	{r0}
#7 Ending DECLARATION
#8 Starting DECLARATION: adding space on stack
	push	{r0}
#9 Ending DECLARATION
#10 Starting DECLARATION: adding space on stack
	push	{r0}
#11 Ending DECLARATION
#12 Starting DECLARATION: adding space on stack
	push	{r0}
#13 Ending DECLARATION
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#16 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#20 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#24 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#25 End ASSIGNMENT_STATEMENT
#26 Starting ASSIGNMENT_STATEMENT
#27 Starting EXPRESSION of type &&
#28 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#29 End ASSIGNMENT_STATEMENT
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting EXPRESSION of type &&
#32 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#33 End ASSIGNMENT_STATEMENT
#34 Starting ASSIGNMENT_STATEMENT
#35 Starting EXPRESSION of type &&
#36 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#37 End ASSIGNMENT_STATEMENT
#38 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#39 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#40 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#41 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#42 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#43 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#44 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#45 Ending PRINT_STATEMENT
#46 Starting ASSIGNMENT_STATEMENT
#47 Starting EXPRESSION of type ||
#48 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#49 End ASSIGNMENT_STATEMENT
#50 Starting ASSIGNMENT_STATEMENT
#51 Starting EXPRESSION of type ||
#52 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#53 End ASSIGNMENT_STATEMENT
#54 Starting ASSIGNMENT_STATEMENT
#55 Starting EXPRESSION of type ||
#56 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#57 End ASSIGNMENT_STATEMENT
#58 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#59 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#60 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#61 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#62 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#63 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#64 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#65 Ending PRINT_STATEMENT
#66 Starting ASSIGNMENT_STATEMENT
#67 Starting EXPRESSION of type !
#68 Ending EXPRESSION of type !
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#69 End ASSIGNMENT_STATEMENT
#70 Starting ASSIGNMENT_STATEMENT
#71 Starting EXPRESSION of type !
#72 Ending EXPRESSION of type !
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#73 End ASSIGNMENT_STATEMENT
#74 Starting ASSIGNMENT_STATEMENT
#75 Starting EXPRESSION of type !
#76 Ending EXPRESSION of type !
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#77 End ASSIGNMENT_STATEMENT
#78 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#79 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#80 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#82 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#83 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#84 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#85 Ending PRINT_STATEMENT
#86 Starting ASSIGNMENT_STATEMENT
#87 Starting EXPRESSION of type &&
#88 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#89 End ASSIGNMENT_STATEMENT
#90 Starting ASSIGNMENT_STATEMENT
#91 Starting EXPRESSION of type &&
#92 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#93 End ASSIGNMENT_STATEMENT
#94 Starting ASSIGNMENT_STATEMENT
#95 Starting EXPRESSION of type &&
#96 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#97 End ASSIGNMENT_STATEMENT
#98 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#100 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#101 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#102 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#103 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#104 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#105 Ending PRINT_STATEMENT
#106 Starting ASSIGNMENT_STATEMENT
#107 Starting EXPRESSION of type ||
#108 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#109 End ASSIGNMENT_STATEMENT
#110 Starting ASSIGNMENT_STATEMENT
#111 Starting EXPRESSION of type ||
#112 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#113 End ASSIGNMENT_STATEMENT
#114 Starting ASSIGNMENT_STATEMENT
#115 Starting EXPRESSION of type ||
#116 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#117 End ASSIGNMENT_STATEMENT
#118 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#119 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#120 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#122 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#123 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#124 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#125 Ending PRINT_STATEMENT
#126 Starting ASSIGNMENT_STATEMENT
#127 Starting EXPRESSION of type &&
#128 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#129 End ASSIGNMENT_STATEMENT
#130 Starting ASSIGNMENT_STATEMENT
#131 Starting EXPRESSION of type ||
#132 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#133 End ASSIGNMENT_STATEMENT
#134 Starting ASSIGNMENT_STATEMENT
#135 Starting EXPRESSION of type ||
#136 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#137 End ASSIGNMENT_STATEMENT
#138 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#139 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#140 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#141 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#142 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#143 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#144 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#145 Ending PRINT_STATEMENT
#146 Starting ASSIGNMENT_STATEMENT
#147 Starting EXPRESSION of type ||
#148 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#149 End ASSIGNMENT_STATEMENT
#150 Starting ASSIGNMENT_STATEMENT
#151 Starting EXPRESSION of type &&
#152 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#153 End ASSIGNMENT_STATEMENT
#154 Starting ASSIGNMENT_STATEMENT
#155 Starting EXPRESSION of type ||
#156 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#157 End ASSIGNMENT_STATEMENT
#158 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#159 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#160 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#161 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#162 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#163 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#164 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#165 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#166 Leaving FUNCTION (main) with depth 2
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
#167 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
