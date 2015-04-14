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
#11 Starting ASSIGNMENT_STATEMENT
#12 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#13 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#14 End ASSIGNMENT_STATEMENT
_for_start1:
#15 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#16 End VARIABLE i, depth difference: 0, stack offset: -8
#17 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#18 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end1
#19 Starting ASSIGNMENT_STATEMENT
#20 Starting EXPRESSION of type -
#21 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#22 End CONSTANT
#23 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#24 End VARIABLE i, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#25 Ending EXPRESSION of type -
#26 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#27 End VARIABLE a, depth difference: 0, stack offset: -4
#28 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#29 End VARIABLE i, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#30 End ASSIGNMENT_STATEMENT
#31 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#32 End VARIABLE i, depth difference: 0, stack offset: -8
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-8]
	b	_for_start1
_for_end1:
#33 End FOR_STATEMENT
#34 Starting EXPRESSION of type FUNC_CALL
#35 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#36 End VARIABLE a, depth difference: 0, stack offset: -4
#37 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#38 End CONSTANT
#39 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#40 End CONSTANT
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#41 Ending EXPRESSION of type (null)
#42 Ending EXPRESSION of type FUNC_CALL
#43 Starting FOR_STATEMENT
#44 Starting ASSIGNMENT_STATEMENT
#45 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#46 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#47 End ASSIGNMENT_STATEMENT
_for_start2:
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#49 End VARIABLE i, depth difference: 0, stack offset: -8
#50 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#51 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end2
#52 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#53 Starting EXPRESSION of type ARRAY_INDEX
#54 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#55 End VARIABLE a, depth difference: 0, stack offset: -4
#56 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#57 End VARIABLE i, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#58 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#59 Ending PRINT_STATEMENT
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#61 End VARIABLE i, depth difference: 0, stack offset: -8
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-8]
	b	_for_start2
_for_end2:
#62 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#63 Leaving FUNCTION (main) with depth 2
#64 Starting FUNCTION (merge_sort) with depth 2
_merge_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#65 Starting IF_STATEMENT'
#66 Starting EXPRESSION of type <=
#67 Starting EXPRESSION of type -
#68 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#69 End VARIABLE end, depth difference: 0, stack offset: 8
#70 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#71 End VARIABLE start, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#72 Ending EXPRESSION of type -
#73 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#74 End CONSTANT
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movle	 r0, #1
	push	{r0}
#75 Ending EXPRESSION of type <=
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_else3
#76 Starting RETURN_STATEMENT
#77 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#78 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#79 End RETURN_STATEMENT
	b	_end3
_else3:
#80 Starting DECLARATION: adding space on stack
	push	{r0}
#81 Ending DECLARATION
#82 Starting ASSIGNMENT_STATEMENT
#83 Starting EXPRESSION of type +
#84 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#85 End VARIABLE start, depth difference: 0, stack offset: 12
#86 Starting EXPRESSION of type /
#87 Starting EXPRESSION of type -
#88 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#89 End VARIABLE end, depth difference: 0, stack offset: 8
#90 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#91 End VARIABLE start, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#92 Ending EXPRESSION of type -
#93 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#94 End CONSTANT
	pop	{r2}
	pop	{r1}
	sdiv	r0, r1, r2
	push	{r0}
#95 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#96 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#97 End ASSIGNMENT_STATEMENT
#98 Starting EXPRESSION of type FUNC_CALL
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#100 End VARIABLE a, depth difference: 0, stack offset: 16
#101 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#102 End VARIABLE start, depth difference: 0, stack offset: 12
#103 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#104 End VARIABLE middle, depth difference: 0, stack offset: -4
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#105 Ending EXPRESSION of type (null)
#106 Ending EXPRESSION of type FUNC_CALL
#107 Starting EXPRESSION of type FUNC_CALL
#108 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#109 End VARIABLE a, depth difference: 0, stack offset: 16
#110 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#111 End VARIABLE middle, depth difference: 0, stack offset: -4
#112 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#113 End VARIABLE end, depth difference: 0, stack offset: 8
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#114 Ending EXPRESSION of type (null)
#115 Ending EXPRESSION of type FUNC_CALL
#116 Starting EXPRESSION of type FUNC_CALL
#117 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#118 End VARIABLE a, depth difference: 0, stack offset: 16
#119 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#120 End VARIABLE start, depth difference: 0, stack offset: 12
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#122 End VARIABLE middle, depth difference: 0, stack offset: -4
#123 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#124 End VARIABLE end, depth difference: 0, stack offset: 8
	bl	_merge
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#125 Ending EXPRESSION of type (null)
#126 Ending EXPRESSION of type FUNC_CALL
	b	_end3
