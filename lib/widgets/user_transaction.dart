import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'new shoes for birthday',
        amount: 69.99,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'weekly groceries',
        amount: 16.53,
        date: DateTime.now()),
  ];

  void_addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(void_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}