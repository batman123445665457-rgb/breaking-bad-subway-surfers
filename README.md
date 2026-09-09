# Breaking Bad Subway Surfers 🎮

A Breaking Bad themed Subway Surfers mobile game built with Flutter and Flame. Play as Walter White escaping from FBI agents!

## Game Overview

In this action-packed game, you control Walter White as he runs through the streets dodging trains and evading FBI agents. The game features a progressive difficulty system with a unique two-strike system:

- **First Hit**: FBI agents get close and you see a warning message
- **Second Hit**: Game Over

## Features

✅ **Walter White Character** - Iconic character with pork pie hat
✅ **FBI Agents** - Intelligent enemies that chase the player
✅ **Dynamic Obstacles** - Trains and barriers to dodge
✅ **Progressive Difficulty** - Obstacles and agents spawn more frequently
✅ **Score System** - Accumulate points by surviving
✅ **Touch Controls** - Simple tap-to-move controls
✅ **Visual Feedback** - Warning messages on first collision

## Game Mechanics

### Controls
- **Tap left/right** on the screen to move Walter in that direction
- **Avoid obstacles** (trains and barriers falling from above)
- **Evade FBI agents** that chase you from behind and sides

### Collision System
1. **First Collision**: 
   - Shows "FBI APPROACHING!" or "FBI SPOTTED!" message
   - Player survives but is warned
   
2. **Second Collision**:
   - Game Over
   - Final score is displayed

### Spawning System
- **Obstacles**: Spawn every 1.5 seconds at random X positions
- **FBI Agents**: Spawn every 5 seconds, actively chase the player

## Installation & Setup

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Android SDK or iOS SDK
- A mobile device or emulator

### Steps

1. **Clone the repository**
```bash
git clone https://github.com/batman123445665457-rgb/breaking-bad-subway-surfers.git
cd breaking-bad-subway-surfers
```

2. **Get dependencies**
```bash
flutter pub get
```

3. **Run the app**

For Android:
```bash
flutter run -d android
```

For iOS:
```bash
flutter run -d ios
```

For Web:
```bash
flutter run -d chrome
```

## Project Structure

```
lib/
├── main.dart              # Game entry point
└── game/
    ├── breaking_bad_game.dart  # Main game controller
    ├── player.dart             # Walter White character
    ├── obstacle.dart           # Trains and barriers
    └── fbi_agent.dart          # FBI agent enemies
```

## File Descriptions

### `main.dart`
Entry point of the application. Sets up the MaterialApp and initializes the Flame GameWidget with BreakingBadGame.

### `breaking_bad_game.dart`
Main game class that:
- Manages game state and score
- Handles collision detection
- Spawns obstacles and FBI agents
- Renders game elements
- Processes touch input

### `player.dart`
Player character (Walter White) with:
- Movement controls
- Collision detection
- Visual rendering (character with hat)
- Hit counter and warning system

### `obstacle.dart`
Obstacles that fall from above:
- Two types: trains and barriers
- Random spawning
- Collision detection capability

### `fbi_agent.dart`
FBI agent enemies that:
- Chase the player intelligently
- Move down and towards player position
- Display visual indicators when close

## Technologies Used

- **Flutter**: UI framework
- **Flame**: 2D game engine for Flutter
- **Dart**: Programming language

## Dependencies

```yaml
flame: ^1.10.0           # Game engine
flame_audio: ^2.1.0      # Audio support (for future sound effects)
shared_preferences: ^2.2.0 # Local storage for high scores
```

## Future Enhancements

- [ ] Sound effects and background music
- [ ] Power-ups (invisibility, speed boost)
- [ ] High score leaderboard with local storage
- [ ] Multiple characters and skins
- [ ] Different difficulty levels
- [ ] Animated sprites instead of geometric shapes
- [ ] Particle effects on collisions
- [ ] Level progression system
- [ ] Shop system for upgrades

## Gameplay Tips

1. **Keep moving** - Standing still makes you an easy target
2. **Watch for FBI agents** - They move faster than obstacles
3. **Anticipate spawns** - Learn the spawn patterns
4. **Use the edges** - Moving to screen edges can help avoid obstacles
5. **React quickly** - You only get one warning before game over

## Game Difficulty Progression

- **Early Game (0-30 seconds)**: Slow obstacle spawn rate
- **Mid Game (30-120 seconds)**: Increased spawning, more agents
- **Late Game (120+ seconds)**: Very frequent obstacles and aggressive FBI agents

## Known Limitations

- Currently no audio implementation
- Graphics are geometric (simple shapes)
- Single difficulty level
- No pause menu yet

## Contributing

Feel free to fork this project and submit pull requests for any improvements!

## License

This project is open source and available under the MIT License.

## Disclaimer

This is a fan project inspired by Breaking Bad and Subway Surfers. This is not an official game and is for educational purposes only.

---

**Enjoy the game and happy running!** 🏃‍♂️💨
