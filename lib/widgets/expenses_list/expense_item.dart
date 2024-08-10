import 'package:flutter/material.dart';
import 'package:expenses_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                    '\₹${expense.amount.toStringAsFixed(2)}'), // 12.34532 => 12.34, \ => can use the dolar sign to display on the screen
                Row(),    
              ],
            ),
          ],
        ),
      ),
    );
  }
}
