class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount({
    required this.accountNumber,
    required this.accountHolder,
    required this.accountType,
  }) : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print('Insufficient funds for withdrawal of $amount from account $accountNumber');
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print('Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance');
  }
}

void main() {
  // Create 3 bank accounts
  var account1 = BankAccount(
    accountNumber: '12345',
    accountHolder: 'Alice',
    accountType: 'Savings',
  );
  var account2 = BankAccount(
    accountNumber: '67890',
    accountHolder: 'Bob',
    accountType: 'Checking',
  );
  var account3 = BankAccount(
    accountNumber: '54321',
    accountHolder: 'Charlie',
    accountType: 'Savings',
  );

  // Demonstrate functionality
  account1.deposit(1500.0);
  account2.deposit(1000.0);
  account2.withdraw(200.0);
  account3.deposit(200.0);

  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  // Handling insufficient funds scenario
  account2.withdraw(1000.0);
}
