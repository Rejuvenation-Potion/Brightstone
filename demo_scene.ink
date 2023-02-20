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
    "It's good to see you, kid." He says. "And I think I know why you're here." He pushes his drink across the table to you. "Here, take this away from me. It's not helping like I thought it would." 
     ~smudge_has_drink = false
    ->recruitment
   

- ->drink_order

=drink_order
Before you can talk further, the bartender arrives. "Can I get you an ale, hon?" She is outwardly cheery, but you see her glance at Smudge with some concern.
* (ale) "Yeah, that'd be great[."]," you say, and soon you have a metal tankard in your hand. You and Smudge say a toast to your brother, and then Smudge takes a long drink. Finally, he puts his mug back down. //Good for fight
    
* (water) "Water for me, actually[."]," you say. "I need to stay focused." //Good for charm/bargain
    You put your coins on the table--water is expensive in this city--and the bartender soon returns with a crystal clear glass of water. Some heads turn toward your table, wondering who the big spender is among them. Smudge seems to pay them no mind though, and raises his mug in a toast to your brother. You raise your cup as well, and then you both take a long drink.
    
* (liquor) {smudge_has_drink}  "I'll have what he's having[."]," you say, to which the bartender raises an eyebrow. //Good for getting answers out of Smudge
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
        -else: "I'd told myself he was already out of time. But you're right. I guess there's still a chance."
            ~smudge_arguments_successful++
    }
* "He would do the same for you."
    Smudge is silent for a long moment. "I know," he says sadly. "He was the best man I ever knew." 
    ~smudge_arguments_successful++
* {smudge_has_drink} [Take his drink away.] Frustrated, you take the tankard out of Smudge's hand. "Look, Smudge I know this is hard." you say. "It's hard for me, too. But we can't just avoid talking about it! Not when we still have a chance to save him."
    Smudge is surprised for a moment, but then hangs his head. "You're right. I'm sorry." He begins tapping his fingers anxiously in absence of his drink, but he's looking at you with renewed focus. "Go on," he says.
        ~smudge_arguments_successful++
        ~smudge_has_drink = false
        ->arguments

-  (argument_gather) ~smudge_arguments_used++
    { 
        -smudge_arguments_used >= 3: ->argument_result
        -else: ->arguments
    }
    
VAR smudge_convinced = false
=argument_result
Smudge sighs. <>
{
    - smudge_arguments_successful >= 3: "Ok kid, you've talked sense into me, and I appreciate that. I'd like to help you. I really would. But I've got some problems here in town. I've made some bad deals, and I'm afraid they're about to come due. You might be better off finding someone else. In fact, there's some--"
        ~smudge_convinced = true
    - smudge_arguments_successful <= 0: "You're wasting your time, kid. I'd be no help to you anyway, and besides I'm mixed up in all sorts of trouble in town." He looks down. "I'm sorry, I'm dead weight. The answer is no." There is a silence. "Well, I guess I should get going. I'll see you ar--"
    - else: "Look kid, even if I wanted to help you, I'm mixed up in some bad business here in town. I wouldn't want to get you involved in that. You'd be better off--"
}

->time_to_repay_your_loan

=time_to_repay_your_loan
But just then, a new voice cuts him off. "Smudge Felson!" A woman's voice cuts through the din of the tavern, rough and commanding. "Just the man we've been looking for." 

* You turn to see[...] Tabetha Vin stalk across the tavern toward your table, an older but musclebound woman who strikes an imposing figure. People say she has a piece of every backroom deal in the lower city. She approaches you flanked by two burly enforcers, and the patrons around you grow quiet, waiting to see what will happen next.

Tabetha glares down at Smudge. "You owe us a good bit of money, Smudge. It seems like you might have forgotten."
{
    -not smudge_has_drink: Smudge stands up quickly and puts on a fake smile. "Tabby! How have you been? You know it's funny, I was just coming to see you..." He backs up slowly as he talks, but then bumps into one of the enforcers, who shoves him forward.
    -smudge_has_drink: Smudge sighs. You can tell he's going to try to get out of this, but he doesn't seem very confident.
    "That's what this stuff will do to you," he says, gesturing with his drink. He raises it toward Tabetha in a mock toast, drains it, and then puts it on the table upside down. "Seeing as I did forget, how about you give me a few more days?"
}

"You're not getting out of this one Smudge," Tabetha says with finality. "Pack it in, and come with us." Smudge looks around pleadingly, meeting your eyes for a moment.

** You have a flash of memory...
->brother_choice

=brother_choice
Suddenly, you're back with your brother, five years ago. You're standing slightly behind him, part of a crowd watching a commotion in the street. A commotion involving Smudge. 

Smudge was in trouble back then too, but with upper city guardsmen instead of lower city toughs. The guards were beating up on him, saying that he had swindled them by selling them faulty machinery. Smudge protested that it had just backfired, a known risk when it came to Smudge's tech. It looked like they were going to take Smudge away. But then your brother stepped in and stopped that from happening.

You remember how your brother...
* (brave_choice) Stood up to the guards to protect his friend[.], and you think you can do the same thing here. 
->bar_fight
* (shrewd_choice) Cut a new deal that made everyone happy[.], and you think you can do the same thing here.
->make_a_deal
* (charming_choice) Diffused the situation with a joke[.], and you think you can do the same thing here. 
->make_a_joke

