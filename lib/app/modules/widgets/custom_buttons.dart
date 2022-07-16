import 'package:flutter/material.dart';

import '../constants/colors.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({
    required this.text,
    this.width = 250,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final VoidCallback onPressed;
  final double width;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: primaryGreen,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
            child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
        )),
      ),
    );
  }
}