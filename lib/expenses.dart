import 'package:flutter/material.dart';
import 'package:expenses_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 1500,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Movie',
      amount: 500.59,
      date: DateTime.now(),
      category: Category.others,
    ),
    Expense(
      title: 'Books',
      amount: 250.69,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Pizza & Coke',
      amount: 300,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Text('Expenses List....'),
        ],
      ),
    );
  }
}
