.data
    message: .asciiz "hi everyone this is a function"
.text
    #this is basic labelling that we followed
    main:
        jal displayMessage #basically jumps to the function function calling
    
    
    #this command here tells the program is done
    li $v0,10
    syscall #if we dont do it it will be in inf recursion
    
    displayMessage:
        li $v0,4
        la $a0,message
        syscall
        
        jr $ra #this is a jump register basically goes back to main
