import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Obstacle {
  Vector2 position;
  Vector2 size;
  double speed = 200;
  late String type;

  Obstacle({
    required this.position,
    required this.size,
  }) {
    type = Random().nextDouble() > 0.5 ? 'train' : 'barrier';
  }

  void update(double dt) {
    position.y += speed * dt;
  }

  void render(Canvas canvas) {
    if (type == 'train') {
      // Draw train
      canvas.drawRect(
        Rect.fromLTWH(position.x, position.y, size.x, size.y),
        Paint()..color = const Color(0xFFFF6B6B),
      );
      
      // Windows
      for (int i = 0; i < 3; i++) {
        canvas.drawCircle(
          Offset(position.x + 10 + i * 15, position.y + size.y / 2),
          3,
          Paint()..color = Colors.yellow,
        );
      }
      
      // Danger stripes
      canvas.drawRect(
        Rect.fromLTWH(position.x, position.y + size.y - 8, size.x, 8),
        Paint()..color = Colors.yellow,
      );
    } else {
      // Draw barrier
      canvas.drawRect(
        Rect.fromLTWH(position.x, position.y, size.x, size.y),
        Paint()..color = const Color(0xFF4A4E69),
      );
      
      // Texture
      for (int i = 0; i < 3; i++) {
        canvas.drawCircle(
          Offset(position.x + size.x / 2, position.y + 10 + i * 15),
          2,
          Paint()..color = Colors.black,
        );
      }
    }
  }
  
  double get x => position.x;
  double get y => position.y;
}
