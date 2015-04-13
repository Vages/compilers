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
#8 Starting DECLARATION: adding space on stack
	push	{r0}
#9 Ending DECLARATION
#10 Starting DECLARATION: adding space on stack
	push	{r0}
#11 Ending DECLARATION
#12 Starting DECLARATION: adding space on stack
	push	{r0}
#13 Ending DECLARATION
#14 Starting DECLARATION: adding space on stack
	push	{r0}
#15 Ending DECLARATION
#16 Starting DECLARATION: adding space on stack
	push	{r0}
#17 Ending DECLARATION
#18 Starting DECLARATION: adding space on stack
	push	{r0}
#19 Ending DECLARATION
#20 Starting DECLARATION: adding space on stack
	push	{r0}
#21 Ending DECLARATION
#22 Starting DECLARATION: adding space on stack
	push	{r0}
#23 Ending DECLARATION
#24 Starting DECLARATION: adding space on stack
	push	{r0}
#25 Ending DECLARATION
#26 Starting ASSIGNMENT_STATEMENT
#27 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#28 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#29 End ASSIGNMENT_STATEMENT
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting EXPRESSION of type UMINUS
#32 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#33 End CONSTANT
	pop	{r1}
	neg	r0, r1
	push	{r0}
#34 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#35 End ASSIGNMENT_STATEMENT
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#38 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#42 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#43 End ASSIGNMENT_STATEMENT
#44 Starting ASSIGNMENT_STATEMENT
#45 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#46 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#47 End ASSIGNMENT_STATEMENT
#48 Starting ASSIGNMENT_STATEMENT
#49 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#50 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#51 End ASSIGNMENT_STATEMENT
#52 Starting ASSIGNMENT_STATEMENT
#53 Starting EXPRESSION of type +
#54 Starting EXPRESSION of type *
#55 Starting EXPRESSION of type UMINUS
#56 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#57 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	neg	r0, r1
	push	{r0}
#58 Ending EXPRESSION of type UMINUS
#59 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#60 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#61 Ending EXPRESSION of type *
#62 Starting EXPRESSION of type *
#63 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#64 End VARIABLE c, depth difference: 0, stack offset: -12
#65 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#66 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#67 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#68 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-28]
	mov	fp, r1
#69 End ASSIGNMENT_STATEMENT
#70 Starting ASSIGNMENT_STATEMENT
#71 Starting EXPRESSION of type +
#72 Starting EXPRESSION of type *
#73 Starting EXPRESSION of type UMINUS
#74 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#75 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	neg	r0, r1
	push	{r0}
#76 Ending EXPRESSION of type UMINUS
#77 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#78 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#79 Ending EXPRESSION of type *
#80 Starting EXPRESSION of type *
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#82 End VARIABLE a, depth difference: 0, stack offset: -4
#83 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#84 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#85 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#86 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-32]
	mov	fp, r1
#87 End ASSIGNMENT_STATEMENT
#88 Starting ASSIGNMENT_STATEMENT
#89 Starting EXPRESSION of type +
#90 Starting EXPRESSION of type *
#91 Starting EXPRESSION of type UMINUS
#92 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#93 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	neg	r0, r1
	push	{r0}
#94 Ending EXPRESSION of type UMINUS
#95 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#96 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#97 Ending EXPRESSION of type *
#98 Starting EXPRESSION of type *
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#100 End VARIABLE b, depth difference: 0, stack offset: -8
#101 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#102 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#103 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#104 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-36]
	mov	fp, r1
#105 End ASSIGNMENT_STATEMENT
#106 Starting ASSIGNMENT_STATEMENT
#107 Starting EXPRESSION of type ||
#108 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-40]
	mov	fp, r1
#109 End ASSIGNMENT_STATEMENT
#110 Starting ASSIGNMENT_STATEMENT
#111 Starting EXPRESSION of type ||
#112 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-44]
	mov	fp, r1
#113 End ASSIGNMENT_STATEMENT
#114 Starting ASSIGNMENT_STATEMENT
#115 Starting EXPRESSION of type ||
#116 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-48]
	mov	fp, r1
#117 End ASSIGNMENT_STATEMENT
#118 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#119 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-28]
	pop	{fp}
	push	{r0}
#120 End VARIABLE g, depth difference: 0, stack offset: -28
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-32]
	pop	{fp}
	push	{r0}
#122 End VARIABLE h, depth difference: 0, stack offset: -32
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#123 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-36]
	pop	{fp}
	push	{r0}
