import 'package:flutter/material.dart';

import 'package:to_do_app/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasksList,
  });

  final List<Task> tasksList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: tasksList
              .map((task) => ExpansionPanelRadio(
                    value: task.id,
                    headerBuilder: (context, isOpen) => TaskTile(task: task),
                    body: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SelectableText.rich(TextSpan(children: [
                          const TextSpan(
                            text: 'Text: \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: task.title),
                          const TextSpan(
                            text: '\n\nDescription: \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: task.description),
                        ])),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
