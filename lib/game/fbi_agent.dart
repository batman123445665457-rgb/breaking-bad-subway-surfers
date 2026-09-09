import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class FBIAgent {
  Vector2 position;
  Vector2 size;
  double speed = 250;
  double chaseDuration = 0;

  FBIAgent({
    required this.position,
    required this.size,
  });

  void update(double dt, Vector2 playerPosition) {
    double direction = playerPosition.x - position.x;
    
    if (direction > 0) {
      position.x += speed * dt;
    } else if (direction < 0) {
      position.x -= speed * dt;
    }
    
    position.y += speed * 0.8 * dt;
    chaseDuration += dt;
  }

  void render(Canvas canvas) {
    // Draw FBI agent
    // Head
    canvas.drawCircle(
      Offset(position.x + size.x / 2, position.y + 10),
      10,
      Paint()..color = const Color(0xFFD4A574),
    );
    
    // Body - Black suit
    canvas.drawRect(
      Rect.fromLTWH(position.x + 5, position.y + 18, size.x - 10, 22),
      Paint()..color = const Color(0xFF000000),
    );
    
    // FBI Badge
    canvas.drawRect(
      Rect.fromLTWH(position.x + 15, position.y + 20, 15, 15),
      Paint()..color = Colors.yellow,
    );
    canvas.drawRect(
      Rect.fromLTWH(position.x + 15, position.y + 20, 15, 15),
      Paint()
        ..color = Colors.transparent
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
    
    // Pants
    canvas.drawRect(
      Rect.fromLTWH(position.x + 5, position.y + 40, size.x - 10, 15),
      Paint()..color = Colors.grey[700] ?? Colors.grey,
    );
    
    // Arms
    canvas.drawRect(
      Rect.fromLTWH(position.x - 5, position.y + 20, 5, 20),
      Paint()..color = const Color(0xFFD4A574),
    );
    canvas.drawRect(
      Rect.fromLTWH(position.x + size.x, position.y + 20, 5, 20),
      Paint()..color = const Color(0xFFD4A574),
    );
    
    // Warning indicator when close
    if (chaseDuration > 2) {
      canvas.drawCircle(
        Offset(position.x + size.x / 2, position.y - 5),
        8,
        Paint()
          ..color = Colors.red
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
      );
    }
  }
  
  double get x => position.x;
  double get y => position.y;
}
