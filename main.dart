import 'dart:io';

import 'Bank Process/BankAccount.dart';
import 'Bank Process/NormalAccount.dart';
import 'Bank Process/SavingsAccount.dart';

void menuForNoramlAccount(NormalAccount user1, NormalAccount user2) {
  print("Welcome ${user1.getName().toUpperCase()}To ALhaly Bank");
  String operation = "yes";
  bool exit = true;
  while (exit) {
    print("---------- Menu Choice (0,1,2,3,4) ----------");
    print("0:set Balance");
    print("1:WithDraw");
    print("2:Deposite");
    print("3:Check Balance");
    print("4:Transfer Amount");
    print("5:exit");
    stdout.write("Your choice : ");
    String choice = stdin.readLineSync() ?? "5";
    switch (choice) {
      case '1':
        user1.withdraw();
        exit = AnotherOperation(operation, exit);
        break;
      case '2':
        user1.deposite();
        exit = AnotherOperation(operation, exit);

        break;
      case '3':
        user1.checkBalance();
        exit = AnotherOperation(operation, exit);
        break;
      case '4':
        NormalAccount ob2 = NormalAccount();
        print(
            "Please enter the information for the account you want to transfer to.");
        user2.setInfoForTransferAccount();
        user1.transferMoney(user2);

        exit = AnotherOperation(operation, exit);
        break;
      case '5':
        exit = false;
        print("Have a good day");
        break;
      default:
        print("Faild , Try Again ");
    }
  }
}

void menuForSavingAccount(SavingAccount user1, NormalAccount user2) {
  print("Welcome ${user1.getName().toUpperCase()} To ALhaly Bank");
  String operation = "yes";
  bool exit = true;
  while (exit) {
    print("---------- Menu Choice (0,1,2,3,4) ----------");
    print("0:set Balance");
    print("1:WithDraw");
    print("2:Deposite");
    print("3:Check Balance");
    print("4:Transfer Amount");
    print("5:exit");
    stdout.write("Your choice : ");
    String choice = stdin.readLineSync() ?? "5";
    switch (choice) {
      case '1':
        user1.withdraw();
        exit = AnotherOperation(operation, exit);
        break;
      case '2':
        user1.deposite();
        exit = AnotherOperation(operation, exit);

        break;
      case '3':
        user1.checkBalance();
        exit = AnotherOperation(operation, exit);
        break;
      case '4':
        print(
            "Please enter the information for the account you want to transfer to.");
        user2.setInfoForTransferAccount();
        user1.transferMoney(user2);

        exit = AnotherOperation(operation, exit);
        break;
      case '5':
        exit = false;
        print("Have a good day");
        break;
      default:
        print("Faild , Try Again ");
    }
  }
}

void main() {
  print("Hello , what is the type of your account ? (Normal/Saving)");
  String type = stdin.readLineSync()!;
  NormalAccount account1 = NormalAccount();
  NormalAccount account2 = NormalAccount();
  if (type == "normal") {
    account1.setInfoAccount();
    menuForNoramlAccount(account1, account2);
    account1.checkBalance();
    account2.checkBalance();
  } else if (type == "saving") {
    SavingAccount account1 = SavingAccount();
    account1.setInfoForTransferAccount();
    menuForSavingAccount(account1, account2);
    account1.checkBalance();
    account2.checkBalance();
  } else {
    print("try again");
  }
}

//another operation method
bool AnotherOperation(String operation, bool exit) {
  print("Done , Another Operation ? (Yes/No)");
  operation = stdin.readLineSync()!;
  if (operation == "no") {
    exit = false;
  }
  return exit;
}
