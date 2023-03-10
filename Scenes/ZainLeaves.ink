===five_years_ago
"You'll be fine without me," you older brother, Zain, promised.
->home_alone
=home_alone

You sat in the kitchen as you watched him zip around your two-room house, gathering his gear. Climbing ropes, pickaxe, brightstone lantern, short sword. He was headed into the tunnels for sure.

"I left some money if you need to go down to the market, but there's already enough food in the pantry for like a month. I should only be a few days, so try to save some for me, yeah?" You remember him laughing

"Other than that though, you're in charge of the house! So just remember what I've taught you. You think you can do that?" 

* (definitely) "Definitely!"[] you reply quickly. <i>I'm thirteen now,</i> you think. <i>I can take care of myself.</i>
    "Good to hear!," Zain says. "You at least talk a big game. But I just want to make sure. So, really think about it:"
* (unsure) "I'm not sure[..."]," you reply heasitantly. Sure, you were thirteen years old now, but you still didn't love the idea of being all by yourself. 
    "Ah, you'll be fine!" Zain says, waving off your worry. "Besides, I'll be back before you know it. You've got this, so really think about it:"
* (questioning) "Why can't I come with you?"[] you ask instead of answering.
    "Because thirteen is 'watch the house while I'm gone' old," Zain replies. "Not 'follow your brother into basilisk-infested tunnels' old! And you didn't answer my question. So really think about it:"

- ->first_trait


=first_trait
TODO: This paragraph was better in past tense?
Zain gets serious for a moment, in that "older brother" kind of way. He crouches so he's eye to eye with you, and puts his hands on both your shoulders.
"What's the most important thing I've taught you?"
* "How to be strong[."]," you say with confidence. Zain's strength is the main way he contributes in his job excavating new tunnels for the Mining Guild, and it shows in his phisique. 
It shows in yours as well, since Zain spends most of his time off the job showing you how to follow in his footsteps. You think about all the time you've spent training with Zain, learning to lift with propper form, run long distances, and even swing a sword! It's definitely the thing you've spent the most time together doing.
    * * You wouldn't trade it for the world.[] Y
    * * You wish he wasn't so intense about it[.], but for better or worse, y
    - - <>our brother taught you how to be strong.
    ~AddTrait(strong, true)
    (Your character is now Strong! This enables you to see extra choices in some situations. These choices will be labled "[Strong]")


* "How to be agile[."]," you say with confidence. Zain's agility is legendary. It's also the main way he contributes in his job for the Mining Guild, squeezing in to narrow passages and climbing around steep ravines to determine where the Guild should dig its next tunnels.
In his time off the job Zain shows you how to follow in his footsteps. You think about all the time you've spent with Zain exploring the hidden nooks and crannies of the city. Together you sneak past the city watch, jump across rooftops, and even scale the canyon walls that border the city on either side. It feels like nothing is off-limits with Zain.
    * * You wouldn't trade it for the world.[] Y
    * * You wish he wasn't so intense about it[.], but for better or worse, y
     - - <>our brother taught you how to be agile.
    ~AddTrait(agile, true)
    (Your character is now Agile! This enables you to see extra choices in some situations. These choices will be labled "[Agile]")


* "How to invent things[."]," you say with confidence. Zain's inventiveness is the main way he contributes in his job for the Mining Guild. He's created all sorts of wondrous technology, much of it powered by Brightstone, and helps maintain the giant excavators that dig the Guild's newest tunnels.
Zain spends most of his time off the job teaching you how to work with Brightstone too, and together you've turned your tiny house into the most high-tech place in the lower city. You've got a bell that rings itself at the same time every morning to wake you up. Last year, you put together a machine that brews your coffee. Even better, the things you create together almost never explode! It's definitely the thing you've spent the most time together doing.
    * * You wouldn't trade it for the world.[] Y
    * * You wish he wasn't so intense about it[.], but for better or worse, y
     - - <>our brother taught you how to be inventive.
    ~AddTrait(inventive, true)
    (Your character is now Inventive! This enables you to see extra choices in some situations. These choices will be labled "[Inventive]")

- 
* [\[Continue.\]]

Zain smiles proudly. "See, I knew you'd be fine. <>

{
    -HasTrait(strong): You're the strongest person I know.
    -HasTrait(agile): You're the quickest person I know.
    -HasTrait(inventive): You're the smartest person I know.
}

<> Speaking of, <>

{
    -HasTrait(strong): would you help me with these boxes while I go get the rest of my stuff?"
    Zain gestures to a stack of wooden crates in the corner next to his backpack, and then hurries into the other room.
    ->help_zain_strong
    -HasTrait(agile): would you give me a hand with my gear while I go get the rest of my stuff?"
    Zain gestures at his bow and quiver in the corner, and then hurries into the other room.
    ->help_zain_agile  
    -HasTrait(inventive): could you take a look at this while I go get the rest of my stuff?"
    Zain hands you a metal torch and then hurries into the other room.
    ->help_zain_inventive
}

