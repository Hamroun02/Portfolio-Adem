import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../models/restaurant.dart';
import '../../widgets/restaurant_list/restaurant_card.dart';
import '../../widgets/restaurant_list/filter_chip.dart';

class RestaurantListScreen extends StatefulWidget {
  const RestaurantListScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantListScreen> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
  String _sortBy = 'Popularité';
  bool _showEcoFriendly = false;
  
  // Sample data with internet images
  final List<Restaurant> _restaurants = [
    Restaurant(
      id: '1',
      name: 'Le Corsaire',
      location: 'Hammamet',
      rating: 4.8,
      reviewCount: 124,
      pricePerPerson: 80,
      imageUrl: 'https://images.unsplash.com/photo-1601050690597-df0568f70950?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      hasFreeParking: true,
      hasShuttle: true,
      accessTime: '15min en bateau',
      isEcoFriendly: true,
    ),
    Restaurant(
      id: '2',
      name: 'La Sirène',
      location: 'Djerba',
      rating: 4.5,
      reviewCount: 98,
      pricePerPerson: 65,
      imageUrl: 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      hasFreeParking: false,
      hasShuttle: true,
      accessTime: '10min en bateau',
      isEcoFriendly: false,
    ),
    Restaurant(
      id: '3',
      name: 'Azur Plage',
      location: 'Sousse',
      rating: 4.6,
      reviewCount: 112,
      pricePerPerson: 70,
      imageUrl: 'https://images.unsplash.com/photo-1542568190-2b41a84b2453?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2074&q=80',
      hasFreeParking: true,
      hasShuttle: false,
      accessTime: 'Accès direct',
      isEcoFriendly: true,
    ),
  ];
  
  List<Restaurant> get filteredRestaurants {
    List<Restaurant> result = List.from(_restaurants);
    
    // Apply eco-friendly filter
    if (_showEcoFriendly) {
      result = result.where((r) => r.isEcoFriendly).toList();
    }
    
    // Apply sorting
    switch (_sortBy) {
      case 'Popularité':
        result.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      case 'Prix':
        result.sort((a, b) => a.pricePerPerson.compareTo(b.pricePerPerson));
        break;
      case 'Distance':
        // In a real app, you would calculate distance from user's location
        break;
    }
    
    return result;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants avec Cabines'),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Filters section
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trier par',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomFilterChip(
                        label: 'Popularité',
                        isSelected: _sortBy == 'Popularité',
                        onSelected: (selected) {
                          setState(() {
                            _sortBy = 'Popularité';
                          });
                        },
                      ),
                      const SizedBox(width: 8),
                      CustomFilterChip(
                        label: 'Prix',
                        isSelected: _sortBy == 'Prix',
                        onSelected: (selected) {
                          setState(() {
                            _sortBy = 'Prix';
                          });
                        },
                      ),
                      const SizedBox(width: 8),
                      CustomFilterChip(
                        label: 'Distance',
                        isSelected: _sortBy == 'Distance',
                        onSelected: (selected) {
                          setState(() {
                            _sortBy = 'Distance';
                          });
                        },
                      ),
                      const SizedBox(width: 8),
                      CustomFilterChip(
                        label: 'Éco-Friendly 🌿',
                        isSelected: _showEcoFriendly,
                        onSelected: (selected) {
                          setState(() {
                            _showEcoFriendly = selected;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Restaurant list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: filteredRestaurants.length,
              itemBuilder: (context, index) {
                final restaurant = filteredRestaurants[index];
                return RestaurantCard(
                  restaurant: restaurant,
                  onTap: () {
                    Navigator.pushNamed(
                      context, 
                      '/restaurant-detail',
                      arguments: restaurant,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildBadge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppTheme.primaryBlue,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}