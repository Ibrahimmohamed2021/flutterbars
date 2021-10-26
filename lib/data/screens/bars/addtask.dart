import 'package:flutter/material.dart';
import 'package:untitled/data/screens/bars/addtaskcard.dart';
class PickOut extends StatefulWidget{
  const PickOut({Key? key}) : super(key: key);
  static List<Task> tasks = [
    Task(taskName: "Have A Shower"),
    Task(taskName: "Have A Breakfast"),
    Task(taskName: "Have A Cup Of Cafe"),
    Task(taskName: "Brushing Your Teeth"),
    Task(taskName: "Go to Work"),
    Task(taskName: "Go To Sleep Early"),

  ];
  @override
  State<PickOut> createState() => _Pick();
}
class _Pick extends State<PickOut>{
  // current value of the TextField.
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ContactCard(contactInfo: 'Have A Shower', icon: Icons.shower,
        ),
        ContactCard(contactInfo: 'Have A Breakfast', icon: Icons.fastfood,
        ),
        ContactCard(contactInfo: 'Have A Cup Of Cafe', icon: Icons.local_cafe),
        ContactCard(contactInfo: 'Brushing Your Teeth', icon: Icons.dry_cleaning),
        ContactCard(contactInfo: 'Go to Work', icon: Icons.work),
        ContactCard(contactInfo: 'Go To Sleep Early', icon: Icons.room),
      ],
    );
  }
}
class Task {
  final String taskName;
  bool isDone;
  Task({required this.taskName, this.isDone = false});
}




