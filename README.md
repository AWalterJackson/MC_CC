This repository acts as well... a repository for simple lua programs intended to work with ComputerCraft: Tweaked in Minecraft.
Once a basic bootstrapper is written into the computer system within the game world, it can be used to pull down the initial gitget program that can then be used to download other programs inside the repository when or if they're needed.
The goal was to circumvent writing lua code inside minecraft as much as possible as the experience is... painful, especially on overloaded multiplayer servers.

Even though this repo is likely to only ever have at most a handful of contributors... if any at all, there are basic rules in place for adding new programs or updating existing ones.

* New Programs need to be added in a pull request containing only that program. This is to ensure the namespace remains unpolluted as it lacks any form of scoping.
* Changes to existing programs should also be PR'd individually as these programs may well be running on people's in game systems already and changing behaviour without review could result in broken builds.

Broadly this repo only exists for fun and nothing in here should be taken more than even slightly seriously. Nor should any applications within it be assumed to be secure.