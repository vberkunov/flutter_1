import 'package:flutter/material.dart';
import 'package:flutter_app_first/Employee.dart';

class EmployeeList extends StatelessWidget{

  List<Employee> employees =
  [
    Employee(username:'vasya_best', password:'1111', name: 'Vasya',
        phoneNumber: '0976543423', hired: false, companyName: 'Softserve', expirience: 3),
    Employee(username:'kolya_super', password:'1491', name: 'Mykola',
        phoneNumber: '0969743423', hired: true, companyName: 'Luxoft', expirience: 1),
    Employee(username:'anasteisha', password:'0000', name: 'Nastya',
        phoneNumber: '0934532343', hired:false, companyName: 'Softserve', expirience: 2)
    


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiring Service'),
      ),
      body: Container(
        child: ListView(
          children: buildList(),
        ),
      ),
    );

  }

  List<Widget> buildList(){
      return employees.map((Employee e) => ListTile(
          title: Text(e.name),
          subtitle: Text(e.phoneNumber),
        leading: CircleAvatar(child: Text(e.expirience.toString()),),
        trailing: Text(e.companyName),
      )).toList();
  }

}