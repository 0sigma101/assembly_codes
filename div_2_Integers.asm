.data

.text
    add $s0,$zero,600
    add $s1,$zero,300
    div $t0,$s0,$s1
    li $v0,1
    move $a0,$t0
    syscall