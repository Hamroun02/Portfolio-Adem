import 'package:flutter/material.dart';
import '../../config/theme.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Historique des réservations'),
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'À venir'),
              Tab(text: 'Passées'),
              Tab(text: 'Annulées'),
            ],
            indicatorColor: AppTheme.primaryBlue,
            labelColor: AppTheme.primaryBlue,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: TabBarView(
          children: [
            _buildUpcomingBookings(),
            _buildPastBookings(),
            _buildCancelledBookings(),
          ],
        ),
      ),
    );
  }
  
  Widget _buildUpcomingBookings() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildBookingCard(
          name: 'Le Corsaire',
          type: 'Restaurant',
          date: '15 Août 2023',
          time: '19:30',
          imageUrl: 'https://images.unsplash.com/photo-1601050690597-df0568f70950?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          status: 'Confirmée',
          statusColor: Colors.green,
        ),
        const SizedBox(height: 16),
        _buildBookingCard(
          name: 'Jet Ski',
          type: 'Activité nautique',
          date: '18 Août 2023',
          time: '10:00',
          imageUrl: 'https://images.unsplash.com/photo-1534254630802-e108f7e92d8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
          status: 'En attente',
          statusColor: Colors.orange,
        ),
      ],
    );
  }
  
  Widget _buildPastBookings() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildBookingCard(
          name: 'La Sirène',
          type: 'Restaurant',
          date: '5 Juillet 2023',
          time: '20:00',
          imageUrl: 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          status: 'Terminée',
          statusColor: Colors.grey,
          showReviewButton: true,
        ),
        const SizedBox(height: 16),
        _buildBookingCard(
          name: 'Plongée sous-marine',
          type: 'Activité nautique',
          date: '10 Juillet 2023',
          time: '09:30',
          imageUrl: 'https://images.unsplash.com/photo-1544551763-46a013bb70d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          status: 'Terminée',
          statusColor: Colors.grey,
          showReviewButton: true,
        ),
      ],
    );
  }
  
  Widget _buildCancelledBookings() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildBookingCard(
          name: 'Azur Plage',
          type: 'Restaurant',
          date: '20 Juin 2023',
          time: '19:00',
          imageUrl: 'https://images.unsplash.com/photo-1542568190-2b41a84b2453?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2074&q=80',
          status: 'Annulée',
          statusColor: Colors.red,
          showRebookButton: true,
        ),
      ],
    );
  }
  
  Widget _buildBookingCard({
    required String name,
    required String type,
    required String date,
    required String time,
    required String imageUrl,
    required String status,
    required Color statusColor,
    bool showReviewButton = false,
    bool showRebookButton = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Booking image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  type,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16, color: AppTheme.primaryBlue),
                    const SizedBox(width: 8),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.access_time, size: 16, color: AppTheme.primaryBlue),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                
                if (showReviewButton || showRebookButton)
                  const SizedBox(height: 16),
                
                if (showReviewButton)
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                    ),
                    child: const Text('Laisser un avis'),
                  ),
                
                if (showRebookButton)
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                    ),
                    child: const Text('Réserver à nouveau'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}