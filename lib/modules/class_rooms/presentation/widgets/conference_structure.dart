import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/common/presentation/widgets/common_card.dart';
import 'package:flutter/material.dart';

class ConferenceStructure extends StatelessWidget {
  const ConferenceStructure({
    Key? key,
    required this.classRoom,
  }) : super(key: key);

  final ClassRoomModel classRoom;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: MediaQuery.of(context).size.width / 2,
      children: [
        for (int i = 0; i < classRoom.size; i++) ...[
          const CommonCard(
            height: 60.0,
            width: 60.0,
            child: Center(child: Text('S')),
          )
        ],
      ],
    );
  }
}
