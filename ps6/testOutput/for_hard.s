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
#4 Starting FOR_STATEMENT
#5 Starting ASSIGNMENT_STATEMENT
#6 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#7 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#8 End ASSIGNMENT_STATEMENT
_for_start1:
#9 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#10 End VARIABLE i, depth difference: 0, stack offset: -4
#11 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#12 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end1
#13 Starting DECLARATION: adding space on stack
	push	{r0}
#14 Ending DECLARATION
#15 Starting FOR_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#18 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#19 End ASSIGNMENT_STATEMENT
_for_start2:
#20 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#21 End VARIABLE j, depth difference: 0, stack offset: -8
#22 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#23 End VARIABLE i, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end2
#24 Starting DECLARATION: adding space on stack
	push	{r0}
#25 Ending DECLARATION
#26 Starting FOR_STATEMENT
#27 Starting ASSIGNMENT_STATEMENT
#28 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#29 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#30 End ASSIGNMENT_STATEMENT
_for_start3:
#31 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#32 End VARIABLE k, depth difference: 0, stack offset: -12
#33 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#34 End VARIABLE j, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end3
#35 Starting EXPRESSION of type FUNC_CALL
#36 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#37 End VARIABLE i, depth difference: 0, stack offset: -4
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#39 End VARIABLE j, depth difference: 0, stack offset: -8
#40 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#41 End VARIABLE k, depth difference: 0, stack offset: -12
	bl	_print
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#42 Ending EXPRESSION of type (null)
#43 Ending EXPRESSION of type FUNC_CALL
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#45 End VARIABLE k, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	beq	_for_start3
_for_end3:
#46 End FOR_STATEMENT
#47 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#48 End VARIABLE j, depth difference: 0, stack offset: -8
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-8]
	beq	_for_start2
_for_end2:
#49 End FOR_STATEMENT
#50 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#51 End VARIABLE i, depth difference: 0, stack offset: -4
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-4]
	beq	_for_start1
_for_end1:
#52 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#53 Leaving FUNCTION (main) with depth 2
#54 Starting FUNCTION (print) with depth 2
_print:
	push	{lr}
	push	{fp}
	mov	fp, sp
#55 Starting FOR_STATEMENT
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting EXPRESSION of type UMINUS
#58 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#59 End CONSTANT
	pop	{r1}
	neg	r0, r1
	push	{r0}
#60 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #16]
	mov	fp, r1
#61 End ASSIGNMENT_STATEMENT
_for_start4:
#62 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#63 End VARIABLE a, depth difference: 0, stack offset: 16
#64 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#65 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end4
#66 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#67 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#68 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#69 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#70 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#71 Ending PRINT_STATEMENT
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#73 End VARIABLE a, depth difference: 0, stack offset: 16
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #16]
	beq	_for_start4
_for_end4:
#74 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#75 Leaving FUNCTION (print) with depth 2
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
#76 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
