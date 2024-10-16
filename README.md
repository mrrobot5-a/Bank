# ALhaly Bank Application

Welcome to the **ALhaly Bank Application**, a simple banking management system built in Dart. This application allows users to manage their bank accounts through a command-line interface, enabling them to perform various banking operations such as deposits, withdrawals, balance checks, and money transfers.

## Features

- **Account Types**: Supports two types of accounts:
  - **Normal Account**: Basic banking functionalities.
  - **Savings Account**: Includes interest rate features in addition to basic functionalities.

- **User Operations**: 
  - Set account details (name, card number, balance).
  - Deposit and withdraw money.
  - Check account balance.
  - Transfer money between accounts.

## Classes

### 1. `BankAccount`

The abstract base class representing a generic bank account. It defines the basic properties and methods that all bank accounts must implement.

**Methods:**
- `setCardNumber(String cardNumber)`: Sets the card number for the account.
- `setName(String name)`: Sets the name of the account holder.
- `getName()`: Returns the name of the account holder.
- `getCardNumber()`: Returns the card number associated with the account.
- `getBalance()`: Returns the current balance.
- `setBalance(double balance)`: Sets the balance for the account.
- `deposite()`: Abstract method for depositing money.
- `withdraw()`: Abstract method for withdrawing money.
- `checkBalance()`: Abstract method for checking the account balance.
- `transferMoney(NormalAccount ob)`: Abstract method for transferring money to another account.

### 2. `NormalAccount`

A class that extends `BankAccount` for managing normal bank accounts.

**Methods:**
- `setInfoAccount()`: Prompts user for their details and sets account info.
- `setInfoForTransferAccount()`: Prompts user for details needed for a transfer.
- `deposite()`: Allows the user to deposit money.
- `withdraw()`: Allows the user to withdraw money.
- `checkBalance()`: Displays the current balance.
- `transferMoney(NormalAccount ob)`: Transfers money to another normal account.

### 3. `SavingAccount`

A class that extends `BankAccount` for managing savings accounts, which include an interest rate feature.

**Methods:**
- `setInfoAccount()`: Prompts user for their details and sets account info.
- `setInfoForTransferAccount()`: Prompts user for details needed for a transfer.
- `setInterestRate(double interestRate)`: Sets the interest rate for the savings account.
- `deposite()`: Allows the user to deposit money, including interest.
- `withdraw()`: Allows the user to withdraw money.
- `checkBalance()`: Displays the current balance.
- `transferMoney(NormalAccount ob)`: Transfers money to another normal account.


