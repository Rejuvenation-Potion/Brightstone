===the_heist
VAR used_group1 = false
VAR used_group2 = false
VAR used_group3 = false

TODO: Find Observant opportunity in the Smudge house scene

// I broke this scene into 100 word chunks essentially, I've labled them as numbered beats, with actual word count
// Editor's note: ha ha ha ha ha ha ha ha

//Beat 1: 237 words reading (exact)
//Trait opportunity: Studious knows something about the weather, Observant spots Tara early/notices Smudge's reaction to the door, empathetic gets more about Smudge wishing he looked better
It isn't far to Smudge's rundown home in the lowest part of the city, but the day is even hotter than normal, and you are both sweating by the time you get there. You find Tara waiting for you. She is leaning against his door in the shade of a ramshackle tin awning, taking cover from the sun, which will still be directly over the canyon for at least another hour. 

"Felson!" Tara calls out, walking out of the shade to greet you. "You look just as bad as ever!" She extends a hand.

Smudge laughs, but also involuntarily runs a hand over his head, trying in vain to smooth down his wild hair. It springs back immediately, and also leaves a thick coat of soot on Smudge's palm. He smears it across his apron hurriedly before finally clasping Tara's hand.

"It's been too long, Ms. Brin!" Smudge croaks. "Let me just get my keys...." He begins fumbling in his many pockets.

"Don't bother. Your door's broken again." Tara strides back to the door. As she pulls the handle, the door immediately topples off its hinges and into the street with a loud clang. "I was hanging around so no one would try to break in."

"I swear I finally fixed that..." Smudge mutters, lost for a moment. He shakes himself out of it, and motions you inside with a too-grand gesture.

"Please, after you."

//Possible other responses just for flavor, like matching his grandness, or "damn, you live like this?"
* You head inside.
- -> smudge_workshop

=smudge_workshop
//Beat 2: Getting down to business, 150ish words reading
TODO Research: How do you keep water cool in the desert/desert towns?
Smudge's house is, predictably, even more of a mess on the inside. But before long you've all found a perch among the piles of schematics and machine parts and are passing around a skin of cool water Smudge dug out of his cellar. As you catch Smudge up on the plan, you realize this is the first time since Zain left that the three of you have just sat and talked. It's comforting...
    * ...and you want to sit in it for a moment.[] 
    As you talk, you learn how much of your friends' lives you've missed over the last five years. Tara spent a year leading caravans across the desert before coming back to her old job at the Guild. Smudge got involved with an effort to map the underground, but it fell apart. But Zain was what held you all together, and the conversation inevitably turns back to him.
    * ...but there's no time to waste.[] You interrupt to get your companions back on track, and Smudge hurriedly gathers a pile of blueprints from odd corners of the room.
- It isn't long before you have your plan laid out in front of you. If you're going to revive Zain, each of you has a job to do.
->the_jobs

=the_jobs
//Beat 3: 97 words
{CHOICE_COUNT() < 1: "That just leaves you, kid," Smudge says.}
* "Tara, do we have everything we need?"[]
    "I'm going back to the Mining Guild to set up the ritual," Tara says. She places her satchel on the table. "I've already gathered the basic reagents we kept at my house, I just need to pick up the delicate stuff from your place," she says.
        * * "Of course[."]," you say, handing over your house key.
        Smudge's eyebrows raise. "Are you sure you have everything? Silvered ashes? Oasis water? Orchid--"
        "The two of us have been planning this for a long time." Tara says simply.
        "Right." Smudge lowers his eyes. "Sorry."
        
//Beat 4: 163 words
* "Smudge, you said you had plans for a machine?" []
    "That's right!" Smudge spring from his chair and begins rumaging through a pile of machine parts. "A catalysis device to begin the ritual. It adds the enrergy to kick everything off, essentially." 
    Tara crosses her arms. "And you can build this thing in one night?"
   "It's almost finished. I actually started work on this right after... well a long time ago, you know." He pauses. "I just lost hope that I'd get a chance to use it. Ah, found it!"
    Smudge lifts a metallic circlet out of a heap of scrap. He returns and places it gingerly on the table. 
    Tara squints. "So it's some sort of crown? Do we put it on Zain's head?"
    "Yes. You put the reagents in these chambers," Smudge points to several small recesses. "It should even be reusable. I just need the Brightstone to power it." He indicates a large empty circle in the front of the device.
    TODO: Optional more magic explanation here?
    /*
    * * "How does this work exactly?"
        "Reanimation is about restoring elemental balance. Someone who's been petrified has had all their other elements replaced by earth. Zain needs something to reverse the earth imbalalnce and get the other elements flowing through his body again." 
        He unrolls a hand-drawn blueprint. "In the old days they couldn't find a way to reliably channel the elements in one direction. The reagents would just get consumed and wasted. But they didn't have Brightstone back then! I've designed a catalysis device that will do exactly what we need. It should even be reusable! I just need the Brightstone to power it.
    "I actually built most of it 
    */
    
