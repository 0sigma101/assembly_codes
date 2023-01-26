.data

.text
    addi $s0,$zero,5
    #lets say we want to multiply it with 4 which 2 to power 2
    sll $t0,$s0,2#this is use to multiply by shifting the number to the anumber given by the user odd number cannot be done
    li $v0,1
    move $a0,$t0
    syscall