	.file	"stats.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Array before sorting: \0"
LC1:
	.ascii "Array after sorting: \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$80, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	___main
	movb	$34, 40(%esp)
	movb	$-55, 41(%esp)
	movb	$-66, 42(%esp)
	movb	$-102, 43(%esp)
	movb	$8, 44(%esp)
	movb	$-62, 45(%esp)
	movb	$2, 46(%esp)
	movb	$6, 47(%esp)
	movb	$114, 48(%esp)
	movb	$88, 49(%esp)
	movb	$45, 50(%esp)
	movb	$76, 51(%esp)
	movb	$123, 52(%esp)
	movb	$87, 53(%esp)
	movb	$25, 54(%esp)
	movb	$23, 55(%esp)
	movb	$-56, 56(%esp)
	movb	$122, 57(%esp)
	movb	$-106, 58(%esp)
	movb	$90, 59(%esp)
	movb	$92, 60(%esp)
	movb	$87, 61(%esp)
	movb	$-79, 62(%esp)
	movb	$-12, 63(%esp)
	movb	$-55, 64(%esp)
	movb	$6, 65(%esp)
	movb	$12, 66(%esp)
	movb	$60, 67(%esp)
	movb	$8, 68(%esp)
	movb	$2, 69(%esp)
	movb	$5, 70(%esp)
	movb	$67, 71(%esp)
	movb	$7, 72(%esp)
	movb	$87, 73(%esp)
	movb	$-6, 74(%esp)
	movb	$-26, 75(%esp)
	movb	$99, 76(%esp)
	movb	$3, 77(%esp)
	movb	$100, 78(%esp)
	movb	$90, 79(%esp)
	movl	$LC0, (%esp)
	call	_puts
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_print_array
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_find_median
	movzbl	%al, %edi
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_find_mean
	fstps	28(%esp)
	movl	28(%esp), %esi
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_find_maximum
	movzbl	%al, %ebx
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_find_minimum
	movzbl	%al, %eax
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_print_statistics
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_sort_array
	movl	$LC1, (%esp)
	call	_puts
	movl	$40, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_print_array
	nop
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "The minimum is %d \12The maximum is %d \12The mean is %.0lf \12The median is %d \12\0"
	.text
	.globl	_print_statistics
	.def	_print_statistics;	.scl	2;	.type	32;	.endef
_print_statistics:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movb	%cl, -12(%ebp)
	movb	%dl, -16(%ebp)
	movb	%al, -20(%ebp)
	movzbl	-20(%ebp), %ecx
	flds	16(%ebp)
	movzbl	-16(%ebp), %edx
	movzbl	-12(%ebp), %eax
	movl	%ecx, 20(%esp)
	fstpl	12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC4:
	.ascii "%d,\0"
	.text
	.globl	_print_array
	.def	_print_array;	.scl	2;	.type	32;	.endef
_print_array:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L4
L5:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L4:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L5
	movl	$10, (%esp)
	call	_putchar
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_find_median
	.def	_find_median;	.scl	2;	.type	32;	.endef
_find_median:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	shrl	%eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC5:
	.ascii "acc = %d \12\0"
	.text
	.globl	_find_mean
	.def	_find_mean;	.scl	2;	.type	32;	.endef
_find_mean:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L9
L10:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L9:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L10
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	fildq	-40(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	fildq	-40(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fdivrp	%st, %st(1)
	fld1
	fsubrp	%st, %st(1)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_find_maximum
	.def	_find_maximum;	.scl	2;	.type	32;	.endef
_find_maximum:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	movl	$1, -8(%ebp)
	jmp	L13
L15:
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	-1(%ebp), %al
	jbe	L14
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
L14:
	addl	$1, -8(%ebp)
L13:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L15
	movzbl	-1(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_find_minimum
	.def	_find_minimum;	.scl	2;	.type	32;	.endef
_find_minimum:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	movl	$1, -8(%ebp)
	jmp	L18
L20:
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	-1(%ebp), %al
	jnb	L19
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
L19:
	addl	$1, -8(%ebp)
L18:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L20
	movzbl	-1(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_sort_array
	.def	_sort_array;	.scl	2;	.type	32;	.endef
_sort_array:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L23
L27:
	movl	$0, -8(%ebp)
	jmp	L24
L26:
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-8(%ebp), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jbe	L25
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movzbl	-9(%ebp), %eax
	movb	%al, (%edx)
L25:
	addl	$1, -8(%ebp)
L24:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L26
	addl	$1, -4(%ebp)
L23:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L27
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
