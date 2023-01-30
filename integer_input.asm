.data
    prompt: .asciiz "Enter a number please "
    result: .asciiz "\nThe imputted numnber is"
.text
    #primting a prompt message
    li $v0,4
    la $a0,prompt
    syscall
    
    #taking input
    li $v0,5
    syscall
    
    #store the result
    move $t0,$v0
    
    li $v0, 4
    la $a0,result
    syscall
    
    li $v0,1
    move $a0,$t0
    syscall