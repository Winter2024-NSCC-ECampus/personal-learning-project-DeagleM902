# DeagleMGitHubSelfLearning
This is my Milestone 2. I have 2 GoDot projects showcasing some of the nodes and scripts I've been working on and learning about.

### NOTE - This project is using GoDot v4.3

## NodesTesting - 2D platformer
This is the main project showcasing the use of several different nodes including Lighting, Tilemaps, and Player character related nodes. A small level that can be navigated with a player character. The player can interact with coins, a moving platform, spike hazards, and an enemy slime.

### Features
 - Player : 2D platformer movement.

 - Coins : Collectable coin objects, with a UI counter.

 - Enemies : Simple slime capable of damaging the player character.

 - Hazards : Spike trap capable of damaging the player character.

## TopDownTest - Vampire Survivors inspired
This project snippet includes top-down 2D movement, a timer, and an enemy spawning method. The level achieves an infinite scrolling effect through the use of a Parallax2D background node. The spawning of enemies is achieved through a "game manager" script which controls the timer display as well as the instantiation (add_child) of enemies with given parameters. The player has a projectile "wand" weapon and several passive items, these can all be upgraded through levels or a chest system.

### Features
 - Weapons : Designed to allow for multiple weapon types. Includes a basic wand projectile.

 - Passive Items : Allows modification of player attributes (Health, Might, Recovery, etc.).

 - Enemies : Wave spawning of multiple enemy types.

 - Levels : The player can gather experience to level up and upgrade their items.

 - Chest : Drops from "elite" monsters, random chance at upgrading 1, 3, or 5 items. Drops "gold" if no upgrades are available.
