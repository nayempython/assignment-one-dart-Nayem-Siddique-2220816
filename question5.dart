mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  String processPayment(double amount) {
    return 'Payment processed: $amount';
  }
}

mixin Reportable {
  String generateReport(String employeeName, String department) {
    return 'Monthly report for $employeeName in $department department';
  }
}

abstract class Employee {
  String name;
  String id;
  String department;

  Employee({required this.name, required this.id, required this.department});

  String getJobTitle();
  double getBaseSalary();
}

class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager({
    required String name,
    required String id,
    required String department,
    required this.teamSize,
  }) : super(name: name, id: id, department: department);

  @override
  String getJobTitle() {
    return 'Manager';
  }

  @override
  double getBaseSalary() {
    return 8000.0;
  }
}

class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer({
    required String name,
    required String id,
    required String department,
    required this.programmingLanguage,
  }) : super(name: name, id: id, department: department);

  @override
  String getJobTitle() {
    return 'Senior Developer';
  }

  @override
  double getBaseSalary() {
    return 6000.0;
  }
}

void main() {
  var manager = Manager(
    name: 'John Smith',
    id: 'M001',
    department: 'IT',
    teamSize: 5,
  );

  var developer = Developer(
    name: 'Alice Johnson',
    id: 'D001',
    department: 'IT',
    programmingLanguage: 'Dart',
  );

  print('Manager: ${manager.name} (ID: ${manager.id}, Department: ${manager.department}, Team Size: ${manager.teamSize})');
  print('Job Title: ${manager.getJobTitle()}');
  print('Base Salary: ${manager.getBaseSalary()}');
  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
  print('Calculated Salary: $managerSalary');
  print(manager.processPayment(managerSalary));
  print('Report: ${manager.generateReport(manager.name, manager.department)}');
  print('');

  print('Developer: ${developer.name} (ID: ${developer.id}, Department: ${developer.department}, Language: ${developer.programmingLanguage})');
  print('Job Title: ${developer.getJobTitle()}');
  print('Base Salary: ${developer.getBaseSalary()}');
  double developerSalary = developer.calculateSalary(developer.getBaseSalary(), 500.0);
  print('Calculated Salary: $developerSalary');
  print(developer.processPayment(developerSalary));
}
