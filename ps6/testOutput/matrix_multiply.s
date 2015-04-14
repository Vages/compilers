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
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
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
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
	push	{r0}
#12 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#13 End ASSIGNMENT_STATEMENT
#14 Starting DECLARATION: adding space on stack
	push	{r0}
#15 Ending DECLARATION
#16 Starting DECLARATION: adding space on stack
	push	{r0}
#17 Ending DECLARATION
#18 Starting FOR_STATEMENT
#19 Starting ASSIGNMENT_STATEMENT
#20 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#21 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#22 End ASSIGNMENT_STATEMENT
_for_start1:
#23 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#24 End VARIABLE i, depth difference: 0, stack offset: -12
#25 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#26 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end1
#27 Starting FOR_STATEMENT
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#30 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#31 End ASSIGNMENT_STATEMENT
_for_start2:
#32 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#33 End VARIABLE j, depth difference: 0, stack offset: -16
#34 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#35 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end2
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting EXPRESSION of type +
#38 Starting EXPRESSION of type *
#39 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#40 End VARIABLE i, depth difference: 0, stack offset: -12
#41 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#42 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#43 Ending EXPRESSION of type *
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#45 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#46 Ending EXPRESSION of type +
#47 Starting EXPRESSION of type ARRAY_INDEX
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#49 End VARIABLE a, depth difference: 0, stack offset: -4
#50 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#51 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#52 Ending EXPRESSION of type ARRAY_INDEX
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#54 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#55 End ASSIGNMENT_STATEMENT
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting EXPRESSION of type -
#58 Starting CONSTANT
	movw	r0, #:lower16:8
	movt	r0, #:upper16:8
	push	{r0}
#59 End CONSTANT
#60 Starting EXPRESSION of type +
#61 Starting EXPRESSION of type *
#62 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#63 End VARIABLE i, depth difference: 0, stack offset: -12
#64 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#65 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#66 Ending EXPRESSION of type *
#67 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#68 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#69 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#70 Ending EXPRESSION of type -
#71 Starting EXPRESSION of type ARRAY_INDEX
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#73 End VARIABLE b, depth difference: 0, stack offset: -8
#74 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#75 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#76 Ending EXPRESSION of type ARRAY_INDEX
#77 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#78 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#79 End ASSIGNMENT_STATEMENT
#80 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#81 End VARIABLE j, depth difference: 0, stack offset: -16
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-16]
	b	_for_start2
_for_end2:
#82 End FOR_STATEMENT
#83 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#84 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	b	_for_start1
_for_end1:
#85 End FOR_STATEMENT
#86 Starting DECLARATION: adding space on stack
	push	{r0}
#87 Ending DECLARATION
#88 Starting ASSIGNMENT_STATEMENT
#89 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
	push	{r0}
#90 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#91 End ASSIGNMENT_STATEMENT
#92 Starting DECLARATION: adding space on stack
	push	{r0}
#93 Ending DECLARATION
#94 Starting FOR_STATEMENT
#95 Starting ASSIGNMENT_STATEMENT
#96 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#97 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#98 End ASSIGNMENT_STATEMENT
_for_start3:
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#100 End VARIABLE i, depth difference: 0, stack offset: -12
#101 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#102 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end3
#103 Starting FOR_STATEMENT
#104 Starting ASSIGNMENT_STATEMENT
#105 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#106 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#107 End ASSIGNMENT_STATEMENT
_for_start4:
#108 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#109 End VARIABLE j, depth difference: 0, stack offset: -16
#110 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#111 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end4
#112 Starting ASSIGNMENT_STATEMENT
#113 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#114 End CONSTANT
#115 Starting EXPRESSION of type ARRAY_INDEX
#116 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#117 End VARIABLE c, depth difference: 0, stack offset: -20
#118 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#119 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#120 Ending EXPRESSION of type ARRAY_INDEX
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#122 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#123 End ASSIGNMENT_STATEMENT
#124 Starting FOR_STATEMENT
#125 Starting ASSIGNMENT_STATEMENT
#126 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#127 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#128 End ASSIGNMENT_STATEMENT
_for_start5:
#129 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#130 End VARIABLE k, depth difference: 0, stack offset: -24
#131 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#132 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end5
#133 Starting ASSIGNMENT_STATEMENT
#134 Starting EXPRESSION of type +
#135 Starting EXPRESSION of type ARRAY_INDEX
#136 Starting EXPRESSION of type ARRAY_INDEX
#137 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#138 End VARIABLE c, depth difference: 0, stack offset: -20
#139 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#140 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#141 Ending EXPRESSION of type ARRAY_INDEX
#142 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#143 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#144 Ending EXPRESSION of type ARRAY_INDEX
#145 Starting EXPRESSION of type *
#146 Starting EXPRESSION of type ARRAY_INDEX
#147 Starting EXPRESSION of type ARRAY_INDEX
#148 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#149 End VARIABLE a, depth difference: 0, stack offset: -4
#150 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#151 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#152 Ending EXPRESSION of type ARRAY_INDEX
#153 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#154 End VARIABLE k, depth difference: 0, stack offset: -24
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#155 Ending EXPRESSION of type ARRAY_INDEX
#156 Starting EXPRESSION of type ARRAY_INDEX
#157 Starting EXPRESSION of type ARRAY_INDEX
#158 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#159 End VARIABLE b, depth difference: 0, stack offset: -8
#160 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#161 End VARIABLE k, depth difference: 0, stack offset: -24
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#162 Ending EXPRESSION of type ARRAY_INDEX
#163 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#164 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#165 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#166 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#167 Ending EXPRESSION of type +
#168 Starting EXPRESSION of type ARRAY_INDEX
#169 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#170 End VARIABLE c, depth difference: 0, stack offset: -20
#171 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#172 End VARIABLE i, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#173 Ending EXPRESSION of type ARRAY_INDEX
#174 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#175 End VARIABLE j, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#176 End ASSIGNMENT_STATEMENT
#177 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#178 End VARIABLE k, depth difference: 0, stack offset: -24
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-24]
	b	_for_start5