_end3:
#127 End IF_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#128 Leaving FUNCTION (merge_sort) with depth 2
#129 Starting FUNCTION (merge) with depth 2
_merge:
	push	{lr}
	push	{fp}
	mov	fp, sp
#130 Starting DECLARATION: adding space on stack
	push	{r0}
#131 Ending DECLARATION
#132 Starting ASSIGNMENT_STATEMENT
#133 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:400
	movt	r0, #:upper16:400
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#134 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#135 End ASSIGNMENT_STATEMENT
#136 Starting DECLARATION: adding space on stack
	push	{r0}
#137 Ending DECLARATION
#138 Starting DECLARATION: adding space on stack
	push	{r0}
#139 Ending DECLARATION
#140 Starting ASSIGNMENT_STATEMENT
#141 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#142 End VARIABLE start, depth difference: 0, stack offset: 16
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#143 End ASSIGNMENT_STATEMENT
#144 Starting ASSIGNMENT_STATEMENT
#145 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#146 End VARIABLE middle, depth difference: 0, stack offset: 12
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#147 End ASSIGNMENT_STATEMENT
#148 Starting DECLARATION: adding space on stack
	push	{r0}
#149 Ending DECLARATION
#150 Starting FOR_STATEMENT
#151 Starting ASSIGNMENT_STATEMENT
#152 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#153 End VARIABLE start, depth difference: 0, stack offset: 16
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#154 End ASSIGNMENT_STATEMENT
_for_start4:
#155 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#156 End VARIABLE k, depth difference: 0, stack offset: -16
#157 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#158 End VARIABLE end, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end4
#159 Starting IF_STATEMENT'
#160 Starting EXPRESSION of type >=
#161 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#162 End VARIABLE i, depth difference: 0, stack offset: -8
#163 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#164 End VARIABLE middle, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movge	 r0, #1
	push	{r0}
#165 Ending EXPRESSION of type >=
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_else5
#166 Starting ASSIGNMENT_STATEMENT
#167 Starting EXPRESSION of type ARRAY_INDEX
#168 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#169 End VARIABLE a, depth difference: 0, stack offset: 20
#170 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#171 End VARIABLE j, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#172 Ending EXPRESSION of type ARRAY_INDEX
#173 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#174 End VARIABLE temp, depth difference: 0, stack offset: -4
#175 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#176 End VARIABLE k, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#177 End ASSIGNMENT_STATEMENT
#178 Starting ASSIGNMENT_STATEMENT
#179 Starting EXPRESSION of type +
#180 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#181 End VARIABLE j, depth difference: 0, stack offset: -12
#182 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#183 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#184 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#185 End ASSIGNMENT_STATEMENT
	b	_end5
_else5:
#186 Starting IF_STATEMENT'
#187 Starting EXPRESSION of type >=
#188 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#189 End VARIABLE j, depth difference: 0, stack offset: -12
#190 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#191 End VARIABLE end, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movge	 r0, #1
	push	{r0}
#192 Ending EXPRESSION of type >=
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_else6
#193 Starting ASSIGNMENT_STATEMENT
#194 Starting EXPRESSION of type ARRAY_INDEX
#195 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#196 End VARIABLE a, depth difference: 0, stack offset: 20
#197 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#198 End VARIABLE i, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#199 Ending EXPRESSION of type ARRAY_INDEX
#200 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#201 End VARIABLE temp, depth difference: 0, stack offset: -4
#202 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#203 End VARIABLE k, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#204 End ASSIGNMENT_STATEMENT
#205 Starting ASSIGNMENT_STATEMENT
#206 Starting EXPRESSION of type +
#207 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#208 End VARIABLE i, depth difference: 0, stack offset: -8
#209 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#210 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#211 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#212 End ASSIGNMENT_STATEMENT
	b	_end6
