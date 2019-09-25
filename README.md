*1st User Story:*

As a board game player,
So that I can play a game
I want to be able to roll a dice

Object - player; game; dice
Messages - play_game; roll_dice

Acceptance Criteria:
dice.roll => true

*2nd User Story:*

As a board game player,
So that I know how many steps I should move
Rolling a dice should give me a number between 1 and 6

dice.roll(1..6) => <= 6

*3rd User Story:*

As a dice app developer,
So that I give players a good game experience
If it is not already random, I want the dice roll to be randomly picked

^ Already done in step 2.

*4th User Story:*

As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time

dice1.roll <= 6
dice2.roll <= 6

number of dice = 2
dice = Dice.new
total_dice = dice.num_dice(2)
total_dice.roll => <= 12

*5th User Story:*

As a board game player,
So that I can keep track of past and previous rolls
I want to record each dice roll

dice_array << dice.roll 
# dice_app
