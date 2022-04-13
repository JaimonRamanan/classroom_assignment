import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';
import 'package:classroom_assignment/modules/subjects/data/repositories/subject_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'subjects_state.dart';

class SubjectsCubit extends Cubit<SubjectsState> {
  SubjectsCubit() : super(SubjectsLoading());

  fetchSubjects() async {
    emit(SubjectsLoading());
    List<SubjectsModel> subjects = await SubjectRepository().getSubjectList();
    emit(SubjectsLoaded(subjects));
  }
}