//Beat 5: 
* {CHOICE_COUNT() < 1} "I'll get the Brightstone[."], you say confidently. "Zain and I used to do lifts like this all the time."
    "Sure," Tara says carefully, "but the Brightstone shortage is even worse now than it was back then. Where are you going to get it?"
    * * {HasTrait(studious)} [\[Studious\] “They still store Brightstone in the Lowtown refinery."]
            “They still store refined Brightstone in the Lowtown refinery," you know off the top of your head. 
            "Good thinking, kid!" Smudge exclaims.
    * * ->
    Smudge answers. "You'll have to hit the refinery in Lowtown."
    
    - - <> He looks around and then picks up yet another crumpled roll of parchement from the floor. When he brushes the dirt off, you see the refinery blueprints.
    "There are a few ways in, but the important thing is here." Smudge points at the center of the diagram. "They have a small vault inside where they store the refined stuff until some Guild stooge can come collect it." 
    "As a Guild stooge myself," Tara counters dryly, "I've heard that place is a fortress. How are you going to get in?"
    * *  "Just how Zain taught me[."] you explain. 
        Smudge laughs and claps you on the back. Tara remains stoic<>
        {
            -HasTrait(empathetic):, but you notice a strange look briefly cloud her face. Concern? Disappointment?
            -else:.
        }
        * * * {HasTrait(empathetic)} [\[Empathetic\]] “Tara, what's wrong?"
            "Oh," Tara starts, surprised. "It's just... Zain was great, but you're your own person, too. You know that right?"
            * * * * "Of course[."]," you say.
                "Good." Tara smiles. "Now, because I worry," she says
            * * * * "What are you really saying?"[] you ask her.
                Tara sighs. "I don't know. I just worry about you. So please," she says
        * * * {HasTrait(empathetic)} [(Say nothing.)] ->the_approach
            "Because I worry," she says slowly,
        * * * ->the_approach
            "Because I worry," she says slowly,
    -> the_approach
- -> smudge_workshop

=the_approach
//Beat 6: 30 words
<> "just tell me exactly what your plan is."
You look at the refinery blueprint laid out on the table, and you consider your options.
* {HasTrait(strong)} [\[Strong\]] “I’ll climb to the balcony and pry open the window.”
    TODO 7: Strong entrance
    -> strong_story -> refinery_roof
* {HasTrait(agile)} [\[Agile\]] “I’ll scale the canyon wall and drop in from the roof.”
    TODO 8: Agile entrance
    -> agile_story -> refinery_roof
* {HasTrait(inventive)} [\[Inventive\]] “I'll redirect the ore conveyers and ride them to the roof."
    TODO 9: Inventive entrance
    -> inventive_story ->refinery_roof
* {HasTrait(studious)} [\[Studious\]] “I know a secret passage."
    TODO 10: Studious entrance
    -> studious_story -> refinery_back
* {HasTrait(observant)} [\[Observant\]] “I’ll memorize the guards' patrol patterns”
    TODO 11: Observant entrance
    -> observant_story -> refinery_back
* {HasTrait(empathetic)} [\[Empathetic\]] “I have a friend who works inside."
    TODO 12: Empathetic entrance
    -> empathetic_story -> refinery_back
* {HasTrait(direct)} [\[Direct\]] “I’ll just walk in like I belong”
    TODO 13: Direct entrance
    -> direct_story -> refinery_front
* {HasTrait(shrewd)} [\[Shrewd\]] “I’ll bribe the gate guard.”
    TODO 14: Shrewd entrance
    -> shrewd_story -> refinery_front
* {HasTrait(charming)} [\[Charming\]] “I’ll bluff my way in.”
    TODO 15: Charming entrance
    -> charming_story -> refinery_front


=refinery_roof
~used_group1 = true
TODO 16: Roof challenge: Choose between Group 2 and 3 traits
* {HasTrait(studious)} [\[Studious\]]
    TODO 17: Studious roof
    ~used_group2 = true
    -> studious_story ->
* {HasTrait(observant)} [\[Observant\]] 
    TODO 18: Observant roof
    ~used_group2 = true
    -> observant_story ->
* {HasTrait(empathetic)} [\[Empathetic\]] 
    TODO 19: Empathetic roof
    ~used_group2 = true
    -> empathetic_story ->
* {HasTrait(direct)} [\[Direct\]] 
    TODO 20: Direct roof
    ~used_group3 = true
    -> direct_story ->
* {HasTrait(shrewd)} [\[Shrewd\]] 
    TODO 21: Shrewd roof
    ~used_group3 = true
    -> shrewd_story ->
* {HasTrait(charming)} [\[Charming\]] 
    TODO 22: Charming roof
    ~used_group3 = true
    -> charming_story ->

TODO 23: Roof wrap-up
- ->outside_vault

=refinery_back
~used_group2 = true
TODO 24: Back entrance challenge: Choose between Group 1 and 3 traits
* {HasTrait(strong)} [\[Strong\]]
    TODO 25: Strong back
    ~used_group1 = true
    -> strong_story ->
* {HasTrait(agile)} [\[Agile\]] 
    TODO 26: Agile back
    ~used_group1 = true
    -> agile_story ->
