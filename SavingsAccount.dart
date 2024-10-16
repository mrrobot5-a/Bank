import 'dart:io';

import 'BankAccount.dart';
import 'NormalAccount.dart';

class SavingAccount extends BankAccount {
  //Fields
  double? _interestRate;
  void setInfoAccount() {
    stdout.write("please enter your name :");
    String name = stdin.readLineSync()!;
    setName(name);
    stdout.write("please enter your CardNumber :");
    String cardNumber = stdin.readLineSync()!;
    setCardNumber(cardNumber);
    stdout.write("please enter your Balance :");
    double balance = double.parse(stdin.readLineSync()!);
    setBalance(balance);
  }

  void setInfoForTransferAccount() {
    stdout.write("please enter your name :");
    String name = stdin.readLineSync()!;
    setName(name);
    stdout.write("please enter your CardNumber :");
    String cardNumber = stdin.readLineSync()!;
    setCardNumber(cardNumber);
    stdout.write("please enter your InterestRate :");
    double interestRate = double.parse(stdin.readLineSync()!);
    setInterestRate(interestRate);
  }

  void setInterestRate(double interestRate) {
    this._interestRate = interestRate / 10;
  }

  void deposite() {
    double balance = getBalance();
    stdout.write("Enter Your deposite amount : ");
    double amount = double.parse(stdin.readLineSync() ?? "0");
    if (amount > 0) {
      balance = amount + _interestRate!;
      setBalance(balance);
    } else {
      print("Sorry You Can't deposite this amount : $amount");
    }
  }

  //withdraw method
  void withdraw() {
    double balance = getBalance();
    stdout.write("Enter Your withdraw amount : ");
    double amount = double.parse(stdin.readLineSync() ?? "0");
    if (amount > 0 && amount < balance) {
      balance = balance - amount;
      setBalance(balance);
    } else {
      print("Sorry You Can't withdraw this amount : $amount");
      print("Your Balance is $balance");
    }
  }

  void checkBalance() {
    double balance = getBalance();
    print("Your balance is $balance");
  }

  @override
  void transferMoney(NormalAccount ob) {
    print("What is the name of the account you want to transfer to?: ");
    String name = stdin.readLineSync()!;
    print("What is the CARD NUMBER of the account you want to transfer to?: ");
    String cardNumber = stdin.readLineSync()!;

    if (ob.getName() == name && ob.getCardNumber() == cardNumber) {
      double balance = getBalance();
      stdout.write("How much money would you like to transfer? : ");
      double amount = double.parse(stdin.readLineSync()!);

      if (amount > 0 && amount < balance) {
        balance -= amount;
        setBalance(balance);
        double balanceOfUser = ob.getBalance() + amount;
        ob.setBalance(balanceOfUser);
      } else {
        print(
            "Apologies, you are unable to transfer this amount. Your balance is [$balance].");
      }
    } else {
      if (ob.getName() != name) {
        print("Sorry! $name is not defined");
      } else if (ob.getCardNumber() != cardNumber) {
        print("Sorry! $cardNumber is not defined");
      }
    }
  }
}
