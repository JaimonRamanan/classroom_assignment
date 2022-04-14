import 'package:classroom_assignment/modules/class_rooms/data/data_sources/class_room_api_client.dart';
import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';

class ClassRoomRepository {
  Future<List<ClassRoomModel>> getAllClassRooms() async {
    final ClassRoomApiClient classRoomApiClient = ClassRoomApiClient();
    return classRoomApiClient.fetchClassRoomList();
  }

  Future<ClassRoomModel> addSubject(int classRoomId, int subjectId) async {
    return ClassRoomApiClient()
        .updateClassRoomWithSubject(classRoomId, subjectId);
  }
}
