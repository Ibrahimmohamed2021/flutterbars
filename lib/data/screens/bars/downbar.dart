import 'package:flutter/material.dart';
class DownBar extends StatefulWidget{
  const DownBar({Key? key}) : super(key: key);
  @override
  State<DownBar> createState() => _Down();
}
class _Down extends State<DownBar>{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.lightBlue,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      type: BottomNavigationBarType.fixed,
      items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text("Add"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove),
          title: Text("Remove"),
        ),
      ],
    );
  }
}