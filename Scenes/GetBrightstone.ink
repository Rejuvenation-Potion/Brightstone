===the_heist
VAR used_group1 = false
VAR used_group2 = false
VAR used_group3 = false
LIST guards_alerted = (unseen), seen, alerted

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
* [You head inside.]
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

VAR jobs_established = 0

=the_jobs
//Beat 3: 97 words
{jobs_established >= 2: "That just leaves you, kid," Smudge says.}
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
    
//Beat 5: ~200 words reading
* {CHOICE_COUNT() < 1} "I'll get the Brightstone[."], you say confidently. "Zain and I used to do lifts like this all the time."
    "Sure," Tara says carefully, "but the Brightstone shortage is even worse now than it was back then. Where are you going to get it?"
    * * {HasTrait(studious)} [\[Studious\] “They still store Brightstone in the Lowtown refinery."]
            “They still store refined Brightstone in the Lowtown refinery," you know off the top of your head. 
            "Good thinking, kid!" Smudge exclaims.
    * * ->
    Smudge answers. "You'll have to hit the refinery in Lowtown."
    
    - - <> He looks around and then picks up yet another crumpled roll of parchement from the floor. When he brushes the dirt off, you see the refinery's blueprints.
    "There are a few ways in, but the important thing is here." Smudge points at heavy metal door at the center of the diagram. "They have a small vault inside where they store the refined stuff until some Guild stooge can come collect it." 
    "As a Guild stooge myself," Tara counters dryly, "I've heard that place is a fortress. How are you going to get in?"
    * *  "Just how Zain taught me[."]," you explain. 
        Smudge laughs and claps you on the back. Tara remains stoic<>
        {
            -HasTrait(empathetic):, but you notice a strange look briefly cloud her face. Concern? Disappointment?
            -else:.
        }
        * * * {HasTrait(empathetic)} \[Empathetic\] “Tara, what's wrong?"[] you ask.
            "Oh," Tara starts, surprised. "It's just... Zain was great, but you're your own person, too. You know that right?"
            * * * * "Of course[."]," you say.
                "Good." Tara smiles. "Now, because I worry," she says
            * * * * "What are you really saying?"[] you ask her.
                Tara sighs. "I don't know. I just worry about you. So please," she says,
        * * * {HasTrait(empathetic)} [(Say nothing.)] ->the_approach
            "Because I worry," she says slowly,
        * * * ->the_approach
            "Because I worry," she says slowly,
        - - - 
        -> the_approach
- 
~jobs_established += 1
-> the_jobs

=the_approach
//Beat 6: 30 words
<> "just tell me exactly what your plan is."
You look at the refinery blueprint laid out on the table, and you consider your options. Depending on your approach, it looks like you could enter the refinery from the front, the back, or the roof.
* {HasTrait(strong)} \[Strong\] “I'll climb to the roof and pry open the skylight[."]," you explain. 
    //Beat 1-1: 42 words
    "My arms hurt just thinking about that climb," Smudge laughs. "I could never keep up with you and Zain."
    Tara nods. "Just be careful once you're up there."
    -> split_up_gang ->
    //Beat 1-2: 167 words
    you are in a disused alleyway between the refinery and the canyon wall. At ground level the wall is a dozen feet or more from the building, but just a few feet up it begins curving until it directly overhangs the refinery roof. 
    It might seem like an obvious entry, but you were careful not to be noticed getting here, and you feel confident you have the place to yourself. The mile-high walls of Brightstone Rift are perfectly smooth, so most people would never consider climbing them in any circumstance, let alone to stage a burglary.
    But most people aren't Zain. Zain was always looking for ways to prove his strength, and one way he found were the tiny, finger-tip sized ledges that sparsely dot the seemingly smooth surface of the canyon. He was one of the few people able to reliably climb them, and he taught you as well. You see plenty of those handholds here.
    * * As you dig into your first handholds...
    - - -> strong_story ->
    //Strong outro: 99 words
    ... you find yourself dangling above the roof of the Brightstone refinery, suspended from the final handhold by only your fingertips. You let go and land on the roof with a thud you hope isn't noticable over the din of machinery. From here you are close to the huge skylight windows that run the length of the roof.
    You approach the closest skylight and see it is secured by heavy iron bars. You think back to Zain lifting that cart axle and smile to yourself. This'll be no problem.
    * * You pry open the bars and drop through the open skylight.
    - - ->refinery_roof
