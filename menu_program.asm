 .data
    ChoiceMessage: .asciiz "\n1 for finding length of a number\n2 for checking odd or even\n3to check if number is palindrome\n4 to exit\n"
    exitMessage: .asciiz "You exited"
    message: .asciiz "Enter the number\n"
    lenMessage: .asciiz "The length of the number is\n"
    oddMessage: .asciiz "The given number is odd"
    evenMessage: .asciiz "The given number is even"
    palindromeMessage: .asciiz "The given number is palindrome"
    noPalindrome: .asciiz "The given number is not palindrome"
.text
    main:
        while:
            li $v0,4
            la $a0,ChoiceMessage
            syscall
            li $v0,5
            syscall
            move $t0,$v0
            beq $t0,4,exit
            beq $t0,1,length
            beq $t0,2,odd_even
            beq $t0,3,palindrome
            j while
        exit:
            li $v0,4
            la $a0,exitMessage
            syscall
            li $v0,10
            syscall
    
    length:
        addi $t0,$zero,10
        addi $t1,$zero,0
        li $v0,4
        la $a0,message
        syscall
        li $v0,5
        syscall
        move $t2,$v0
        while2:
            beq $t2,0,exit2
            div $t2,$t2,$t0
            addi $t1,$t1,1
            j while2
        exit2:
            li $v0,4
            la $a0,lenMessage
            syscall
            li $v0,1
            move $a0,$t1
            syscall
            j while
    
    odd_even:
        addi $t0,$zero,2
        li $v0,4
        la $a0,message
        syscall
        li $v0,5
        syscall
        move $t1,$v0
        div $t1,$t0
        mfhi $t1
        beqz $t1,even
        bnez $t1,odd
    	even:
            li $v0,4
            la $a0,evenMessage
            syscall
            j while
        odd:
            li $v0,4
            la $a0,oddMessage
            syscall
            j while
        
    palindrome:
        addi $t0,$zero,10
        addi $t1,$zero,0
        addi $t4,$zero,0
        addi $t5,$zero,0
        addi $t6,$zero,0
        li $v0,4
        la $a0,message
        syscall
        li $v0,5
        syscall
        move $t2,$v0
        move $t4,$t2
        move $t7,$v0
        j length3
        length3:
            beqz $t4,setZero
            div $t4,$t4,$t0
            addi $t5,$t5,1
            j length3
        setZero:
            j while3
        while3:
            beq $t6,$t5,check
            beqz $t2,yes
            div $t2,$t0
            mfhi $t3
            mflo $t2
            mul $t1,$t1,$t0
            add $t1,$t1,$t3
            addi $t6,$t6,1
            j while3
        check:
            beq $t1,$t7,yes
            bne $t1,$t7,no
        yes:
            li $v0,4
            la $a0,palindromeMessage
            syscall
            j while
        no:
            li $v0,4
            la $a0,noPalindrome
            syscall
            j while