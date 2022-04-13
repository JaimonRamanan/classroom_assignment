part of 'subjects_cubit.dart';

abstract class SubjectsState {}

class SubjectsLoading extends SubjectsState {}

class SubjectsLoaded extends SubjectsState {
  final List<SubjectsModel> subjects;
  SubjectsLoaded(this.subjects);
}
