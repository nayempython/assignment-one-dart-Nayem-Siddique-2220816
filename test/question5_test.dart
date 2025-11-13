import 'package:test/test.dart';
import '../question5.dart';

void main() {
  group('Question 5 Tests - Advanced Features & Mixins', () {
    late Manager manager;
    late Developer developer;

    setUp(() {
      manager = Manager(
        name: 'John Smith',
        id: 'M001',
        department: 'IT',
        teamSize: 5,
      );
      developer = Developer(
        name: 'Alice Johnson',
        id: 'D001',
        department: 'IT',
        programmingLanguage: 'Dart',
      );
    });

    test('Manager should be initialized correctly', () {
      expect(manager.name, 'John Smith');
      expect(manager.id, 'M001');
      expect(manager.department, 'IT');
      expect(manager.teamSize, 5);
      expect(manager.getJobTitle(), 'Manager');
      expect(manager.getBaseSalary(), 8000.0);
    });

    test('Developer should be initialized correctly', () {
      expect(developer.name, 'Alice Johnson');
      expect(developer.id, 'D001');
      expect(developer.department, 'IT');
      expect(developer.programmingLanguage, 'Dart');
      expect(developer.getJobTitle(), 'Senior Developer');
      expect(developer.getBaseSalary(), 6000.0);
    });

    test('calculateSalary should return the correct salary', () {
      expect(manager.calculateSalary(manager.getBaseSalary(), 1000.0), 9000.0);
      expect(developer.calculateSalary(developer.getBaseSalary(), 500.0), 6500.0);
    });

    test('processPayment should return a payment processed message', () {
      expect(manager.processPayment(9000.0), 'Payment processed: 9000.0');
      expect(developer.processPayment(6500.0), 'Payment processed: 6500.0');
    });

    test('generateReport should return the correct report string', () {
      expect(manager.generateReport('John Smith', 'IT'), 'Monthly report for John Smith in IT department');
    });
  });
}
