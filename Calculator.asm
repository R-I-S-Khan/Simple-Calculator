.data
	first: .asciiz "input first number "
	second: .asciiz "input second number" 
	input: .asciiz "input operation (1∼4,1:+,2:-,3:×,4:÷):"

.text
	main: 
		li $v0,4
		la $a0,first
		syscall
		
		li $v0,5
		syscall
		move $s0,$v0
		
		li $v0,4
		la $a0,second
		syscall
		
		li $v0,5
		syscall
		move $s1,$v0
		
		li $v0,4
		la $a0,input
		syscall
		
		li $v0,5
		syscall
		move $s2,$v0
		
		
		
		beq $s2,2, labelB
		beq $s2,3, labelC
		beq $s2,4, labelD
		
		add $a0,$s0,$s1
		li $v0,1
		syscall
		li $v0,10
		syscall
		
		labelB: sub $a0,$s0,$s1
		li $v0,1
		syscall
		li $v0,10
		syscall
		
		labelC: mul $a0,$s0,$s1
		li $v0,1
		syscall
		li $v0,10
		syscall
		
		labelD: div $a0, $s0, $s1
		li $v0,1
		syscall
		li $v0,10
		syscall
		
		
		li $v0,10
		syscall
		
		

