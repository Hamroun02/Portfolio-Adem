import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/reservation.dart';
// Remove the non-existent import
// import '../../widgets/custom_app_bar.dart';

class ReservationsScreen extends StatefulWidget {
  const ReservationsScreen({Key? key}) : super(key: key);

  @override
  _ReservationsScreenState createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Reservation> _reservations = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadReservations();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadReservations() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    // Mock data
    setState(() {
      _reservations = [
        Reservation(
          id: '1',
          restaurant: Restaurant(id: '1', name: 'Cabine Plage Hammamet'),
          date: DateTime.now().add(const Duration(days: 2)),
          adults: 2,
          children: 1,
          cars: 1,
          cabinNumber: 'A12',
          accessType: 'Bateau',
          paymentStatus: 'Confirmé',
          status: ReservationStatus.confirmed,
        ),
        Reservation(
          id: '2',
          restaurant: Restaurant(id: '2', name: 'Cabine Sousse Beach'),
          date: DateTime.now().add(const Duration(days: 5)),
          adults: 4,
          children: 0,
          cars: 2,
          cabinNumber: 'B08',
          accessType: 'Navette',
          paymentStatus: 'En attente',
          status: ReservationStatus.pending,
        ),
        Reservation(
          id: '3',
          restaurant: Restaurant(id: '3', name: 'Cabine Mahdia Sunset'),
          date: DateTime.now().subtract(const Duration(days: 10)),
          adults: 2,
          children: 2,
          cars: 1,
          cabinNumber: 'C15',
          accessType: 'Bateau',
          paymentStatus: 'Payé',
          status: ReservationStatus.completed,
        ),
      ];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes Réservations'),
        elevation: 0,
        backgroundColor: Colors.orange,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          tabs: const [
            Tab(text: 'À venir'),
            Tab(text: 'Historique'),
          ],
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.orange))
          : TabBarView(
              controller: _tabController,
              children: [
                _buildReservationList(_getUpcomingReservations()),
                _buildReservationList(_getPastReservations()),
              ],
            ),
    );
  }

  List<Reservation> _getUpcomingReservations() {
    final now = DateTime.now();
    return _reservations.where((res) => res.date.isAfter(now)).toList();
  }

  List<Reservation> _getPastReservations() {
    final now = DateTime.now();
    return _reservations.where((res) => res.date.isBefore(now)).toList();
  }

  Widget _buildReservationList(List<Reservation> reservations) {
    if (reservations.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_busy, size: 80, color: Colors.grey.shade300),
            const SizedBox(height: 16),
            Text(
              'Aucune réservation',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _loadReservations,
      color: Colors.orange,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 16, bottom: 20),
        itemCount: reservations.length,
        itemBuilder: (context, index) {
          return _buildReservationCard(reservations[index]);
        },
      ),
    );
  }

  Widget _buildReservationCard(Reservation reservation) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange.shade600, Colors.orange.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child:
                      Icon(Icons.beach_access, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reservation.restaurant.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Cabine #${reservation.cabinNumber}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildInfoItem(Icons.calendar_month, 'Date',
                        DateFormat('EEE d MMM y').format(reservation.date)),
                    const SizedBox(width: 20),
                    _buildInfoItem(Icons.access_time, 'Heure',
                        DateFormat('HH:mm').format(reservation.date)),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    _buildInfoItem(Icons.people_outline, 'Personnes',
                        '${reservation.adults + reservation.children}'),
                    const SizedBox(width: 20),
                    _buildInfoItem(
                        Icons.directions_boat, 'Accès', reservation.accessType),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  decoration: BoxDecoration(
                    color: _getStatusColor(reservation.status).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(_getStatusIcon(reservation.status),
                          color: _getStatusColor(reservation.status), size: 22),
                      const SizedBox(width: 12),
                      Text(
                        _getStatusText(reservation.status),
                        style: TextStyle(
                          color: _getStatusColor(reservation.status),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon:
                            Icon(Icons.more_vert, color: Colors.grey.shade600),
                        onPressed: () => _showReservationActions(reservation),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 20, color: Colors.orange.shade600),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(ReservationStatus status) {
    switch (status) {
      case ReservationStatus.confirmed:
        return Colors.green;
      case ReservationStatus.pending:
        return Colors.orange;
      case ReservationStatus.completed:
        return Colors.blue;
      case ReservationStatus.cancelled:
        return Colors.red;
    }
  }

  IconData _getStatusIcon(ReservationStatus status) {
    switch (status) {
      case ReservationStatus.confirmed:
        return Icons.check_circle;
      case ReservationStatus.pending:
        return Icons.pending;
      case ReservationStatus.completed:
        return Icons.done_all;
      case ReservationStatus.cancelled:
        return Icons.cancel;
    }
  }

  String _getStatusText(ReservationStatus status) {
    switch (status) {
      case ReservationStatus.confirmed:
        return 'Réservation confirmée';
      case ReservationStatus.pending:
        return 'En attente de confirmation';
      case ReservationStatus.completed:
        return 'Réservation terminée';
      case ReservationStatus.cancelled:
        return 'Réservation annulée';
    }
  }

  void _showReservationActions(Reservation reservation) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.visibility, color: Colors.blue),
              title: const Text('Voir les détails'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to reservation details
              },
            ),
            if (reservation.status == ReservationStatus.confirmed)
              ListTile(
                leading: const Icon(Icons.edit, color: Colors.orange),
                title: const Text('Modifier la réservation'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to edit reservation
                },
              ),
            if (reservation.status == ReservationStatus.confirmed)
              ListTile(
                leading: const Icon(Icons.cancel, color: Colors.red),
                title: const Text('Annuler la réservation'),
                onTap: () {
                  Navigator.pop(context);
                  _showCancelDialog(reservation);
                },
              ),
            if (reservation.status == ReservationStatus.completed)
              ListTile(
                leading: const Icon(Icons.star, color: Colors.amber),
                title: const Text('Évaluer votre expérience'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to review screen
                },
              ),
          ],
        ),
      ),
    );
  }

  void _showCancelDialog(Reservation reservation) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Annuler la réservation'),
        content: const Text(
          'Êtes-vous sûr de vouloir annuler cette réservation? Cette action est irréversible.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Non'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Implement cancel reservation logic
              setState(() {
                final index =
                    _reservations.indexWhere((r) => r.id == reservation.id);
                if (index != -1) {
                  _reservations[index] = Reservation(
                    id: reservation.id,
                    restaurant: reservation.restaurant,
                    date: reservation.date,
                    adults: reservation.adults,
                    children: reservation.children,
                    cars: reservation.cars,
                    cabinNumber: reservation.cabinNumber,
                    accessType: reservation.accessType,
                    paymentStatus: 'Annulé',
                    status: ReservationStatus.cancelled,
                  );
                }
              });
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Oui, annuler'),
          ),
        ],
      ),
    );
  }
}

// Models
class Restaurant {
  final String id;
  final String name;

  Restaurant({required this.id, required this.name});
}

enum ReservationStatus {
  confirmed,
  pending,
  completed,
  cancelled,
}

class Reservation {
  final String id;
  final Restaurant restaurant;
  final DateTime date;
  final int adults;
  final int children;
  final int cars;
  final String cabinNumber;
  final String accessType;
  final String paymentStatus;
  final ReservationStatus status;

  Reservation({
    required this.id,
    required this.restaurant,
    required this.date,
    required this.adults,
    required this.children,
    required this.cars,
    required this.cabinNumber,
    required this.accessType,
    required this.paymentStatus,
    required this.status,
  });
}