//Beat 8: 47 words
* {HasTrait(agile)} \[Agile\] “I’ll hop across the rooftops and drop in through the smokestack[."]," you explain.
    "I never understood how Zain could stand heights like that," Tara says shaking her head.
    "And I've never been in shape to make those jumps!" Smudge laughs. "But I know you've got this, kid."
    -> split_up_gang ->
    //Agile Entrance 184 words
    you are in an open-air market several streets down from the refinery, watching the merchants pack up their stalls for the day. You planned your route to start here, where the buildings are lowest. From here, you'll be able to work your way toward high ground--the ramshackle apartments built directly into the mile-high canyon wall of Brightstone Rift. Once you navigate that network of ladders to its highest point, you should be able to reach the top of the refinery's smokestack, just visible in the distance.
    You see your opening when a nearby fruit merchant leaves her stall to chase away the tiny jerboa mice trying to steal her berries. As soon as she rounds the corner, you begin running at her unattended cart, using a stack of fruit crates to spring onto the roof of the stall, and from there leaping up to grab the edge of the nearest roof. You pull yourself up without losing momentum, and see the route of rooftops laid before you.
    * * As you leap across the first few gaps...
    - - -> agile_story -> 
    //Agile Outro: 132-140 words
    ...you let the arrow fly, now back in the present. Its hooked tip catches successfully on the rim of the refinery's smokestack directly across from you. You pull the rope taut, forming a tightrope. You deftly make your way across, and then you look back and see the route of rooftops you took to get here, leding back to the market far below. In fact, you can see most of the city from here, Brightstone lights twinkling in the twilight across the canyon floor. 
    * * "Zain loved views like this[."]," you think to yourself as you gather up the rope. You realize it's the first time you've been up this high alone.
    * * "I'll bring Zain here once he's back[."]," you think to yourself as you gather up the rope. You imagine how impressed he'll be when he learns you reached this vantage point before him for once.
    - - With that thought, you lower the rope into the smokestack and prepare to climb down.
    * * You rappel down into the refinery.
    -> refinery_roof
* {HasTrait(inventive)} \[Inventive\] “I'll redirect the ore conveyers and ride them to the roof[,"] you explain. 
    TODO 9: Inventive intro
    
    -> split_up_gang ->
    TODO: Inventive entrance
    You wait for the work stoppage at shift change
    * * As you fiddle with the gears...
    -> inventive_story ->
    TODO: Inventive outro
    You make
    * * * You detach your device
    -> refinery_roof
    //Studious Intro: 101 words
