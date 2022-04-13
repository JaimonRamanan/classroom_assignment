import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  final String title;
  const NameCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(title),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
