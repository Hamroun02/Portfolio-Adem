import 'package:flutter/material.dart';  // Add this import
import 'package:flutter/foundation.dart';
import 'restaurant.dart';

enum PaymentMethod { cash, creditCard }

class Reservation {
  final String id;
  final Restaurant restaurant;
  final DateTime date;
  final int adults;
  final int children;
  final int cars;
  final PaymentMethod paymentMethod;

  Reservation({
    required this.id,
    required this.restaurant,
    required this.date,
    required this.adults,
    required this.children,
    required this.cars,
    required this.paymentMethod,
  });
}