import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/cubit/class_room_detail_cubit.dart/class_room_details_cubit.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/widgets/class_room_structure.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/widgets/conference_structure.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/widgets/subject_selection_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassRoomDetailsScreen extends StatelessWidget {
  final ClassRoomModel classRoom;
  const ClassRoomDetailsScreen({Key? key, required this.classRoom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ClassRoomDetailCubit>().getClassRoomDetail(classRoom.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(classRoom.name),
      ),
      body: BlocBuilder<ClassRoomDetailCubit, ClassRoomDetailState>(
        builder: (context, state) {
          if (state is ClassRoomDetailLoading) {
            return const Center(child: CupertinoActivityIndicator());
          }
          if (state is ClassRoomDetailLoaded) {
            return ListView(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              children: [
                SubjectSelectionWidget(classRoom: state.classRoomModel),
                if (classRoom.layout == 'conference') ...[
                  ConferenceStructure(classRoom: state.classRoomModel)
                ] else ...[
                  ClassRoomStructure(classRoom: state.classRoomModel)
                ],
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
