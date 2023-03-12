===growing_up

TODO: Realizing Zain isn't coming back. Can cope a different way each week until the food runs out. Need to: Briefly Introduce Smudge, Tara, and Deirdre (and Tabetha?). 
=waiting_for_zain
{On the first week after Zain disappeared...|On the second week...|On the third week...|Finally, the food ran out. You had to face the truth.}
* You waited for him to return.
    Nothing happens.
* You tried to chase after him.
    You found that the mines were off-limits to everyone suddenly.
* You asked Zain's friends for clues.
    Smudge and Tara haven;t heard from him, and he hadn't told them anything specific about his mission.
* You check at his job.
    Deirdre seems surprised at his absence, and says she had no idea. She never would have told him to do something so dangerous. She promises she will tell you as soon as she has news.
+ {CHOICE_COUNT() < 1} You had to face the truth.
    Zain wasn't coming back.
    ->get_a_job
    
- ->waiting_for_zain


=get_a_job
TODO: The moment you decide to use Zain's skills to survive
Tara and Smudge checked in on you and could help you in the short term, but you knew you needed to find a way to support yourself. 

* {HasTrait(strong)} [\[Strong\]] "I'll use what my brother taught me."
* {HasTrait(agile)} [\[Agile\]] "I'll use what my brother taught me."
* {HasTrait(inventive)} [\[Inventive\]] "I'll use what my brother taught me."

TODO: A character lays out your two options. Dierdre for Strong, Tara for Agile, Smudge for Inventive. Makes clear that one will take you far away from thinking about Zain, the other very close.

- You need to decide if your job will either take you close to where Zain disappeared, or as far away as possible.

* {HasTrait(strong)} You dig new tunnels in the mines.
    ->job_in_mines
* {HasTrait(strong)} You build houses far from the mines.
    ->job_far_away
* {HasTrait(agile)} You scout new passages in the mines.
    ->job_in_mines
* {HasTrait(agile)} You run messages to other cities.
    ->job_far_away
* {HasTrait(inventive)} You help build new mining rigs.
    ->job_in_mines
* {HasTrait(inventive)} You help maintain the city's power grid.
    ->job_far_away

=job_in_mines
TODO: Short summary of your job; You are obsessed with finding Zain but stuck in a spiral, not getting anywhere. Short exposition about the city
You work your job in the mines, <>
{
    -HasTrait(strong): digging day in and day out. The work is methodical, 
    -HasTrait(agile): carefully charting new paths and tunnels. The work is solitary, 
    -HasTrait(inventive): The work is routine, 
    -else: and you barely notice the details. The work is monotonous, 
}
<> which gives you plenty of time to obsess over finding Zain.
You gathering what tiny scraps of evidence you can, but you are not getting anywhere.

->rumors_and_exposition

=job_far_away
TODO: Short summary of your job; You try to put Zain out of your mind, but it doesn't work, and you go into a spiral. Short exposition about the city
You work your job far from the mines.
{
    -HasTrait(strong): <>
    -HasTrait(agile): <>
    -HasTrait(inventive): <>
    -else: <>
}
You try to put Zain far from your mind, but any time you hear about other miners disappearing, it brings you right back to that night.
->rumors_and_exposition

=rumors_and_exposition
TODO: Regardless of your job, you hear some important exposition--other people are disappearing. You also hear rumors of a petrification cure, but can't find anything concrete

* You check in with Tara and Smudge.
You learn other people are disappearing. This isn't unheard of, but it's getting more frequent.
->rumors_and_exposition

* You hear rumors.
You also hear rumors of a petrification cure, but can't find anything concrete.
->rumors_and_exposition

TODO: More investigate branches?

+ You think about what Zain would do
->second_trait

=second_trait
TODO: You think about how Zain learned new things. Each branch has a short example of Zain using that skill.
You realize you need new information. You realized that Zain mostly learned new things by...

* Studying books and history.
    ~AddTrait(studious, true)
* Observing his environment.
    ~AddTrait(observant, true)
* Talking to other people.
    ~AddTrait(empathetic, true)

- ->five_year_investigation
=five_year_investigation
TODO: You use your new skill. You discover the rules of petrification and revival, that revival is possible, and what ingredients/steps you would need to do it. You feel like you get close to finding Zain, but the pieces don't add up. It is like he is being moved.
For the next five years, 
* {HasTrait(studious)} [\[Studious\]] You read every book you can find.
* {HasTrait(observant)} [\[Observant\]] You notice things no one else seems to.
* {HasTrait(empathetic)} [\[Empathetic\]] You connect with other victims of the Basilisk.

- You discover the rules of petrification and revival, that revival is possible, and what ingredients/steps you would need to do it. You feel like you get close to finding Zain, but the pieces don't add up. It is like he is being moved.

TODO: Your efforts actually DO lead to Zain being found multiple times, but Deirdre covers it up. Until finally, Tara happens to see him being moved into the Mining Guild

->zain_found