===act1_prologue
"You'll be fine without me," you older brother, Zain, promised.
->home_alone
=home_alone
You sat in the kitchen as you watched him zip around your two-room house, gathering his gear. Climbing ropes, pickaxe, brightstone lantern, short sword. He was headed into the tunnels for sure.

"I left some money if you need to go down to the market, but there's already enough food in the pantry for like a month. I should only be a few days, so try to save some for me, yeah?" You remember him laughing.

"Other than that though, you're in charge of the house! So just remember what I've taught you. You think you can do that?" 

* (definitely) "Definitely!"[] you replied quickly. <i>I'm thirteen now,</i> you remember thinking. <i>I can take care of myself.</i>
    "Good to hear!," Zain says. "You at least talk a big game. But I just want to make sure. So, really think about it:"
* (unsure) "I'm not sure[..."]," you replied heasitantly. Sure, you were thirteen years old now, but you still didn't love the idea of being all by yourself. 
    "Ah, you'll be fine!" Zain says, waving off your worry. "Besides, I'll be back before you know it. You've got this, so really think about it:"
* (questioning) "Why can't I come with you?"[] you asked instead of answering.
    "Because thirteen is 'watch the house while I'm gone' old," Zain replies. "Not 'follow your brother into basilisk-infested tunnels' old! And you didn't answer my question. So really think about it:"

- ->first_trait


=first_trait
Zain got serious for a moment, in that "older brother" kind of way. He crouched so he was eye to eye with you, and put his hands on both your shoulders.
"What's the most important thing I've taught you?"
* "How to be strong[."]," you say with confidence. Zain's strength is the main way he contributes in his job excavating new tunnels for the Mining Guild, and it shows in his phisique. 
It shows in yours as well, since Zain spends most of his time off the job showing you how to follow in his footsteps. You think about all the time you've spent training with Zain, learning to lift with propper form, run long distances, and even swing a sword! It's definitely the thing you've spent the most time together doing.
    * * You wouldn't trade it for the world.[] Y
    * * You wish he wasn't so intense about it[.], but for better or worse, y
    - - <>our brother taught you how to be strong.
    ~player_traits += (strong)
    ~brother_traits += (strong)
    (Your character is now Strong! This enables you to see extra choices in some situations. These choices will be labled "[Strong]")


* "How to be agile[."]," you say with confidence. Zain's agility is legendary and is the main way he contributes in his job for the Mining Guild, squeezing in to narrow passages and climbing around steep ravines to determine where the Guild should dig its next tunnels.
In his time off the job Zain shows you how to follow in his footsteps. You think about all the time you've spent with Zain exploring the hidden nooks and crannies of the city. Together you sneak past the city watch, jump across rooftops, and even scale the canyon walls that border the city on either side. It feels like nothing is off-limits with Zain.
    * * You wouldn't trade it for the world.[] Y
    * * You wish he wasn't so intense about it[.], but for better or worse, y
     - - <>our brother taught you how to be agile.
    ~player_traits += (agile)
    ~brother_traits += (agile)
    (Your character is now Agile! This enables you to see extra choices in some situations. These choices will be labled "[Agile]")


* "How to invent things[."]," you say with confidence. Zain's inventiveness is the main way he contributes in his job for the Mining Guild. He's created all sorts of wondrous technology, much of it powered by Brightstone, and helps maintain the giant excavators that dig the Guild's newest tunnels.
Zain spends most of his time off the job teaching you how to work with Brightstone too, and together you've turned your tiny house into the most high-tech place in the lower city. You've got a bell that rings itself at the same time every morning to wake you up. Last year, you put together a machine that brews your coffee. Even better, the things you create together almost never explode! It's definitely the thing you've spent the most time together doing.
    * * You wouldn't trade it for the world.[] Y
    * * You wish he wasn't so intense about it[.], but for better or worse, y
     - - <>our brother taught you how to be inventive.
    ~player_traits += (inventive)
    ~brother_traits += (inventive)
    (Your character is now Inventive! This enables you to see extra choices in some situations. These choices will be labled "[Inventive]")

- 
* [\[Continue.\]]

Zain smiled proudly. "See, I knew you'd be fine. <>

{
    -player_traits == (strong): You're the strongest person I know.
    -player_traits == (agile): You're the quickest person I know.
    -player_traits == (inventive): You're the smartest person I know.
}



<> Now, let me show you what I'm working on."


- ->zain_plan

=zain_plan
Zain darted into the other room and returned carrying an armful of leather journals and rolled parchemnt. He rolled one out on the rickety kitchen table in front of you. A map of the mines, and the tunnels beyond them. You'd never seen one this detailed. It seemed hand-drawn.

