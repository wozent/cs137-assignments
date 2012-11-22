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
	leaq	L_main.hand1(%rip), %rax
	movabsq	$80, %rdx
	leaq	-96(%rbp), %rcx
	movl	$0, -12(%rbp)
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
	leaq	L_main.hand2(%rip), %rax
	movabsq	$80, %rdx
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
	movl	$10, %esi
	leaq	-96(%rbp), %rdi
	callq	_straightflush
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	$10, %esi
	leaq	-176(%rbp), %rdi
	movl	%eax, -180(%rbp)        ## 4-byte Spill
	callq	_straightflush
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -184(%rbp)        ## 4-byte Spill
	jne	LBB0_2
## BB#1:                                ## %SP_return
	movl	$0, %eax
	addq	$192, %rsp
	popq	%rbp
	ret
LBB0_2:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_straightflush
	.align	4, 0x90
_straightflush:                         ## @straightflush
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
	subq	$80, %rsp
	movl	$100, %edx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_selectCard
	movl	$99, %edx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_selectCard
	movl	$104, %edx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_selectCard
	movl	$115, %edx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_selectCard
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	LBB1_20
## BB#1:
	movl	$0, -64(%rbp)
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$-1, (%rdx,%rcx,8)
	je	LBB1_11
## BB#3:                                ##   in Loop: Header=BB1_2 Depth=1
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,8)
	je	LBB1_9
## BB#4:                                ##   in Loop: Header=BB1_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_9
## BB#5:                                ##   in Loop: Header=BB1_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_9
## BB#6:                                ##   in Loop: Header=BB1_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_9
## BB#7:                                ##   in Loop: Header=BB1_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_9
## BB#8:                                ##   in Loop: Header=BB1_2 Depth=1
	movl	$1, -60(%rbp)
LBB1_9:                                 ##   in Loop: Header=BB1_2 Depth=1
## BB#10:                               ##   in Loop: Header=BB1_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB1_2
LBB1_11:
	cmpl	$1, -60(%rbp)
	je	LBB1_19
## BB#12:
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB1_18
## BB#13:
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$10, (%rcx,%rax,8)
	jne	LBB1_18
## BB#14:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$11, (%rdx,%rcx,8)
	jne	LBB1_18
## BB#15:
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$12, (%rdx,%rcx,8)
	jne	LBB1_18
## BB#16:
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cmpl	$13, (%rdx,%rcx,8)
	jne	LBB1_18
## BB#17:
	movl	$1, -60(%rbp)
LBB1_18:
LBB1_19:
LBB1_20:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	cmpl	$1, -60(%rbp)
	jne	LBB1_22
## BB#21:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_89
LBB1_22:
	cmpq	$0, -40(%rbp)
	je	LBB1_42
## BB#23:
	movl	$0, -64(%rbp)
LBB1_24:                                ## =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$-1, (%rdx,%rcx,8)
	je	LBB1_33
## BB#25:                               ##   in Loop: Header=BB1_24 Depth=1
	movslq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,8)
	je	LBB1_31
## BB#26:                               ##   in Loop: Header=BB1_24 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_31
## BB#27:                               ##   in Loop: Header=BB1_24 Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_31
## BB#28:                               ##   in Loop: Header=BB1_24 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_31
## BB#29:                               ##   in Loop: Header=BB1_24 Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_31
## BB#30:                               ##   in Loop: Header=BB1_24 Depth=1
	movl	$1, -60(%rbp)
LBB1_31:                                ##   in Loop: Header=BB1_24 Depth=1
## BB#32:                               ##   in Loop: Header=BB1_24 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB1_24
LBB1_33:
	cmpl	$1, -60(%rbp)
	je	LBB1_41