_else6:
#213 Starting IF_STATEMENT'
#214 Starting EXPRESSION of type <
#215 Starting EXPRESSION of type ARRAY_INDEX
#216 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#217 End VARIABLE a, depth difference: 0, stack offset: 20
#218 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#219 End VARIABLE j, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#220 Ending EXPRESSION of type ARRAY_INDEX
#221 Starting EXPRESSION of type ARRAY_INDEX
#222 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#223 End VARIABLE a, depth difference: 0, stack offset: 20
#224 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#225 End VARIABLE i, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#226 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r2}
	pop	{r1}
	mov	r0, #0
	cmp	r1,r2
	movlt	 r0, #1
	push	{r0}
#227 Ending EXPRESSION of type <
	mov	r2, #0
	pop	{r1}
	cmp	r1,r2
	beq	_else7
#228 Starting ASSIGNMENT_STATEMENT
#229 Starting EXPRESSION of type ARRAY_INDEX
#230 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#231 End VARIABLE a, depth difference: 0, stack offset: 20
#232 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#233 End VARIABLE j, depth difference: 0, stack offset: -12
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#234 Ending EXPRESSION of type ARRAY_INDEX
#235 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#236 End VARIABLE temp, depth difference: 0, stack offset: -4
#237 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#238 End VARIABLE k, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#239 End ASSIGNMENT_STATEMENT
#240 Starting ASSIGNMENT_STATEMENT
#241 Starting EXPRESSION of type +
#242 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#243 End VARIABLE j, depth difference: 0, stack offset: -12
#244 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#245 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#246 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#247 End ASSIGNMENT_STATEMENT
	b	_end7
_else7:
#248 Starting ASSIGNMENT_STATEMENT
#249 Starting EXPRESSION of type ARRAY_INDEX
#250 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#251 End VARIABLE a, depth difference: 0, stack offset: 20
#252 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#253 End VARIABLE i, depth difference: 0, stack offset: -8
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#254 Ending EXPRESSION of type ARRAY_INDEX
#255 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#256 End VARIABLE temp, depth difference: 0, stack offset: -4
#257 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#258 End VARIABLE k, depth difference: 0, stack offset: -16
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#259 End ASSIGNMENT_STATEMENT
#260 Starting ASSIGNMENT_STATEMENT
#261 Starting EXPRESSION of type +
#262 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#263 End VARIABLE i, depth difference: 0, stack offset: -8
#264 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#265 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#266 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#267 End ASSIGNMENT_STATEMENT
	b	_end7
_end7:
#268 End IF_STATEMENT
	b	_end6
_end6:
#269 End IF_STATEMENT
	b	_end5
_end5:
#270 End IF_STATEMENT
#271 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#272 End VARIABLE k, depth difference: 0, stack offset: -16
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-16]
	b	_for_start4
_for_end4:
#273 End FOR_STATEMENT
#274 Starting DECLARATION: adding space on stack
	push	{r0}
#275 Ending DECLARATION
#276 Starting FOR_STATEMENT
#277 Starting ASSIGNMENT_STATEMENT
#278 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#279 End VARIABLE start, depth difference: 0, stack offset: 16
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#280 End ASSIGNMENT_STATEMENT
_for_start8:
#281 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#282 End VARIABLE n, depth difference: 0, stack offset: -20
#283 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#284 End VARIABLE end, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	beq	_for_end8
#285 Starting ASSIGNMENT_STATEMENT
#286 Starting EXPRESSION of type ARRAY_INDEX
#287 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#288 End VARIABLE temp, depth difference: 0, stack offset: -4
#289 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#290 End VARIABLE n, depth difference: 0, stack offset: -20
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#291 Ending EXPRESSION of type ARRAY_INDEX
#292 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#293 End VARIABLE a, depth difference: 0, stack offset: 20
#294 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#295 End VARIABLE n, depth difference: 0, stack offset: -20
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#296 End ASSIGNMENT_STATEMENT
#297 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#298 End VARIABLE n, depth difference: 0, stack offset: -20
	mov	r2, #1
	pop	{r1}
	add	r0, r1, r2
	str	r0, [fp, #-20]
	b	_for_start8
_for_end8:
#299 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#300 Leaving FUNCTION (merge) with depth 2
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
#301 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
