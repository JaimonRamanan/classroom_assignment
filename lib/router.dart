import 'package:classroom_assignment/modules/class_rooms/presentation/pages/class_room_details_screen.dart';
import 'package:classroom_assignment/modules/common/models/route_names.dart';
import 'package:classroom_assignment/modules/common/presentation/pages/home_screen.dart';
import 'package:classroom_assignment/modules/students/data/models/student_model.dart';
import 'package:classroom_assignment/modules/students/presentation/pages/student_details_screen.dart';
import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';
import 'package:classroom_assignment/modules/subjects/presentation/pages/subject_details_screen.dart';
import 'package:flutter/material.dart';

import 'modules/class_rooms/data/models/class_room_model.dart';

class AppRouter {
  AppRouter._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteNames.studentDetailScreen:
        return MaterialPageRoute(
          builder: (_) => StudentDetailsScreen(
            student: settings.arguments as Studentmodel,
          ),
        );

      case RouteNames.subjectDetailScreen:
        return MaterialPageRoute(
          builder: (_) => SubjectDetailsScreen(
            subject: settings.arguments as SubjectsModel,
          ),
        );
      case RouteNames.classRoomDetailScreen:
        return MaterialPageRoute(
          builder: (_) => ClassRoomDetailsScreen(
            classRoom: settings.arguments as ClassRoomModel,
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
