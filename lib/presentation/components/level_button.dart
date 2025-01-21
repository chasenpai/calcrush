import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';

class LevelButton extends StatefulWidget {
  final String level;
  final VoidCallback onPressed;
  final Color color;

  const LevelButton({
    required this.level,
    required this.onPressed,
    required this.color,
    super.key,
  });

  @override
  State<LevelButton> createState() => _LevelButtonState();
}

class _LevelButtonState extends State<LevelButton> {

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isPressed ? lightGrey : widget.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 9.0,
        ),
        child: Center(
          child: Text(
            widget.level,
            style: const TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
