import 'package:ostad_assignment/person.dart';

class Student extends Person {
  final int studentId;

  //final double grade;
  List<double> courseScores = [];

  Student(
      super.name, super.age, super.address, this.studentId, this.courseScores
      //this.grade
      );

  @override
  void displayRole() {
    print('Role: Student');
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }

    double totalScore = 0.0;

    for (var score in courseScores) {
      totalScore += score;
    }
    double avgScore = totalScore / courseScores.length;
    return avgScore;
  }
}
