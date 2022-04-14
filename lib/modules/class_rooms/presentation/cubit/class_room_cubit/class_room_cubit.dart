import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/class_rooms/data/repositories/class_room_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'class_room_state.dart';

class ClassRoomCubit extends Cubit<ClassRoomState> {
  ClassRoomCubit() : super(ClassRoomLoading());
  late List<ClassRoomModel> classRooms;
  fetchClassRooms() async {
    final ClassRoomRepository classRoomRepository = ClassRoomRepository();
    emit(ClassRoomLoading());
    classRooms = await classRoomRepository.getAllClassRooms();
    emit(ClassRoomLoaded(classRooms));
  }

  addSubject(int classRoomId, int subjectId) async {
    ClassRoomModel classRoom =
        await ClassRoomRepository().addSubject(classRoomId, subjectId);
    int index = classRooms.indexWhere((element) => element.id == classRoom.id);
    if (index != -1) {
      classRooms[index] = classRoom;
    }
    emit(ClassRoomLoaded(classRooms));
  }
}
