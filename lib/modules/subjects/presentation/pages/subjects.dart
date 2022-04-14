import 'package:classroom_assignment/modules/common/models/route_names.dart';
import 'package:classroom_assignment/modules/common/presentation/widgets/name_card.dart';
import 'package:classroom_assignment/modules/subjects/data/models/subjects_model.dart';
import 'package:classroom_assignment/modules/subjects/presentation/cubit/subjects_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Subjects extends StatelessWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SubjectsCubit>().fetchSubjects();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subjects'),
      ),
      body: BlocBuilder<SubjectsCubit, SubjectsState>(
        builder: (context, state) {
          if (state is SubjectsLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is SubjectsLoaded) {
            List<SubjectsModel> subjects = state.subjects;
            return GridView.builder(
              padding: const EdgeInsets.all(20.0),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 2,
              itemBuilder: (BuildContext context, index) {
                return NameCard(
                  onTap: () => Navigator.pushNamed(
                    context,
                    RouteNames.subjectDetailScreen,
                    arguments: subjects[index],
                  ),
                  title: subjects[index].name,
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