* {HasTrait(studious)} \[Studious\] “I know a secret passage past the back gate[,"]," you say. 
    "Really?" Tara asks. "And who else knows about this?"
    "No one," you say confidently. "There are these old mining tunnels connected directly to the refinery, from back before the shortage. They closed them all off after the Brightstone had been mined out."
    Smudge jumps in. "But Zain knew them all like the back of his hand!" 
    "That's right," you say. "He mapped them out himself when he first started hunting for the Basilisk. And I've memorized all his old maps."
    Tara sighs. "Alright, you've convinced me. Just be careful."
    -> split_up_gang ->
    you are deep in the old mining tunnels, the blue glow of your Brightstone lantern the only light in absolute darkness. Many of the passageways have collapsed, so the entrance you had to use was nearly a mile from the refinery. 
    Anyone else would have gotten hoplelessly lost navigating the maze of dead-ends, cave-ins, and disused mining equipment in between, but you are certain of your way. Of all the books and loose documents Zain used to pile in your house, the maps were his favorite. You used to read over his shoulder a lot, and he would quiz you until you knew every detail by heart.
    * * As you run through the map in your head...
    -> studious_story -> 
    ...as you come back to the present, you see light peaking through cracks in the wall ahead of you. You shut off your lantern, and then ease aside a few loose rocks to create an opening. Squeezing through, you are exactly where you expected to be. The old archway directly into the refinery was bricked off long ago, but you are inside the refinery's gate. Just to the side is something else you remember from the blueprints: a back door to the employee lockerrooms. It's propped open.
    * * * You enter the refinery through the door. -> refinery_back
* {HasTrait(observant)} \[Observant\] “I’ll memorize the guards' patrol patterns and slip in the back[.”]," you explain. 
    "There are a lot of guards to keep track of" Tara says. "It's pretty risky."
    "Maybe for you or me," Smudge counters, putting his hand on your shoulder. "Zain could handle it no problem, and I'm sure the kid can too."
    -> split_up_gang ->
    you are down the street from the refinery, waiting to make your move. You've walked up and down this street several times now, casually casing the security. One guard at the front gate; two more on a second-floor balcony that wraps around the building. One of those guards is supposed to watch over the back courtyard, but you've noticed that he is reliably innatentive. Whenever anyone enters through the front gate, he leaves his post and wanders up to join the other guards.
    Sure enough, as the gate opens to let in the night shift workers, you see the guard turn his back to the courtyard--and to the hole in the back fence you noticed while watching his route. Go time.
    * * As you make your move...
    -> observant_story -> 
    ...you come back to the present just as you see the guard's foot reappear around the corner of the building. By the time he fully rounds the corner, you've slipped through the fence and underneath the balcony he patrols. You're right next to the door in, and safely out of view.
    * * * You enter the refinery through the door.
    -> refinery_back
* {HasTrait(empathetic)} \[Empathetic\] “I have a friend inside; he'll open the back gate[."]," you explain.
    "A friend?" Tara asks "Who?"
    "An old miner who helped Zain get started back in the day. Name's Gad."
    "Gad's still around?" Smudge asks, incredulous. "I haven't seen him in close to six years!"
    "He doesn't get around much these days," you say. "He lost his leg in a mining accident. Zain helped take care of him right after it happened. I kept checking in on him even after Zain...." you trail off. "Anyway, he still helps oversee the refinery. He can get me in."
    Tara smiles. "Should've known. You have friends everywhere."
    -> split_up_gang ->
    you are in Gad's house down the street from the refinery, explaining the favor you need over tea.
    "It's no trouble at all!" Gad says, smiling through his bushy gray beard. 'Stone knows you and your brother never ask for anything in return, it's the least I can do. But have one more cup before you go." He points his cane at the teapot and shifts as if to stand.
    "I'll get it," you say, motioning for him to stay as you cross the room.
    * * As you reach for the teapot...
    -> empathetic_story -> 
    ...you come back to reality to the sound of jangling keys, and find yourself at the back gate of the brightsone refinery. Only a small courtyard separates the outer gate from the building itself.
    "Ah, found it!" Gad says finally, and the gate swings open. You step inside, confident you are unseen--Gad also convicend the gate guard to take the evening off.
    "This is probably as far as I go," Gad says, tapping his cane softly against his metal leg, "but I hope you find what you're looking for."
    You thank him, and promise to visit soon. 
    * * * Then you cross the courtyard and slip into the refinery.
    -> refinery_back
* {HasTrait(direct)} \[Direct\] “I’ll just walk in the front like I belong[."],” you say. "Dozens of workers go in and out during shift change. No one will question me."
    "Well you certainly have Zain's confidence!" Smudge remarks.
    Tara nods. "And that confidence took him pretty far. Sometimes too far. Be careful"
    -> split_up_gang ->
    you are standing among the night shift workers outside the refinery, waiting for shift change. Eventually the whistle blows, and you all start filing through the gate. The other workers hold up a small metal emblem as a form of ID. The gate guard notices that you don't.
    "Hey," he says gruffly. "Where's your pass?"
    "Left it inside," you say simply, without breaking stride. The guard stares open-mouthed for a moment, surprised you weren't initimdated by him. 
    * * As you walk inside...
    -> direct_story -> 
    ...you return fully to the present still walking with the crowd of refinery workers. You scan the room and see no sign of the gate guard. He must have deicded you were telling the truth.
    * * * You break off from the crowd.
    -> refinery_front
* {HasTrait(shrewd)} \[Shrewd\] “I'll trade a refinery worker for his entrance pass and uniform[."]," you explain. "Once I have those I can just blend into the crowd."
    "Hmm," Tara says, mulling it over, "that actually seems like a solid plan."
    "But what are you going to trade for them?" Smudge asks. "It won't be cheap, whoever you deal with could get in a lot of trouble handing out their emblem."
    "Leave that to me," you say.
    -> split_up_gang ->
    you are a few streets down from the refinery, trading with a tall, wiry refinery worker named Pasa.
    "One size fits all," Pasa explains ruefully, holding out their uniform. "Everyone looks equally terrible." Then they hold up a medallion about the size of your palm. "This is the important part, the pass to get you inside."
    "So, what's your offer?" Pasa asks guardedly.
    You've made complex trades before, but in this case you offer is simple. You show Pasa a satchel of coins worth about one month of pay at the refinery.
    To help fund your search for Zain, you've been watching the market for years now and strategically pawning belongings--yours, never Zain's--when demand is high. In your mind, it's a calculated risk. You've bet everything on getting Zain back.
    "You've got a deal," Pasa says eagerly.
    * * As you make the exchange...
    -> shrewd_story -> 
    ...you return fully to the present as you file through the refinery gates, indistinguisbale from the other workers surronding you. They each hold up their metal emblem as they pass the gate guard, and you do the same. No one notices anything out of the ordinary. You're inside.
    * * * You slip away from the crowd.
    -> refinery_front
* {HasTrait(charming)} \[Charming\] “I’ll bluff my way in the front gate[."],” you explain. 
    Tara sighs. "Not the way I would have picked, but then again I never was much of a talker."
    Smudge laughs. "Yeah, Zain talked me out of trouble so many times! No one could compare. Oh uh," Smudge stammers, "except maybe you, kid. You've got this."
    -> split_up_gang ->
    you are standing outside the refinery in a group of workers waiting for shift change. When the whistle blows, the night shift workers begin filing in through the front gate, each holding up a small metal emblem as a form of ID. You don't have an emblem, and you aren't wearing the same protective aprons as the rest of the workers, so you know you couldn't hide in the crowd.
    That isn't your style anyway. Instead, you stride right up to the gate guard, with a well-prepared story about how this is only your second day on the job, and how you left your emblem in your apron pocket, and left your apron inside. The guard is a tall and laconic man who appears professionally skeptical, but you are confident you'll convince him.
    * * As you launch into your story...
    -> charming_story -> 
    ...you are still reminicing as the gate guard leads you inside. You made a big show of being lost, and he's giving you a tour.
    "So through there is the locker room, and around the corner is the vault," he tells you. Try not to get them confused, we aren't supposed to let people near, for obvious reasons."
    "Thanks again, Taz," you say, having already gotten on a first name basis with the guard. "I owe you one."
    "Not at all, not at all!" Taz replies jovially. "Just keep better track of your stuff, you hear?"
    * * * "Absolutely," you assure him[.], and Taz happily walks back to his post.
    -> refinery_front

=split_up_gang
//Beat 8: ~40 words
The three of you put your hands together. "We all know the plan," you begin. "We'll meet back here at sunset." Your companions look to you for a final word of encouragement.
* "Let's get Zain back."
* "Everyone be careful."
* "Thank you both for helping me through this."
- # CLEAR
You part ways, and an hour later <>
->->


=refinery_roof
~used_group1 = true
->outside_vault



/*
* {HasTrait(studious)} \[Studious\] You follow the pipes to their source.
    TODO 17: Studious roof
    ~used_group2 = true
    -> studious_story ->
* {HasTrait(observant)} [\[Observant\]] You observe the workers from above.
    TODO 18: Observant roof
    ~used_group2 = true
    -> observant_story ->
* {HasTrait(empathetic)} [\[Empathetic\]] A friend is there waiting for you
    TODO 19: Empathetic roof
    ~used_group2 = true
    -> empathetic_story ->
* {HasTrait(direct)} [\[Direct\]] You drop straight down.
    TODO 20: Direct roof
    ~used_group3 = true
    -> direct_story ->
* {HasTrait(shrewd)} [\[Shrewd\]] You approach the overseer with a bribe? You disguise yourself?
    TODO 21: Shrewd roof
    ~used_group3 = true
    -> shrewd_story ->
* {HasTrait(charming)} [\[Charming\]] You impersonate a worker.
    TODO 22: Charming roof
    ~used_group3 = true
    -> charming_story ->
*/

=refinery_back
~used_group2 = true
->outside_vault

/*
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
    
*/


=refinery_front
~used_group3 = true
->outside_vault

/*
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
    
    */



=outside_vault
You find yourself in a corner of the refinery's main room, a mess of conveyer belts and pipes leading to and from a central furnace. The new shift of workers will fill the room soon, but for a few minutes you are alone. The blueprints told you where to go next, and you waste no time. As you wind your way to the vault, you think back to the plan.
"That'll get you inside" Tara had said. "But getting into the vault itself might be tougher." She points to the heavy metal door in the center of the blueprint.
"I'm sure the kid'll have it handled!" Smudge says, coming to your defense. But he looks anxious. "You do have it handled. Right, kid?"
* {HasTrait(strong) and not used_group1} \[Strong\] "I'll just pry open the door[."]," you say confidently.
    ~used_group1 = true
    Tara begins to scoff, but Smudge butts in. "That'll work! The door itself is strong, but the walls of the refinery are kind of falling apart. Guild tries to keep that quiet. With your strength you should be able to tear the door away from the wall."
    Back in the present, that's exactly what you do. As soon as you reach the vault, you ignore the handle and instead grab onto the doorframe itself. You feel a tiny gap between the door and the bricks surrounding it, just large enough for your fingertips.
    * * As you feel it start to give...
    -> strong_story ->
    ...You come back to the sound of tearing metal and falling brick as the hinges break free of the wall. You've made a gap large enough to fit through but you weren't exactly subtle about it. You hear cries of alarm echoing down the hallway behind you. You'll have to worry about that later.
    * * * You squeeze through the opening and pull the door closed behind you.
* {HasTrait(agile) and not used_group1} \[Agile\] "I'll climb through the vents[."]," you say confidently. 
    ~used_group1 = true
    Tara nods. "That does seem like a good way in. Strange that they haven't blocked it off."
    "Can't be avoided," Smudge says. "Refined Brightstone needs to be kept cool."
    "Now you just need a way into the vents in the first place," Tara observes.
    Inside the refinery, you've found it. An entrance high above a suspended catwalk. You quickly clamber up a wall of twisting pipes, leaping backward from there to grab the edge of the catwalk.
    * * As you climb into the vent...
    -> agile_story ->
    ...and a vent cover clatters to the floor, back in the present. You drop down from the ceiling and find yourself inside the vault, just as you planned. But you hear a commotion outside the closed door--it seems a guard might have heard your entrance. You'll have to deal with that in a minute.
    * * * You turn to face the stash of Brightstone.
* {HasTrait(inventive) and not used_group1} [\[Inventive\]] "I'll create a device to drill through the lock," you explain confidently.
    ~used_group1 = true
    TODO 43: Inventive vault
    -> inventive_story ->
* {HasTrait(studious) and not used_group2} \[Studious\] "I know the combination[."]," you say confidently.
    ~used_group2 = true
    "How? Tara asks. "It changes daily."
    "Yes, but to make sure all the guards can actually remember it, it's based on a formula." You continue, "I ran across the formula a couple years ago when I was studying old Guild records, trying to find anything they knew about the Basilisk."
    "Brilliant, kid!" Smudge says proudly.
    Back in the refinery, you quietly approach the vault door and its large dial lock. You do some quick base 8 math in your head based on today's date, and then spin the dial to enter "56-03-97."
    * * As the door clicks open...
    ... a voice behind you brings you back to reality. "Hey, get away from there!" a gruff voice shouts.
    Shaking away the memory, you dash into the vault and slam it shit behind you. You hear the sound of the dial lock spinning, and then the muffled voice of the guard. "What was that damn combination again? I hate this thing!"
    It sounds like you'll have at least a minute or two.
    * * * You turn to face the stash of Brightstone.
    -> studious_story ->
