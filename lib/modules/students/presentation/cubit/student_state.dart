part of 'student_cubit.dart';

abstract class StudentState {}

class StudentLoading extends StudentState {}

class StudentLoaded extends StudentState {
  final List<Studentmodel> studentList;
  StudentLoaded(this.studentList);
}
