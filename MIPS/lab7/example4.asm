.data
var: .word 17 # declare a word - size variable " var "=17

.text
main:
lw $t0, var # load from RAM into register $t0: $t0 = var
li $t1, 16 # Fill in $t1 with a constant value of 16
sw $t1, var # Update memory : var = 16

move $a0, $t0
li $v0, 1
syscall

move $a0, $t1
li $v0, 1
syscall

lw $a0, var
li $v0, 1
syscall

li $v0, 10
syscall