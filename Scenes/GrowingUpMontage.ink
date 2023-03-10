===growing_up

TODO: You want to rescue Zain (or do you choose), but you have no means to do so. In the short term, you need to find a way to support yourself alone. Alternatively, you rely on Tara and Smudge.
In the days immedaitaely following Zain's disappearance,

Before you could figure out how to rescue Zain, however, other problems presented themselves. Like Zain had said, after about a month the food ran out.
->get_a_job

TODO: Job beat = I don't know how to support myself -> I'll use my brother's skill. Crisis: Do I want to confront the mines or stay as far away from them as possible? 
=get_a_job
{On the first week after Zain disappeared|On the second week}
* You waited for him to return.
* You tried to chase after him.
* You asked Zain's friends for clues.
* {HasTrait(strong)} You dig new tunnels in the mines.
* {HasTrait(agile)} You scout new passages in the mines.
* {HasTrait(inventive)} You help build new mining rigs.

- 

You needed to find a way to support yourself
* {HasTrait(strong)} You dig new tunnels in the mines.
    ~job_in_mines = true
* {HasTrait(strong)} You build houses far from the mines.
    ~job_in_mines = false
    
* {HasTrait(agile)} You scout new passages in the mines.
    ~job_in_mines = true
* {HasTrait(agile)} You run messages to other cities.
    ~job_in_mines = false
    
* {HasTrait(inventive)} You help build new mining rigs.
    ~job_in_mines = true
* {HasTrait(inventive)} You help maintain the city's power grid.
    ~job_in_mines = false
    
* You don't know what to do.

- ->complications

=complications
TODO: With your immediate needs met, you begin planning a rescue (approach based on your skill?). However, you have very little indication where to start. Zain took all his notes with him, and he didn't tell you exactly where he was going. You try a number of 

* Y
* You ask his friends
* You think about 


- ->second_trait

=second_trait

* Studious
* Observant
* Empathetic

- ->missing_pieces

=missing_pieces

TODO: You remain dead set on rescuing Zain OR You try to put it out of mind
TODO: Resolution


->END