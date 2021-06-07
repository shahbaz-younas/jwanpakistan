import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            width: 100,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/pakistan-monument-islamabad-picture-id535695503?k=6&m=535695503&s=612x612&w=0&h=uP8aDK4xlfjk3kEiyr9wwUiuh80UwAiICweFpiBDosk='),
            )),
        Container(
          child: Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ),
        )
      ],
    );
  }
}
