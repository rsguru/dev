	.file	"examples.c"
	.text
	.globl	sum_list
	.type	sum_list, @function
sum_list:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L2:
	cmpq	$0, -24(%rbp)
	jne	.L3
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sum_list, .-sum_list
	.globl	rsum_list
	.type	rsum_list, @function
rsum_list:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	rsum_list
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	rsum_list, .-rsum_list
	.globl	copy_block
	.type	copy_block, @function
copy_block:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L9
.L10:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	xorq	%rax, -8(%rbp)
	subq	$1, -40(%rbp)
.L9:
	cmpq	$0, -40(%rbp)
	jg	.L10
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	copy_block, .-copy_block
	.ident	"GCC: (SUSE Linux) 4.8.5"
	.section	.note.GNU-stack,"",@progbits
