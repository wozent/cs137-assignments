	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.quad	4602678819172646912     ## double 5.000000e-01
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	callq	_polyCreate
	movl	$0, %esi
	movabsq	$4, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movq	%rax, %rdi
	callq	_polySetCoefficient
	movl	$1, %esi
	movabsq	$-1, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movq	%rax, %rdi
	callq	_polySetCoefficient
	movl	$10, %esi
	movabsq	$2, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movq	%rax, %rdi
	callq	_polySetCoefficient
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_polyCopy
	movl	$10, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_polyGetCoefficient
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movl	$100, %esi
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	callq	_polyGetCoefficient
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	-16(%rbp), %rdi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	callq	_polyDegree
	leaq	L_.str1(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_polyPrint
	movq	-24(%rbp), %rdi
	callq	_polyPrint
	movl	$2, %esi
	movsd	LCPI0_0(%rip), %xmm0
	movq	-24(%rbp), %rdi
	callq	_polySetCoefficient
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_polyPrint
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_polyAdd
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_polyPrint
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_polyMultiply
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	_polyPrint
	movq	-16(%rbp), %rdi
	callq	_polyPrime
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_polyPrint
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	callq	_polyEval
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movabsq	$1, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movq	-16(%rbp), %rdi
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	_polyEval
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movabsq	$2, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movq	-16(%rbp), %rdi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	callq	_polyEval
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	callq	_polyDelete
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	_polyDelete
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	_polyDelete
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	_polyDelete
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	_polyDelete
	movq	%rax, -48(%rbp)
	callq	_getchar
	movl	$0, %edx
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	addq	$96, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polySetCoefficient
	.align	4, 0x90
_polySetCoefficient:                    ## @polySetCoefficient
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB1_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB1_19
LBB1_2:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	setg	%cl
	xorb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB1_4
## BB#3:
	leaq	L___func__.polySetCoefficient(%rip), %rdi
	leaq	L_.str2(%rip), %rsi
	movl	$104, %edx
	leaq	L_.str3(%rip), %rcx
	callq	___assert_rtn
LBB1_4:
## BB#5:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	LBB1_7
## BB#6:
	movsd	-32(%rbp), %xmm0
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	LBB1_12
LBB1_7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
LBB1_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB1_11
## BB#9:                                ##   in Loop: Header=BB1_8 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
## BB#10:                               ##   in Loop: Header=BB1_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_8
LBB1_11:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movsd	-32(%rbp), %xmm0
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
LBB1_12:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
LBB1_13:                                ## =>This Inner Loop Header: Depth=1
	movb	$0, %al
	xorps	%xmm0, %xmm0
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -41(%rbp)          ## 1-byte Spill
	jne	LBB1_15
	jp	LBB1_15
## BB#14:                               ##   in Loop: Header=BB1_13 Depth=1
	cmpl	$0, -40(%rbp)
	setg	%al
	movb	%al, -41(%rbp)          ## 1-byte Spill
LBB1_15:                                ##   in Loop: Header=BB1_13 Depth=1
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_16
	jmp	LBB1_18
LBB1_16:                                ##   in Loop: Header=BB1_13 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movl	%ecx, 8(%rax)
## BB#17:                               ##   in Loop: Header=BB1_13 Depth=1
	movl	-40(%rbp), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -40(%rbp)
	jmp	LBB1_13
LBB1_18:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB1_19:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyCopy
	.align	4, 0x90
_polyCopy:                              ## @polyCopy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB2_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB2_7
LBB2_2:
	movabsq	$16, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movslq	8(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	$0, -28(%rbp)
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB2_6
## BB#4:                                ##   in Loop: Header=BB2_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
## BB#5:                                ##   in Loop: Header=BB2_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB2_3
LBB2_6:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB2_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyGetCoefficient
	.align	4, 0x90
_polyGetCoefficient:                    ## @polyGetCoefficient
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB3_2
## BB#1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	LBB3_5
LBB3_2:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	LBB3_4
## BB#3:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	LBB3_5
LBB3_4:
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -8(%rbp)
LBB3_5:
	movsd	-8(%rbp), %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyDegree
	.align	4, 0x90
_polyDegree:                            ## @polyDegree
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB4_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB4_3
LBB4_2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
LBB4_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyPrint
	.align	4, 0x90
_polyPrint:                             ## @polyPrint
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB5_2
## BB#1:
	leaq	L_.str4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB5_75
LBB5_2:
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	LBB5_4
## BB#3:
	leaq	L_.str5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	jmp	LBB5_75
LBB5_4:
	movl	$1, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -16(%rbp)
LBB5_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	jle	LBB5_10
## BB#6:                                ##   in Loop: Header=BB5_5 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_7
	jp	LBB5_7
	jmp	LBB5_8
LBB5_7:                                 ##   in Loop: Header=BB5_5 Depth=1
	movl	$0, -12(%rbp)
LBB5_8:                                 ##   in Loop: Header=BB5_5 Depth=1
## BB#9:                                ##   in Loop: Header=BB5_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -16(%rbp)
	jmp	LBB5_5
LBB5_10:
	cmpl	$0, -12(%rbp)
	je	LBB5_12
## BB#11:
	leaq	L_.str(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB5_74
LBB5_12:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
LBB5_13:                                ## =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	setne	%dl
	setp	%sil
	orb	%dl, %sil
	xorb	$1, %sil
	testb	$1, %sil
	jne	LBB5_14
	jmp	LBB5_15
LBB5_14:                                ##   in Loop: Header=BB5_13 Depth=1
	movl	-20(%rbp), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -20(%rbp)
	jmp	LBB5_13
LBB5_15:
	xorps	%xmm0, %xmm0
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	ucomisd	(%rcx,%rax,8), %xmm0
	jbe	LBB5_17
## BB#16:
	leaq	L_.str6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -44(%rbp)         ## 4-byte Spill
LBB5_17:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
LBB5_18:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$1, -24(%rbp)
	jle	LBB5_43
## BB#19:                               ##   in Loop: Header=BB5_18 Depth=1
	movabsq	$1, %rax
	cvtsi2sdq	%rax, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_20
	jp	LBB5_20
	jmp	LBB5_21
LBB5_20:                                ##   in Loop: Header=BB5_18 Depth=1
	movabsq	$-1, %rax
	cvtsi2sdq	%rax, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_22
	jp	LBB5_22
LBB5_21:                                ##   in Loop: Header=BB5_18 Depth=1
	leaq	L_.str7(%rip), %rdi
	movl	-24(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	jmp	LBB5_33
LBB5_22:                                ##   in Loop: Header=BB5_18 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB5_25
## BB#23:                               ##   in Loop: Header=BB5_18 Depth=1
	movabsq	$1, %rax
	cvtsi2sdq	%rax, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_24
	jp	LBB5_24
	jmp	LBB5_25
LBB5_24:                                ##   in Loop: Header=BB5_18 Depth=1
	leaq	L_.str8(%rip), %rdi
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0
	movl	-24(%rbp), %esi
	movb	$1, %al
	callq	_printf
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	jmp	LBB5_32
LBB5_25:                                ##   in Loop: Header=BB5_18 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	ucomisd	(%rcx,%rax,8), %xmm0
	jbe	LBB5_28
## BB#26:                               ##   in Loop: Header=BB5_18 Depth=1
	movabsq	$-1, %rax
	cvtsi2sdq	%rax, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_27
	jp	LBB5_27
	jmp	LBB5_28
LBB5_27:                                ##   in Loop: Header=BB5_18 Depth=1
	leaq	L_.str8(%rip), %rdi
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movl	-24(%rbp), %esi
	movb	$1, %al
	callq	_printf
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	jmp	LBB5_31
LBB5_28:                                ##   in Loop: Header=BB5_18 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_30
	jp	LBB5_30
## BB#29:                               ##   in Loop: Header=BB5_18 Depth=1
LBB5_30:                                ##   in Loop: Header=BB5_18 Depth=1
LBB5_31:                                ##   in Loop: Header=BB5_18 Depth=1
LBB5_32:                                ##   in Loop: Header=BB5_18 Depth=1
LBB5_33:                                ##   in Loop: Header=BB5_18 Depth=1
	xorps	%xmm0, %xmm0
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB5_35
## BB#34:                               ##   in Loop: Header=BB5_18 Depth=1
	leaq	L_.str9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	jmp	LBB5_41
LBB5_35:                                ##   in Loop: Header=BB5_18 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	ucomisd	(%rcx,%rax,8), %xmm0
	jbe	LBB5_37
## BB#36:                               ##   in Loop: Header=BB5_18 Depth=1
	leaq	L_.str10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	jmp	LBB5_40
LBB5_37:                                ##   in Loop: Header=BB5_18 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_39
	jp	LBB5_39
## BB#38:                               ##   in Loop: Header=BB5_18 Depth=1
LBB5_39:                                ##   in Loop: Header=BB5_18 Depth=1
LBB5_40:                                ##   in Loop: Header=BB5_18 Depth=1
LBB5_41:                                ##   in Loop: Header=BB5_18 Depth=1
## BB#42:                               ##   in Loop: Header=BB5_18 Depth=1
	movl	-24(%rbp), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -24(%rbp)
	jmp	LBB5_18
LBB5_43:
	movabsq	$1, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_44
	jp	LBB5_44
	jmp	LBB5_45
LBB5_44:
	movabsq	$-1, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_46
	jp	LBB5_46
LBB5_45:
	leaq	L_.str11(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB5_57
LBB5_46:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB5_49
## BB#47:
	movabsq	$1, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_48
	jp	LBB5_48
	jmp	LBB5_49
LBB5_48:
	leaq	L_.str12(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	jmp	LBB5_56
LBB5_49:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	ucomisd	8(%rax), %xmm0
	jbe	LBB5_52
## BB#50:
	movabsq	$-1, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_51
	jp	LBB5_51
	jmp	LBB5_52
LBB5_51:
	leaq	L_.str12(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	jmp	LBB5_55
LBB5_52:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_54
	jp	LBB5_54
## BB#53:
LBB5_54:
LBB5_55:
LBB5_56:
LBB5_57:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB5_59
## BB#58:
	leaq	L_.str9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	jmp	LBB5_65
LBB5_59:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	ucomisd	(%rax), %xmm0
	jbe	LBB5_61
## BB#60:
	leaq	L_.str10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	jmp	LBB5_64
LBB5_61:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_63
	jp	LBB5_63
## BB#62:
LBB5_63:
LBB5_64:
LBB5_65:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB5_67
## BB#66:
	leaq	L_.str(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	jmp	LBB5_73
LBB5_67:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	ucomisd	(%rax), %xmm0
	jbe	LBB5_69
## BB#68:
	leaq	L_.str(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	jmp	LBB5_72
LBB5_69:
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB5_71
	jp	LBB5_71
## BB#70:
	leaq	L_.str13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -96(%rbp)         ## 4-byte Spill
LBB5_71:
LBB5_72:
LBB5_73:
LBB5_74:
LBB5_75:
	addq	$96, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyAdd
	.align	4, 0x90
_polyAdd:                               ## @polyAdd
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	jne	LBB6_2
## BB#1:
	movq	-24(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB6_3
LBB6_2:
	movq	$0, -8(%rbp)
	jmp	LBB6_19
LBB6_3:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	LBB6_5
## BB#4:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB6_19
LBB6_5:
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	LBB6_7
## BB#6:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB6_19
LBB6_7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jl	LBB6_9
## BB#8:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB6_10
LBB6_9:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB6_10:
	movabsq	$16, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movslq	8(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
LBB6_11:                                ## =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movslq	8(%rdx), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	LBB6_14
## BB#12:                               ##   in Loop: Header=BB6_11 Depth=1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-64(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
## BB#13:                               ##   in Loop: Header=BB6_11 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	jmp	LBB6_11
LBB6_14:
LBB6_15:                                ## =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movslq	8(%rdx), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	LBB6_18
## BB#16:                               ##   in Loop: Header=BB6_15 Depth=1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
## BB#17:                               ##   in Loop: Header=BB6_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	jmp	LBB6_15
LBB6_18:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB6_19:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyMultiply
	.align	4, 0x90
_polyMultiply:                          ## @polyMultiply
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp37:
	.cfi_def_cfa_offset 16
Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	jne	LBB7_2
## BB#1:
	movq	-24(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB7_3
LBB7_2:
	movq	$0, -8(%rbp)
	jmp	LBB7_13
LBB7_3:
	callq	_polyCreate
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	jg	LBB7_5
## BB#4:
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB7_13
LBB7_5:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movslq	8(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_realloc
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -36(%rbp)
	movl	$0, -36(%rbp)
LBB7_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB7_9
## BB#7:                                ##   in Loop: Header=BB7_6 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
## BB#8:                                ##   in Loop: Header=BB7_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB7_6
LBB7_9:
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
LBB7_10:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB7_12
## BB#11:                               ##   in Loop: Header=BB7_10 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	callq	_multiply
	movl	-40(%rbp), %ecx
	addl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	LBB7_10
LBB7_12:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB7_13:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyPrime
	.align	4, 0x90
_polyPrime:                             ## @polyPrime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB8_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB8_9
LBB8_2:
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jg	LBB8_4
## BB#3:
	callq	_polyCreate
	movq	%rax, -8(%rbp)
	jmp	LBB8_9
LBB8_4:
	movq	-16(%rbp), %rdi
	callq	_polyCopy
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
LBB8_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB8_8
## BB#6:                                ##   in Loop: Header=BB8_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
## BB#7:                                ##   in Loop: Header=BB8_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB8_5
LBB8_8:
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB8_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyEval
	.align	4, 0x90
_polyEval:                              ## @polyEval
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp47:
	.cfi_def_cfa_offset 16
Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_empty
	cmpl	$0, %eax
	je	LBB9_2
## BB#1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	LBB9_9
LBB9_2:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	LBB9_4
## BB#3:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	LBB9_9
LBB9_4:
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	8(%rcx), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
LBB9_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB9_8
## BB#6:                                ##   in Loop: Header=BB9_5 Depth=1
	movsd	-48(%rbp), %xmm0
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	movsd	-24(%rbp), %xmm2
	cvtsi2sd	-52(%rbp), %xmm3
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        ## 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	_pow
	movsd	-72(%rbp), %xmm1        ## 8-byte Reload
	mulsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0        ## 8-byte Reload
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
## BB#7:                                ##   in Loop: Header=BB9_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB9_5
LBB9_8:
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
LBB9_9:
	movsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyDelete
	.align	4, 0x90
_polyDelete:                            ## @polyDelete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp52:
	.cfi_def_cfa_offset 16
Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB10_2
## BB#1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB10_2:
	movabsq	$0, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_empty
	.align	4, 0x90
_empty:                                 ## @empty
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB11_2
## BB#1:
	movl	$1, -4(%rbp)
	jmp	LBB11_3
LBB11_2:
	movl	$0, -4(%rbp)
LBB11_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_polyCreate
	.align	4, 0x90
_polyCreate:                            ## @polyCreate
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp62:
	.cfi_def_cfa_offset 16
Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$16, %rdi
	callq	_malloc
	movabsq	$8, %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	callq	_malloc
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_multiply
	.align	4, 0x90
_multiply:                              ## @multiply
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp67:
	.cfi_def_cfa_offset 16
Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp69:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %ecx
	subl	-32(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -36(%rbp)
LBB13_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-28(%rbp), %edx
	cmpl	%edx, %eax
	jge	LBB13_4
## BB#2:                                ##   in Loop: Header=BB13_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
## BB#3:                                ##   in Loop: Header=BB13_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB13_1
LBB13_4:
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	 "%g\n"

L_.str1:                                ## @.str1
	.asciz	 "%d\n"

L___func__.polySetCoefficient:          ## @__func__.polySetCoefficient
	.asciz	 "polySetCoefficient"

L_.str2:                                ## @.str2
	.asciz	 "poly.c"

L_.str3:                                ## @.str3
	.asciz	 "p -> size_p > 0"

L_.str4:                                ## @.str4
	.asciz	 "0"

L_.str5:                                ## @.str5
	.asciz	 "0\n"

L_.str6:                                ## @.str6
	.asciz	 "-"

L_.str7:                                ## @.str7
	.asciz	 "x^%d"

L_.str8:                                ## @.str8
	.asciz	 "%gx^%d"

L_.str9:                                ## @.str9
	.asciz	 " + "

L_.str10:                               ## @.str10
	.asciz	 " - "

L_.str11:                               ## @.str11
	.asciz	 "x"

L_.str12:                               ## @.str12
	.asciz	 "%gx"

L_.str13:                               ## @.str13
	.asciz	 "\n"


.subsections_via_symbols
