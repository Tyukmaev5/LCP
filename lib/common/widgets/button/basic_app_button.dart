import 'package:flutter/material.dart';
import 'package:logilinks/core/configs/configs.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  final double? width;

  const BasicAppButton({
    required this.onPressed,
    required this.title,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: Size(constraints.maxWidth, 60), // Make it responsive
            side: const BorderSide(
                color: AppColors.lightBackground, width: 2, style: BorderStyle.solid),
            //padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: Text(
            title,
            style: const TextStyle(
                color: AppColors.textButtonLight,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: "Lunasima"),
          ),
        );
      },
    );
  }
}
