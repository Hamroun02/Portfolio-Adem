import 'package:flutter/material.dart';
import '../../config/theme.dart';

class InteractiveMap extends StatelessWidget {
  const InteractiveMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Map placeholder - using NetworkImage
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Tunisia_location_map.svg/1200px-Tunisia_location_map.svg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / 
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(Icons.map_outlined, size: 80, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          
          // Map markers
          _buildMapMarker(top: 100, left: 120, label: 'Djerba', count: 24),
          _buildMapMarker(top: 80, left: 200, label: 'Hammamet', count: 18),
          _buildMapMarker(top: 150, left: 180, label: 'Mahdia', count: 15),
          _buildMapMarker(top: 120, left: 160, label: 'Sousse', count: 20),
          
          // Map controls
          Positioned(
            top: 16,
            right: 16,
            child: Column(
              children: [
                _buildMapControlButton(Icons.add, () {}),
                const SizedBox(height: 8),
                _buildMapControlButton(Icons.remove, () {}),
                const SizedBox(height: 8),
                _buildMapControlButton(Icons.my_location, () {}),
              ],
            ),
          ),
          
          // Map filter button
          Positioned(
            bottom: 16,
            right: 16,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
              label: const Text('Filtrer'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppTheme.primaryBlue,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildMapMarker({
    required double top,
    required double left,
    required String label,
    required int count,
  }) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '$count cabines',
                  style: const TextStyle(
                    color: AppTheme.primaryBlue,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 10,
            color: Colors.grey[400],
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: AppTheme.accentGold,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildMapControlButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        color: AppTheme.primaryBlue,
        iconSize: 20,
      ),
    );
  }
}