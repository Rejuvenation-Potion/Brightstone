===bottom_of_the_barrel
VAR smudge_has_drink = true
You walk into the familliar round room of the Bottom of the Barrel, the largest tavern in the lower city. You are here to meet with a man named Smudge Felson. Smudge is a tinker who can make all sorts of wonderous gadgets out of scrap metal and a bit of Brightstone. More importantly, he was your brother's closest friend. You're hoping that Smudge will have both the means and the motivation to help you stage your rescue.

    * You scan the crowded room[...], and you eventually spot Smudge sitting alone at a small table far from the door, hunched over and nursing a wooden tankard. The Bottom of the Barrel doesn't have corners, but Smudge has somehow managed to find the darkest and most shadowed part of the room anyway. 
    ->sitting_with_smudge

=sitting_with_smudge
You push through the crowd and slide onto the rickety wooden bench across the table from him. He doesn't look up from his cup.

* "Hey, Smudge."
    Smudge keeps his drink. He'll avoid your questions until you take it.
* [\[Intuitive\] (Smudge didn't want to be noticed; let him speak first.)] 
    Smudge musters up some resolve and pushes away his drink. He knows why you are here and is ready to talk, but he will still try to dissuade you from doing anything dangerous.
    ~smudge_has_drink = false

- ->drink_order

=drink_order
Before you can talk further, the bartender walks over. "Can I get you an ale, hon?"
* (ale) "Yeah, that'd be great."
* (water) "Water for me, actually."
* (liquor) {smudge_has_drink}  "I'll have what he's having."
* (none) {not smudge_has_drink} "I'm good, thanks[."] you say, lifting the tankard that had recently been in front of Smudge.

- ->recruitment

=recruitment
"Alright," Smudge sighs. "Let's get to it."
* "I need your help[."]," 
VAR arguments_used = 0
VAR arguments_successful = 0
->arguments
=arguments
* "I know where he is now."
    {
        -smudge_has_drink: "And that's exactly where you'll go and get yourself killed if you go through with this." Smudge takes another drink.
        -else: 
        Smudge's eyes light up a bit, but he still seems wary, "You're telling me you know exactly where he is?" 
        ** "Well, no. But I know where to pick up the trail."
            ->argument_gather
        ** \(Lie\) "I know exactly where he is."
            ->argument_gather
    }
* "He would do the same for you."
* "I need your skills."
* "We're running out of time."
* " 
* {smudge_has_drink && arguments_used > 0} Take His Drink

-  (argument_gather) ~arguments_used++
    { 
        -arguments_used >= 3: ->time_to_repay_your_loan
        -else: ->arguments
    }

->time_to_repay_your_loan

=time_to_repay_your_loan

->brother_choice

=brother_choice
* (brawn) brawn ->bar_fight
* (brains) brains ->make_a_deal
* (charm) charm ->make_a_joke

=bar_fight
* Fight Tactic 1
* Fight Tactic 2
* Fight Tactic 3
- ->smudge_joins

=make_a_deal
* Deal Tactic 1
* Deal Tactic 2
* Deal Tactic 3
- ->smudge_joins

=make_a_joke
* Joke Tactic 1
* Joke Tactic 2
* Joke Tactic 3
- ->smudge_joins

=smudge_joins
* {brother_choice.brawn} Brawn: Brawn Trait Choice
* {brother_choice.brains} Brains: Brains Trait Choice
* {brother_choice.charm} Charm: Charm Trait Choice
* Default Choice 1
* Default Choice 2

- ->END

, Smudge Felson. 

Smudge is the lower city's most in demand magical tinker. With just a tiny bit of Brightstone, Smudge can turn a handful of scrap metal into all sorts of wonderous devices. 

More importantly, Smudge was the person your brother was closest with before his disapperance. Your hoping that Smudge will have both the means and the motivation to help you stage your rescue.