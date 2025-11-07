import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../config/theme.dart';
import '../../models/restaurant.dart';
import '../../models/cabin.dart';
import '../../widgets/restaurant_detail/cabin_card.dart';
import '../../widgets/restaurant_detail/menu_option_card.dart';
import '../../widgets/restaurant_detail/extra_service_card.dart';
import '../../widgets/common/section_title.dart';
import '../../screens/reservation/reservation_form_screen.dart'; // Add this import
import '../../widgets/restaurant_detail/cabin_card.dart';
import '../../widgets/restaurant_detail/menu_option_card.dart';
import '../../widgets/restaurant_detail/extra_service_card.dart';
import '../../widgets/common/section_title.dart';

class RestaurantDetailScreen extends StatefulWidget {
  final Restaurant restaurant;
  
  const RestaurantDetailScreen({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final restaurant = ModalRoute.of(context)!.settings.arguments as Restaurant;
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Image
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    restaurant.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  // Gradient overlay for better text visibility
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(restaurant.name),
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
          
          // Restaurant Info
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Rating and Location
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        '${restaurant.rating}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '(${restaurant.reviewCount} avis)',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.location_on, color: Colors.grey, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        restaurant.location,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // Access badges
                  Row(
                    children: [
                      if (restaurant.hasFreeParking)
                        _buildBadge('🚗 Parking gratuit'),
                      if (restaurant.hasFreeParking && restaurant.hasShuttle)
                        const SizedBox(width: 8),
                      if (restaurant.hasShuttle)
                        _buildBadge('🚤 Navette incluse'),
                      const SizedBox(width: 8),
                      _buildBadge('🕒 ${restaurant.accessTime}'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  
                  // Access Information Section
                  SectionTitle(
                    title: 'Accès',
                    onSeeAll: () {}, // Adding the required onSeeAll parameter
                  ),
                  const SizedBox(height: 16),
                  
                  // Access Tabs
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(text: '🚤 Par Bateau'),
                        Tab(text: '🚗 Par Voiture'),
                      ],
                      labelColor: AppTheme.primaryBlue,
                      unselectedLabelColor: Colors.grey[600],
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        // Boat Access Tab
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Parking Partenaire:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              const Text('Parking "Les Palmiers" - Gratuit pour les clients'),
                              const SizedBox(height: 16),
                              
                              const Text(
                                'Horaires Navette:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              const Text('Départs: 11h30, 12h30, 13h30'),
                              const Text('Retours: 15h00, 16h00, 17h00'),
                              const SizedBox(height: 16),
                              
                              const Text(
                                'Durée de la Traversée:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              const Text('15 minutes en bateau'),
                            ],
                          ),
                        ),
                        
                        // Car Access Tab
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Adresse:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              const Text('Route de la Plage, Km 5, Hammamet Nord'),
                              const SizedBox(height: 16),
                              
                              const Text(
                                'Services Parking:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              const Text('• Parking gratuit surveillé 24/7'),
                              const Text('• Service voiturier disponible (+10 TND)'),
                              const SizedBox(height: 16),
                              
                              Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.map),
                                      label: const Text('Google Maps'),
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.navigation),
                                      label: const Text('Waze'),
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Cabins Section
                  SectionTitle(
                    title: 'Choix de la Cabine',
                    onSeeAll: () {}, // Adding the required onSeeAll parameter
                  ),
                  const SizedBox(height: 16),
                  
                  // Cabin Types
                  const Text(
                    'Cabines Terrestres',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CabinCard(
                          cabin: Cabin(
                            id: '1',
                            name: 'Cabine Standard',
                            type: CabinType.land,
                            capacity: 4,
                            pricePerDay: 120,
                            imageUrl: 'assets/images/cabin_land_1.jpg',
                            amenities: ['Climatisation', 'Hamac', 'Douche extérieure'],
                          ),
                          onTap: () => _showCabinDetails(context),
                        ),
                        CabinCard(
                          cabin: Cabin(
                            id: '2',
                            name: 'Cabine Familiale',
                            type: CabinType.land,
                            capacity: 6,
                            pricePerDay: 180,
                            imageUrl: 'assets/images/cabin_land_2.jpg',
                            amenities: ['Climatisation', 'Hamac', 'Douche extérieure', 'Espace enfants'],
                          ),
                          onTap: () => _showCabinDetails(context),
                        ),
                        CabinCard(
                          cabin: Cabin(
                            id: '3',
                            name: 'Cabine Éco',
                            type: CabinType.land,
                            capacity: 2,
                            pricePerDay: 90,
                            imageUrl: 'assets/images/cabin_land_3.jpg',
                            amenities: ['Hamac', 'Douche extérieure', 'Matériaux recyclés'],
                            isEcoFriendly: true,
                          ),
                          onTap: () => _showCabinDetails(context),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  const Text(
                    'Cabines Sur Mer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CabinCard(
                          cabin: Cabin(
                            id: '4',
                            name: 'Cabine Flottante',
                            type: CabinType.sea,
                            capacity: 2,
                            pricePerDay: 150,
                            imageUrl: 'assets/images/cabin_sea_1.jpg',
                            amenities: ['Échelle pour baignade', 'Vue panoramique', 'Toit ouvrant'],
                          ),
                          onTap: () => _showCabinDetails(context),
                        ),
                        CabinCard(
                          cabin: Cabin(
                            id: '5',
                            name: 'Cabine Romantique',
                            type: CabinType.sea,
                            capacity: 2,
                            pricePerDay: 200,
                            imageUrl: 'assets/images/cabin_sea_2.jpg',
                            amenities: ['Échelle pour baignade', 'Fond transparent', 'Décoration romantique'],
                          ),
                          onTap: () => _showCabinDetails(context),
                        ),
                        CabinCard(
                          cabin: Cabin(
                            id: '6',
                            name: 'Cabine Premium',
                            type: CabinType.sea,
                            capacity: 4,
                            pricePerDay: 250,
                            imageUrl: 'assets/images/cabin_sea_3.jpg',
                            amenities: ['Échelle pour baignade', 'Fond transparent', 'Mini bar', 'Musique'],
                          ),
                          onTap: () => _showCabinDetails(context),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Menu Section
                  SectionTitle(
                    title: 'Menu Déjeuner',
                    onSeeAll: () {}, // Adding the required onSeeAll parameter
                  ),
                  const SizedBox(height: 16),
                  
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [
                      MenuOptionCard(
                        title: 'Menu Standard',
                        price: 45,
                        description: 'Entrée, plat, dessert au choix',
                        imageUrl: 'assets/images/menu_standard.jpg',
                        onTap: () {},
                      ),
                      MenuOptionCard(
                        title: 'Menu Surprise du Chef',
                        price: 65,
                        description: 'Dégustation de spécialités tunisiennes',
                        imageUrl: 'assets/images/menu_surprise.jpg',
                        onTap: () {},
                      ),
                      MenuOptionCard(
                        title: 'Menu Végétarien 🌱',
                        price: 40,
                        description: 'Options végétariennes et véganes',
                        imageUrl: 'assets/images/menu_vegan.jpg',
                        onTap: () {},
                      ),
                      MenuOptionCard(
                        title: 'Menu Enfant',
                        price: 25,
                        description: 'Adapté aux enfants de 4 à 12 ans',
                        imageUrl: 'assets/images/menu_kids.jpg',
                        onTap: () {},
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Extras Section
                  SectionTitle(
                    title: 'Suppléments',
                    onSeeAll: () {}, // Adding the required onSeeAll parameter
                  ),
                  const SizedBox(height: 16),
                  
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ExtraServiceCard(
                        icon: '🍾',
                        title: 'Bouteille de vin tunisien',
                        price: 35,
                        description: 'Sélection de vins locaux (rouge, blanc, rosé)',
                        onTap: () {},
                      ),
                      const SizedBox(height: 12),
                      ExtraServiceCard(
                        icon: '🎉',
                        title: 'Décoration romantique',
                        price: 50,
                        description: 'Fleurs, bougies, pétales de rose',
                        onTap: () {},
                      ),
                      const SizedBox(height: 12),
                      ExtraServiceCard(
                        icon: '📸',
                        title: 'Photographe privé',
                        price: 70,
                        description: 'Session photo de 30 minutes',
                        onTap: () {},
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Book Now Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/booking', arguments: restaurant);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.accentGold,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Réserver Maintenant',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.restaurant_menu),
                      label: const Text('Réserver maintenant'),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReservationFormScreen(
                            restaurant: restaurant,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
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
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: AppTheme.primaryBlue,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }
  
  void _showCabinDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cabin gallery
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/cabin_sea_1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Cabin name and capacity
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cabine Flottante',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '150 TND / jour',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.accentGold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Capacité: 2 personnes',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Amenities
                  const Text(
                    'Équipements',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Chip(label: Text('Échelle pour baignade')),
                      Chip(label: Text('Vue panoramique')),
                      Chip(label: Text('Toit ouvrant')),
                      Chip(label: Text('Serviettes incluses')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // Description
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Profitez d\'une expérience unique dans notre cabine flottante avec vue à 360° sur la mer. Accédez directement à l\'eau grâce à l\'échelle privée et admirez les fonds marins depuis votre cabine. Idéal pour les couples à la recherche d\'une expérience romantique et originale.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Warning
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.warning_amber_rounded, color: Colors.amber),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Cette cabine nécessite une réservation 48h à l\'avance',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Select button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sélectionner cette cabine',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}