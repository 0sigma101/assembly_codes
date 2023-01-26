.data
    newline: .asciiz " \n"
.text
    addi $s0,$zero,300
    addi $s1,$zero,100
    div $s0,$s1
    mflo $s0#quotient
    mfhi $s1#remainder
    li $v0,1
    move $a0,$s0
    syscall
    li $v0,4
    la $a0,newline
    syscall
    li $v0,1
    move $a0,$s1
    syscall