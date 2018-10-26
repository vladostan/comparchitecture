.text
main:
move $t0, $zero # reset counter
loop:
addi $t0, $t0, 1 # Increase counter
j loop # jump backwards