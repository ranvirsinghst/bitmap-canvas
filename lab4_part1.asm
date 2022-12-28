##########################################################################
# Created by:   Singh, Ranvir
#		rsingh63
#		30 May 2022
#		
# Assignment:   Lab4: Paint Application
#		CSE 012, Computer Systems and Assembly Language
#		UC Santa Cruz, Spring 2022
#
# Description:  This program turns (x,y) coords into a memory address.
# Notes: This program is intended to be run from RARS.
##########################################################################
# PSEUDOCODE
#		multiply x by 4
#		multiply y by 128
#		add y*128 and x*4 to base memory address
##########################################################################
# REGISTER USAGE
#		a0: hold x, eventually hold final address
#		a1: hold y
#		a2: base address

#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#make sure to return to calling function after putting correct value in a0!
	#Enter code below!DO NOT MODIFY ANYTHING BEFORE THIS COMMENT LINE!
	
	slli a0, a0, 2						# multiply x by 4
	slli a1, a1, 7						# multiply y by 128
	
	add a0, a1, a0						# add base address to x*4
	add a0, a2, a0						# add y*128 to (base address + x*4
	
	ret
		
					
