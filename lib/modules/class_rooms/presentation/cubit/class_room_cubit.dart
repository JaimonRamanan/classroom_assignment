import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/class_rooms/data/repositories/class_room_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'class_room_state.dart';

class ClassRoomCubit extends Cubit<ClassRoomState> {
  ClassRoomCubit() : super(ClassRoomLoading());
  fetchClassRooms() async {
    final ClassRoomRepository classRoomRepository = ClassRoomRepository();
    emit(ClassRoomLoading());
    List<ClassRoomModel> classRooms =
        await classRoomRepository.getAllClassRooms();
    emit(ClassRoomLoaded(classRooms));
  }
}
