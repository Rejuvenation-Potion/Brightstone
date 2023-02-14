===morning_tea
->wake_up
=wake_up
You wake up gasping for air. You untangle yourself from your sheets and reflexively look across the room at Zain's bed. 

It's empty, of course. He went missing deep in the mines nearly a month ago. Ironically, he was out there trying to save others who the basiliks had taken. Basilisk petrification is terrible, but there are rituals that can reverse it, as long as they are performed within one month of petrification. So the Miner's Guild employs teams of Rescuers, specially trained heroes who venture out beyond the mines and recover petrified miners.

Zain was a Rescuer, one of the best. But there were certain missing people that disappeared in places the guild deemed too dangerous to reach. That frustrated Zain; he wanted to save everyone. So one day he went out alone to get them anyway. He never came back.

You weren't actually there when it happened. No one was. But what else happens to people out in the tunnels? You've been seeing it every night in your dreams regardless.

 * You try to go back to sleep[...], but it's no use. You get up and pace around, your thoughts locked on your brother, and how his time is running out. Eventually, there is a knock at the door.
 * * You answer it[.], thankful for the interruption from your racing thoughts.
 ->deirdra


=deirdra
Half an hour later you are sitting in cramped living space of your two room house. Deirdra, the kind older woman who has been checking in on you since your brother's diappearance, is making tea over a low fire. You talked about simpler things for a while, but now you are recounting your nightmare to her.

"Zain was there, digging me out," you say, "just like always."

"That is just like him, isn't it?" Deirdra shakes he head and gives a small, sad laugh. Deirdra's husband is the head of the Mining Guild, and your brother knew both of them well.

Dierdra gently places the kettle on the table before you, and then sits down across from you.

"Well," she asks, "what happened next?"

TODO: Responses
* {dream_outcome == (closed)} "I woke myself up[."]," you explain. "I knew I was dreaming this time, so I just stopped it."
    "Good for you
* {dream_outcome == (closed)} "I left him behind[,"] you say with some guilt. "I saw him in trouble, and I just decided to wake up."
    "Oh nonsense, dearie!" Deirdra admonishes you. "It wasn't real. You did the right thing. That was a big step you took for yourself."
* {dream_outcome == (swapped)} "This time <i>I</i> turned to stone,"
    "Really?" Deirdra replies. "How curious. What happened to your brother?"
    "I think he got away," you reply.
    Deirdra smiles. "How noble of you, dearie!"
* {dream_outcome == (swapped)} ["I saved him."]
* ["I'd rather not say."]
    

- As she speaks, Deirdra pours water over the leaves in your teacup. "Take your time," she says. "It needs to steep anyway."

* You look out the window[...], lost in thought. It is still dark out, probably five in the morning, but the residents of Brightstone Canyon are already busy about their days. You watch them rush by under the strings of brightstone lanterns, glowing in soft blues and greens. People get started early here: around noon each day the sun crests over the eastern wall of the canyon above, and for about an hour after that it is too hot to work safely outside. For now, it is still mercifully cool.

- "Alright," Deirdra says finally. "The tea should be ready now."

* You reach for the cup[.], but Deirdra interrupts you suddenly.
    "Wait, I almost forgot!" She says with a twinkle in her eye. "I have something special for you." 
    She produces a small vial from her sleeve and holds it up to the light.
    TODO: Brightstone description 
    ( NOTE: Oops, I didn't finish writing! But I have the rest of the scene mapped out with placeholders.)
    * * [Ok, sounds good.]
    
    - - You get your first physical description of Brightstone, which is the source of all magic and magic technology in this world. It is refined from stone into a blue jelly substance which is used to power everything in the city. This is what Deirdra has in the vial.
    
    * * "Brightstone?"[] you ask, incredulous. 
    
    - - She pours the refined Brightstone into your tea, say that it also provides energy to people. She explains that in a way Brightstone is the essence of potential.


    TODO: Brightstone in tea


    You know how precious a gift this is.
    ->drink_tea

=drink_tea

TODO: Drink tea
* "Thank you, Deirdra."
    "Think nothing of it, dear!" Dierdra says, waving off your gratitude. "Please, just drink up!" She smiles.
    ->drink_tea
* You drink the tea.
->remember_your_brother
    * * Set it down ->drank_sip
    * * Drink the rest ->drank_all
* Drink it quickly ->drank_all

=drank_sip

->remember_your_brother

=drank_all

->remember_your_brother
=remember_your_brother
You drink the brightstone tea, 

->first_trait
=first_trait
* (strong) He's strong
    //He was a smith
    //You get hammer and tongs?
* (agile) He's quick
    //He was a climber?
    //You get gloves? Bow? Screwdriver? Grappling hook?
* (inventive) He's brilliant
    //He was an engineer
    //You get a wrench? toolkit?

- ->power_outage
=power_outage
Just then, the power goes out in the neighborhood. 
Elderly neighbor 

->fix_the_power
=fix_the_power
* {first_trait.strong} I know what to do. ->fix_strong
* {first_trait.agile} I know what to do.->fix_agile
* {first_trait.inventive} I know what to do->fix_inventive

=fix_strong
* Fix 1
* Fix 2
- ->news_on_the_street

=fix_agile
* Fix 1
* Fix 2
- ->news_on_the_street

=fix_inventive
* Fix 1
* Fix 2
- ->news_on_the_street

=news_on_the_street

*[Continue]
# CLEAR
->statues_scene



 But the refined stuff-- the stuff that powers the everything in the city, from the soft yellow light in your ceiling to the strange new machniery down in the mines--is more of a conductive blue jelly flecked with silver.