===bottom_of_the_barrel
You walk into the biggest tavern in the lower city, a low, round building called The Bottom of the Barrel. 

You see the man you're here to meet, Smudge Felson, at a small circular table in the corner. Well, circular rooms don't really have corners, but Smudge has managed to find the shadowiest part of the room anyway. He is hunched over in his seat and nursing a wooden tankard, seemingly lost in thought. There is a single empty chair across from him.

* (loud) You greet him warmly from across the room.
* (med) You approach and greet him by name.
* (quiet) You sit down quietly across from him, and wait for him to speak.

- ->sitting_with_smudge

===sitting_with_smudge
VAR questions_asked = 0
->ordering_drinks
=ordering_drinks
* (beer) beer
* (wine) wine
* (water) water

- ->questions

=questions
* Question 1
* Question 2
* Question 3
* Question 4
* Question 5

-   ~questions_asked++
    { 
        -questions_asked >= 3: ->time_to_repay_your_loan
        -else: ->questions
    }

->time_to_repay_your_loan

===time_to_repay_your_loan

=brother_choice
* (brawn) brawn ->bar_fight
* (brains) brains ->make_a_deal
* (charm) charm ->make_a_joke

===bar_fight
* Fight Tactic 1
* Fight Tactic 2
* Fight Tactic 3
- ->smudge_joins

===make_a_deal
* Deal Tactic 1
* Deal Tactic 2
* Deal Tactic 3
- ->smudge_joins

===make_a_joke
* Joke Tactic 1
* Joke Tactic 2
* Joke Tactic 3
- ->smudge_joins

===smudge_joins
* {time_to_repay_your_loan.brother_choice.brawn} Brawn: Brawn Trait Choice
* {time_to_repay_your_loan.brother_choice.brains} Brains: Brains Trait Choice
* {time_to_repay_your_loan.brother_choice.charm} Charm: Charm Trait Choice
* Default Choice 1
* Default Choice 2

- ->END