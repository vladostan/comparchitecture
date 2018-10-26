.data
e: .float 2.71828
pi: .float 3.1415

.text
jal function
li $v0, 2
syscall

li $v0, 10
syscall

function:
l.s $f0, e
l.s $f12, pi
mul.s $f0, $f0, $f0
div.s $f12, $f0, $f12
jr $ra
