# Simon
The purpose of this assignment was to create your own version of Simon says in MIPS Asssembly Language. A project designed to practice writing assembly language and simulate the 70s version of Simon Says. 
___
## Necesssary Files
+ Main Source File
	+ simon.asm
+ MARS Simulator
	+ Mars Simulator to execute MIPS provided in the "mars" directory
___
## Usage
+ Clone the repository
	+ `git clone https://github.com/neilpatel/Simon.git`
	+ *There are 4 CLASS files required for this program. They are located in `mars\mars\tools\Simon*`
+ To Execute Mars Simulator
	+ Navigate to the "mars" directory from the cloned repository in a UNIX terminal
	+ `javac Mars.java`
	+ `java Mars`
		+ The Mars Simulator should open
+ Open the "simon.asm" source file
	+ At the top left, click File > Open > 'simon.asm'
	+ Screenshot provided below
	+ ![FileOpen Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/fileOpenScreenshot.PNG)
+ Necesssary Class Files
	+ Check to see that your Tools drop down menu appears as such
	+ ![Tools Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/toolsScreenshot.PNG)
+ Running The Game
	+ Assemble the project
		+ Press the wrench/hammer button
		+ ![Assemble Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/assembleProject.PNG)
	+ Run the project
		+ Press the green play button
		+ ![RunProgram Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/runProgram.PNG)
	+ Open the Simon GUI
		+ Tools > Simon Register V0.1
		+ ![Tools Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/toolsScreenshot.PNG)
	+ Screen Layout
		![Default Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/openSimonGUI.PNG)
___
## Project Requirements
+ Write a MIPS assembly language program such that when the program is running, the Simon game will behave just like an actual Simon game hardware.
+ When a player plays a wrong sequence, the Simon game should play the game over tone, light all colored buttons three times, and enable the "Start Game" buttom for the next player without restarting the program.

___
## Additional Information/Hints 
+ A list of $t8 has been provided to you along with its commands
+ ![$t8Commands Screenshot](https://github.com/neilpatel/Simon/blob/master/screenshots/t8commands.PNG)

___
<p align = "center"> <b>Good Luck! </b></p>