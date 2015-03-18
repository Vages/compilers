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
#1 Starting FUNCTION (arrayTest) with depth 2
_arrayTest:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting DECLARATION: adding space on stack
	push	{r6}
#3 Ending DECLARATION
#4 Starting DECLARATION: adding space on stack
	push	{r6}
#5 Ending DECLARATION
#6 Starting ASSIGNMENT_STATEMENT
#7 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#8 End VARIABLE a, depth difference: 0, stack offset: -4
	mov	r1, r0
#9 Starting CONSTANT
	movw	r0, #:lower16:66
	movt	r0, #:upper16:66
	push	{r0}
#10 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#11 End ASSIGNMENT_STATEMENT
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#14 End VARIABLE b, depth difference: 0, stack offset: -8
	mov	r1, r0
#15 Starting CONSTANT
	movw	r0, #:lower16:44
	movt	r0, #:upper16:44
	push	{r0}
#16 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#17 End ASSIGNMENT_STATEMENT
#18 Starting DECLARATION: adding space on stack
	push	{r6}
#19 Ending DECLARATION
#20 Starting ASSIGNMENT_STATEMENT
#21 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#22 End VARIABLE array, depth difference: 0, stack offset: -12
	mov	r1, r0
#23 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #8
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#24 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [r1]
#25 End ASSIGNMENT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#26 Leaving FUNCTION (arrayTest) with depth 2
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
	bl	_arrayTest
#27 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
