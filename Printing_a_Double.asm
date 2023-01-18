.data
    myDouble: .double 3.411
    zeroDouble: .double 0.0 #this we need to make it convenient to use
.text
    ldc1 $f2,myDouble #the double takes two memory as it is 64 bit and is 32 and 32 bit on both side of decimal so takes f2,f3
    ldc1 $f0,zeroDouble #f0,f1
    
    li $v0,3
    add.d $f12,$f2,$f0
    syscall