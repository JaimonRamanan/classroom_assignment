part of 'class_room_cubit.dart';

abstract class ClassRoomState {}

class ClassRoomLoading extends ClassRoomState {}

class ClassRoomLoaded extends ClassRoomState {
  final List<ClassRoomModel> classRooms;

  ClassRoomLoaded(this.classRooms);
}
