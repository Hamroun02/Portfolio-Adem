import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../models/reservation.dart';
import '../../models/restaurant.dart';
import 'reservation_confirmation_screen.dart';

class ReservationFormScreen extends StatefulWidget {
  final Restaurant restaurant;

  const ReservationFormScreen({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  _ReservationFormScreenState createState() => _ReservationFormScreenState();
}

class _ReservationFormScreenState extends State<ReservationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  int _adults = 1;
  int _children = 0;
  int _cars = 0;
  PaymentMethod _paymentMethod = PaymentMethod.cash;

  @override
  void initState() {
    super.initState();
    // Initialize the date controller with today's date
    _dateController.text = DateFormat('dd/MM/yyyy').format(_selectedDate);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  void _submitReservation() {
    if (_formKey.currentState!.validate()) {
      final reservation = Reservation(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        restaurant: widget.restaurant,
        date: _selectedDate,
        adults: _adults,
        children: _children,
        cars: _cars,
        paymentMethod: _paymentMethod,
      );
      
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ReservationConfirmationScreen(
            reservation: reservation,
            qrData: 'RES${reservation.id}|${widget.restaurant.name}|'
                '${DateFormat('yyyy-MM-dd').format(reservation.date)}|'
                '${reservation.adults + reservation.children}',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réservation - ${widget.restaurant.name}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDateField(),
              const SizedBox(height: 20),
              _buildCounterSection('Adultes', _adults, (v) => setState(() => _adults = v)),
              _buildCounterSection('Enfants', _children, (v) => setState(() => _children = v)),
              _buildCounterSection('Voitures', _cars, (v) => setState(() => _cars = v)),
              const SizedBox(height: 30),
              _buildPaymentMethodSelector(),
              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: _submitReservation,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('Confirmer la réservation',
                      style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateField() {
    return TextFormField(
      controller: _dateController,
      decoration: InputDecoration(
        labelText: 'Date de réservation',
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _selectDate(context),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      readOnly: true,
      onTap: () => _selectDate(context),
      validator: (value) => value!.isEmpty ? 'Champs requis' : null,
    );
  }

  Widget _buildCounterSection(String title, int value, Function(int) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: value > 0 
                      ? () => onChanged(value - 1) 
                      : null,
                  color: Colors.orange,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '$value',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () => onChanged(value + 1),
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Méthode de paiement :', 
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              RadioListTile<PaymentMethod>(
                title: const Row(
                  children: [
                    Icon(Icons.money, color: Colors.green),
                    SizedBox(width: 10),
                    Text('Espèces'),
                  ],
                ),
                value: PaymentMethod.cash,
                groupValue: _paymentMethod,
                onChanged: (value) => setState(() => _paymentMethod = value!),
                activeColor: Colors.orange,
              ),
              Divider(height: 1, color: Colors.grey.shade300),
              RadioListTile<PaymentMethod>(
                title: const Row(
                  children: [
                    Icon(Icons.credit_card, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('Carte bancaire'),
                  ],
                ),
                value: PaymentMethod.creditCard,
                groupValue: _paymentMethod,
                onChanged: (value) => setState(() => _paymentMethod = value!),
                activeColor: Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }
}