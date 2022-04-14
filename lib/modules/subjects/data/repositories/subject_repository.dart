import 'package:classroom_assignment/modules/subjects/data/data_source/subjects_api_client.dart';
import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';

class SubjectRepository {
  Future<List<SubjectsModel>> getSubjectList() async {
    return SubjectsApiClient().fetchSubjectsList();
  }
}
