# Zenan Shang
# Assignment 5
# 2021/10/18

.data
    text1: .asciiz "Enter a list of 3 lines:\n"
    text2: .asciiz "The reordered list is:\n"
    word1: .space 20
    word2: .space 20
    word3: .space 20
.text
    main:
        # Printing text 1
        li $v0, 4
        la $a0, text1
        syscall
        
    	# Getting user input
        li $v0, 8
        la $a0, word1
        li $a1, 20
        syscall
        
        li $v0, 8
        la $a0, word2
        li $a1, 20
        syscall
        
        li $v0, 8
        la $a0, word3
        li $a1, 20
        syscall
        
        # Printing text 2
        li $v0, 4
        la $a0, text2
        syscall
        
        # Display output
        li $v0, 4
        la $a0, word3
        syscall
        
        li $v0, 4
        la $a0, word1
        syscall
        
        li $v0, 4
        la $a0, word2
        syscall   
                     
    li $v0, 10
    syscall
