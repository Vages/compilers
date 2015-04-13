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
.STRING0: .ascii "Greatest common divisor of"
.ascii "\000"
.STRING1: .ascii "and"
.ascii "\000"
.STRING2: .ascii "is"
.ascii "\000"
.STRING3: .ascii "and"
.ascii "\000"
.STRING4: .ascii "are relative primes"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (euclid) with depth 2
_euclid:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting IF_STATEMENT'
#3 End IF_STATEMENT
#4 Starting RETURN_STATEMENT
#5 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#6 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#7 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#8 Leaving FUNCTION (euclid) with depth 2
#9 Starting FUNCTION (gcd) with depth 2
_gcd:
	push	{lr}
	push	{fp}
	mov	fp, sp
#10 Starting DECLARATION: adding space on stack
	push	{r0}
#11 Ending DECLARATION
#12 Starting IF_STATEMENT'
#13 End IF_STATEMENT
#14 Starting RETURN_STATEMENT
#15 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#16 End VARIABLE g, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#17 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#18 Leaving FUNCTION (gcd) with depth 2
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
	bl	_euclid
#19 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
