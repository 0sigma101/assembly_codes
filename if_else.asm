.data
     message: .asciiz "Enter a number between 1 and 3"
     message2: .asciiz "The choice is correct"
     message3: .asciiz "Your are dumb"
.text
    main: 
        addi $t0,$zero,2
        li $v0,5
        syscall
        beq $v0,$t0,choice
        bne $v0,$t0,choice2
    
    li $v0,10
    syscall
    
    choice:
        li $v0,4
        la $a0,message2
        syscall
    choice2:
        li $v0,4
        la $a0,message3
        syscall