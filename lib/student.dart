import 'package:ostad_assignment/person.dart';

class Student extends Person {
  final int studentId;

  //final String grade;
  List<double> courseScores = [];

  Student(
      super.name, super.age, super.address, this.studentId, this.grade,
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

    for (double score in courseScores) {
      totalScore += score;
    }
    double avgScore = totalScore / courseScores.length;
    return avgScore;
  }
}
