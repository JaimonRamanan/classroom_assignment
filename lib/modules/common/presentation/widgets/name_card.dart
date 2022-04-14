import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  final String title;
  final Function onTap;
  const NameCard({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        child: Text(title),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
