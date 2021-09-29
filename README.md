# CST426-F21-Project-3
Space Shooter Roguelite

# Game Design Document
## Team Members
### Scott Coonis

## Game Description
Bosconian Roguelite. Defend various space systems from enemy craft while searching to take out their leader!

At time of writing (9/28/2021) debating between controls being Binding of Isaac-like (WASD to move, Arrow Keys to Shoot), Asteroids-like (W/Up to move, S/Down to brake, A/Left to yaw counterclockwise, D/Right to yaw clockwise, Spacebar to shoot), or Bosconian-like (always moving, WASD/Arrow Keys to change trajectory to that 8-directional vector, Spacebar to shoot). Shift will always drop a screenclearing Bomb if one is in the inventory, à la Strikers 1945. Upon reaching the edge(s) of a "screen," wrap around to the opposite edge(s) à la Asteroids. Killing enemies can give Credits (currency), Bombs, or Health after "clearing" a "room" which also will allow access to "adjacent" rooms via wormholes. Upon clearing a "floor" you'll also get a Ship Upgrade that persists until death (such as stronger lasers, faster thrusters, additional hull plating, etc.)

## Currencies
Health, Credits, screen-clearing bombs as physical currencies; "safe" space on a screen/real estate to move around in and dodge enemies' attacks as metacurrency.

## Procedural Generation
Enemy placement and type in given room, their drop chances, what upgrades you get after floor clears. Given free time, floor layouts room layouts to a greater extent, i.e. not just spawn fields with percent to spawn Enemy X, percent to spawn Enemy Y, etc.

## Assets
Rudimentary sprites and sine wave SFX. Should be relatively cheap to implement.

## Milestones
10/8/21 - Playtest Prototype

12/9/21 - Proof of concept complete

Should time allow:
- Better art and SFX
- Better procedural generation/randomization
- More levels
- Some form of story/narrative (as opposed to leaning hard into arcade progression)
- More types of enemies, more bosses

