.data
string: .asciiz "Programming is      fun"

.text
la $t0, string # load base address of string to $t0
move $t2, $zero # word count
li $t3, 1 # previous was a space

main_loop:
lb $t1, ($t0) # get current element
beq $t1, $zero, end # if end of the string - exit
sne $t4, $t1, 32 # if current is a space => $t4 = 1
and $t5, $t4, $t3 # if cur != ' ' && prev = ' '
add $t2, $t2, $t5 # increase word count
seq $t3, $t1, 32
addi $t0, $t0, 1 # move to next element
j main_loop

end:
move $a0, $t2
li $v0, 1
syscall
