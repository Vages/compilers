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
#7 Starting CONSTANT
	movw	r0, #:lower16:66
	movt	r0, #:upper16:66
	push	{r0}
#8 End CONSTANT
	pop	{r0}
	str	r0, [fp, #-4]
#9 End ASSIGNMENT_STATEMENT
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting CONSTANT
	movw	r0, #:lower16:44
	movt	r0, #:upper16:44
	push	{r0}
#12 End CONSTANT
	pop	{r0}
	str	r0, [fp, #-8]
#13 End ASSIGNMENT_STATEMENT
#14 Starting DECLARATION: adding space on stack
	push	{r6}
#15 Ending DECLARATION
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #8
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#18 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [fp, #-12]
#19 End ASSIGNMENT_STATEMENT
#20 Starting ASSIGNMENT_STATEMENT
#21 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#22 End VARIABLE array, depth difference: 0, stack offset: -12
#23 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#24 End CONSTANT
	pop	{r2}
	mov	r5, #4
	mul	r3,r2,r5
	pop	{r1}
	add	r0, r2, r3
	push	{r0}
#25 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#26 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
#27 End ASSIGNMENT_STATEMENT
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#30 End VARIABLE array, depth difference: 0, stack offset: -12
#31 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#32 End CONSTANT
	pop	{r2}
	mov	r5, #4
	mul	r3,r2,r5
	pop	{r1}
	add	r0, r2, r3
	push	{r0}
#33 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#34 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
#35 End ASSIGNMENT_STATEMENT
#36 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#37 Starting EXPRESSION of type ARRAY_INDEX
#38 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#39 End VARIABLE array, depth difference: 0, stack offset: -12
	pop	{r1}
	ldr	r0, [r1]
	push	{r0}
#40 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#41 Starting EXPRESSION of type ARRAY_INDEX
#42 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#43 End VARIABLE array, depth difference: 0, stack offset: -12
	pop	{r1}
	ldr	r0, [r1, #4]
	push	{r0}
#44 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#45 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#46 Leaving FUNCTION (arrayTest) with depth 2
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
#47 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
