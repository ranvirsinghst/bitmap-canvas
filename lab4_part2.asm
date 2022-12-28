##########################################################################
# Created by:   Singh, Ranvir
#		rsingh63
#		30 May 2022
#		
# Assignment:   Lab4: Paint Application
#		CSE 012, Computer Systems and Assembly Language
#		UC Santa Cruz, Spring 2022
#
# Description:  This program contains functions that change the (x,y) coords given.
##########################################################################
# PSEUDOCODE
#		moveLeft: x = x - 1
#		moveRight: x = x + 1
#		moveDown: y = y + 1
#		moveUp: y = y - 1
#		moveDiagonalLeftUp: x = x - 1, y = y - 1
#		moveDiagonalLeftDown: x = x - 1, y = y + 1
#		moveDiagonalRightUp: x = x + 1, y = y - 1
#		moveDiagonalRightDown: x = x + 1, y = y + 1
##########################################################################
# REGISTER USAGE
#		a0: hold x
#		a1: hold y

#in this section of code, you must direct the new position of the pixel based on the label we branched to in lab4.asm

#remember at this point, (x,y) coordinates are in a0,a1 registers respectively
#do the appropriate change in a0 a1 values based on the labels below.

#within each label, make sure to jump to the correct label in  lab4.asm file. 
#This is so that exactly one of the labels moveleft,moveright, movedown, moveup is executed depending on which key user enetered as defined in lab4.asm

#NOTE: To make sure you ONLY use a0,a1 registers in your instructions below. There is no need to involve any other rgeister in this section of code!

moveleft:
	addi a0, a0, -1		# decrease x by 1
	
	j newPosition		# jump back to newPosition label
	
movedown:
	addi a1, a1, 1		# increase y by 1
	
	j newPosition		# jump back to newPosition label
	
moveright:
	addi a0, a0, 1		# increase x by 1
	
	j newPosition		# jump back to newPosition label
		
	
moveup:
	addi a1, a1, -1		# decrease y by 1
	
	j newPosition		# jump back to newPosition label
	
moveDiagonalLeftUp:
 	addi a0, a0, -1		# decrease x by 1 (left)
 	addi a1, a1, -1		# decrease y by 1 (up)
 	
 	j newPosition		# jump back to newPosition label
 	
moveDiagonalLeftDown:
	addi a0, a0, -1		# decrease x by 1 (left)
	addi a1, a1, 1		# increase y by 1 (down)
 	
 	j newPosition		# jump back to newPosition label
 	
moveDiagonalRightUp:
	addi a0, a0, 1		# increase x by 1 (right)
	addi a1, a1, -1		# decrase y by 1 (up)
	
	j newPosition		# jump back to newPosition label
	
moveDiagonalRightDown:
	addi a0, a0, 1		# increase x by 1 (right)
	addi a1, a1, 1		# increase y by 1 (down)
	
	j newPosition		# jump back to newPosition label