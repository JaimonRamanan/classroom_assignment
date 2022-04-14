import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/class_rooms/data/repositories/class_room_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'class_room_detail_state.dart';

class ClassRoomDetailCubit extends Cubit<ClassRoomDetailState> {
  ClassRoomDetailCubit() : super(ClassRoomDetailLoading());

  getClassRoomDetail(int classRoomId) async {
    emit(ClassRoomDetailLoading());
    ClassRoomModel classRoom =
        await ClassRoomRepository().getClassRoomDetail(classRoomId);
    emit(ClassRoomDetailLoaded(classRoom));
  }
}
