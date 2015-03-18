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
#4 Starting DECLARATION: adding space on stack
	push	{r6}
#5 Ending DECLARATION
#6 Starting DECLARATION: adding space on stack
	push	{r6}
#7 Ending DECLARATION
#8 Starting DECLARATION: adding space on stack
	push	{r6}
#9 Ending DECLARATION
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#12 End VARIABLE a, depth difference: 0, stack offset: -4
	mov	r1, r0
#13 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#14 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#15 End ASSIGNMENT_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#18 End VARIABLE b, depth difference: 0, stack offset: -8
	mov	r1, r0
#19 Starting CONSTANT
	movw	r0, #:lower16:6
	movt	r0, #:upper16:6
	push	{r0}
#20 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#24 End VARIABLE c, depth difference: 0, stack offset: -12
	mov	r1, r0
#25 Starting CONSTANT
	movw	r0, #:lower16:7
	movt	r0, #:upper16:7
	push	{r0}
#26 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#27 End ASSIGNMENT_STATEMENT
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting VARIABLE
	ldr	r0, [fp, #-16]
	push	{r0}
#30 End VARIABLE d, depth difference: 0, stack offset: -16
	mov	r1, r0
#31 Starting CONSTANT
	movw	r0, #:lower16:8
	movt	r0, #:upper16:8
	push	{r0}
#32 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#33 End ASSIGNMENT_STATEMENT
#34 Starting DECLARATION: adding space on stack
	push	{r6}
#35 Ending DECLARATION
#36 Starting DECLARATION: adding space on stack
	push	{r6}
#37 Ending DECLARATION
#38 Starting ASSIGNMENT_STATEMENT
#39 Starting VARIABLE
	ldr	r0, [fp, #-20]
	push	{r0}
#40 End VARIABLE e, depth difference: 0, stack offset: -20
	mov	r1, r0
#41 Starting EXPRESSION of type FUNC_CALL
	push {r1-r6}
#42 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#43 End VARIABLE a, depth difference: 0, stack offset: -4
#44 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#45 End VARIABLE b, depth difference: 0, stack offset: -8
#46 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#47 End VARIABLE c, depth difference: 0, stack offset: -12
	bl	_func1
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#48 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	str	r0, [r1]
#49 End ASSIGNMENT_STATEMENT
#50 Starting ASSIGNMENT_STATEMENT
#51 Starting VARIABLE
	ldr	r0, [fp, #-24]
	push	{r0}
#52 End VARIABLE f, depth difference: 0, stack offset: -24
	mov	r1, r0
#53 Starting EXPRESSION of type FUNC_CALL
	push {r1-r6}
#54 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#55 End VARIABLE a, depth difference: 0, stack offset: -4
#56 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#57 End VARIABLE b, depth difference: 0, stack offset: -8
#58 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#59 End VARIABLE c, depth difference: 0, stack offset: -12
#60 Starting VARIABLE
	ldr	r0, [fp, #-16]
	push	{r0}
#61 End VARIABLE d, depth difference: 0, stack offset: -16
#62 Starting VARIABLE
	ldr	r0, [fp, #-20]
	push	{r0}
#63 End VARIABLE e, depth difference: 0, stack offset: -20
	bl	_func2
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#64 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	str	r0, [r1]
#65 End ASSIGNMENT_STATEMENT
#66 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#67 Starting VARIABLE
	ldr	r0, [fp, #-20]
	push	{r0}
#68 End VARIABLE e, depth difference: 0, stack offset: -20
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#69 Starting VARIABLE
	ldr	r0, [fp, #-24]
	push	{r0}
#70 End VARIABLE f, depth difference: 0, stack offset: -24
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
#73 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#74 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#75 Starting VARIABLE
	ldr	r0, [fp, #16]
	push	{r0}
#76 End VARIABLE x, depth difference: 0, stack offset: 16
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#77 Starting VARIABLE
	ldr	r0, [fp, #12]
	push	{r0}
#78 End VARIABLE y, depth difference: 0, stack offset: 12
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#79 Starting VARIABLE
	ldr	r0, [fp, #8]
	push	{r0}
#80 End VARIABLE z, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#81 Ending PRINT_STATEMENT
#82 Starting RETURN_STATEMENT
#83 Starting VARIABLE
	ldr	r0, [fp, #8]
	push	{r0}
#84 End VARIABLE z, depth difference: 0, stack offset: 8
	pop	{r0}
#85 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#86 Leaving FUNCTION (func1) with depth 2
#87 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#88 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#89 Starting VARIABLE
	ldr	r0, [fp, #24]
	push	{r0}
#90 End VARIABLE x, depth difference: 0, stack offset: 24
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#91 Starting VARIABLE
	ldr	r0, [fp, #20]
	push	{r0}
#92 End VARIABLE y, depth difference: 0, stack offset: 20
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#93 Starting VARIABLE
	ldr	r0, [fp, #16]
	push	{r0}
#94 End VARIABLE z, depth difference: 0, stack offset: 16
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#95 Starting VARIABLE
	ldr	r0, [fp, #12]
	push	{r0}
#96 End VARIABLE w, depth difference: 0, stack offset: 12
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#97 Starting VARIABLE
	ldr	r0, [fp, #8]
	push	{r0}
#98 End VARIABLE ae, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#99 Ending PRINT_STATEMENT
#100 Starting RETURN_STATEMENT
#101 Starting VARIABLE
	ldr	r0, [fp, #16]
	push	{r0}
#102 End VARIABLE z, depth difference: 0, stack offset: 16
	pop	{r0}
#103 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#104 Leaving FUNCTION (func2) with depth 2
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
#105 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
