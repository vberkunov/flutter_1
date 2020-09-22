import 'package:flutter/material.dart';
import 'package:flutter_app_first/EmployeeList.dart';

void main() => runApp(HiringService());

class HiringService extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vitalii Berkunov TI-71',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: EmployeeList(),
    );
    throw UnimplementedError();
  }
  
}

