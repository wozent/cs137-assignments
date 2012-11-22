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
	subq	$192, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	L_main.schedule(%rip), %rax
	movabsq	$80, %rdx
	leaq	-96(%rbp), %rcx
	movl	$0, -12(%rbp)
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
	movq	L_main.event0(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	L_main.event0+8(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	L_main.event1(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	L_main.event1+8(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	L_main.event2(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	L_main.event2+8(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	L_main.event3(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	L_main.event3+8(%rip), %rax
	movq	%rax, -160(%rbp)
	movl	$5, %esi
	leaq	-96(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	callq	_available
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	$5, %esi
	leaq	-96(%rbp), %rdi
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movl	%eax, -172(%rbp)        ## 4-byte Spill
	callq	_available
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	$5, %esi
	leaq	-96(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	%eax, -176(%rbp)        ## 4-byte Spill
	callq	_available
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	$5, %esi
	leaq	-96(%rbp), %rdi
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movl	%eax, -180(%rbp)        ## 4-byte Spill
	callq	_available
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	$5, %esi
	leaq	-96(%rbp), %rdi
	movl	%eax, -184(%rbp)        ## 4-byte Spill
	callq	_sortSchedule
	movl	$0, -100(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-100(%rbp), %rax
	cmpq	$5, %rax
	jae	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str1(%rip), %rdi
	leaq	-96(%rbp), %rax
	movslq	-100(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %esi
	movslq	-100(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %edx
	movslq	-100(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %r8
	addq	%rcx, %r8
	movl	8(%r8), %ecx
	movslq	-100(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rax
	movl	12(%rax), %r8d
	movb	$0, %al
	callq	_printf
	movl	%eax, -188(%rbp)        ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB0_1
LBB0_4:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_6
## BB#5:                                ## %SP_return
	movl	$0, %eax
	addq	$192, %rsp
	popq	%rbp
	ret
LBB0_6:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_available
	.align	4, 0x90
_available:                             ## @available
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_sortSchedule
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movb	$0, %al
	cmpl	$0, -44(%rbp)
	movb	%al, -49(%rbp)          ## 1-byte Spill
	jne	LBB1_3
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%cl
	movb	%cl, -49(%rbp)          ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	movb	-49(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_4
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %edx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	_checkEvent
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB1_1
LBB1_5:
	cmpl	$0, -44(%rbp)
	jne	LBB1_7
## BB#6:
	movl	$1, -4(%rbp)
	jmp	LBB1_8
LBB1_7:
	movl	$0, -4(%rbp)
LBB1_8:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_sortSchedule
	.align	4, 0x90
_sortSchedule:                          ## @sortSchedule
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_12
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	LBB2_10
## BB#4:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movl	(%rdx), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpl	(%rdx), %eax
	jg	LBB2_7
## BB#5:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movl	(%rdx), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpl	(%rdx), %eax
	jne	LBB2_8
## BB#6:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movl	4(%rdx), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpl	4(%rdx), %eax
	jle	LBB2_8
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=2
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	8(%rcx), %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rsi
	shlq	$4, %rax
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movq	%rax, (%rcx)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rcx)
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
LBB2_8:                                 ##   in Loop: Header=BB2_3 Depth=2
## BB#9:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -20(%rbp)
	jmp	LBB2_3
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
## BB#11:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB2_1
LBB2_12:
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_checkEvent
	.align	4, 0x90
_checkEvent:                            ## @checkEvent
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -40(%rbp)
	movl	-24(%rbp), %edx
	cmpl	-40(%rbp), %edx
	jg	LBB3_6
## BB#1:
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	LBB3_3
## BB#2:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB3_6
LBB3_3:
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	LBB3_6
## BB#4:
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	LBB3_7
## BB#5:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	LBB3_7
LBB3_6:
	movl	$0, -4(%rbp)
	jmp	LBB3_8
LBB3_7:
	movl	$1, -4(%rbp)
LBB3_8:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__const
	.align	4                       ## @main.schedule
L_main.schedule:
	.long	15                      ## 0xf
	.long	0                       ## 0x0
	.long	16                      ## 0x10
	.long	30                      ## 0x1e
	.long	9                       ## 0x9
	.long	0                       ## 0x0
	.long	9                       ## 0x9
	.long	15                      ## 0xf
	.long	13                      ## 0xd
	.long	0                       ## 0x0
	.long	14                      ## 0xe
	.long	20                      ## 0x14
	.long	17                      ## 0x11
	.long	15                      ## 0xf
	.long	18                      ## 0x12
	.long	0                       ## 0x0
	.long	9                       ## 0x9
	.long	45                      ## 0x2d
	.long	9                       ## 0x9
	.long	55                      ## 0x37

	.align	2                       ## @main.event0
L_main.event0:
	.long	10                      ## 0xa
	.long	0                       ## 0x0
	.long	10                      ## 0xa
	.long	30                      ## 0x1e

	.align	2                       ## @main.event1
L_main.event1:
	.long	14                      ## 0xe
	.long	20                      ## 0x14
	.long	15                      ## 0xf
	.long	0                       ## 0x0

	.align	2                       ## @main.event2
L_main.event2:
	.long	17                      ## 0x11
	.long	0                       ## 0x0
	.long	17                      ## 0x11
	.long	30                      ## 0x1e

	.align	2                       ## @main.event3
L_main.event3:
	.long	15                      ## 0xf
	.long	30                      ## 0x1e
	.long	16                      ## 0x10
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	 "%d\n"

L_.str1:                                ## @.str1
	.asciz	 "%02d:%02d - %02d:%02d\n"


.subsections_via_symbols
