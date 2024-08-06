# mastermind-finished-and-optimised
    A simple take on the game 'Mastermind' i made a few days ago.
    
If you're not aware of the rules here they are:  

  1.Setup: One player (the codemaker) creates a secret code using a sequence of 4 colored pegs. 
  Each peg can be one of 6 colors, and colors can be repeated.
  
  2.Objective: The other player (the codebreaker) tries to guess the secret code within a certain number of attempts.
  
  3.Gameplay:
  The codebreaker makes a guess by placing a sequence of 4 colored pegs.
  The codemaker provides feedback using small black and white pegs:
  Black peg: A peg is the correct color and in the correct position.
  White peg: A peg is the correct color but in the wrong position.
  No feedback pegs are given for incorrect colors.
  
  4.Endgame: The game ends when the codebreaker correctly guesses the code (receives 4 black pegs) or runs out of attempts.

  Only i didnt use pegs,i used arrays in order to help the computer understand what i want. I used an array of correct positions where the colors the computer/player guessed are in teh correct positions and an array of correct colors,meaning the colors the computer/player guessed correctly but not in the correct positions. 
  
  The player guessing is pretty straightforward: The computer chooses 4 colors and the player has 12 attempts to guess them. The player gets feedback from the computer on the guesses. The game ends in a win for the player when the array of positions if full,meaning it has a size of 4 elements. The game ends in a loss if the player reached the 12 turn mark.

  The computer guessing was pretty hard to do to be honest. It works like this:

    The player chooses 4 colors. 
    The computer has to guess 4 colors each time for a total of 12 times. TO help the computer we keep the colors he guessed in place and dont change them
    We also remove from the pool of colors the colors that dont match at all,meaning the pool gets smaller and smaller and the computer has a higher chance of guessing the correct colors
    
