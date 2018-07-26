Battle
====== 
A web game built as part of the Makers Week 3 pairing challenges.

## User Stories

- [x] User story 1 - We want to Start a fight by entering our Names and seeing them  
- [x] User story 2 - I want to see Player 2's Hit Points  
- [x] User story 3 - I want to attack Player 2, and I want to get a confirmation  
- [x] User story 4 - I want my attack to reduce Player 2's HP by 10  
- [x] User story 5 - We want to switch turns  
- [x] User story 6 - I want to see my own hit points  
- [x] User story 7 - I want Player 2 to attack me, and I want to get a confirmation  
- [x] User story 8 - So I can start to lose a game of Battle, I want Player 2's attack to reduce my HP by 10  
- [x] User story 9 - I want to see a 'Lose' message if I reach 0HP first

## Extension Stories
The initial implementation is pretty dullsville.
** Hint **
First player always wins!!

Now its time to add some actual gameplay:

- [x] User story 10 - I want all Attacks to deal a random amount of damage  
- [x] User story 11 - I want to play a Computerised opponent

*I am not happy with this implementation.*
*I wanted to call a POST method without user interaction but it seems this is not possible without javascript.*
*Instead I have amended the /attack form so that it renders differently depending on whether the next user is the computer or not.* 
*The submit then directs to a different POST page. It misses the switch_user method so I am calling that in the view -*
*I don't like that, it violates the separation of control and view.*

- [ ] User story 12 - I want to choose from a range of attacks I could make  
- [ ] User story 13 - I want some of my attacks to Paralyse an opponent (chance of losing their next attack)  
- [ ] User story 14 - I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)
- [ ] User story 15 - I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)
- [ ] User story 16 - I want to have an attack that heals some of my Hit Points  
- [ ] User story 17 - I want a sexy user interface