## BB#34:
	movq	-40(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB1_40
## BB#35:
	movslq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpl	$10, (%rcx,%rax,8)
	jne	LBB1_40
## BB#36:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$11, (%rdx,%rcx,8)
	jne	LBB1_40
## BB#37:
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$12, (%rdx,%rcx,8)
	jne	LBB1_40
## BB#38:
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cmpl	$13, (%rdx,%rcx,8)
	jne	LBB1_40
## BB#39:
	movl	$1, -60(%rbp)
LBB1_40:
LBB1_41:
LBB1_42:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	cmpl	$1, -60(%rbp)
	jne	LBB1_44
## BB#43:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_89
LBB1_44:
	cmpq	$0, -48(%rbp)
	je	LBB1_64
## BB#45:
	movl	$0, -64(%rbp)
LBB1_46:                                ## =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$-1, (%rdx,%rcx,8)
	je	LBB1_55
## BB#47:                               ##   in Loop: Header=BB1_46 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,8)
	je	LBB1_53
## BB#48:                               ##   in Loop: Header=BB1_46 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_53
## BB#49:                               ##   in Loop: Header=BB1_46 Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_53
## BB#50:                               ##   in Loop: Header=BB1_46 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_53
## BB#51:                               ##   in Loop: Header=BB1_46 Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_53
## BB#52:                               ##   in Loop: Header=BB1_46 Depth=1
	movl	$1, -60(%rbp)
LBB1_53:                                ##   in Loop: Header=BB1_46 Depth=1
## BB#54:                               ##   in Loop: Header=BB1_46 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB1_46
LBB1_55:
	cmpl	$1, -60(%rbp)
	je	LBB1_63
## BB#56:
	movq	-48(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB1_62
## BB#57:
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$10, (%rcx,%rax,8)
	jne	LBB1_62
## BB#58:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$11, (%rdx,%rcx,8)
	jne	LBB1_62
## BB#59:
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$12, (%rdx,%rcx,8)
	jne	LBB1_62
## BB#60:
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$13, (%rdx,%rcx,8)
	jne	LBB1_62
## BB#61:
	movl	$1, -60(%rbp)
LBB1_62:
LBB1_63:
LBB1_64:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	cmpl	$1, -60(%rbp)
	jne	LBB1_66
## BB#65:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_89
LBB1_66:
	cmpq	$0, -56(%rbp)
	je	LBB1_86
## BB#67:
	movl	$0, -64(%rbp)
LBB1_68:                                ## =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$-1, (%rdx,%rcx,8)
	je	LBB1_77
## BB#69:                               ##   in Loop: Header=BB1_68 Depth=1
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,8)
	je	LBB1_75
## BB#70:                               ##   in Loop: Header=BB1_68 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_75
## BB#71:                               ##   in Loop: Header=BB1_68 Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_75
## BB#72:                               ##   in Loop: Header=BB1_68 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_75
## BB#73:                               ##   in Loop: Header=BB1_68 Depth=1
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,8)
	je	LBB1_75
## BB#74:                               ##   in Loop: Header=BB1_68 Depth=1
	movl	$1, -60(%rbp)
LBB1_75:                                ##   in Loop: Header=BB1_68 Depth=1
## BB#76:                               ##   in Loop: Header=BB1_68 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB1_68
LBB1_77:
	cmpl	$1, -60(%rbp)
	je	LBB1_85
