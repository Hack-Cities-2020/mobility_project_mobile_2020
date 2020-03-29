import 'package:flutter/material.dart';

class AppBarTitleText extends StatelessWidget {
  final String title;
  final String subtitle;
  final TextAlign textAlign;

  const AppBarTitleText(
      {this.textAlign = TextAlign.center, this.subtitle = '', this.title = ''});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        text: '$title\n',
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: '$subtitle',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
