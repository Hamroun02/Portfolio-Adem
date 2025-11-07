import 'package:flutter/material.dart';
import 'screens/restaurant_list/restaurant_list_screen.dart';
import 'screens/restaurant_detail/restaurant_detail_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/activities/water_activities_screen.dart';
import 'screens/bookings/booking_history_screen.dart';
import 'config/theme.dart';
import 'widgets/common/custom_bottom_nav_bar.dart';
import 'screens/reservation/reservation_screen.dart';
import 'screens/reservation/reservation_confirmation_screen.dart';
import 'screens/favorites/favorites_screen.dart';
import 'models/restaurant.dart';
import 'models/reservation.dart'; // Add this import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cabino',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/restaurants': (context) => const RestaurantListScreen(),
        '/restaurant-detail': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Restaurant;
          return RestaurantDetailScreen(restaurant: args);
        },
        '/reservation': (context) => const ReservationScreen(
          title: 'Réservation',
          image: 'assets/images/reservation_header.jpg',
        ),
        // Remove the static route for confirmation screen
        // '/confirmation': (context) => const ReservationConfirmationScreen(),
      },
      // Add onGenerateRoute to handle dynamic routes with parameters
      onGenerateRoute: (settings) {
        if (settings.name == '/confirmation') {
          // Extract the arguments
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => ReservationConfirmationScreen(
              reservation: args['reservation'] as Reservation,
              qrData: args['qrData'] as String,
            ),
          );
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _screens = [
    const HomeScreen(),
    const RestaurantListScreen(),
    const WaterActivitiesScreen(),
    const BookingHistoryScreen(),
    const ProfileScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}