import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/cubit/class_room_cubit.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/widgets/class_room_structure.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/widgets/conference_structure.dart';
import 'package:classroom_assignment/modules/common/presentation/widgets/common_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassRoomDetailsScreen extends StatelessWidget {
  final ClassRoomModel classRoom;
  const ClassRoomDetailsScreen({Key? key, required this.classRoom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(classRoom.name),
      ),
      body: BlocBuilder<ClassRoomCubit, ClassRoomState>(
        builder: (context, state) {
          if (state is ClassRoomLoaded) {
            return ListView(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: CommonCard(
                    height: 60.0,
                    width: 160.0,
                    child: Center(child: Text('Teacher')),
                  ),
                ),
                if (classRoom.layout == 'conference') ...[
                  ConferenceStructure(classRoom: classRoom)
                ] else ...[
                  ClassRoomStructure(classRoom: classRoom)
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
