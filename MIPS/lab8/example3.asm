.data
pi: .float  3.1415
alert: .asciiz "Greater  than  zero"

.text
mtc1 $zero, $f0 # move  zero  value  to $f0
l.s $f1, pi      # load pi into $f1
c.lt.s $f0, $f1 # compare
bc1t pi_greater_than_zero # branch  if 0 < pi
j end

pi_greater_than_zero:
li $v0, 4    # print  message
la $a0, alert
syscall

end:

c.lt.s

bc1t 