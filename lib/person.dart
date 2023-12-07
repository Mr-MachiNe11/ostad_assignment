import 'package:ostad_assignment/role.dart';

class Person implements Role {
  @override
  void displayRole() {
    // TODO: implement displayRole
    print('Role: Person');
  }

  final String _name;
  final int _age;
  final String _address;

  Person(this._name, this._age, this._address);

  String getName() {
    return _name;
  }

  int getAge() {
    return _age;
  }

  String getAddress() {
    return _address;
  }
}
