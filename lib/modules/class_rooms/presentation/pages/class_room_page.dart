import 'package:classroom_assignment/modules/class_rooms/data/models/class_room_model.dart';
import 'package:classroom_assignment/modules/class_rooms/presentation/cubit/class_room_cubit.dart';
import 'package:classroom_assignment/modules/common/presentation/widgets/name_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassRoomPage extends StatelessWidget {
  const ClassRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ClassRoomCubit>().fetchClassRooms();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Rooms'),
      ),
      body: BlocBuilder<ClassRoomCubit, ClassRoomState>(
        builder: (context, state) {
          if (state is ClassRoomLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is ClassRoomLoaded) {
            List<ClassRoomModel> classRoomsList = state.classRooms;
            return classRoomsList.isEmpty
                ? const Center(child: Text('Data Empty'))
                : GridView.builder(
                    padding: const EdgeInsets.all(20.0),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: classRoomsList.length,
                    itemBuilder: (BuildContext context, index) {
                      return NameCard(title: classRoomsList[index].name);
                    },
                  );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
