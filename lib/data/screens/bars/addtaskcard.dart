import 'package:flutter/material.dart';
class ContactCard extends StatelessWidget {
  final String contactInfo;
  final IconData icon;
 // final Function onTap;
  const ContactCard(
      {Key? key, required this.contactInfo, required this.icon, /*required this.onTap*/}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   onTap();
      // },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.green, width: 1.0,)),
        elevation: 10,
        color: Colors.blue,
        shadowColor: Colors.greenAccent,
        //it was container padding: EdgeInsets.all(15.0),
        margin: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 7.5,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            //it was a row children: <Widget>[
            leading: Icon(
              icon,
              color: Colors.green,
              size: 20.0,
            ),
            //SizedBox(width: 15.0,),
            title: Text(
              contactInfo,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}