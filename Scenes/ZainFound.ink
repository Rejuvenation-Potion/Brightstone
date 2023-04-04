===zain_found
//TODO: Start scene on specific job
{ 
    -HasTrait(strong):
    -HasTrait(agile):
    -HasTrait(inventive):
    -else: <>
}
Tara visits you
->tara_questions

=tara_questions
//TODO: Tara tells you Zain has been found, and you have an opportunity to ask questions
{Stuff | to say | each time}

* When did this happen?
* Where did they find him?
* Is he alright?
* Why didn't Dierdre tell me?
+ We're going now.
    ->mining_guild_exterior

- ->tara_questions

=mining_guild_exterior
//TODO: You are turned away, but you and Tara identify ways in
When you get to the Mining Guild, they aren't letting anyone in. But your pendant reacts?

Tara takes you aside and asks you if you want to back out.
* "No way."
->use_trait

=use_trait
//TODO: Walk the perimiter and identify ways inside? SCOPE
//TODO: You use your skills to find a way inside
- You need to find a way inside. You consider your options.
* {HasTrait(strong)} [\[Strong\]] "I'll go haul crates with the other workers."
* {HasTrait(agile)} [\[Agile\]] "I'll climb over the back gate."
* {HasTrait(inventive)} [\[Inventive\]] "I'll set off a distraction."
* {HasTrait(studious)} [\[Studious\]] "I know a secret way in from the blueprints." 
* {HasTrait(observant)} [\[Observant\]] "Someone left a window open down the alley." 
* {HasTrait(empathetic)} [\[Empathetic\]] "I'll convince the guard to help me." 
* "What do you think I should do?"
->use_trait

- ->mining_guild_interior

=mining_guild_interior
//TODO: Going off-outline here: You use a second trait to find out where Zain is
You're inside. Now you have to find Zain, if he's really here.

* {HasTrait(strong)} [\[Strong\]] You bust down the door.
* {HasTrait(agile)} [\[Agile\]] You climb down from the balcony.
* {HasTrait(inventive)} [\[Inventive\]] You pick the lock
* {HasTrait(studious)} [\[Studious\]] "I know the building."
* {HasTrait(observant)} [\[Observant\]] You see Deirdre slip out of a room down a darkened hallway.
* {HasTrait(empathetic)} [\[Empathetic\]] "I'm looking for my brother. Can you help me?"

- ->face_to_face

=face_to_face
//TODO: You come face to face with Zain. Physical description of him frozen there, Greek statue perfection
//TODO: You decide how to react to him
* You freeze.
* You embrace him.
* You speak to him.
    * * {HasTrait(strong)} [\[Strong\]] "I've been doing what you taught me."
    * * {HasTrait(agile)} [\[Agile\]] "I've been doing what you taught me."
    * * {HasTrait(inventive)} [\[Inventive\]] "I've been doing what you taught me."
    - -
+ You touch your pendant.
    It is glowing fiercely, and you feel it pulling against your hand.
    + + You hold out the pendant.
        Zain's pendant--only the pendant--breaks free from the marble.
        ->deirdre_arrives

- ->face_to_face

=deirdre_arrives
//TODO: Deirdre arrives and pretends to be your friend, but is secretly angry. She pretends not to believe that revial is possible. 
* "It is possible."
->deirdre_questions

=deirdre_questions
//TODO: You ask Deirdre for help with the three steps of revival. She has excuses for why she can't provide them, and continously discourages you.
* I need basilisk eyes
* I need Brightstone.
* I need an Arcanist.
* ->be_back_soon
- ->deirdre_questions

=be_back_soon
//TODO: You promise Deirdre--and Zain--that you will be back soon to revive him
* I won't let you down.

//TODO: On your way out the door your knowledge skill alerts you that something is wrong
* {HasTrait(studious)} [\[Studious\]] You notice an error in Deirdre's logic.
* {HasTrait(observant)} [\[Observant\]] Just before the door shuts, you notice a dark figure appraoch Deirdre.
* {HasTrait(empathetic)} [\[Empathetic\]] You notice something menacing underneath Deirdre's words.


//TODO: You and Tara reconvene and decide your next step is to tell Smudge.

-You and Tara reconvene and decide your next step is to tell Smudge.

//TODO: You are taking Zain back to your house? Leave him with Tara?
* Let's go.
->recruit_smudge

->END