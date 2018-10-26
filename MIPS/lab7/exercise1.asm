.text

li $v0, 5
syscall

bgtz $v0, greater
bltz $v0, less
j equal

greater:
li $a0, 1
j print

less:
li $a0, -1
j print

equal:
li $a0, 0

print:
li $v0, 1
syscall