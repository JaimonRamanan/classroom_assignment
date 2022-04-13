import 'package:classroom_assignment/modules/students/data/models/student_model.dart';
import 'package:classroom_assignment/modules/students/presentation/cubit/student_cubit.dart';
import 'package:classroom_assignment/modules/students/presentation/widgets/student_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<StudentCubit>().fetchStudentsList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: BlocBuilder<StudentCubit, StudentState>(
        builder: (context, state) {
          if (state is StudentLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is StudentLoaded) {
            List<Studentmodel> studentList = state.studentList;
            return ListView.builder(
              itemCount: studentList.length,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemBuilder: (context, index) {
                return StudentsListTile(
                  name: studentList[index].name,
                  email: studentList[index].email,
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
