import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Text(
          'chart',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 5,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
