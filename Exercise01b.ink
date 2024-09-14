/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR hunger = 0
VAR coins = 1

-> kidnap

== kidnap ==
One night, you are awaken from deep slumber to the sound of screeching tires outside. You go to look out the window, only to discover a group of men rushing inside your house. You rush to grab your pet. Before you can hide, the men spot you. They quickly restrain you with handcuffs and blindfolds. What do you choose to do next? 

+ [ fight back ] -> fight 
+ [succumb] -> succumb

== fight ==
You kick and punch with all of your energy. You hear one of the men scream. Good, I might have a chance, you think to yourself. This thought is soon halted when you feel a stabbing pain in your left thigh. Warmth trickles down your leg. Your thoughts subside and your eyes become heavy.
-> wake_up

== succumb
After you inhale a heavy mist, your vision and mind go blank.
-> wake_up

== wake_up ==
You wake up to the feeling of gravel below you. Your handcuffs are off, and there is no sign of the kidnappers. You take off your blindfold and discover you are at the enterance to a cavern. 

+ [move onwards] -> move_onwards
* [run away] -> run_away

== run_away ==
You pick up your pet and run as fast as you can into the nearby woods with the hopes to find someone who can help. After the daylight runs out, you lose hope. You hear rumbling behind you. No, to the left. No, above you. Before you even have time to think, a bobcat emerges. He mawls you and your pet. 

-> death



== move_onwards== 
You walk toward the cave.
-> memory

== memory ==
Before you stands the cavern of Josh. You are glad your pet is with you. It is less intimidating. What is your pet's name?

* [Charlie] 
    ~ pet_name = "Charlie" 
    -> cave_mouth
* [Susan]
    ~ pet_name = "Susan"
    -> cave_mouth
* [Spot]
    ~ pet_name = "Spot"
    -> cave_mouth

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. As soon as you step through, a boulder seals the enterance behind you. All falls dark. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west. 
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup


== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything. 
* [Light Torch] -> east_tunnel_lit 
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west 
{ pet_name == "Spot": Scout would love it here in the west| }
* [Move Onwards] -> encounter_bats
+ [Go back] -> cave_mouth
-> END 

== encounter_bats ==
You have stumbled into a swarm of bats.
+ [Fight the bats] -> death

== death == 
You try to fight off the bats, but there are too many of them. There are bites all over your body. You feel warmth everywhere, but you have never been so cold before. You die. 
-> END

=== torch_pickup ===
You now have a torch. May it light the way. 
* [Go back] -> cave_mouth
-> END

== gather_coins ==
You take as many coins as you can hold. As you look around at all of the coins, you notice a coin slot. The coin slot takes a dime sized piece, but all of the ones you have found so far are the size of a quarter. 

-> dime_search

== dime_search == 
You scower the cave for a dime size coin. After what seems like hours, you have no luck. All seems to be failing until you notice that the slot has a message written on it. It says: Tiny and round, lost in the ground, light in weight, I am a treasure to be found, Shiny and small, in pockets I hide, I am often kept by your side. You think about what this might mean. Ground! That's it, you will look at the ground. As you search the floor, you find a pair of overalls. Pockets! You search the pockets. In the back right pocket, you are thrilled to find a shiny dime sized coin.

You have {coins} coin

* [Put the coin through the slot] ->  coin_slot

== coin_slot == 
You race over to see what will happen when you put the coin in the slot. You place the coin and sin the knob. It makes a lottery machine noise. The walls of the cave expand and light begins to peek through. You feel more free than you ever have in your life! 
* {coins > 0 } [You have reached the goal!] -> win_game


== east_tunnel_lit == 
The light of your torch glints off of the thousands of coins in the cave. 
* [Take all of the coins] -> gather_coins 
+ [Go back] -> cave_mouth
-> END

== win_game == 
You have won the prize of freedom and riches. Though you faced hardships and triumph, you feel satisfied. Congratulations. 
-> END