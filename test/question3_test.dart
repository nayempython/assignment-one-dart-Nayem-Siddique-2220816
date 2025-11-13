import 'dart:async';
import 'package:test/test.dart';
import '../question3.dart';

void main() {
  group('Question 3 Tests - BankAccount', () {
    late BankAccount account;

    setUp(() {
      account = BankAccount(
        accountNumber: '12345',
        accountHolder: 'Alice',
        accountType: 'Savings',
      );
    });

    test('BankAccount should be initialized correctly', () {
      expect(account.accountNumber, '12345');
      expect(account.accountHolder, 'Alice');
      expect(account.accountType, 'Savings');
      expect(account.getBalance(), 0.0);
    });

    test('deposit should add money to the balance', () {
      account.deposit(100.0);
      expect(account.getBalance(), 100.0);
      account.deposit(50.0);
      expect(account.getBalance(), 150.0);
    });

    test('withdraw should remove money from the balance', () {
      account.deposit(200.0);
      account.withdraw(50.0);
      expect(account.getBalance(), 150.0);
    });

    test('withdraw should not allow withdrawal of more than the balance', () {
      account.deposit(100.0);
      account.withdraw(150.0);
      expect(account.getBalance(), 100.0); // Balance should not change
    });

    test('displayAccountInfo should print the correct information', () {
      account.deposit(500);
      var printOutput = [];
      overridePrint(() => account.displayAccountInfo(), (text) => printOutput.add(text));
      expect(printOutput.first, 'Account: 12345, Holder: Alice, Type: Savings, Balance: 500.0');
    });
  });
}

// Helper function to override print
void overridePrint(void Function() body, void Function(String) onPrint) {
  var spec = ZoneSpecification(
    print: (self, parent, zone, line) {
      onPrint(line);
    },
  );
  Zone.current.fork(specification: spec).run(body);
}
