.data
    #this is performed with random memory
.text
    addi $s0,$zero,3
    addi $s1,$zero,4
    mul $t0,$s0,$s1#restriction that 2 numbers that are 16-bits long can only be multiplied mult
    li $v0,1
    move $a0,$t0
    syscall