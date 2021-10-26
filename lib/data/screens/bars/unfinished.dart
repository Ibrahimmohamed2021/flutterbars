import 'package:flutter/material.dart';
import 'package:untitled/data/screens/bars/addtask.dart';
class UnFinished extends StatefulWidget{
   const UnFinished({Key? key, } ) : super(key: key);
  @override
  State<UnFinished> createState() => _UF();
}
class _UF extends State<UnFinished>{
  get tasks =>  PickOut.tasks;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            tasks[index].taskName,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
              decoration: tasks[index].isDone
                  ? TextDecoration.lineThrough
                  : null,
            //  color: Colors.red,
           //     backgroundColor: Colors.white,
            ),
          ),
          trailing: Checkbox(
            checkColor: Colors.red,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            activeColor: Colors.white,
            onChanged: (val) {
              setState(() {
                tasks[index].isDone = val!;
              });
            },
            value: tasks[index].isDone,
          ),
        );
      },
      itemCount: tasks.length,
    );
  }
}