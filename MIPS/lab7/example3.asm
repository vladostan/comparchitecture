.data
array : .space 10 # allocate 10 consecutive bytes

.text
init:
li $t3, 10 # Fill in number of desired iterations
la $t0, array # Load base address of array
li $t1, 1 # Prepare constant to fill

fillarray:
sb $t1, ($t0) # Store constant
addi $t0, $t0, 1 # Shift to next cell of the memory
addi $t3, $t3, -1 # Decrement counter
bgtz $t3, fillarray # Branch if > 0 or exit
