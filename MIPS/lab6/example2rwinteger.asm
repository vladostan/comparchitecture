.text

.globl main

main: # main program entry
li $v0, 5 # Read integer
syscall # $v0 = value read
add $a0, $v0 , $zero # $a0 = value to print

li $v0, 1 # Print integer
syscall

li $v0, 10 # Exit program
syscall
