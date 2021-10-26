import 'package:flutter/material.dart';
import 'package:untitled/data/screens/bars/addtask.dart';
class Finished extends StatefulWidget{
  const Finished({Key? key}) : super(key: key);
  @override
  State<Finished> createState() => _Finish();
}
class _Finish extends State<Finished>{
  List<Task> tasks = [
    Task(taskName: "Have A Shower"),
    Task(taskName: "Have A Breakfast"),
    Task(taskName: "Have A Cup Of Cafe"),
    Task(taskName: "Brushing Your Teeth"),
    Task(taskName: "Go to Work"),
    Task(taskName: "Go To Sleep Early"),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks
          .map(
            (e) => ListTile(
          title: Text(e.taskName),
          trailing: Checkbox(
            onChanged: (val) {
              setState(() {
                e.isDone = val!;
              });
            },
            value: e.isDone,
          ),
        ),
      ).toList(),
    );
  }
}