.data

.text
    main:
    	addi $a1,$zero,50 #store arg in $a register series 50 is first argument
    	addi $a2,$zero,100
        jal addnumbers #now we will pass arguments which is done by passing arguments we can do so by passing in a register
        #now we display the result
        li $v0,1
        move $a0,$v1
        syscall
        
    li $v0,10
    syscall
    
    addnumbers:
        add $v1,$a1,$a2
        jr $ra