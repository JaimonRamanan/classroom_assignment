import 'package:classroom_assignment/modules/common/constants/api_end_points.dart';
import 'package:classroom_assignment/modules/common/constants/service.dart';
import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';
import 'package:dio/dio.dart';

class SubjectsApiClient {
  Future<List<SubjectsModel>> fetchSubjectsList() async {
    Response response = await Service().getApi(subjectsListEndPoint);
    List<SubjectsModel> subjects;
    if (response.statusCode == 200) {
      subjects = List.from(
        response.data['subjects'].map((e) => SubjectsModel.fromJson(e)),
      );
    } else {
      subjects = [];
    }
    return subjects;
  }
}
