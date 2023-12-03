/// The `BankAccount` class represents a simple bank account
/// with deposit functionality.
class BankAccount {
  /// Private constructor to enforce the singleton pattern.
  BankAccount._();

  /// Singleton instance of the `BankAccount` class.
  static final BankAccount instance = BankAccount._();

  /// Factory constructor to return the singleton instance.
  factory BankAccount() => instance;

  /// Private variable representing the account balance.
  double _balance = 0;

  /// Getter for retrieving the current account balance.
  double get getBalance => _balance;

  /// Setter for updating the account balance with a given amount.
  set setBalance(double amount) => _deposit(amount);

  /// Private method to handle the deposit of a specified amount into the account.
  void _deposit(double amount) {
    /// Check if the deposit amount is positive.
    if (amount > 0) {
      _balance = _balance + amount;
      print("Deposited: \$$amount");
    } else {
      print("Invalid deposit amount");
    }
  }
}

void main() {
  BankAccount account = BankAccount.instance;
  account.setBalance = 100;
  print("Balance: \$${account.getBalance}");
  BankAccount account1 = BankAccount.instance;
  print("Balance: \$${account1.getBalance}");
}
