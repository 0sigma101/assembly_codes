.data
    message: .asciiz "Hello, "
    userinput: .space 20
.text
    li $v0,8
    la $a0,userinput
    li $a1,20
    syscall
    
    li $v0,4
    la $a0,userinput
    syscall
    