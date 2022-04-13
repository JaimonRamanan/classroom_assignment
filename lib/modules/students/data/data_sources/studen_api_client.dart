import 'package:classroom_assignment/modules/common/constants/api_end_points.dart';
import 'package:classroom_assignment/modules/common/constants/service.dart';
import 'package:classroom_assignment/modules/students/data/models/student_model.dart';
import 'package:dio/dio.dart';

class StunderApiClient {
  Future<List<Studentmodel>> getAllStudents() async {
    Response response = await Service().getApi(studentsListEndPoint);
    List<Studentmodel> students;
    if (response.statusCode == 200) {
      students = List.from(
        response.data['students'].map((e) => Studentmodel.fromJson(e)),
      );
    } else {
      students = [];
    }
    return students;
  }
}
