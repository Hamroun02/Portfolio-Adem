import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../models/reservation.dart';

class ReservationScreen extends StatefulWidget {
  final String title;
  final String image;

  const ReservationScreen({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  int _guests = 2;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() => _selectedDate = picked);
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() => _selectedTime = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Réserver'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                widget.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            _buildDatePicker(),
            const SizedBox(height: 20),
            _buildTimePicker(),
            const SizedBox(height: 20),
            _buildGuestsSelector(),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => _confirmReservation(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Confirmer la réservation'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDatePicker() {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.calendar_today, color: AppTheme.primaryBlue),
        title: const Text('Date'),
        subtitle: Text(
          '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => _selectDate(context),
      ),
    );
  }

  Widget _buildTimePicker() {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.access_time, color: AppTheme.primaryBlue),
        title: const Text('Heure'),
        subtitle: Text(_selectedTime.format(context)),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => _selectTime(context),
      ),
    );
  }

  Widget _buildGuestsSelector() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre de personnes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () => setState(() => _guests = _guests > 1 ? _guests - 1 : 1),
                ),
                Text('$_guests'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => setState(() => _guests++),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _confirmReservation(BuildContext context) {
    // Implement your reservation logic here
    Navigator.pushNamed(context, '/reservation-confirmation');
  }
}