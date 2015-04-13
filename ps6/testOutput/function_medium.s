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
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#12 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#13 End ASSIGNMENT_STATEMENT
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#16 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting EXPRESSION of type FUNC_CALL
#20 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#21 End VARIABLE b, depth difference: 0, stack offset: -8
#22 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#23 End VARIABLE d, depth difference: 0, stack offset: -16
#24 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#25 End CONSTANT
#26 Starting EXPRESSION of type +
#27 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#28 End CONSTANT
#29 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#30 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#31 Ending EXPRESSION of type +
	bl	_func1
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#32 Ending EXPRESSION of type (null)
#33 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#34 End ASSIGNMENT_STATEMENT
#35 Starting ASSIGNMENT_STATEMENT
#36 Starting EXPRESSION of type FUNC_CALL
#37 Starting EXPRESSION of type &&
#38 Ending EXPRESSION of type &&
#39 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#40 End VARIABLE b, depth difference: 0, stack offset: -8
#41 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#42 End VARIABLE d, depth difference: 0, stack offset: -16
#43 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#44 End CONSTANT
#45 Starting CONSTANT
	movw	r0, #:lower16:11
	movt	r0, #:upper16:11
	push	{r0}
#46 End CONSTANT
#47 Starting CONSTANT
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
#48 End CONSTANT
	bl	_func2
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#49 Ending EXPRESSION of type (null)
#50 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#51 End ASSIGNMENT_STATEMENT
#52 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#54 End VARIABLE a, depth difference: 0, stack offset: -4
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#55 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#56 End VARIABLE c, depth difference: 0, stack offset: -12
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
#57 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#58 Leaving FUNCTION (main) with depth 2
#59 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#60 Starting IF_STATEMENT'
#61 End IF_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#62 Leaving FUNCTION (func1) with depth 2
#63 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#64 Starting RETURN_STATEMENT
#65 Starting EXPRESSION of type ||
#66 Ending EXPRESSION of type ||
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#67 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#68 Leaving FUNCTION (func2) with depth 2
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
#69 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
