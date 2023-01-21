.data
    
.text
    addi $s0,$zero,400000
    addi $s1,$zero,500000
    mult $s0,$s1 #the result goes to lo and hi registers in the end allow the product of larget numbers
    mflo $s0 #this takes the resuklt from low and put it into the s0 register
    li $v0,1
    move $a0,$s0
    syscall