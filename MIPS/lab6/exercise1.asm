.data

msg1: .asciiz "Enter the y number: "
msg2: .asciiz "\nEnter the z number: "
msg3: .asciiz "\nEnter the f number: "
msg4: .asciiz "\nEnter the q number: "
result: .asciiz "\nThe x is: "

.text

li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, msg3
syscall

li $v0, 5
syscall
move $t2, $v0

li $v0, 4
la $a0, msg4
syscall

li $v0, 5
syscall
move $t3, $v0

# x = (y*z*z)/f-q

mul $t4, $t0, $t1 # t4 = y*z
mul $t0, $t4, $t1 # t0 = t4*z = y*z*z
div $t1, $t0, $t2 # t1 = t0/t2 = y*z*z/f
sub $t2, $t1, $t3 # t2 = t1 - t3 = y*z*z/f - q

li $v0, 4
la $a0, result
syscall

li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall
