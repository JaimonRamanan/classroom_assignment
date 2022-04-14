import 'package:flutter/material.dart';

class StudentsListTile extends StatelessWidget {
  final String? name;
  final String? email;
  final Function onTap;
  const StudentsListTile({
    Key? key,
    this.name,
    this.email,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      height: 65.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        onTap: () => onTap(),
        leading: const Icon(
          Icons.person_outline_rounded,
          size: 30.0,
          color: Colors.white,
        ),
        title: Text(name ?? '', overflow: TextOverflow.ellipsis),
        subtitle: Text(email ?? '', overflow: TextOverflow.ellipsis),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
