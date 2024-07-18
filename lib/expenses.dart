import 'package:flutter/material.dart';
import 'package:expense_tracker/expense_list.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _regesterExpenses = [
    Expense(
        title: 'flutter ',
        amount: 12.12,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'dosa',
        amount: 10.10,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('hi'),
          Expanded(child:ExpensesList(expenses: _regesterExpenses)),
        ],
      ),
    );
  }
}
