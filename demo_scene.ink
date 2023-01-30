===bottom_of_the_barrel
VAR smudge_has_drink = true
->demo
=demo
(DEMO NOTE: I'm testing out a mechanic in which the player earns character traits that unlock certain dialogue options. In this scene, the player has already acquired the trait "Intuitive" from an earlier scene. They will acquire one of three new traits through a choice toward the end of this scene.)
* [Start] ->intro

=intro
You walk into the familliar round room of the largest tavern in the lower city, The Bottom of the Barrel. You are here to meet with a man named Smudge Felson. Smudge is a tinker who can make all sorts of wonderous gadgets out of scrap metal and a bit of Brightstone. More importantly, he was your brother's closest companion. You're hoping that Smudge will have both the means and the motivation to help you stage your rescue.

    * You scan the crowded room[...], and you eventually spot Smudge sitting alone at a small table far from the door, hunched over and nursing a wooden tankard. The Bottom of the Barrel doesn't have corners, but Smudge has somehow managed to find the darkest and most shadowed part of the room anyway. 
    ->opening

=opening
You push through the crowd and slide onto the rickety wooden bench across the table from him. He doesn't look up from his cup.

You think about how to broach the subject of your brother. You decide to...

* (direct)[Get right to the point.] ...get right to the point. Your brother is running out of time.
    "Smudge," you start, and he startles and looks up at you, wide-eyed. You continue. "I've found my brother, and I need your help--"
    But Smudge cuts you off before you can go any further. "I can tell I'm going to need another drink for this conversation. Bartender!" he raises his tankard and calls across the room. "We're going to need another round over here!" He looks back at you. "You should have one too, kid. Takes the edge off." Despite his words, Smudge looks anything but relaxed.
    
* (gentle)[Ease into it.] ... ease into it. This is a big favor you're asking.
    "Hey, Smudge," you begin. "How've you been?"
    "Hey, kid." He looks up at you with a sad smile. "I'm getting by. So sorry to hear about your brother. It's hard to believe he won't be coming back."
    "Actually that's what I wanted to talk to you about," you say, seeing your opportunity. But Smudge cuts you off as if he didn't hear you.
    "Yes he was the best of us!" he says, a bit louder than before. "We should toast him," he says. "Bartender!" he calls, turning away from you. "My friend needs a drink!"

* (silent)[\[Intuitive\] Wait for Smudge to speak when he is ready.] wait until Smudge is ready to speak. You need his help, but you can also tell that he's having trouble processing your brother's disappearance. You give him the space to work it out.
    Smudge is quiet for another minute, running his finger along the lip of the tankard and staring down into it, as if he's looking for something within. Finally, he breathes a long, slow sigh, and looks up at you.
    "It's good to see you, kid." He says. "And I think I know why you're here." He pushes his drink across the table to you. "Here, take this away from me. It's not helping like I thought it would." ->recruitment
    ~smudge_has_drink = false

- ->drink_order

=drink_order
Before you can talk further, the bartender arrives. "Can I get you an ale, hon?" She is outwardly cheery, but you see her glance at Smudge with some concern.
* (ale) "Yeah, that'd be great[."], you say, and soon you have a metal tankard in your hand. You and Smudge say a toast to your brother, and then Smudge takes a long drink. Finally, he puts his mug back down. //Good for fight
    
* (water) "Water for me, actually[."], you say. "I need to stay focused." //Good for charm/bargain
    You put your coins on the table--water is expensive in this city--and the bartender soon returns with a crystal clear glass of water. Some heads turn toward your table, wondering who the big spender is among them. Smudge seems to pay them no mind though, and raises his mug in a toast to your brother. You raise your cup as well, and then you both take a long drink.
    
* (liquor) {smudge_has_drink}  "I'll have what he's having." //Good for getting answers out of Smudge
    {
        -opening.direct: "That'll take the edge off alright!" Smudge laughs. "It's my own special concoction." Soon you have a wooden tankard in front of you of something off-puttingly green. You and Smudge toast to your brother, but you think better of actually drinking it. Smudge however takes a long drink. Finally, he puts his mug back down.
        -else: You see Smudge cringe at this suggestion. "Actually," he says. "If that's the case you better just take mine. It's a special concoction I came up with. Too strong though." He waves the bartender off, and looks at you with renewed focus, thoughts of a toast seemingly forgotten. He looks nervous, but ready for the conversation ahead.
            ~smudge_has_drink = false
    }
* (none) {not smudge_has_drink} "I'm good, thanks[."] you say, lifting the tankard that had recently been in front of Smudge.

- ->recruitment