* {HasTrait(observant) and not used_group2} [\[Observant\]] "I'll
    ~used_group2 = true
    TODO 45: Observant vault
    -> observant_story ->
* {HasTrait(empathetic) and not used_group2} [\[Empathetic\]] 
    ~used_group2 = true
    TODO 46: Empathetic vault
    -> empathetic_story ->
* {HasTrait(direct) and not used_group3} \[Direct\] "I'll 
    TODO 47: Direct vault
    ~used_group3 = true
    -> direct_story ->
* {HasTrait(shrewd) and not used_group3} [\[Shrewd\]] 
    TODO 48: Shrewd vault
    ~used_group3 = true
    -> shrewd_story ->
* {HasTrait(charming) and not used_group3} [\[Charming\]] "I'll 
    TODO 49: Charming  vault
    ~used_group3 = true
    -> charming_story ->

- ->inside_vault

=inside_vault
To your surprise, the vault is almost entirely empty. Your heart drops--was this whole heist for nothing? You search frantically, and find one tiny crate in the far corner of the room. Inside are two blue crystals about as big as your hand. You exhale in relief, but still feel uneasy. If this vault is any indication, then the Brightstone shortage is far worse than the Guild has been letting on.
In any case, it's enough for your purposes. You grab one of the Brightstone crystals and stash it in a pouch. But the sound of a guard pounding on the vault door reminds you there's still work to be done.
* You think back to Smudge's workshop.->the_escape