* {HasTrait(inventive)} [\[Inventive\]]
    TODO 27: Inventive back
    ~used_group1 = true
    -> inventive_story ->
* {HasTrait(direct)} [\[Direct\]] 
    TODO 28: Direct back
    ~used_group3 = true
    -> direct_story ->
* {HasTrait(shrewd)} [\[Shrewd\]] 
    TODO 29: shrewd back 
    ~used_group3 = true
    -> shrewd_story ->
* {HasTrait(charming)} [\[Charming\]] 
    TODO 30: charming back
    ~used_group3 = true
    -> charming_story ->
    
TODO 31: Back entrance wrap-up
- ->outside_vault

=refinery_front
~used_group3 = true
TODO 32: Front entrance challenge: Choose between Group 1 and 2 traits
You spot someone who recognizes you

* {HasTrait(strong)} [\[Strong\]] 
    TODO 33: Strong front
    ~used_group1 = true
    -> strong_story ->
* {HasTrait(agile)} [\[Agile\]]
    TODO 34: Agile front
    ~used_group1 = true
    -> agile_story ->
* {HasTrait(inventive)} [\[Inventive\]] 
    TODO 35: Inventive front
    ~used_group1 = true
    -> inventive_story ->
* {HasTrait(studious)} [\[Studious\]] 
    TODO 36: Studious front
    ~used_group2 = true
    -> studious_story -> 
* {HasTrait(observant)} [\[Observant\]] 
    TODO 37: Observant front
    ~used_group2 = true
    -> observant_story ->
* {HasTrait(empathetic)} [\[Empathetic\]] 
    TODO 38: Empathetic front
    ~used_group2 = true
    -> empathetic_story ->

TODO 39: Front entrance wrap-up
- ->outside_vault



=outside_vault
TODO 40: Final challenge: Choose between 2 traits, cannot repeat the one you just used. Only one choice, so effectively tailored to exact trait.
* {HasTrait(strong) and not used_group1} [\[Strong\]] 
    TODO 41: Strong vault
    -> strong_story ->
* {HasTrait(agile) and not used_group1} [\[Agile\]] 
    TODO 42: Agile vault
    -> agile_story ->
* {HasTrait(inventive) and not used_group1} [\[Inventive\]] 
    TODO 43: Inventive vault
    -> inventive_story ->
* {HasTrait(studious) and not used_group2} [\[Studious\]] 
    TODO 44: Studious vault
    -> studious_story ->
* {HasTrait(observant) and not used_group2} [\[Observant\]] 
    TODO 45: Observant vault
    -> observant_story ->
* {HasTrait(empathetic) and not used_group2} [\[Empathetic\]]
    TODO 46: Empathetic vault
    -> empathetic_story ->
* {HasTrait(direct) and not used_group3} [\[Direct\]] 
    TODO 47: Direct vault
    -> direct_story ->
* {HasTrait(shrewd) and not used_group3} [\[Shrewd\]] 
    TODO 48: Shrewd vault
    -> shrewd_story ->
* {HasTrait(charming) and not used_group3} [\[Charming\]]
    TODO 49: Charming  vault
    -> charming_story ->

TODO 50: Final challenge wrap-up
- ->inside_vault

=inside_vault
TODO 51: Inside the vault
->the_escape

=the_escape
TODO 52: Absolutely no idea what the interaction is here. Maybe just one more trait choice?
* {HasTrait(strong)} [\[Strong\]] 
    TODO 53: Strong escape
* {HasTrait(agile)} [\[Agile\]] 
    TODO 54: Agile escape
* {HasTrait(inventive)} [\[Inventive\]] 
    TODO 55: Inventive escape
* {HasTrait(studious)} [\[Studious\]] 
    TODO 56: Studious escape
* {HasTrait(observant)} [\[Observant\]] 
    TODO 57: Observant escape
* {HasTrait(empathetic)} [\[Empathetic\]] 
    TODO 58: Empathetic escape
* {HasTrait(direct)} [\[Direct\]] 
    TODO 59: Direct escape
* {HasTrait(shrewd)} [\[Shrewd\]] 
    TODO 60: Shrewd escape
* {HasTrait(charming)} [\[Charming\]] 
    TODO 61: Charming escape

TODO 62: Scene resolution
->the_thief


/* 
STRUCTURE NOTE: 
This is a big change from the outline: You use each of your traits exactly once. The details of the heist are exciting but brief: the real point is the memory each trait stirs of a moment with Zain. These will be written out below and tunneled in when the player chooses each trait.
*/

=strong_story
TODO 63: Strong story
->DONE

=agile_story
TODO 64: Agile story
->DONE

=inventive_story
TODO 65: Inventive story
->DONE

=studious_story
TODO 66: studious story
->DONE

=observant_story
TODO 67: observant story
->DONE

=empathetic_story
TODO 68: empathetic story
->DONE

=direct_story
TODO 69: direct story
->DONE

=shrewd_story
TODO 70: shrewd story
->DONE

=charming_story
TODO 71: charming story
->DONE

