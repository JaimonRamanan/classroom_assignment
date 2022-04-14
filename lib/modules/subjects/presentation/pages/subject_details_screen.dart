import 'package:classroom_assignment/modules/common/presentation/widgets/common_card.dart';
import 'package:classroom_assignment/modules/common/presentation/widgets/detail_tile.dart';
import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';
import 'package:flutter/material.dart';

class SubjectDetailsScreen extends StatelessWidget {
  final SubjectsModel? subject;
  const SubjectDetailsScreen({
    Key? key,
    this.subject,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subject Details'),
      ),
      body: Center(
        child: CommonCard(
          height: size.height / 2.5,
          width: size.width / 1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.book_online_outlined,
                size: 40.0,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailTile(title: 'Id', data: '${subject?.id}'),
                  DetailTile(title: 'Subject', data: subject?.name),
                  DetailTile(title: 'Credit', data: '${subject?.credits}'),
                  DetailTile(title: 'Teacher', data: '${subject?.teacher}')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