=the_escape
"Just like that," Smudge had said cheerily, "we'll have the Brightstone we need!"
"Ok, great" Tara had said, looking at you seriously. "Now how are you getting out?"
"Kid won't be noticed," Smudge says overconfidently. "Walk right out."
With the guards closing in, that plan's out the window. You'll have to improvise. 
* You think about what Zain would do[.] You look around, and notice <> 

{ 
    - HasTrait(strong) and not used_group1: something you can do with your strength. 
    - HasTrait(agile) and not used_group1: something to do with agility.
    - HasTrait(inventive) and not used_group1: something to do with invention.
    - HasTrait(studious) and not used_group2: something to do with knowledge.
    - HasTrait(observant) and not used_group2:something to do with observation
    - HasTrait(empathetic) and not used_group2: a way out using empathy.
    - HasTrait(direct) and not used_group3: a way out using direcness.
    - HasTrait(shrewd) and not used_group3:
    - HasTrait(charming) and not used_group3:
}
- It's better than nothing.

* {HasTrait(strong) and not used_group1} \[Strong\] You bash through the wall[.], shoulder checking the weak spot repeatedly until it begins to give.
    * * As you feel the wall fall away...
    -> strong_story ->
    ...you crash into the back courtyard of the refinery in a shower of rubble. You see two guards flanking the open gate, stunned at your sudden entrance. You charge for the gate, bull rushing through the two guards and sending them sprawling to the ground. You hear them scrambling to get up and pursue, but you have too much momentum, and you leave them in the dust.
