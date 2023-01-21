.data
    Int1: .word 4
    Int2: .word 5
.text
    lw $t0,Int1
    lw $t1,Int2
    add $t2,$t1,$t0 #t2 is where we will be getting the result
    li $v0,1
    add $a0,$zero,$t2
    syscall