import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const CommonCard(
      {Key? key,
      required this.height,
      required this.width,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
