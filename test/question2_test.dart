import 'package:test/test.dart';
import '../question2.dart';

void main() {
  group('Question 2 Tests', () {
    final studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
    final scores = {'Alice': 88, 'Bob': 72, 'Charlie': 95, 'Diana': 61, 'Eve': 77};

    test('assignRandomScores should assign scores to all students', () {
      var scores = assignRandomScores(studentNames);
      expect(scores.keys.length, studentNames.length);
      for (var student in studentNames) {
        expect(scores.containsKey(student), isTrue);
        expect(scores[student], isA<int>());
        expect(scores[student], inInclusiveRange(60, 100));
      }
    });

    test('findStudentWithHighestScore should return the correct student', () {
      expect(findStudentWithHighestScore(scores), 'Charlie');
    });

    test('findStudentWithLowestScore should return the correct student', () {
      expect(findStudentWithLowestScore(scores), 'Diana');
    });

    test('calculateAverageScore should return the correct average', () {
      expect(calculateAverageScore(scores), closeTo(78.6, 0.1));
    });

    test('categorizeStudent should return the correct category', () {
      expect(categorizeStudent(95), 'Excellent');
      expect(categorizeStudent(85), 'Good');
      expect(categorizeStudent(75), 'Average');
      expect(categorizeStudent(65), 'Needs Improvement');
      expect(categorizeStudent(100), 'Excellent');
      expect(categorizeStudent(90), 'Excellent');
      expect(categorizeStudent(89), 'Good');
      expect(categorizeStudent(80), 'Good');
      expect(categorizeStudent(79), 'Average');
      expect(categorizeStudent(70), 'Average');
      expect(categorizeStudent(69), 'Needs Improvement');
      expect(categorizeStudent(60), 'Needs Improvement');
    });
  });
}
