#This program was written by Neil Patel. 
#CS 447; Computer Organization and Assembly Language
#Purpose: In Assembly Language, program the famous 70s game Simon Says.  
#--------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------
#Start of Project 2

.data
	result: .space 99
	
#Start of instructions!
.text

#Start of the game. 
start:
	move $zero, $s0
	la $s0, result
	add $s7, $zero, $zero
	add $t4, $zero, $zero
	
	addi $v0, $zero, 30
	syscall
	add $t0, $zero, $a0
	
	addi $v0, $zero, 40
	add $a0, $zero, $zero
	add $a1, $zero, $t0
	syscall

#After the program ends, you need to wait to allow the user to choose to play the game again. 
#Allows the user to replay the game without requiring the program to be restarted
wait:
	addi $t9, $zero, 0
checkpointWait:
	beq $t9, 16, playStart
	j checkpointWait

#Start button
playStart:
	addi $t8, $zero, 16

#Randomly generate numbers to let the user play.
randomNum:
	add $t5, $zero, $zero
	add $t9, $zero, $zero
	add $t8, $zero, $zero
	add $s3, $zero, 1
	
	addi $v0, $zero, 42
	add $a0, $zero, $zero
	addi $a1, $zero, 4
	syscall
	add $t0, $zero, $a0
	
	sllv $s3, $s3, $t0
	
addToArray:
	sb $s3, 0($s0)
	addi $s0, $s0, 1
	addi $t4, $t4, 1
	
	add $t6, $zero, $zero
	la $s5, result
	la $t2, result

#Plays back the sequence when user clicks. 
playSequence:
	add $t8, $zero, $zero
	lb $t7, ($s5)
	addi $s5, $s5, 1
	add $t8, $zero, $t7
	add $t6, $t6, 1
	slt $t3, $t6, $t4
	bne $t3, 1, userPlay
	j playSequence

#function to control the user's clicks. User play. 	
userPlay:
	add $t3, $zero, $zero
	lb $s4, ($t2)
	
	beq $t9, 0, userPlay
	addi $t5, $t5, 1
	addi $t2, $t2, 1
	add $t8, $zero, $t9
	add $t8, $zero, $zero
	add $t3, $zero, $t9
	add $t9, $zero, $zero
	bne $t3, $s4, wrong
	beq $t4, $t5, randomNum
	beq $t3, $s4, userPlay
	
#If the user misclicks and the program will end. 
wrong:
	addi $t8, $zero, 15
	j start
	addi $v0, $zero, 10
	syscall


#End of Instructions
#End of Project 2
#Neil Patel
