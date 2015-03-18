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
#11 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#12 End CONSTANT
	pop	{r0}
	str	r0, [fp, #-4]
#13 End ASSIGNMENT_STATEMENT
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting CONSTANT
	movw	r0, #:lower16:6
	movt	r0, #:upper16:6
	push	{r0}
#16 End CONSTANT
	pop	{r0}
	str	r0, [fp, #-8]
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting CONSTANT
	movw	r0, #:lower16:7
	movt	r0, #:upper16:7
	push	{r0}
#20 End CONSTANT
	pop	{r0}
	str	r0, [fp, #-12]
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting CONSTANT
	movw	r0, #:lower16:8
	movt	r0, #:upper16:8
	push	{r0}
#24 End CONSTANT
	pop	{r0}
	str	r0, [fp, #-16]
#25 End ASSIGNMENT_STATEMENT
#26 Starting DECLARATION: adding space on stack
	push	{r6}
#27 Ending DECLARATION
#28 Starting DECLARATION: adding space on stack
	push	{r6}
#29 Ending DECLARATION
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting EXPRESSION of type FUNC_CALL
	push {r1-r6}
#32 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#33 End VARIABLE a, depth difference: 0, stack offset: -4
#34 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#35 End VARIABLE b, depth difference: 0, stack offset: -8
#36 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#37 End VARIABLE c, depth difference: 0, stack offset: -12
	bl	_func1
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#38 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	str	r0, [fp, #-20]
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
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
#48 Starting VARIABLE
	ldr	r0, [fp, #-16]
	push	{r0}
#49 End VARIABLE d, depth difference: 0, stack offset: -16
#50 Starting VARIABLE
	ldr	r0, [fp, #-20]
	push	{r0}
#51 End VARIABLE e, depth difference: 0, stack offset: -20
	bl	_func2
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#52 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	str	r0, [fp, #-24]
#53 End ASSIGNMENT_STATEMENT
#54 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#55 Starting VARIABLE
	ldr	r0, [fp, #-20]
	push	{r0}
#56 End VARIABLE e, depth difference: 0, stack offset: -20
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#57 Starting VARIABLE
	ldr	r0, [fp, #-24]
	push	{r0}
#58 End VARIABLE f, depth difference: 0, stack offset: -24
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#59 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#60 Leaving FUNCTION (main) with depth 2
#61 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#62 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#63 Starting VARIABLE
	ldr	r0, [fp, #16]
	push	{r0}
#64 End VARIABLE x, depth difference: 0, stack offset: 16
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#65 Starting VARIABLE
	ldr	r0, [fp, #12]
	push	{r0}
#66 End VARIABLE y, depth difference: 0, stack offset: 12
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#67 Starting VARIABLE
	ldr	r0, [fp, #8]
	push	{r0}
#68 End VARIABLE z, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#69 Ending PRINT_STATEMENT
#70 Starting RETURN_STATEMENT
#71 Starting VARIABLE
	ldr	r0, [fp, #8]
	push	{r0}
#72 End VARIABLE z, depth difference: 0, stack offset: 8
	pop	{r0}
#73 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 Leaving FUNCTION (func1) with depth 2
#75 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#76 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#77 Starting VARIABLE
	ldr	r0, [fp, #24]
	push	{r0}
#78 End VARIABLE x, depth difference: 0, stack offset: 24
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#79 Starting VARIABLE
	ldr	r0, [fp, #20]
	push	{r0}
#80 End VARIABLE y, depth difference: 0, stack offset: 20
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#81 Starting VARIABLE
	ldr	r0, [fp, #16]
	push	{r0}
#82 End VARIABLE z, depth difference: 0, stack offset: 16
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#83 Starting VARIABLE
	ldr	r0, [fp, #12]
	push	{r0}
#84 End VARIABLE w, depth difference: 0, stack offset: 12
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#85 Starting VARIABLE
	ldr	r0, [fp, #8]
	push	{r0}
#86 End VARIABLE ae, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#87 Ending PRINT_STATEMENT
#88 Starting RETURN_STATEMENT
#89 Starting VARIABLE
	ldr	r0, [fp, #16]
	push	{r0}
#90 End VARIABLE z, depth difference: 0, stack offset: 16
	pop	{r0}
#91 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#92 Leaving FUNCTION (func2) with depth 2
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
#93 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
