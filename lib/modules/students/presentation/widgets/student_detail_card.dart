import 'package:classroom_assignment/modules/students/data/models/student_model.dart';
import 'package:flutter/material.dart';

import 'detail_tile.dart';

class StudentDetailCard extends StatelessWidget {
  const StudentDetailCard({
    Key? key,
    required this.size,
    required this.student,
  }) : super(key: key);

  final Size size;
  final Studentmodel? student;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size.height / 2.5,
        width: size.width / 1.5,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_outline_rounded,
              size: 50.0,
              color: Colors.white,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailTile(title: 'Id', data: '${student?.id}'),
                DetailTile(title: 'Name', data: student?.name),
                DetailTile(title: 'Age', data: '${student?.age}'),
                DetailTile(title: 'Email', data: '${student?.email}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
