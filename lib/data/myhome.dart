import 'package:flutter/material.dart';
import 'package:untitled/data/screens/bars/addtask.dart';
import 'package:untitled/data/screens/bars/downbar.dart';
import 'package:untitled/data/screens/bars/unfinished.dart';
import 'package:untitled/data/screens/bars/finished.dart';
class MyHome extends StatefulWidget{
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyBar();
}
class _MyBar extends State<MyHome>{
  List<Task> tasks = [
    Task(taskName: "Have A Shower"),
    Task(taskName: "Have A Breakfast"),
    Task(taskName: "Have A Cup Of Cafe"),
    Task(taskName: "Brushing Your Teeth"),
    Task(taskName: "Go to Work"),
    Task(taskName: "Go To Sleep Early"),

  ];
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child:Scaffold(
      appBar: AppBar(
        title: const Text('Task Four',style: TextStyle(color: Colors.green),),
        bottom: const TabBar(
          labelColor: Colors.lightBlueAccent,
          tabs: [
            Tab(text: 'Add Task' ,),
            Tab(text: 'UnFinished',),
            Tab(text: 'Finished',),
          ],
        ) ,
        shadowColor: Colors.lightGreen,
        backgroundColor: Colors.black,
      ),
        backgroundColor: Colors.white,
        body:  const TabBarView(


          children: [
            PickOut(),
             UnFinished(),
             Finished(),
        ],

        ),
        bottomNavigationBar: const DownBar (),
      ),
    );
  }
}