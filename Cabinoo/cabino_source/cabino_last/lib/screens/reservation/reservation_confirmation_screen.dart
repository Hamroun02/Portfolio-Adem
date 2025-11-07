import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:intl/intl.dart'; // Add this import for DateFormat
import '../../models/reservation.dart';

class ReservationConfirmationScreen extends StatelessWidget {
  final Reservation reservation;
  final String qrData;

  const ReservationConfirmationScreen({
    Key? key,
    required this.reservation,
    required this.qrData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirmation de réservation')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            QrImageView(
              data: qrData,
              version: QrVersions.auto,
              size: 200,
              embeddedImage: const AssetImage('assets/images/logo.png'),
              embeddedImageStyle: QrEmbeddedImageStyle(size: const Size(40, 40)),
            ),
            const SizedBox(height: 30),
            _buildDetailItem('Restaurant', reservation.restaurant.name),
            _buildDetailItem('Date', DateFormat('dd/MM/yyyy').format(reservation.date)),
            _buildDetailItem('Adultes', reservation.adults.toString()),
            _buildDetailItem('Enfants', reservation.children.toString()),
            _buildDetailItem('Voitures', reservation.cars.toString()),
            _buildDetailItem('Méthode de paiement', 
                reservation.paymentMethod == PaymentMethod.cash 
                    ? 'Espèces' 
                    : 'Carte bancaire'),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}