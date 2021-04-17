//BUILDING A CONSOLE BANK

void main(){
  ConsoleBank user;
  user = ConsoleBank(accountName: 'Eric Udoaka', accountNumber: 2009411818);
  user.availableBal();
  user.deposit(0);
  user.availableBal();
  user.deposit(10000);
  user.withdraw(90000);
  user.availableBal();
  user.withdraw(90);
  user.availableBal();
  user.withdraw(0);
  user.availableBal();
}


class ConsoleBank {

  String accountName;
  int accountNumber;
  double _accountBalance = 0.00;


  ConsoleBank({this.accountName, this.accountNumber});

  void availableBal() {
    print('$accountName your available balance is £$_accountBalance with account number $accountNumber');
  }

  void withdraw(double consoleWithdrawal) {
    if (consoleWithdrawal <= 0) {
      print(
          'Cannot withdraw amount, please input withdrawal amount greater than £0');
    }


    else if (consoleWithdrawal > _accountBalance) {
      print('Insufficient funds!');
    }

    else {
      _accountBalance = _accountBalance - consoleWithdrawal;
      print('Money withdrawn successfully!');
      print('$accountName your new available balance is now £$_accountBalance with account number $accountNumber');
    }
  }

  void deposit(double consoleDeposit) {
    if (consoleDeposit <= 0) {
      print(
          'Cannot deposit amount, please input deposit amount greater than £0');
    }

    else {
      _accountBalance = consoleDeposit + _accountBalance;
      print('Money deposited successfully!');
      print('$accountName your new available balance is now £$_accountBalance with account number $accountNumber');
    }
  }
}
