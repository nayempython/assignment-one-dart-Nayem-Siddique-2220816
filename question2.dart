import 'dart:math';

// Function to assign random scores to students
Map<String, int> assignRandomScores(List<String> students) {
  final random = Random();
  final scores = <String, int>{};
  for (var student in students) {
    scores[student] = 60 + random.nextInt(41); // Scores between 60 and 100
  }
  return scores;
}

// Function to find the student with the highest score
String findStudentWithHighestScore(Map<String, int> scores) {
  return scores.entries.reduce((a, b) => a.value > b.value ? a : b).key;
}

// Function to find the student with the lowest score
String findStudentWithLowestScore(Map<String, int> scores) {
  return scores.entries.reduce((a, b) => a.value < b.value ? a : b).key;
}

// Function to calculate the average score
double calculateAverageScore(Map<String, int> scores) {
  return scores.values.reduce((a, b) => a + b) / scores.length;
}

// Function to categorize a student based on their score
String categorizeStudent(int score) {
  if (score >= 90) {
    return 'Excellent';
  } else if (score >= 80) {
    return 'Good';
  } else if (score >= 70) {
    return 'Average';
  } else {
    return 'Needs Improvement';
  }
}

void main() {
  final studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  final scores = assignRandomScores(studentNames);

  print("Student Scores:");
  scores.forEach((student, score) {
    print("$student: $score");
  });

  final highestScorer = findStudentWithHighestScore(scores);
  print("\nStudent with the highest score: $highestScorer (${scores[highestScorer]})");

  final lowestScorer = findStudentWithLowestScore(scores);
  print("Student with the lowest score: $lowestScorer (${scores[lowestScorer]})");

  final averageScore = calculateAverageScore(scores);
  print("Average score: ${averageScore.toStringAsFixed(2)}");

  print("\nStudent Categories:");
  scores.forEach((student, score) {
    final category = categorizeStudent(score);
    print("$student: $category");
  });
}
