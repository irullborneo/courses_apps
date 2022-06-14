import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CardSection extends StatelessWidget {
  final double width, height;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  const CardSection({Key? key, this.child, this.margin, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, height: height,
      margin: margin,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white30,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, -1), // changes position of shadow
            ),
          ],
          color: secondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
