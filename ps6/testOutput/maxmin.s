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
.STRING0: .ascii "a is: "
.ascii "\000"
.STRING1: .ascii "b is: "
.ascii "\000"
.STRING2: .ascii "c is: "
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (maxmin) with depth 2
_maxmin:
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
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting EXPRESSION of type FUNC_CALL
#14 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#15 End CONSTANT
#16 Starting CONSTANT
	movw	r0, #:lower16:6
	movt	r0, #:upper16:6
	push	{r0}
#17 End CONSTANT
	bl	_max
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#18 Ending EXPRESSION of type (null)
#19 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#20 End ASSIGNMENT_STATEMENT
#21 Starting ASSIGNMENT_STATEMENT
#22 Starting EXPRESSION of type FUNC_CALL
#23 Starting EXPRESSION of type UMINUS
#24 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#25 End CONSTANT
	mov	r1, #0
	pop	{r2}
	sub	r0, r1, r2
	push	{r0}
#26 Ending EXPRESSION of type UMINUS
#27 Starting CONSTANT
	movw	r0, #:lower16:4
	movt	r0, #:upper16:4
	push	{r0}
#28 End CONSTANT
	bl	_min
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#29 Ending EXPRESSION of type (null)
#30 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#31 End ASSIGNMENT_STATEMENT
#32 Starting ASSIGNMENT_STATEMENT
#33 Starting EXPRESSION of type FUNC_CALL
#34 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#35 End CONSTANT
#36 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#37 End CONSTANT
	bl	_max
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#38 Ending EXPRESSION of type (null)
#39 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#40 End ASSIGNMENT_STATEMENT
#41 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#42 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#43 End CONSTANT
	pop	{r0}
	bl	printf
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#45 End VARIABLE a, depth difference: 0, stack offset: -4
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#46 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#47 End CONSTANT
	pop	{r0}
	bl	printf
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#49 End VARIABLE b, depth difference: 0, stack offset: -8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#50 Starting CONSTANT
	movw	r0, #:lower16:.STRING2
	movt	r0, #:upper16:.STRING2
	push	{r0}
#51 End CONSTANT
	pop	{r0}
	bl	printf
#52 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#53 End VARIABLE c, depth difference: 0, stack offset: -12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#54 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#55 Leaving FUNCTION (maxmin) with depth 2
#56 Starting FUNCTION (max) with depth 2
_max:
	push	{lr}
	push	{fp}
	mov	fp, sp
#57 Starting IF_STATEMENT'
#58 End IF_STATEMENT
#59 Starting IF_STATEMENT'
#60 End IF_STATEMENT
#61 Starting RETURN_STATEMENT
#62 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#63 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#64 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#65 Leaving FUNCTION (max) with depth 2
#66 Starting FUNCTION (min) with depth 2
_min:
	push	{lr}
	push	{fp}
	mov	fp, sp
#67 Starting IF_STATEMENT'
#68 End IF_STATEMENT
#69 Starting IF_STATEMENT'
#70 End IF_STATEMENT
#71 Starting RETURN_STATEMENT
#72 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#73 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#75 Leaving FUNCTION (min) with depth 2
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
	bl	_maxmin
#76 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