=recruitment
VAR smudge_arguments_used = 0
VAR smudge_arguments_successful = 0
"Alright," Smudge sighs. "Let's get to it." 
* [You start your story...] "I have a plan to rescue my brother," you begin, "and I need your help to pull it off." You explain how you have discovered a way to track down your brother's location, and how with the right plan you know you can get him back to town in time to reverse the petrification. 
{ 
    -smudge_has_drink: As you talk though, you see Smudge sink lower and lower in his seat, keeping his mug raised in front of him and taking frequent sips. "Your heart is in the right place, kid," he says. "But you've said all this before. He's not coming back. We all have to accept that." He raises his tankard again in salute.
    -else: Smudge listens intently, but you can tell he is scared. "I want to believe you kid, I really do. But even if you could somehow find him, it would be insanely dangerous. For his sake, I can't let you do this."
        ~smudge_arguments_successful += 1
        
}

You think about ways you could convince Smudge to join you.
->arguments

=arguments
* ["I know exactly where he is"] "I'm not guessing," you tell him. "I know where he is now. That's what makes this different than any time before." 
    {
        -smudge_has_drink: "Well good, then that's exactly where you'll go and get yourself killed if you go through with this." Smudge takes another drink.
        -else: "That doesn't mean it won't be dangerous, kid." Smudge drums his fingers on the table. "But, you're right, that does make a difference."
            ~smudge_arguments_successful++
    }
* "I need your skills[."], you say. "Without your mechanical expertise I'd never make it through the mines."
    {
        -smudge_has_drink: "Bah, my skills are long gone." Smudge begins muttering to himself between swigs. "I'm a mess... I'm a mess." 
        -else: "I'm flattered, kid." Smudge laughs. "But I'm kind of a mess these days, and Brightstone has just gotten harder and harder to come by. Still..." He scratches at his unruly beard "I might be able to cobble something together, wouldn't want you to leave empty handed at least..." Smudge trails off, perhaps planning a schematic in his head. 
            ~smudge_arguments_successful++
    }
* "He's running out of time."
    {
        -smudge_has_drink: "Kid, he's already out of time!" Smudge slams his drink on the table. "And you'll be out of time too if you don't give this up. Please." He scoops his mug back up.
        -else: "I'd told myself he was already out of time. But you're right. I guess there's still a chance.
            ~smudge_arguments_successful++
    }
* "He would do the same for you."
    Smudge is silent for a long moment. "I know," he says sadly. "He was the best man I ever knew." 
    ~smudge_arguments_successful++
* {smudge_has_drink} [Take his drink away.] Frustrated, you take the tankard out of Smudge's hand. "Look, Smudge I know this is hard." you say. "It's hard for me, too. But we can't just avoid talking about it! Not when we still have a chance to save him."
    Smudge is surprised for a moment, but then hangs his head. "You're right. I'm sorry." He begins tapping his fingers anxiously in absence of his drink, but he's looking at you with renewed focus. "Go on," he says.
        ~smudge_arguments_successful++

-  (argument_gather) ~smudge_arguments_used++
    { 
        -smudge_arguments_used >= 3: ->argument_result
        -else: ->arguments
    }
    
=argument_result
{
    - smudge_arguments_successful >= 3: "Ok kid, you've talked sense into me, and I appreciate that. I'd like to help you. I really would. But I've got some problems here in town. I've made some bad deals, and I'm afaid they're about to come due. You might be better off finding someone else. In fact, there's some--"
    - smudge_arguments_successful <= 0: "You're wasting your time, kid. I'd be no help to you anyway, and besides I'm mixed up in all sorts of trouble in town." He looks down. "I'm sorry, I'm dead weight. The answer is no." There is a silence. "Well, I guess I should get going. I'll see you ar--"
    - else: "Look kid, you're heart's in the right place, but this is crazy. Besides, it's not that simple. Even if I wanted to help you, I'm mixed up in some bad business here in town. I wouldn't want to get you involved in that. You'd be better off--"
}

->time_to_repay_your_loan

=time_to_repay_your_loan
But just then, a new voice cuts him off. "Smudge Felson!" A woman's voice cuts through the din of the tavern, rough and commanding. "Just the man we've been looking for." 



->brother_choice

=brother_choice
You remember how your brother...
* (brawn) Fought off the attackers to protect his friend. ->bar_fight
* (brains) Cut a new deal that made everyone happy. ->make_a_deal
* (charm) Diffused the situation with a joke. ->make_a_joke

=bar_fight
* Fight Tactic 1
* Fight Tactic 2
* Fight Tactic 3
- ->smudge_joins

=make_a_deal
* Deal Tactic 1
* "Nothing upfront"
* "Consider it an investment"
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







