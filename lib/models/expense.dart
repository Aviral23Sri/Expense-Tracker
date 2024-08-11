import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('dd/MM/yyyy');

const uuid = Uuid();

enum Category { food, travel, work, others }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.others: Icons.currency_rupee_outlined,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.laptop
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
