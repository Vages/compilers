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
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #12
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6, #4]
	push {r1-r6}
	mov	r0, #0
	push	{r0}
	bl	_malloc
	pop	{r6}
	mov	r6, r0
	mov	r0, r6
	pop {r1-r6}
	str	r0, [r6, #8]
	mov	r0, r6
	pop {r1-r6}
	push	{r0}
#10 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [fp, #-4]
#11 End ASSIGNMENT_STATEMENT
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #20
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#14 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [fp, #-12]
#15 End ASSIGNMENT_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting EXPRESSION of type ARRAY_INDEX
#18 Starting EXPRESSION of type ARRAY_INDEX
#19 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#20 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	ldr	r0, [r1, #4]
	push	{r0}
#21 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r1}
	ldr	r0, [r1, #8]
	push	{r0}
#22 Ending EXPRESSION of type ARRAY_INDEX
#23 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#24 End CONSTANT
	pop	{r2}
	mov	r5, #4
	mul	r3,r2,r5
	pop	{r1}
	add	r0, r1, r3
	push	{r0}
#25 Starting CONSTANT
	movw	r0, #:lower16:42
	movt	r0, #:upper16:42
	push	{r0}
#26 End CONSTANT
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
#27 End ASSIGNMENT_STATEMENT
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#30 End VARIABLE c, depth difference: 0, stack offset: -12
#31 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#32 End CONSTANT
	pop	{r2}
	mov	r5, #4
	mul	r3,r2,r5
	pop	{r1}
	add	r0, r1, r3
	push	{r0}
#33 Starting CONSTANT
	movw	r0, #:lower16:43
	movt	r0, #:upper16:43
	push	{r0}
#34 End CONSTANT
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
#35 End ASSIGNMENT_STATEMENT
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting EXPRESSION of type ARRAY_INDEX
#38 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#39 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	ldr	r0, [r1, #4]
	push	{r0}
#40 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	str	r0, [fp, #-8]
#41 End ASSIGNMENT_STATEMENT
#42 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#43 Starting EXPRESSION of type ARRAY_INDEX
#44 Starting EXPRESSION of type ARRAY_INDEX
#45 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#46 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	ldr	r0, [r1, #8]
	push	{r0}
#47 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r1}
	ldr	r0, [r1, #12]
	push	{r0}
#48 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#49 Ending PRINT_STATEMENT
#50 Starting ASSIGNMENT_STATEMENT
#51 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#52 End VARIABLE b, depth difference: 0, stack offset: -8
#53 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#54 End CONSTANT
	pop	{r2}
	mov	r5, #4
	mul	r3,r2,r5
	pop	{r1}
	add	r0, r1, r3
	push	{r0}
#55 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#56 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
#57 End ASSIGNMENT_STATEMENT
#58 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#59 Starting EXPRESSION of type ARRAY_INDEX
#60 Starting EXPRESSION of type ARRAY_INDEX
#61 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#62 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	ldr	r0, [r1, #4]
	push	{r0}
#63 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r1}
	ldr	r0, [r1, #12]
	push	{r0}
#64 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#65 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#66 Leaving FUNCTION (main) with depth 2
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
#67 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
