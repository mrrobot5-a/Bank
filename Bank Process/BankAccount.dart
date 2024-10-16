import 'dart:io';

import 'NormalAccount.dart';

abstract class BankAccount {
  //Private attrs.
  String? _cardNumber;
  String? _name;
  double? _balance;

  //construtor
  BankAccount() {}
  //setCardNumber
  void setCardNumber(String cardNumber) {
    this._cardNumber = cardNumber;
  }

  //setname
  void setName(String name) {
    this._name = name;
  }

  //getName method
  String getName() {
    return _name ?? "";
  }

  //getCardNumber method
  String getCardNumber() {
    return _cardNumber ?? "";
  }

  //getBalance method
  double getBalance() {
    return _balance ?? 0;
  }

  //setBalance
  void setBalance(double balance) {
    this._balance = balance;
  }

  //abstract methods;
  void deposite();
  void withdraw();
  void checkBalance();
  void transferMoney(NormalAccount ob);
}