"I'm on to something big," he told you, pointing to a large circled section in the furthest tunnels. "A score so huge, that the whole city will never have to worry about brightstone shortages ever again!" Zain beamed at you, face glowing with excitement.

* "What about the basiliks?"[] you asked. "They'll turn you to stone!"

"They won't get me," Zain replied, brushing off your concern. "They're only aggressive when you threaten their turf. That's why what I'm doing is so important! When I get back the city will be able to stop mining into their habitat. But if you're still worried, here."

Zain unclasped a leather cord from around his neck and held it out to you. At the end of the cord was a small stone glowing with a warm blue light. It brightened and dimmed to a silent rhythm.

{
    -brother_traits == (inventive): "I created this pendant last night,"
    - else: "I had a friend enchant this for me,"
}

<> Zain explained. "It's linked to my heartbeat. Watch it while I'm gone. As long as the Brightstone keeps pulsing, you know I'm alright!" 
->pendant

=pendant
* {definitely} "Ok, I'm not <i>that</i> worried about you[."]," you said rolling your eyes. 
    "Ouch," Zain laughed. "Well, hang onto it anyway."
* {unsure} "Please don't go[."]," you say, wrapping your brother in a hug.
    Zain sighed. "I'm sorry. I'll be back before you know it. Watch the pendant."
* {questioning} "What happens if it goes dark?"[]
    "I think that means I'm dead!" Zain laughed. "But that isn't going to happen."
+ You took the pendant.[] It was warm to the touch. 
->petrified
- -> pendant

=petrified
Two days later, it was white hot. You were watching as it glowed faster and faster, pushing two hundred beats-per-minute. 

* You watched helplessly[.], your own heart racing in time with the pendant.
* You called out to your brother[.], hoping that the magic in it would let you communicate in some way. 
"Zain, Zain!"
But there was no answer.
* {player_traits == (inventive)}\[Inventive\] "Maybe it's broken[."]," you rember thinking, desperately. You took out your tools and got to work, doing every test you could think of to see if the Brightstone was malfunctioning in some way. But you knew in your heart that it wasn't.
* {player_traits == (strong)}\[Strong\] You threw the pendant across the room[.] with a cry of frustration and anguish.

- Suddenly, it stopped in the "on" position, filling the room with briliant blue light. You knew what that meant, and you felt like your own heart had stopped too.

* <i>He's been turned to stone[.],</i> you think. It was the only explanation; if he had been dead, the pendant would have gone dark. That at least was a glimmer of hope; you knew that in most cases basilisk petrification could be reversed within one month. After that though, it was permanent.

Picturing your brother alone out there, alive but turned to stone, you heard his voice one final time in your head. <i>You'll be fine without me. Remember what I've taught you.</i>

Later, you would start planning a way to rescue your brother. <>
    {
        - player_traits == (strong): You would find some way to use your strength to save your brother.
        - player_traits == (agile): You would find some way to use your agility to save your brother.
        - player_traits == (inventive): You would start planning schematics for new devices, finding some way to use your ingenuity to save your brother.
    }

<> In that first moment though, realizing he was gone, you couldn't remember anything he'd taught you.

* * You just felt helpless.

//DEMO
->END

# CLEAR
//->act1_scene1




//UNUSED
=unused_basilisk
Everyone told tales of treasure deep in the tunnels, but no one was dumb enough to try to find them. They knew the basiliks were there waiting, huge lurking lizards ready to turn you to stone with a single glance. The karmic reward for any miner who dug too deep.

But Zain brushed your concern aside. "I know how to handle them," he replied. "Look, they aren't naturally aggresive--they only petrify people because we invade their habitat. As long as I show them some respect, they won't bother me."

->END

=unused_being_helpful
- Zain smiles proudly. "Very close. I would say that <>

{
    - player_traits == (strong): strength
    - player_traits == (agile): agility
    - player_traits == (inventive): inventing things
}

<> is probably second-most important. What's really the main thing?"
You see where he's going with this.
* {player_traits == (strong)}\[Strong\] "How to help people[."]," you say. Zain found all sorts of ways to put his strength to good use, like cleaning up rubble after one of the city's frequent rockslides.
* {player_traits == (agile)}\[Agile\] "How to help people[."]," you say. Zain found all sorts of ways to put his agility to good use, like 
* {player_traits == (inventive)}\[Inventive\] "How to help people[."]," you say. In addition to your own home, Zain had supplied half the neighborhood with various gadgets of his own creation. They were always custom-built to suit a particular need, and he always refused payment.

- A lot of people looked up to Zain as a pillar of the community. Other people thought he was just too nosy for his own good.

* You roll your eyes.
->END