#124 End VARIABLE i, depth difference: 0, stack offset: -36
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#125 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-40]
	pop	{fp}
	push	{r0}
#126 End VARIABLE j, depth difference: 0, stack offset: -40
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#127 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-44]
	pop	{fp}
	push	{r0}
#128 End VARIABLE k, depth difference: 0, stack offset: -44
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#129 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-48]
	pop	{fp}
	push	{r0}
#130 End VARIABLE l, depth difference: 0, stack offset: -48
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#131 Ending PRINT_STATEMENT
#132 Starting ASSIGNMENT_STATEMENT
#133 Starting EXPRESSION of type +
#134 Starting EXPRESSION of type -
#135 Starting EXPRESSION of type +
#136 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#137 End VARIABLE a, depth difference: 0, stack offset: -4
#138 Starting EXPRESSION of type /
#139 Starting EXPRESSION of type /
#140 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#141 End VARIABLE b, depth difference: 0, stack offset: -8
#142 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#143 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#144 Ending EXPRESSION of type /
#145 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#146 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#147 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#148 Ending EXPRESSION of type +
#149 Starting EXPRESSION of type UMINUS
#150 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#151 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	neg	r0, r1
	push	{r0}
#152 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#153 Ending EXPRESSION of type -
#154 Starting EXPRESSION of type *
#155 Starting EXPRESSION of type *
#156 Starting EXPRESSION of type *
#157 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#158 End CONSTANT
#159 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#160 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#161 Ending EXPRESSION of type *
#162 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#163 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#164 Ending EXPRESSION of type *
#165 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#166 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#167 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#168 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-28]
	mov	fp, r1
#169 End ASSIGNMENT_STATEMENT
#170 Starting ASSIGNMENT_STATEMENT
#171 Starting EXPRESSION of type *
#172 Starting EXPRESSION of type +
#173 Starting EXPRESSION of type -
#174 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#175 End VARIABLE a, depth difference: 0, stack offset: -4
#176 Starting EXPRESSION of type UMINUS
#177 Starting EXPRESSION of type UMINUS
#178 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#179 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	neg	r0, r1
	push	{r0}
#180 Ending EXPRESSION of type UMINUS
	pop	{r1}
	neg	r0, r1
	push	{r0}
#181 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#182 Ending EXPRESSION of type -
#183 Starting EXPRESSION of type UMINUS
#184 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#185 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	neg	r0, r1
	push	{r0}
#186 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#187 Ending EXPRESSION of type +
#188 Starting EXPRESSION of type +
#189 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#190 End VARIABLE c, depth difference: 0, stack offset: -12
#191 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#192 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#193 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#194 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-32]
	mov	fp, r1
#195 End ASSIGNMENT_STATEMENT
#196 Starting ASSIGNMENT_STATEMENT
#197 Starting EXPRESSION of type /
#198 Starting EXPRESSION of type -
#199 Starting EXPRESSION of type /
#200 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#201 End VARIABLE a, depth difference: 0, stack offset: -4
#202 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#203 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#204 Ending EXPRESSION of type /
#205 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#206 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#207 Ending EXPRESSION of type -
#208 Starting EXPRESSION of type /
#209 Starting EXPRESSION of type -
#210 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#211 End VARIABLE a, depth difference: 0, stack offset: -4
#212 Starting EXPRESSION of type /
#213 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#214 End VARIABLE c, depth difference: 0, stack offset: -12
#215 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#216 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#217 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#218 Ending EXPRESSION of type -
#219 Starting EXPRESSION of type +
#220 Starting EXPRESSION of type -
#221 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#222 End VARIABLE a, depth difference: 0, stack offset: -4
#223 Starting EXPRESSION of type UMINUS
#224 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#225 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	neg	r0, r1
	push	{r0}
#226 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#227 Ending EXPRESSION of type -
#228 Starting CONSTANT
	movw	r0, #:lower16:43
	movt	r0, #:upper16:43
	push	{r0}
#229 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#230 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#231 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#232 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-36]
	mov	fp, r1
#233 End ASSIGNMENT_STATEMENT
#234 Starting ASSIGNMENT_STATEMENT
#235 Starting EXPRESSION of type ||
#236 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-40]
	mov	fp, r1
#237 End ASSIGNMENT_STATEMENT
#238 Starting ASSIGNMENT_STATEMENT
#239 Starting EXPRESSION of type ||
#240 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-44]
	mov	fp, r1
