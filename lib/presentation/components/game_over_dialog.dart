import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';

class GameOverDialog extends StatelessWidget {
  final int score;
  final int bestScore;
  final VoidCallback onCancelPressed;
  final VoidCallback onAcceptPressed;
  final bool isWatchAd;

  const GameOverDialog({
    required this.score,
    required this.bestScore,
    required this.onCancelPressed,
    required this.onAcceptPressed,
    required this.isWatchAd,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text(
        'Game Over',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Score ${score.toString()}',
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4.0,),
          Text(
            'Best Score ${bestScore.toString()}',
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6.0,),
          const Text(
            'Watch an ad and get a life',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: isWatchAd ? [
            CommonTextButton(
              text: 'Go Home',
              color: deepRoyalBlue,
              onPressed: onCancelPressed,
            ),
          ] :[
            CommonTextButton(
              text: 'Cancel',
              color: deepRoyalBlue,
              onPressed: onCancelPressed,
            ),
            CommonTextButton(
              text: 'Accept',
              color: deepRoyalBlue,
              onPressed: onAcceptPressed,
            ),
          ],
        ),
      ],
    );
  }
}
