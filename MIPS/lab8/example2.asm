.data

pi:  .float 3.14159
fourPtZero:  .float 4.0
threePtZero:  .float 3.0
radius:  .float 17.25
surfaceArea:  .float 0.0
volume:  .float 0.0

linebreak: .asciiz "\n"

#------------------- text/code section
.text

.globl main

main:

#-----------------
# Compute:(4.0 * pi) which is used for both equations.
l.s $f2, fourPtZero
l.s $f4, pi
mul.s $f4, $f2, $f4 # 4.0 * pi
l.s $f6, radius # radius

#-------------------------
# Calculate surface area of a sphere.
# surfaceArea = 4.0 * pi * radius2
mul.s $f8,$f6, $f6 #radius2
mul.s $f8, $f4, $f8 # 4.0 * pi * radius2
s.s $f8, surfaceArea # store final answer

l.s $f12, surfaceArea
li $v0, 2
syscall

la $a0, linebreak
li $v0, 4
syscall

#-----------------
# Calculate volume of a sphere.
# volume = (4.0 * pi / 3.0) * radius3
l.s $f8, threePtZero
div.s $f2,$f4, $f8 # (4.0 * pi / 3.0)
mul.s $f10, $f6, $f6 # radius2
mul.s $f10, $f10, $f6 # radius3
mul.s $f12, $f2, $f10 # 4.0*pi/3.0*radius3
s.s $f12, volume # store final answer

li $v0, 2
syscall

#--------------------
# Done, terminate program.
li $v0, 10 #terminate call code
syscall # system call

.end main






