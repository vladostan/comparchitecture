.data
fivetonine: .float 0.55555
fahrenheit: .float 15

.text
l.s $f12, fahrenheit
jal celsius
mov.s $f12, $f0
li $v0, 2
syscall

li $v0, 10
syscall

celsius:
li $t0, 32
mtc1 $t0, $f4
cvt.s.w $f4, $f4         #f4 = 32.0
l.s $f6, fivetonine        #f6 = 5.0/9.0
sub.s $f0, $f12, $f4       #f0 = f12 - 32.0
mul.s $f0, $f0, $f6       #f0 = f0 * 5.0/9.0
jr $ra