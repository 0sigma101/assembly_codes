.data
    message: .asciiz "Enter your message"
    floatzero: .float 0.0
.text
    lwc1 $f4,floatzero#loading zero
    
    li $v0,4#display message
    la $a0,message
    syscall
    
    li $v0,6#input float
    syscall
    
    li $v0,2#display float
    add.s $f12,$f0,$f4
    syscall