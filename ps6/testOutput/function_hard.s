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
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#10 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#11 End ASSIGNMENT_STATEMENT
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#14 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#15 End ASSIGNMENT_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#18 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#19 End ASSIGNMENT_STATEMENT
#20 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#21 Starting EXPRESSION of type FUNC_CALL
#22 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#23 End VARIABLE a, depth difference: 0, stack offset: -4
#24 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#25 End VARIABLE b, depth difference: 0, stack offset: -8
#26 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#27 End VARIABLE c, depth difference: 0, stack offset: -12
	bl	_func1
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#28 Ending EXPRESSION of type (null)
#29 Ending EXPRESSION of type FUNC_CALL
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#30 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#31 Leaving FUNCTION (main) with depth 2
#32 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#33 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#34 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#35 End VARIABLE a, depth difference: 0, stack offset: 16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#36 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#37 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#39 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#40 Ending PRINT_STATEMENT
#41 Starting DECLARATION: adding space on stack
	push	{r0}
#42 Ending DECLARATION
#43 Starting ASSIGNMENT_STATEMENT
#44 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#45 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#46 End ASSIGNMENT_STATEMENT
#47 Starting IF_STATEMENT'
#48 End IF_STATEMENT
#49 Starting RETURN_STATEMENT
#50 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#51 End VARIABLE d, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#52 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#53 Leaving FUNCTION (func1) with depth 2
#54 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#55 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#56 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#57 End VARIABLE a, depth difference: 0, stack offset: 16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#58 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#59 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#61 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#62 Ending PRINT_STATEMENT
#63 Starting DECLARATION: adding space on stack
	push	{r0}
#64 Ending DECLARATION
#65 Starting ASSIGNMENT_STATEMENT
#66 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#67 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#68 End ASSIGNMENT_STATEMENT
#69 Starting IF_STATEMENT'
#70 End IF_STATEMENT
#71 Starting RETURN_STATEMENT
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#73 End VARIABLE d, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#75 Leaving FUNCTION (func2) with depth 2
#76 Starting FUNCTION (func3) with depth 2
_func3:
	push	{lr}
	push	{fp}
	mov	fp, sp
#77 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#78 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#79 End VARIABLE a, depth difference: 0, stack offset: 16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#80 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#81 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#82 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#83 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#84 Ending PRINT_STATEMENT
#85 Starting DECLARATION: adding space on stack
	push	{r0}
#86 Ending DECLARATION
#87 Starting ASSIGNMENT_STATEMENT
#88 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#89 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#90 End ASSIGNMENT_STATEMENT
#91 Starting IF_STATEMENT'
#92 End IF_STATEMENT
#93 Starting RETURN_STATEMENT
#94 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#95 End VARIABLE d, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#96 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#97 Leaving FUNCTION (func3) with depth 2
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
#98 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
