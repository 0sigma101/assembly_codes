.data
    myFloat: .float 6.868
.text
    li $v0,2 # to print float
    lwc1 $f12,myFloat
    syscall