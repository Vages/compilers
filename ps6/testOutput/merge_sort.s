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
#4 Starting ASSIGNMENT_STATEMENT
#5 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:400
	movt	r0, #:upper16:400
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#6 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#7 End ASSIGNMENT_STATEMENT
#8 Starting DECLARATION: adding space on stack
	push	{r0}
#9 Ending DECLARATION
#10 Starting FOR_STATEMENT
#11 End FOR_STATEMENT
#12 Starting EXPRESSION of type FUNC_CALL
#13 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#14 End VARIABLE a, depth difference: 0, stack offset: -4
#15 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#16 End CONSTANT
#17 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#18 End CONSTANT
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#19 Ending EXPRESSION of type (null)
#20 Ending EXPRESSION of type FUNC_CALL
#21 Starting FOR_STATEMENT
#22 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#23 Leaving FUNCTION (main) with depth 2
#24 Starting FUNCTION (merge_sort) with depth 2
_merge_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#25 Starting IF_STATEMENT'
#26 End IF_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#27 Leaving FUNCTION (merge_sort) with depth 2
#28 Starting FUNCTION (merge) with depth 2
_merge:
	push	{lr}
	push	{fp}
	mov	fp, sp
#29 Starting DECLARATION: adding space on stack
	push	{r0}
#30 Ending DECLARATION
#31 Starting ASSIGNMENT_STATEMENT
#32 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:400
	movt	r0, #:upper16:400
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#33 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#34 End ASSIGNMENT_STATEMENT
#35 Starting DECLARATION: adding space on stack
	push	{r0}
#36 Ending DECLARATION
#37 Starting DECLARATION: adding space on stack
	push	{r0}
#38 Ending DECLARATION
#39 Starting ASSIGNMENT_STATEMENT
#40 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#41 End VARIABLE start, depth difference: 0, stack offset: 16
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#42 End ASSIGNMENT_STATEMENT
#43 Starting ASSIGNMENT_STATEMENT
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#45 End VARIABLE middle, depth difference: 0, stack offset: 12
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#46 End ASSIGNMENT_STATEMENT
#47 Starting DECLARATION: adding space on stack
	push	{r0}
#48 Ending DECLARATION
#49 Starting FOR_STATEMENT
#50 End FOR_STATEMENT
#51 Starting DECLARATION: adding space on stack
	push	{r0}
#52 Ending DECLARATION
#53 Starting FOR_STATEMENT
#54 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#55 Leaving FUNCTION (merge) with depth 2
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
#56 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