* {HasTrait(agile) and not used_group1} \[Agile\] You jump for the open vent[.], By kicking off the nearest wall to gain height, you manage to just catch the edge with your fingertips.
    * * As you pull yourself up...
    -> agile_story ->
    ...you disappear into the vent just as you hear a squad of guards burst through the vault door.
    "Huh? There's no one here!" a voice says.
    "Search the grounds!" another answers. "They can't have gotten far!"
    The guards scramble to find you, but you quickly find an exterior vent cover and slip out the gate without them even noticing.
* {HasTrait(inventive) and not used_group1} \[Inventive\] You take the extra Brightstone[.] and combine it with a mix of components from your toolbelt. In a matter of seconds, you've produced a handfull of smoke bombs.
    The rdoor to the vault bursts open, and you throw the first of your bombs to the ground.
    * * As smoke fills the room...
    -> inventive_story ->
    ...you emerge dive into a final cloud of smoke covering the refinery's front gate. By the time the smoke clears, you are gone.
* {HasTrait(studious) and not used_group2} [\[Studious\]] ???
    TODO 44: Studious vault
    -> studious_story ->
* {HasTrait(observant) and not used_group2} [\[Observant\]] 
    TODO 45: Observant vault
    -> observant_story ->
* {HasTrait(empathetic) and not used_group2} [\[Empathetic\]] "I need this for my brother."
    TODO 46: Empathetic vault
    -> empathetic_story ->
