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
One night, you are awaken from a deep sleep to a light so bright it pierces through your closed eyes. Blinded and afraid, you feel yourself begin to float! Seconds pass- maybe a minute. Higher and higher you go. When will this all be over?! Crash... you fall hard onto a cold metallic floor. As your vision restores, you are able to make out a few large egg shapes. Are they green? Oh no... ALIENS! What do you choose to do next? 

+ [ fight back ] -> fight 
+ [succumb] -> succumb

== fight ==
You kick and punch with all of your energy yet none of them are the slightest bit startled. Can they not feel pain? While contemplating escape plans, one of the aliens spits a neon goo onto your arm. As the sludge slides down your body, you thoughts subside and your eyes become heavy.
-> wake_up

== succumb
The tallest alien pulls a lever and a heavy gas spills out from vents all around you. After you inhale the heavy mist, your vision and mind go blank.
-> wake_up

== wake_up ==
You wake up to the feeling of dirt below you. As you look around, there are no signs of the aliens. As you pick yourself up, something feels wierd... did you lose 50 pounds? You try to take a step forward but your leg is moving oddly slow. Oh no- LOW GRAVITY!

+ [move onwards] -> move_onwards
* [panic] -> panic

== panic ==
You realize you are not on Earth any longer. You are all by yourself on a foreign planet! With nobody else in sight! No sigm of life. Your chest becomes tight, your vision goes blurry, your head is building immense pressure. You can hardly stand anymore. Your legs begin to wobble and your body loses all strength.  

-> death



== move_onwards== 
You walk toward a river.
-> memory

== memory ==
Before you stands a lush waterfall. Off in the distance, you hear what sounds like a bark. A three-eyed puppy runs out wagging its tail. The new environment is less intimidating now. What is your pet's name?

* [Scout] 
    ~ pet_name = "Scout" 
    -> cave_mouth
* [Marty]
    ~ pet_name = "Marty"
    -> cave_mouth
* [Blue]
    ~ pet_name = "Blue"
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
{ pet_name == "Blue": Blue would love it here in the west| }
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