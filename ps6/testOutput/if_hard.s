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
.STRING0: .ascii "A is different from 10"
.ascii "\000"
.STRING1: .ascii "B is different from -15"
.ascii "\000"
.STRING2: .ascii "B equals -15"
.ascii "\000"
.STRING3: .ascii "This never happens..."
.ascii "\000"
.STRING4: .ascii "a >0, b > 0"
.ascii "\000"
.STRING5: .ascii "a > 0, b <= 0"
.ascii "\000"
.STRING6: .ascii "a <= 0, b > 0"
.ascii "\000"
.STRING7: .ascii "a <= 0, b <= 0"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (while_test) with depth 2
_while_test:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting DECLARATION: adding space on stack
	push	{r0}
#3 Ending DECLARATION
#4 Starting DECLARATION: adding space on stack
	push	{r0}
#5 Ending DECLARATION
#6 Starting ASSIGNMENT_STATEMENT
#7 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#8 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#9 End ASSIGNMENT_STATEMENT
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting EXPRESSION of type UMINUS
#12 Starting CONSTANT
	movw	r0, #:lower16:15
	movt	r0, #:upper16:15
	push	{r0}
#13 End CONSTANT
	mov	r1, #0
	pop	{r2}
	sub	r0, r1, r2
	push	{r0}
#14 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#15 End ASSIGNMENT_STATEMENT
#16 Starting IF_STATEMENT'
#17 End IF_STATEMENT
#18 Starting IF_STATEMENT'
#19 End IF_STATEMENT
#20 Starting IF_STATEMENT'
#21 End IF_STATEMENT
#22 Starting RETURN_STATEMENT
#23 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#24 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#25 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#26 Leaving FUNCTION (while_test) with depth 2
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
	bl	_while_test
#27 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
