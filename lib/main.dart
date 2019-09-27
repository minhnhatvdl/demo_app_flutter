import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserTransactions(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.red,
      ),
    );
  }
}
