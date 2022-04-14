import 'package:classroom_assignment/modules/students/data/models/student_model.dart';
import 'package:classroom_assignment/modules/students/presentation/widgets/student_detail_card.dart';
import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatelessWidget {
  final Studentmodel? student;
  const StudentDetailsScreen({
    Key? key,
    this.student,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: StudentDetailCard(size: size, student: student),
    );
  }
}
