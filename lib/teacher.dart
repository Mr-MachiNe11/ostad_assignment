import 'package:ostad_assignment/person.dart';

class Teacher extends Person {
  final int teacherID;
  List<String> coursesTaught = [];

  Teacher(
      super.name, super.age, super.address, this.teacherID);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCoursesTaught() {
    print('Courses Taught: ');
    if (coursesTaught.isEmpty) {
      print("- Zero course!");
    }
    for (String course in coursesTaught) {
      print('- $course');
    }
  }
}
