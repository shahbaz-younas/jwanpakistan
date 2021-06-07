import 'package:flutter/material.dart';

class Mydata extends StatefulWidget {
  @override
  _MydataState createState() => _MydataState();
}

class _MydataState extends State<Mydata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ecom I Phone',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        Newdate(),
        Newdate(),
        Newdate(),
        Newdate(),
        Newdate(),
        Newdate()
      ]),
    );
  }
}

Widget Newdate() {
  return (Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/pizza.png'),
        ),
        title: Text('hello'),
        subtitle: Text('hi...'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("\$10")],
        ),
      )));
}
