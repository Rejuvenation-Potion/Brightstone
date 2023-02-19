===prologue
You are trapped. 
* You try to remember what happened[...], 
->nightmare

=nightmare
<>but the images churn and shift as you try to picture them. 

You see spiralling stone tunnels. You see your older brother, Zain, ahead of you, beckoning you forward. You see his face, exuberant in the blue glow of the guiding flame that floats above his outstretched palm. There's a secret he's found--treasure? magic? He won't say, but you're almost there.

"Follow me!" he says, pointing downward. He drops into a hole in the ground, and his light goes with him.

* You follow him down[.], but then the visions swirl away. There is a profound emptiness between then and now. All you know for sure is that you are in total darkness, with a great weight pressing down on you. A cave-in? Yes, you must be trapped under a pile of rocks.
->unable_to_act

=unable_to_act
* You try to lift the rocks[.], but you make no headway. It is not that the rocks are too heavy--instead, your hands seem to pass right through. You feel insubstantial.
* You try to call out for help[.], but to your surprise, you find that you have no voice.
+ {CHOICE_COUNT() < 1} You realize you are dreaming.[] And this isn't the first time. Your heart drops into the pit of your stomach.
    * * You know what comes next. 
    -> brother
- {That feeling is familliar, you realize, but you aren't sure why.| Again, you feel a pang of recognition. Something tells you that you've been here before.} ->unable_to_act

-> brother
=brother
Just as that thought crosses your mind, Zain appears before you. 

"C'mon let's get you out of there! You can't lay around all day," he says, flashing that smile of his. Before you know it, he has dug you most of the way out of the rockslide. Your legs are still pinned, but with Zain's help you can probably pull free. He leans down and offers you his hand.

You look at him. Your brother, here to rescue you as always. This should be a comfort, and in all past versions of this dream, it was. But now you know that you aren't the one in danger here. Zain is.

* You reach for his hand[.], but your hand passes right through. You reach again and again to no avail. Zain appears not to notice.
* "Zain, get out of here!"[] you beg. You need to save him from what's about to happen. But again, no sound comes. Or if it does, Zain does not hear you.

- Before you can try anything else, you hear it. The sound you've been dreading. A deep, reptilian hiss echoes off the stone around you. Zain hears it too, and his eyes go wide. You feel the ground rumble beneath heavy footfalls, and the cavern behind him begins to glow with a sickly yellow light, emanating from beyond a bend in the tunnel. A long, low silhouette rounds the corner.

* You see the basilisk.[] 
You've never seen one in person, but it matches every story you've ever been told. Wide, sloping head leading a ten-foot long body. Forked, darting tongue tasting the air for its prey. Dragging itself along the ground with far too many strong, scaly legs. It doesn't need to be fast; one look into its glowing, pupilless eyes, wide as dinner plates, will turn anyone to solid stone. The karmic reward for any miner who digs too deep.
->basilisk
=basilisk

Zain turns back to you. "Close your eyes!" he shouts frantically. "I'll try to lead it away!" He turns to face it, and time seems to stop.

This is the moment. Zain will try to run past the basilisk, but with one errant glance it will have him. You will watch as his skin hardens into white marble. You will see the basilisk wrap its long tail around him. And you will see your brother dragged off into the darkness, accompanied by the scaping of stone against stone. 

You know you can't bear to see that again. And this time, you know you are dreaming. Without knowing quite what you are doing, you shut your eyes tight, and you will yourself, with all your might... <>

* ...to wake up. <>
    ~dream_outcome = (closed)
    <i>This is a dream,</i> you tell yourself over and over. <i>I'm not here. I'm in the city of Brightstone, asleep in my bed.</i> You feel yourself drifitng away from the nightmare. You realize, with a pang of guilt, that this means you are also drifting away from Zain. Abandoning him. 
    * * You shake the feeling off[.], trying to cocentrate on what is real. As you do you realize that, dream or not, one thought is realler than all the others:
    
    Your brother is gone.
    
* ...to trade places with him.[] If only you could be the one to be frozen by the basilisk, and your brother could get away. You'd give anything to make that happen.
~dream_outcome = (swapped)
You feel a sudden shift, and you open your eyes. To your surprise you are standing where Zain was a moment before! You look down at the rockslide, expecting to find Zain there, trapped as you were. For once, you are going to protect him. But you see no one. 
You hope that means he got away, but you need to be sure.
    * * You look around[.], searching for your brother. But as soon as you turn, your vision fills with an overwhelming yellow light, accompanied by a deafening hiss. 
    The petrification starts at your limbs. You watch as your fingers turn to marble, then your whole hand. You find you can still move your eyes for a few more seconds, and you follow the line between flesh and stone as it travels up your arm. The line travels past your shoulder, and you feel your chest tighten impossibly as you take your last breath. As you feel your face begin to freeze and your vision dim, you comfort yourself with the knowledge that your sacrfice helped your brother escape. 
    You only wish you could have done the same in reality.

- ->wake_up

=wake_up
* You wake up gasping for air.
# CLEAR
->morning_tea



