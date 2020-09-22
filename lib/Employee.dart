import 'package:flutter_app_first/User.dart';

class Employee extends User{
  bool hired;
  String companyName;
  int expirience;

  set status(bool hired ) => hired??false;

  //default constructor
  Employee({String username, String password, String name, String phoneNumber,
      this.hired, this.companyName, this.expirience}):
        super(username:username, password: password, name: name, phoneNumber: phoneNumber);

  // func with conditional operator
  String checkEmployee(Employee empl) => empl.hired? 'Name of employee: ' + empl.name +
      'Phone Number: ' + empl.phoneNumber :'Employee is already working in' + empl.companyName;

  //closing function
  setNewExp(){
    return(int newExp) => expirience + newExp;
  }

  Set<String> getContacts(List<Employee> empl){
    Set<String> contacts;
    empl.forEach((element) {
      contacts.add(element.phoneNumber);
    });
    return contacts;
  }

}