#241 End ASSIGNMENT_STATEMENT
#242 Starting ASSIGNMENT_STATEMENT
#243 Starting EXPRESSION of type ||
#244 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-48]
	mov	fp, r1
#245 End ASSIGNMENT_STATEMENT
#246 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#247 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-28]
	pop	{fp}
	push	{r0}
#248 End VARIABLE g, depth difference: 0, stack offset: -28
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#249 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-32]
	pop	{fp}
	push	{r0}
#250 End VARIABLE h, depth difference: 0, stack offset: -32
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#251 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-36]
	pop	{fp}
	push	{r0}
#252 End VARIABLE i, depth difference: 0, stack offset: -36
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#253 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-40]
	pop	{fp}
	push	{r0}
#254 End VARIABLE j, depth difference: 0, stack offset: -40
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#255 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-44]
	pop	{fp}
	push	{r0}
#256 End VARIABLE k, depth difference: 0, stack offset: -44
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#257 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-48]
	pop	{fp}
	push	{r0}
#258 End VARIABLE l, depth difference: 0, stack offset: -48
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#259 Ending PRINT_STATEMENT
#260 Starting ASSIGNMENT_STATEMENT
#261 Starting EXPRESSION of type +
#262 Starting EXPRESSION of type *
#263 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#264 End VARIABLE a, depth difference: 0, stack offset: -4
#265 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#266 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#267 Ending EXPRESSION of type *
#268 Starting EXPRESSION of type *
#269 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#270 End VARIABLE c, depth difference: 0, stack offset: -12
#271 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#272 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#273 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#274 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-28]
	mov	fp, r1
#275 End ASSIGNMENT_STATEMENT
#276 Starting ASSIGNMENT_STATEMENT
#277 Starting EXPRESSION of type *
#278 Starting EXPRESSION of type *
#279 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#280 End VARIABLE a, depth difference: 0, stack offset: -4
#281 Starting EXPRESSION of type +
#282 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#283 End VARIABLE b, depth difference: 0, stack offset: -8
#284 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#285 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#286 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#287 Ending EXPRESSION of type *
#288 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#289 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r0,r1,r2
	push	{r0}
#290 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-32]
	mov	fp, r1
#291 End ASSIGNMENT_STATEMENT
#292 Starting ASSIGNMENT_STATEMENT
#293 Starting EXPRESSION of type /
#294 Starting EXPRESSION of type /
#295 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#296 End VARIABLE a, depth difference: 0, stack offset: -4
#297 Starting EXPRESSION of type -
#298 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#299 End VARIABLE b, depth difference: 0, stack offset: -8
#300 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#301 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r0, r1, r2
	push	{r0}
#302 Ending EXPRESSION of type -
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#303 Ending EXPRESSION of type /
#304 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#305 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r0, r1, r2
	push	{r0}
#306 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-36]
	mov	fp, r1
#307 End ASSIGNMENT_STATEMENT
#308 Starting ASSIGNMENT_STATEMENT
#309 Starting EXPRESSION of type ||
#310 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-40]
	mov	fp, r1
#311 End ASSIGNMENT_STATEMENT
#312 Starting ASSIGNMENT_STATEMENT
#313 Starting EXPRESSION of type ||
#314 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-44]
	mov	fp, r1
#315 End ASSIGNMENT_STATEMENT
#316 Starting ASSIGNMENT_STATEMENT
#317 Starting EXPRESSION of type ||
#318 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-48]
	mov	fp, r1
#319 End ASSIGNMENT_STATEMENT
#320 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#321 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-28]
	pop	{fp}
	push	{r0}
#322 End VARIABLE g, depth difference: 0, stack offset: -28
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#323 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-32]
	pop	{fp}
	push	{r0}
#324 End VARIABLE h, depth difference: 0, stack offset: -32
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#325 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-36]
	pop	{fp}
	push	{r0}
#326 End VARIABLE i, depth difference: 0, stack offset: -36
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#327 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-40]
	pop	{fp}
	push	{r0}
#328 End VARIABLE j, depth difference: 0, stack offset: -40
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#329 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-44]
	pop	{fp}
	push	{r0}
#330 End VARIABLE k, depth difference: 0, stack offset: -44
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#331 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-48]
	pop	{fp}
	push	{r0}
#332 End VARIABLE l, depth difference: 0, stack offset: -48
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#333 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#334 Leaving FUNCTION (main) with depth 2
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
#335 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
