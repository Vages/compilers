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
#9 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#10 End VARIABLE a, depth difference: 0, stack offset: -4
	mov	r1, r0
#11 Starting EXPRESSION of type NEW
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
#12 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [r1]
#13 End ASSIGNMENT_STATEMENT
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#16 End VARIABLE c, depth difference: 0, stack offset: -12
	mov	r1, r0
#17 Starting EXPRESSION of type NEW
	push {r1-r6}
	mov	r0, #20
	push	{r0}
	bl	_malloc
	pop	{r6}
	pop {r1-r6}
	push	{r0}
#18 Ending EXPRESSION of type NEW
	pop	{r0}
	str	r0, [r1]
#19 End ASSIGNMENT_STATEMENT
#20 Starting ASSIGNMENT_STATEMENT
#21 Starting EXPRESSION of type ARRAY_INDEX
#22 Starting EXPRESSION of type ARRAY_INDEX
#23 Starting EXPRESSION of type ARRAY_INDEX
#24 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#25 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#26 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#27 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #12]
	push	{r0}
#28 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#29 Starting CONSTANT
	movw	r0, #:lower16:42
	movt	r0, #:upper16:42
	push	{r0}
#30 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#31 End ASSIGNMENT_STATEMENT
#32 Starting ASSIGNMENT_STATEMENT
#33 Starting EXPRESSION of type ARRAY_INDEX
#34 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#35 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r0}
	ldr	r0, [r0, #12]
	push	{r0}
#36 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#37 Starting CONSTANT
	movw	r0, #:lower16:43
	movt	r0, #:upper16:43
	push	{r0}
#38 End CONSTANT
	pop	{r0}
	str	r0, [r1]
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#42 End VARIABLE b, depth difference: 0, stack offset: -8
	mov	r1, r0
#43 Starting EXPRESSION of type ARRAY_INDEX
#44 Starting VARIABLE
	ldr	r0, [fp, #-4]
	push	{r0}
#45 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#46 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	str	r0, [r1]
#47 End ASSIGNMENT_STATEMENT
#48 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#49 Starting EXPRESSION of type ARRAY_INDEX
#50 Starting EXPRESSION of type ARRAY_INDEX
#51 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#52 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #8]
	push	{r0}
#53 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #12]
	push	{r0}
#54 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#55 Ending PRINT_STATEMENT
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting EXPRESSION of type ARRAY_INDEX
#58 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#59 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#60 Ending EXPRESSION of type ARRAY_INDEX
	mov	r1, r0
#61 Starting VARIABLE
	ldr	r0, [fp, #-12]
	push	{r0}
#62 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r0}
	str	r0, [r1]
#63 End ASSIGNMENT_STATEMENT
#64 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#65 Starting EXPRESSION of type ARRAY_INDEX
#66 Starting EXPRESSION of type ARRAY_INDEX
#67 Starting VARIABLE
	ldr	r0, [fp, #-8]
	push	{r0}
#68 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r0}
	ldr	r0, [r0, #4]
	push	{r0}
#69 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r0}
	ldr	r0, [r0, #12]
	push	{r0}
#70 Ending EXPRESSION of type ARRAY_INDEX
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
#73 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
