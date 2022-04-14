import 'package:classroom_assignment/modules/class_rooms/presentation/cubit/class_room_detail_cubit.dart/class_room_details_cubit.dart';
import 'package:classroom_assignment/modules/students/presentation/cubit/student_cubit.dart';
import 'package:classroom_assignment/modules/subjects/presentation/cubit/subjects_cubit.dart';
import 'package:classroom_assignment/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/class_rooms/presentation/cubit/class_room_cubit/class_room_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ClassRoomCubit()),
        BlocProvider(create: (context) => SubjectsCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(create: (context) => ClassRoomDetailCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 66, 123, 229),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
