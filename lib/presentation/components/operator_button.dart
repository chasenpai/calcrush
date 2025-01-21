import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';

class OperatorButton extends StatefulWidget {
  final String operator;
  final VoidCallback onPressed;
  final Color color;

  const OperatorButton({
    required this.operator,
    required this.onPressed,
    required this.color,
    super.key,
  });

  @override
  State<OperatorButton> createState() => _OperatorButtonState();
}

class _OperatorButtonState extends State<OperatorButton> {

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
            widget.operator,
            style: const TextStyle(
              fontSize: 62.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