TODO: Zain help beat:  Help me with your skill (or don't because you don't want him to leave) while I go gather my notebooks

=help_zain_strong

* {HasTrait(strong)} [\[Strong\] Lift the crates.]
    You carefully stack the crates inside the pack.
* [Look inside the crate.]
    You find that they are filled with explosives.
    ->help_zain_strong
* [Don't help.]
    Maybe if you don't help, Zain won't leave.

- ->zain_plan

=help_zain_agile
* {HasTrait(agile)} [\[Agile\] Finish fletching the arrows.] You finish fletching the arrows.
* [Investigate the vials.]
    You find that they are filled with some kind of poison.
    ->help_zain_agile
* [Don't help.]
    Maybe if you don't help, Zain won't leave.
- ->zain_plan

=help_zain_inventive
* {HasTrait(inventive)} [\[Inventive\] Fix the device.]
    You quickly get to work and fix the device.
* [Open the machine.]
    You find a chunk of Brightstone wired to some sort of explosive device.
    ->help_zain_inventive
* [Don't help.]
    Maybe if you don't help, Zain won't leave.
- ->zain_plan

=zain_plan

TODO: This is outdated: Zain has discovered that there is only one basilisk, the same one that killed your parents 10 years ago. If he can take it out (violently or not) he thinks he will save the whole town.

Zain returns from your shared bedroom carrying an armful of leather journals and rolled papers. 
"Now," he says, "let me show you what I'm working on."
Zain rolls out a piece of parchment on the rickety kitchen table in front of you. A map of the mines, and the tunnels beyond them. You've never seen one this detailed. It seems hand-drawn.

"I'm on to something big," he tells you, pointing to a large circled section in the furthest tunnels. "A score so huge, that the whole city will never have to worry about brightstone shortages ever again!" Zain beams at you, face glowing with excitement.

* "What about the basilisks?"[] you ask. "They'll turn you to stone!"

"They won't get me," Zain replies, brushing off your concern. "They're only aggressive when you threaten their turf. That's why what I'm doing is so important! When I get back the city will be able to stop mining into their habitat. But if you're still worried, here."

Zain unclaspes a leather cord from around his neck and holds it out to you. At the end of the cord is a small stone glowing with a warm blue light. It brightens and dims to a silent rhythm.

{
    - IsBrotherTrait(inventive): "I created this pendant last night,"
    - else: "I had a friend enchant this for me,"
}

<> Zain explains. "It's linked to my heartbeat. Watch it while I'm gone. As long as the Brightstone keeps pulsing, you know I'm alright!" 
->pendant

=pendant
* {definitely} "Ok, I'm not <i>that</i> worried about you[."]," you say, rolling your eyes. 
    "Ouch," Zain laughs. "Well, hang onto it anyway."
* {unsure} "Please don't go[."]," you say, wrapping your brother in a hug.
    Zain sighed. "I'm sorry. I'll be back before you know it. Watch the pendant."
* {questioning} "What happens if it goes dark?"[]
    "I think that means I'm dead!" Zain laughs. "But that isn't going to happen."
+ You take the pendant.[] It is warm to the touch. 
->petrified
- -> pendant

=petrified
* Two days later, it is white hot. 

- You are watching as it glows faster and faster, pushing two hundred beats-per-minute. 

* You watch helplessly[.], your own heart racing in time with the pendant.
* You call out to your brother[.], hoping that the magic in it will let you communicate in some way. 
"Zain, Zain!"
But there is no answer.
* {HasTrait(inventive)}\[Inventive\] "Maybe it's broken[."]," you think, desperately. You take out your tools and get to work, doing every test you can think of to see if the Brightstone is malfunctioning in some way. But you know in your heart that it isn't.
* {HasTrait(strong)}\[Strong\] You throw the pendant across the room[.] with a cry of frustration and anguish.

- Suddenly, it stops in the "on" position, filling the room with briliant blue light. You know what that means, and you feel like your own heart has stopped too.

TODO: Rules for revival have changed

* <i>He's been turned to stone[.],</i> you think. It's the only explanation; if he was dead, the pendant would have gone dark. That at least was a glimmer of hope; you know that in most cases basilisk petrification could be reversed within one month. After that though, it was permanent.

Picturing your brother alone out there, alive but turned to stone, you hear his voice one final time in your head. <i>You'll be fine without me. Remember what I've taught you.</i>

Later, you would start planning a way to rescue your brother. <>
    {
        - HasTrait(strong): You would find some way to use your strength to save your brother.
        - HasTrait(agile): You would find some way to use your agility to save your brother.
        - HasTrait(inventive): You would start planning schematics for new devices, finding some way to use your ingenuity to save your brother.
    }

<> In that first moment though, realizing he's gone, you can't remember anything he taught you.

* * You just feel helpless.

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

