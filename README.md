# Dice App Workshop Practical

Challenge worked through following a TDD workshop.

## Requirements

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

Make the assumption here that you only want to see the total value of the roll of the two dice together, not of each die separately.
Each roll 2 dice --> possible total return values can range from 2 - 12.

*5th User Story:*

As a board game player,
So that I can keep track of past and previous rolls
I want to record each dice roll

dice_array << dice.roll

*6th User Story:*
As a board game player,
So that I know what my score is after I have rolled several dice
I want to be able to get my current score

dice.score

## How to use
```
2.2.3 :001 > require './lib/roll_dice.rb'
 => true
2.2.3 :002 > dice = Dice.new
 => #<Dice:0x007fe98183d688 @dice_array=[]>
2.2.3 :003 > dice.number_dice(2)
 => 12
2.2.3 :004 > dice.roll
 => [9]
2.2.3 :005 > dice.roll
 => [9, 2]
2.2.3 :006 > dice.roll
 => [9, 2, 5]
2.2.3 :007 > dice.roll_history
 => [9, 2, 5]
2.2.3 :008 > quit
```

## Status
User stories 1 - 5 complete. Step 6 is in progress. 
