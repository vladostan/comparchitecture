addi $t0, $zero, 10     # $t0 = 10
addi $t1, $zero, 20     # $t1 = 20
addi $t2, $zero, 30     # $t2 = 30
addi $t3, $zero, 40     # $t3 = 40

add $a0, $t0, $t1   # $a0 = 30
add $a1, $t2, $t3   # $a1 = 70
    
jal myFunction      # Jump to myFunction function
add $a0, $zero, $v0     # Save result: $a0 = -40
    
li $v0, 1
syscall
li $v0, 10
syscall
    
myFunction:
    sub $v0, $a0, $a1   # $v0 = -40
    jr $ra      # Jump to the next instruction after function call