* {HasTrait(direct) and not used_group3} \[Direct\] You run right through[.], shoving the surprised guards aside as soon as they get the door open. The guards scramble to give chase, but you've given yourself a big head-start.
    * * As you run directly for the exit...
    -> direct_story ->
    ...you barrel through one final guard at the front gate, and leave the rest in the dust. You've done it.
* {HasTrait(shrewd) and not used_group3} \[Shrewd\] You grab the rest of the Brightstone.
    "Let me out of here, and this is all yours." You hold out the extra chunk of Brightstone. "You can tell them I stole all of it. Just give me five minutes."
    It only takes the guard a split-second to decide.
    "Deal."
    * * As you toss him the crystal...
    -> shrewd_story ->
    ...you are walking casually out the back gate of the refinery. You are long gone by the time you hear an alarm echoing down the twisting alleyways behind you.
* {HasTrait(charming) and not used_group3} [\[Charming\]] You pretend to be a hostage (?)
    TODO 49: Charming  vault
    -> charming_story ->

- As you hurry to meet back up with your friends, you think about the path you took to get here. Everything you did today, you learend from Zain in one way or another. You turn the Brightstone crystal in your palm as you consider that.
* You can't wait to tell him about it.
TODO: Cut this one?
* It makes you remember better times. 
* You wish you didn't still depend on him after all this time.
- You arrive back at Smudge's workshop just as the brightstone streetlights blink on. As the street lights up in blue and green..
* You know immediately that something is wrong.
Smudge's door, already broken, now lies dented and discarded a dozen feet into the road. The doorframe it once covered is cracked and splintered. And spilling out into the street from the pitch black interior is a fresh pool of blood.
->END
//->the_thief


/* 
STRUCTURE NOTE: 
This is a big change from the outline: You use each of your traits exactly once. The details of the heist are exciting but brief: the real point is the memory each trait stirs of a moment with Zain. These will be written out below and tunneled in when the player chooses each trait.
*/

=strong_story
TODO 63: Strong story
...you have a memory of the moment you knew you wanted to be strong like Zain. It's almost 10 years ago, just after you lost your parents. 
<Jean ValJean cart>
* a
* b
- ->->

=agile_story
...you are caught in a memory of a different heist, following Zain as best you can as you leap across four-story rooftops. Zain jumps a particularly large gap and beckons you forward. You're right on his heels, and you leap with all your might.
You realize right away that you aren't going to make it. Zain catches your hand at the last second and pulls you onto the rooftop, where you sprawl out, gasping for air.
"Nice try, but you still have to work on your momentum." Zain says. "Don't worry, we'll take an easier route from here." He leans down and offers his hand to help you up.
* You take his hand[.], grateful, like always, that he was there to catch you.
"That's why we're a team," Zain says, pulling you up. "We've always got each other's backs."
* You push his hand away[.], embarrassed to need his help yet again. Zain backs up, seeing he's offended you.
    "Alright, I get it," he concedes, "you can take care of yourself."
- "Here, how about this" he says, taking his bow from his shoulder, along with a rope arrow. "Instead of more jumping, we're going to make a tightrope to the next building." To your surprise, he hands the bow and arrow to you. The arrow has a hooked tip, and Zain points to a spot on the building across the street where it could attach.
"Think you can make the shot?" he asks, smiling.
You nod.
* You nock the arrrow, draw the bow...
->->

=inventive_story
TODO 65: Inventive story

* a
* b
- ->->

=studious_story
TODO 66: studious story

* "Can we take a break?"
* b
- ->->

=observant_story
TODO 67: observant story

* a
* b
- ->->

=empathetic_story
TODO 68: empathetic story
You do good just to do good, not to amass favors. Karma handles that.
* a
* b
- ->->

=direct_story
TODO 69: direct story

* a
* b
- ->->

=shrewd_story
TODO 70: shrewd story

* a
* b
- ->->

=charming_story
TODO 71: charming story

* a
* b
- ->->