_for_end5:
#179 End FOR_STATEMENT
#180 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#181 End VARIABLE j, depth difference: 0, stack offset: -16
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-16]
	b	_for_start4
_for_end4:
#182 End FOR_STATEMENT
#183 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#184 End VARIABLE i, depth difference: 0, stack offset: -12
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-12]
	b	_for_start3
_for_end3:
#185 End FOR_STATEMENT
#186 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#187 Starting EXPRESSION of type ARRAY_INDEX
#188 Starting EXPRESSION of type ARRAY_INDEX
#189 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#190 End VARIABLE c, depth difference: 0, stack offset: -20
#191 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#192 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#193 Ending EXPRESSION of type ARRAY_INDEX
#194 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#195 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#196 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#197 Starting EXPRESSION of type ARRAY_INDEX
#198 Starting EXPRESSION of type ARRAY_INDEX
#199 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#200 End VARIABLE c, depth difference: 0, stack offset: -20
#201 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#202 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#203 Ending EXPRESSION of type ARRAY_INDEX
#204 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#205 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#206 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#207 Starting EXPRESSION of type ARRAY_INDEX
#208 Starting EXPRESSION of type ARRAY_INDEX
#209 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#210 End VARIABLE c, depth difference: 0, stack offset: -20
#211 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#212 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#213 Ending EXPRESSION of type ARRAY_INDEX
#214 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#215 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#216 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#217 Ending PRINT_STATEMENT
#218 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#219 Starting EXPRESSION of type ARRAY_INDEX
#220 Starting EXPRESSION of type ARRAY_INDEX
#221 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#222 End VARIABLE c, depth difference: 0, stack offset: -20
#223 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#224 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#225 Ending EXPRESSION of type ARRAY_INDEX
#226 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#227 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#228 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#229 Starting EXPRESSION of type ARRAY_INDEX
#230 Starting EXPRESSION of type ARRAY_INDEX
#231 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#232 End VARIABLE c, depth difference: 0, stack offset: -20
#233 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#234 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#235 Ending EXPRESSION of type ARRAY_INDEX
#236 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#237 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#238 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#239 Starting EXPRESSION of type ARRAY_INDEX
#240 Starting EXPRESSION of type ARRAY_INDEX
#241 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#242 End VARIABLE c, depth difference: 0, stack offset: -20
#243 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#244 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#245 Ending EXPRESSION of type ARRAY_INDEX
#246 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#247 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#248 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#249 Ending PRINT_STATEMENT
#250 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#251 Starting EXPRESSION of type ARRAY_INDEX
#252 Starting EXPRESSION of type ARRAY_INDEX
#253 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#254 End VARIABLE c, depth difference: 0, stack offset: -20
#255 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#256 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#257 Ending EXPRESSION of type ARRAY_INDEX
#258 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#259 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#260 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#261 Starting EXPRESSION of type ARRAY_INDEX
#262 Starting EXPRESSION of type ARRAY_INDEX
#263 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#264 End VARIABLE c, depth difference: 0, stack offset: -20
#265 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#266 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#267 Ending EXPRESSION of type ARRAY_INDEX
#268 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#269 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#270 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#271 Starting EXPRESSION of type ARRAY_INDEX
#272 Starting EXPRESSION of type ARRAY_INDEX
#273 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#274 End VARIABLE c, depth difference: 0, stack offset: -20
#275 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#276 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#277 Ending EXPRESSION of type ARRAY_INDEX
#278 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#279 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#280 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#281 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#282 Leaving FUNCTION (main) with depth 2
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
#283 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
