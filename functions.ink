===function HasTrait(trait)
~return player_traits ? trait

===function IsBrotherTrait(trait)
~return brother_traits ? trait

===function IsUniqueTrait(trait)
~return HasTrait(trait) and !IsBrotherTrait(trait)

===function AddTrait(trait, from_brother)
~player_traits += trait
{
    -from_brother: 
        ~ brother_traits += trait
}
~return

//Probably not used
===function RemoveTrait(trait)
~player_traits -= trait
~return



//From Ink guide
===function CameFrom(->x)
~return TURNS_SINCE(x) == 0