import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/common/presentation/widgets/common_card.dart';
import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';
import 'package:classroom_assignment/modules/subjects/presentation/cubit/subjects_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/class_room_detail_cubit.dart/class_room_details_cubit.dart';

class SubjectSelectionWidget extends StatelessWidget {
  final ClassRoomModel classRoom;
  const SubjectSelectionWidget({
    Key? key,
    required this.classRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubjectsModel? selected;
    List<SubjectsModel> subjects = context.read<SubjectsCubit>().subjects;
    debugPrint('$subjects');

    int index =
        subjects.indexWhere((element) => element.id == classRoom.subject);
    if (index != -1) {
      selected = subjects[index];
    }
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: CommonCard(
            height: 60.0,
            width: 160.0,
            child: Center(
              child: BlocBuilder<SubjectsCubit, SubjectsState>(
                  builder: (context, state) {
                if (state is SubjectsLoaded) {
                  return DropdownButton(
                      hint: selected == null
                          ? const Text('Choose Subject')
                          : Text(selected?.name ?? ''),
                      items: state.subjects
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item.name),
                            ),
                          )
                          .toList(),
                      onChanged: (SubjectsModel? selectedSubject) async {
                        selected = selectedSubject;
                        await context
                            .read<ClassRoomDetailCubit>()
                            .addSubject(classRoom.id, selectedSubject!.id);
                      });
                }
                return const Center(child: CupertinoActivityIndicator());
              }),
            ),
          ),
        ),
        const SizedBox(height: 15.0),
        Align(
          alignment: Alignment.center,
          child: CommonCard(
            height: 60.0,
            width: 160.0,
            child: Center(
              child:
                  Text(selected == null ? 'Teacher' : '${selected?.teacher}'),
            ),
          ),
        ),
      ],
    );
  }
}
