import 'package:classroom_assignment/modules/students/data/data_sources/studen_api_client.dart';
import 'package:classroom_assignment/modules/students/data/models/student_model.dart';

class StudentRepository {
  Future<List<Studentmodel>> getStudentsList() async {
    return await StunderApiClient().getAllStudents();
  }
}
