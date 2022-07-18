import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';
import '../constants/ui.dart';

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
          color: kPrimaryGreen,
          borderRadius: kBorderRadius,
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

class GoogleSingIn extends StatelessWidget {
  const GoogleSingIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          height: 55,
          width: 90.w,
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: kBorderRadius,
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('asset/images/login/google-color.png'),
              ),
              const SizedBox(width: 20),
              Text(
                'Sign in with Google',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(width: 10)
            ],
          ),
        ),
      ),
    );
  }
}
