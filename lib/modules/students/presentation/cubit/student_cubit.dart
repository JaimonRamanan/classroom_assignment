import 'package:classroom_assignment/modules/students/data/models/student_model.dart';
import 'package:classroom_assignment/modules/students/data/repositories/student_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  StudentCubit() : super(StudentLoading());

  fetchStudentsList() async {
    emit(StudentLoading());
    List<Studentmodel> studentList =
        await StudentRepository().getStudentsList();
    emit(StudentLoaded(studentList));
  }
}
