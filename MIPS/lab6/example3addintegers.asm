.data

msg1: .asciiz "Enter the first number: "
msg2: .asciiz "\nEnter the second number: "
result: .asciiz "\nThe result of addition is: "

.text

li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
move $t2, $v0

add $t3, $t1, $t2

li $v0, 4
la $a0, result
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall
