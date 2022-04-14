import 'package:flutter/material.dart';

class DetailTile extends StatelessWidget {
  final String? title;
  final String? data;
  const DetailTile({
    Key? key,
    this.title,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 55.0),
      dense: true,
      leading: Text(
        title ?? '',
        style: const TextStyle(fontSize: 12.0),
      ),
      title: Text(
        data ?? '',
        style: const TextStyle(fontSize: 12.0),
      ),
    );
  }
}
