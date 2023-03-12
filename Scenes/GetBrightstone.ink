===the_heist
VAR used_group1 = false
VAR used_group2 = false
VAR used_group3 = false
TODO: The Plan
You Smudge, and Tara go over the plan. 
->smudge_workshop
=smudge_workshop
* Tara
    Tara will retrieve the other materials you've already gathered
* Smudge
    Smudge will construct the machinery
* {CHOICE_COUNT() < 1} "I'll get the Brightstone"
    ->the_approach
- ->smudge_workshop

=the_approach
TODO: 
Smudge tells you about the Refinery, and asks how you plan to get inside.
* {HasTrait(strong)} [\[Strong\]] “I’ll use my strength to break into the refinery”
    ->refinery_roof
* {HasTrait(agile)} [\[Agile\]] “I’ll use my agility to break into the refinery”
    ->refinery_roof
* {HasTrait(inventive)} [\[Inventive\]] “I’ll use my mechanical expertise to break in”
    ->refinery_roof
* {HasTrait(studious)} [\[Studious\]] “I have blueprints for the whole city."
    ->refinery_back
* {HasTrait(observant)} [\[Observant\]] “I’ll memorize the guard patterns”
    ->refinery_back
* {HasTrait(empathetic)} [\[Empathetic\]] “I have a friend in the guard."
    ->refinery_back
* {HasTrait(direct)} [\[Direct\]] “I’ll just walk in like I belong”
    ->refinery_front
* {HasTrait(shrewd)} [\[Shrewd\]] “I’ll bribe the guard”
    ->refinery_front
* {HasTrait(charming)} [\[Charming\]] “I’ll bluff my way in.”
    ->refinery_front


=refinery_roof
~used_group1 = true
TODO: Choose between Group 2 and 3 traits
* {HasTrait(studious)} [\[Studious\]]
    ~used_group2 = true
* {HasTrait(observant)} [\[Observant\]] 
    ~used_group2 = true
* {HasTrait(empathetic)} [\[Empathetic\]] 
    ~used_group2 = true
* {HasTrait(direct)} [\[Direct\]] 
    ~used_group3 = true
* {HasTrait(shrewd)} [\[Shrewd\]] 
    ~used_group3 = true
* {HasTrait(charming)} [\[Charming\]] 
    ~used_group3 = true

- ->outside_vault

=refinery_back
~used_group2 = true
TODO: Choose between Group 1 and 3 traits
* {HasTrait(strong)} [\[Strong\]]
    ~used_group1 = true
* {HasTrait(agile)} [\[Agile\]] 
    ~used_group1 = true
* {HasTrait(inventive)} [\[Inventive\]]
    ~used_group1 = true
* {HasTrait(direct)} [\[Direct\]] 
    ~used_group3 = true
* {HasTrait(shrewd)} [\[Shrewd\]] 
    ~used_group3 = true
* {HasTrait(charming)} [\[Charming\]] 
    ~used_group3 = true

- ->outside_vault

=refinery_front
~used_group3 = true
TODO:Choose between Group 1 and 2 traits
You spot someone who recognizes you

* {HasTrait(strong)} [\[Strong\]] 
    ~used_group1 = true
* {HasTrait(agile)} [\[Agile\]] 
    ~used_group1 = true
* {HasTrait(inventive)} [\[Inventive\]] 
    ~used_group1 = true
* {HasTrait(studious)} [\[Studious\]] 
    ~used_group2 = true
* {HasTrait(observant)} [\[Observant\]] 
    ~used_group2 = true
* {HasTrait(empathetic)} [\[Empathetic\]] 
    ~used_group2 = true

- ->outside_vault



=outside_vault
TODO: Choose between 2 traits, cannot repeat the one you just used
* {HasTrait(strong) and not used_group1} [\[Strong\]] 
* {HasTrait(agile) and not used_group1} [\[Agile\]] 
* {HasTrait(inventive) and not used_group1} [\[Inventive\]] 
* {HasTrait(studious) and not used_group2} [\[Studious\]] 
* {HasTrait(observant) and not used_group2} [\[Observant\]] 
* {HasTrait(empathetic) and not used_group2} [\[Empathetic\]]
* {HasTrait(direct) and not used_group3} [\[Direct\]] 
* {HasTrait(shrewd) and not used_group3} [\[Shrewd\]] 
* {HasTrait(charming) and not used_group3} [\[Charming\]]

- ->inside_vault

=inside_vault

->the_escape

=the_escape
TODO: Absolutely no idea what the interaction is here. Maybe just one more trait choice?
* {HasTrait(strong)} [\[Strong\]] 
    ~used_group1 = true
* {HasTrait(agile)} [\[Agile\]] 
    ~used_group1 = true
* {HasTrait(inventive)} [\[Inventive\]] 
    ~used_group1 = true
* {HasTrait(studious)} [\[Studious\]] 
    ~used_group2 = true
* {HasTrait(observant)} [\[Observant\]] 
    ~used_group2 = true
* {HasTrait(empathetic)} [\[Empathetic\]] 
    ~used_group2 = true
* {HasTrait(direct)} [\[Direct\]] 
    ~used_group3 = true
* {HasTrait(shrewd)} [\[Shrewd\]] 
    ~used_group3 = true
* {HasTrait(charming)} [\[Charming\]] 
    ~used_group3 = true


->the_thief


TODO: This is a big change from the outline: You use each of your traits exactly once. The details of the heist are exciting but brief: the real point is the memory each trait stirs of a moment with Zain. These will be written out below and tunneled in when the player chooses each trait.

=strong_story
TODO
->DONE

=agile_story
TODO
->DONE

=inventive_story
TODO
->DONE

=studious_story
TODO
->DONE

=observant_story
TODO
->DONE

=empathetic_story
TODO
->DONE

=direct_story
TODO
->DONE

=shrewd_story
TODO
->DONE

=charming_story
TODO
->DONE

