part of 'class_room_details_cubit.dart';

abstract class ClassRoomDetailState {}

class ClassRoomDetailLoading extends ClassRoomDetailState {}

class ClassRoomDetailLoaded extends ClassRoomDetailState {
  final ClassRoomModel classRoomModel;

  ClassRoomDetailLoaded(this.classRoomModel);
}
