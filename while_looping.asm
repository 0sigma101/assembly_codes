.data
    
.text
    main:
        addi $t0,$zero,1
        while:
            bgt $t0,4,exit
            li $v0,1
            move $a0,$t0
            syscall
            addi $t0,$t0,1
            j while
            
        exit:
            li $v0,10
            syscall