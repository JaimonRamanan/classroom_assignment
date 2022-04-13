import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/common/constants/api_end_points.dart';
import 'package:classroom_assignment/modules/common/constants/service.dart';
import 'package:dio/dio.dart';

class ClassRoomApiClient {
  Future<List<ClassRoomModel>> fetchClassRoomList() async {
    Response response = await Service().getApi(classRoomListEndPoint);
    List<ClassRoomModel> classRooms = List.from(
      response.data['classrooms'].map((e) => ClassRoomModel.fromJson(e)),
    );
    return classRooms;
  }
}
