import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String taskText;

  const Task(this.taskText);

  @override
  Widget build(BuildContext context) {
    var assetImage = const AssetImage('assets/images/image4.png');
    var image = Image(
      image: assetImage,
      width: 150.0,
      height: 150.0,
    );

    return Column(
      children: <Widget>[
        Container(
          margin:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: image,
        ),
        Container(
          width: double.infinity,
          margin:
              const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
          child: Text(
            taskText,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.green[200],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