=bar_fight
[Your character is now Brave]
* \[Brave\] [Stand up for Smudge.] Tabetha moves to lift Smudge from his chair, but before you know what you're doing, you plant yourself between them.
"You're going to have to get through me," you say with newfound confidence.
Tabetha seems bewildered for a moment. It seems like she hadn't even noticed you were there until now. She does not, however, appear intimidated. "Kid," she says, "that's about the dumbest thing you could have just done."
She moves in close and sizes you up. You're stronger than you realize, but Tabetha still obviously outclasses you. You think for a moment that she's about to start swinging, but then she speaks again.
"There's only one other person who's stood up to me like that. It seemed dumb then too." She smirks. "But I grew to respect him."
Tabetha snaps her fingers, and her enforcers stand down.
"Alright Smudge. You're friend here just did something very brave and very dumb for you. Luckily for you, I like that. I'm going to give you three more days. Try not to waste them."
The she turns back to you. "Say hi to your brother for me."
And with that she leaves, henchmen in tow.
- ->smudge_joins

=make_a_deal
[Your character is now Shrewd]
* \[Shrewd\] [Make her an offer.] "How much does he owe you?" you ask as Tabetha's enforcers lift Smudge from his chair. They freeze, still holding him aloft, and Tabetha turns to regard you. It seems like no one had even noticed you until now.
"Way more than you can cough up, that's for sure kid." She scoffs, but she doesn't turn away. She is looking at you with some curiosity.
"I wouldn't count on that," you continue, surprising yourself with your confidence. "We're planning a big expedition into the tunnels, past the mines. You know how much unclaimed treasure is out there. Give us three days, and we'll be back with what Smudge owes you and then some." You're happy to bargain any hypothetical treasure away; all you want is your brother back.
Tabetha leans menacingly toward Smudge. "This true?" she demands.
Smudge glances at you for a moment, and then nods his head vigorously.
Tabetha considers, then address you. "Ok, I'll bite, since I sure as hell know he can't pay me now. You've got three days, and then I expect what he owes, plus twenty percent."
"Ten percent," you counter before you can stop yourself.
"Fifteen, and don't push it." Tabetha smirks at you. "Pleasure doing business with you, kid." She snaps her fingers, and her henchmen drop Smudge into his chair with a clatter. They move to leave, but suddenly Tabetha halts them, and turns back to you.
"I knew you reminded me of someone," she says. "Say hi to your brother for me. That's a guy who could make a deal."
And with that she leaves, henchmen in tow.
- ->smudge_joins

=make_a_joke
[Your character is now Charming]
* \[Charming\] [Pretend Smudge owes you money too.] "Ooh bad timing, I was already in the middle of shaking him down myself," you say with more confidence than you expected. "You're going to have to make an appointment."
Tabetha turns to you, incredulous. "Do you know who I am?"
"Someone whose tired of running all over town beating money out of people, from the looks of it." You don't know exactly where you're going with this, but you continue regarldess. "Believe me," you add, "I know how exhausting that is. Look, how about this: why don't you just tell me how much he owes you, and I'll get it out of him for you! I mean, I'm already here. It's a win-win!" 
There's a pause, but then Tabetha laughs, really laughs. "Ok kid, you can drop the act. Why stick your neck out for Smudge? He's an idiot."
"Well," you say. "Today he's my idiot."
"Ok Smudge," Tabetha says. "I like your friend here, so I'm giving you three extra days. But you better believe I'll be back."
She sizes you up for a long moment. "I knew I recognized you," she says finally. "Say hi to your brother for me."
And with that she leaves, henchmen in tow.
- ->smudge_joins

=smudge_joins
* You and Smudge watch as[...] Tabetha's gang marches back across the tavern. You know you haven't seen the last of them, but you got them off Smudge's back for now. After the door shuts behind them, the other patrons slowly turn back to their tables, and the normal sounds of the tavern resume.

- "Wow," Smudge breathes. "That was incredible! I thought I was a goner, but you, you..." Smudge turns and regards you with a new admiration. "I... it's just," Smudge gets choked up, regarding you with admiration. "You are so much like him."

* You don't know what to say[.], so you just say, "Thanks, Smudge."

- "No, thank you! And listen, uh," he takes a breath to gather some resolve. "I'm sorry I wasn't with you before. I am now. I'm in. Let's find your brother." He puts out his hand.

* You shake his hand[.], <>

{
    -smudge_convinced: relieved that he's come around. You were hoping that you had convinced him earlier, but it could have gone either way. Channeling your brother seems to have been the thing that sealed the deal.
    -else: somewhat stunned that he made such a complete turnaround. Your arguments earlier fell on deaf ears, but channeling your brother totally changed your circumstance.
}
- You think about how that feels.
* You realize it makes you feel powerful. 

"Alright!" Smudge says with nefound vigor. "Now, if we're going to do this right, we're going to need supplies. Most stuff I can scrounge up at my workshop or around town, but one thing is going to be a bit trickier. We're going to need to get our hands on some Brightstone."

->trait_demo
=trait_demo
* {brother_choice.brave_choice} \[Brave\] "We can face the tunnels with or without it. Whatever's out there, I'm not scared."
    "I know you're not," he laughs, "but I certainly am. And besides, most of my best inventions don't work without it."
* {brother_choice.shrewd_choice} \[Shrewd\] "We could make another deal with Tabetha[."]," you suggest. "She seems to have a hand in everything."
    "Whoa there, kid," Smudge replies. "Now I know you just helped talk me out of trouble, and your brother was always good at making a deal, but Tabetha's not the kind of person you want to owe multiple debts to at once."
* {brother_choice.charming_choice} \[Charming\] "We could talk our way into the upper city[."]," you suggest. "It's got to be easier to get some up there."
    "Eh, maybe," Smudge says, "but it tends to be under lock and key even up there. It's getting so scarce these days." 
* "Got any ideas?"
    Smudge considers for a moment, and then snaps his fingers. 

- "Let's swing by my workshop," he says. "We can talk more about the plan on the way. And seriously," he claps you on the back. "Thank you again."
    You leave the tavern with one more person beside you, and feeling one step closer to your brother.
    ->END
- ->trait_demo






