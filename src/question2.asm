.data
    text1: .asciiz "Enter a sum: "
    text2: .asciiz "equal: "
    input: .space 20
    check: .asciiz "-"
    copy: .space 2
.text
    main:
	     
        # Printing text1
        li $v0, 4
        la $a0, text1
        syscall
    
        # Getting user input and store first character
        li $v0, 8
        la $a0, input
        #lb $t0, 0($a0)
        li $a1, 20
        syscall
    
        # Read the first character of the program
        #la $a1, input
        #addu $a1, $a1, 0
        #lbu $a0, ($a1)  # Reading the caracter
        #la $a0, input
        #li $v0, 11
        
        #syscall
        
    	# Check if the first character is a number or "-"
        lb $t1, 0($a0)
        lb $t2, check
    	beq $t0, $t1, ifEqual
    	#bne $t0, $t1, ifNotEqual
    	syscall
    	
        # To end the program
        li $v0, 10
        syscall

    ifEqual:
        li $v0, 4
        la $a0, text2
        syscall   
        
        li $v0, 10
        syscall         
    ifNotEqual:
        li $v0, 4
        la $a0, text1
        syscall
        
        li $v0, 10
        syscall

        
        
        
        
        
        
        
        
