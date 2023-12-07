import 'package:ostad_assignment/student.dart';
import 'package:ostad_assignment/teacher.dart';

class StudentManagementSystem {
  static void main() {
    final student =
        Student('John Doe', 20, '123 Main Street', 123, [90, 85, 82]);
    final teacher = Teacher(
        'Mrs. Smith', 35, '456 Oak St.', 456, ['Math', 'English', 'Bangla']);

    print('\nStudent Information: ');
    student.displayRole();
    print('Name: ${student.getName()}');
    print('Age: ${student.getAge()}');
    print('Address: ${student.getAddress()}');
    print(
        'Average Score: ${student.calculateAverageScore().toStringAsFixed(2)}');

    print('\nTeacher Information: ');
    teacher.displayRole();
    print('Name: ${teacher.getName()}');
    print('Age: ${teacher.getAge()}');
    print('Address: ${teacher.getAddress()}');
    teacher.displayCoursesTaught();
  }
}
