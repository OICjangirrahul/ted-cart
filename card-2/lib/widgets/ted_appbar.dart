import 'package:flutter/material.dart';

class TedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Text('TED',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
          SizedBox(
            width: 10,
          ),
          Text(
            'Talks',
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
      actions: [
        Icon(
          Icons.more_vert,
          color: Colors.grey,
        )
      ],
    );
  }
}
