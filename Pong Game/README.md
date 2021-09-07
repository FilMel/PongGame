# Filip-Mel
1.Changed player2 name to bot.

2.Removed the pressdown key functionality for player 2(bot).

3.Created a botGameplay function that checks if the bot y is touching the horizontal edges,if it does it reverts
the direction of the paddle(This is done to obtain the same effect that the ball has,it makes the bot 
paddle bounce from edge to edge).

4.I added a condition that could increase and decrease bot's success rate.If the ball has superated a certain treshold(condition)
the paddle starts moving in its direction by changing it's movement direction based on where the ball is on the y axis.
Bonus.Also added a stronger oscillating effect to the paddle to make it look more intimidating.


This project was implemented on the latest version of love2d and lua by applying the compatibility fix that the user 
reduced-reptile offered in https://github.com/games50/pong/pull/28 directory. 
