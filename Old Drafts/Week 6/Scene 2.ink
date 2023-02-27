===act1_scene2
You've managed to make it inside.
->break_in

=break_in
You start talking to the man.
* Talk 1
* Talk 2
* Talk 3

- Deirdre tells you not to.

Deirdre gets distracted.
->introductions

=introductions
The man seems nervous
You help him with your skill, or by asking a question
* Strong
* Agile
* Inventive
* Question 1
* Question 2

- The man warms up to you
->questions

=questions
The man is willing to answer your questions
* Question 1
* Question 2
* Question 3
* {CHOICE_COUNT() < 1} "I feel like there's something you aren't telling me."
- There's something he's not telling you.

->memory

=memory
You have a memory of how your brother talked to people.
* Empathetic
* Insightful
* Perceptive

- You can use that here
->second_trait

=second_trait
* Empathetic
* Insightful
* Perceptive

-You get a clue from each approach.

Deirdre returns and tells you to leave

You get your first choice between multiple traits.

* Strong
* Agile
* Inventive
* Empathetic
* Perceptive
* Insightful
* Other

- You know how to find your brother. And you know you need to find Smudge.

->bottom_of_the_barrel