import 'package:test/test.dart';
import '../question1.dart';

void main() {
  group('Question 1 Tests', () {
    test('calculateBMI should return the correct BMI', () {
      // Using a common example for BMI calculation
      // Weight: 70 kg, Height: 1.75 m
      // BMI = 70 / (1.75 * 1.75) = 22.857...
      // The readme expects a double, so we'll check for a value close to that.
      // Let's use the example from the Readme: BMI: 22.5
      // To get a BMI of 22.5 with a height of 5.9 feet (1.79832 meters),
      // the weight would need to be around 72.8 kg.
      // Let's assume the inputs are metric.
      // Weight: 68 kg, Height: 1.7 m => BMI = 23.5
      // Let's stick to a simple case.
      expect(calculateBMI(70, 1.75), closeTo(22.85, 0.01));
    });

    test('getGrade should return the correct grade', () {
      expect(getGrade(95), 'A');
      expect(getGrade(85), 'B');
      expect(getGrade(75), 'C');
      expect(getGrade(65), 'D');
      expect(getGrade(55), 'F');
      expect(getGrade(100), 'A');
      expect(getGrade(90), 'A');
      expect(getGrade(89), 'B');
      expect(getGrade(80), 'B');
      expect(getGrade(79), 'C');
      expect(getGrade(70), 'C');
      expect(getGrade(69), 'D');
      expect(getGrade(60), 'D');
      expect(getGrade(0), 'F');
    });
  });
}
