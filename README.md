# DeagleMGitHubSelfLearning
This is my Milestone 1. I have 2 GoDot projects showcasing some of the nodes and scripts I've been working on and learning about.

## NOTE - This project is using GoDot v4.3

## NodesTesting - 2D platformer
This is the main project showcasing the use of several different nodes including Lighting, Tilemaps, and Player character related nodes. A small level that can be navigated with a player character. The player can interact with coins, a moving platform, and a decorative "secret" path to cross through the level.

### Scenes:
test_level - This serves as the main scene, it contains nodes for the level geometry, lighting, and music. The game_manager script contains logic to increment the Coin counter when a coin is collected by the player. It includes instances of the player character scene, platform scene, coin scene, and GUI scene.

coin - Contains the parent node Area2D, and the children nodes AnimateSprite2D, CollisionShape2D, PointLight2D, AudioStreamPlayer, and AnimationPlayer. The script controls the functionality to play a noise and remove the coin from the main scene on pickup.

gui - Contains the GUI elements in a Node2D node, children nodes include CanvasLayer, HBoxContainer, and Labels. Contains a script which increments the Coin counter on coin pickup.

platform - Contains an AnimatableBody2D with children nodes Sprite2D, CollisionShape2D, and LightOccluder2D. The movement of platforms is accomplished in the test_level scene through an AnimationPlayer.

player - Contains the nodes and script needed to create an interactive player character. These include the CharacterBody2D parent node and its children, AnimatedSprite2D, CollisionShape2D, Camera2D, and AudioStreamPlayer. The script controls the movement and animations of the player character.



## TopDownTest - Vampire Survivors inspired
This project snippet includes top-down 2D movement, a timer, and an enemy spawning method. The level achieves an infinite scrolling effect through the use of a Parallax2D background node. The spawning of enemies is achieved through a "game manager" script which controls the timer display as well as the instantiation (add_child) of enemies with given parameters.