## BB#78:
	movq	-56(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB1_84
## BB#79:
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpl	$10, (%rcx,%rax,8)
	jne	LBB1_84
## BB#80:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$11, (%rdx,%rcx,8)
	jne	LBB1_84
## BB#81:
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$12, (%rdx,%rcx,8)
	jne	LBB1_84
## BB#82:
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cmpl	$13, (%rdx,%rcx,8)
	jne	LBB1_84
## BB#83:
	movl	$1, -60(%rbp)
LBB1_84:
LBB1_85:
LBB1_86:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	cmpl	$1, -60(%rbp)
	jne	LBB1_88
## BB#87:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_89
LBB1_88:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB1_89:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_selectCard
	.align	4, 0x90
_selectCard:                            ## @selectCard
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
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB2_6
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	4(%rcx,%rax,8), %edx
	movsbl	-13(%rbp), %esi
	cmpl	%esi, %edx
	jne	LBB2_4
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
## BB#5:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_1
LBB2_6:
	movabsq	$112, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
LBB2_7:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_9 Depth 2
	cmpl	$13, -36(%rbp)
	jg	LBB2_21
## BB#8:                                ##   in Loop: Header=BB2_7 Depth=1
	movl	$0, -40(%rbp)
	movl	$0, -20(%rbp)
LBB2_9:                                 ##   Parent Loop BB2_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	$0, %al
	movl	-20(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	movb	%al, -41(%rbp)          ## 1-byte Spill
	jge	LBB2_11
## BB#10:                               ##   in Loop: Header=BB2_9 Depth=2
	cmpl	$0, -40(%rbp)
	sete	%al
	movb	%al, -41(%rbp)          ## 1-byte Spill
LBB2_11:                                ##   in Loop: Header=BB2_9 Depth=2
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB2_12
	jmp	LBB2_17
LBB2_12:                                ##   in Loop: Header=BB2_9 Depth=2
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	cmpl	-36(%rbp), %edx
	jne	LBB2_15
## BB#13:                               ##   in Loop: Header=BB2_9 Depth=2
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	4(%rcx,%rax,8), %edx
	movsbl	-13(%rbp), %esi
	cmpl	%esi, %edx
	jne	LBB2_15
## BB#14:                               ##   in Loop: Header=BB2_9 Depth=2
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	movl	$1, -40(%rbp)
LBB2_15:                                ##   in Loop: Header=BB2_9 Depth=2
## BB#16:                               ##   in Loop: Header=BB2_9 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_9
LBB2_17:                                ##   in Loop: Header=BB2_7 Depth=1
	cmpl	$0, -40(%rbp)
	jne	LBB2_19
## BB#18:                               ##   in Loop: Header=BB2_7 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movl	$0, (%rdx,%rcx,8)
LBB2_19:                                ##   in Loop: Header=BB2_7 Depth=1
## BB#20:                               ##   in Loop: Header=BB2_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB2_7
LBB2_21:
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__const
	.align	4                       ## @main.hand1
L_main.hand1:
	.long	4                       ## 0x4
	.byte	115                     ## 0x73
	.space	3
	.long	9                       ## 0x9
	.byte	115                     ## 0x73
	.space	3
	.long	12                      ## 0xc
	.byte	99                      ## 0x63
	.space	3
	.long	11                      ## 0xb
	.byte	115                     ## 0x73
	.space	3
	.long	8                       ## 0x8
	.byte	115                     ## 0x73
	.space	3
	.long	6                       ## 0x6
	.byte	100                     ## 0x64
	.space	3
	.long	3                       ## 0x3
	.byte	100                     ## 0x64
	.space	3
	.long	7                       ## 0x7
	.byte	115                     ## 0x73
	.space	3
	.long	10                      ## 0xa
	.byte	115                     ## 0x73
	.space	3
	.long	12                      ## 0xc
	.byte	100                     ## 0x64
	.space	3

	.align	4                       ## @main.hand2
L_main.hand2:
	.long	8                       ## 0x8
	.byte	99                      ## 0x63
	.space	3
	.long	2                       ## 0x2
	.byte	104                     ## 0x68
	.space	3
	.long	5                       ## 0x5
	.byte	115                     ## 0x73
	.space	3
	.long	6                       ## 0x6
	.byte	99                      ## 0x63
	.space	3
	.long	1                       ## 0x1
	.byte	115                     ## 0x73
	.space	3
	.long	5                       ## 0x5
	.byte	99                      ## 0x63
	.space	3
	.long	4                       ## 0x4
	.byte	100                     ## 0x64
	.space	3
	.long	6                       ## 0x6
	.byte	104                     ## 0x68
	.space	3
	.long	13                      ## 0xd
	.byte	100                     ## 0x64
	.space	3
	.long	1                       ## 0x1
	.byte	100                     ## 0x64
	.space	3

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	 "%d\n"


.subsections_via_symbols
