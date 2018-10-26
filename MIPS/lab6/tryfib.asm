.data

space: .asciiz " "
n: .word 10

.text
.globl main

main:
lw $t4, n
sub $t4, $t4, 2

# First two numbers: 1 1
li $v0, 1
la $a0, 1
syscall
move $t0, $a0

li $v0, 4
la $a0, space
syscall

li $v0, 1
la $a0, 1
syscall
move $t1, $a0

li $v0, 4
la $a0, space
syscall

loop:
bge $t3, $t4, exit
add $t2, $t0, $t1

li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, space
syscall

move $t0, $t1
move $t1, $t2
add $t3, $t3, 1

j loop

exit:
li $v0, 10
syscall
