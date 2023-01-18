.data
    myInteger: .word 23 #this is for integer
.text
    #we need to load word now as we are puting up integer and the address for load immediate is 1
    li $v0,1
    lw $a0,myInteger
    syscall