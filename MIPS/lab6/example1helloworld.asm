.data                  # add  this  stuff  to the  data  segment # load  the  hello  string  into  data  memory
hello: .asciiz "Hello , world!"

.text                  # now we are in the  text  segment
li $v0, 4             # set up  print  string  syscall
la $a0, hello         # argument  to  print  string
syscall

li $v0, 10            # set up exit  syscall
syscall
