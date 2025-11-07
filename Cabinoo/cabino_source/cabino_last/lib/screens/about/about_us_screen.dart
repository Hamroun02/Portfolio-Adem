import 'package:flutter/material.dart';
import '../../config/theme.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos de nous'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Notre Histoire'),
                  _buildParagraph(
                    'Cabino est né d\'une passion pour la beauté des côtes tunisiennes et d\'une vision innovante pour le tourisme balnéaire. Fondée en 2023, notre entreprise s\'est donnée pour mission de transformer l\'expérience des plages en offrant des cabines flottantes uniques qui allient confort, luxe et respect de l\'environnement.',
                  ),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Notre Mission'),
                  _buildParagraph(
                    'Chez Cabino, nous nous engageons à créer des expériences inoubliables en mer tout en préservant la beauté naturelle de nos côtes. Nous croyons que le luxe et la durabilité peuvent coexister harmonieusement.',
                  ),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Nos Valeurs'),
                  _buildValueItem('Innovation', 'Nous repoussons constamment les limites de ce qui est possible dans le tourisme maritime.'),
                  _buildValueItem('Durabilité', 'Toutes nos cabines sont conçues avec des matériaux écologiques et fonctionnent à l\'énergie solaire.'),
                  _buildValueItem('Excellence', 'Nous nous efforçons d\'offrir un service impeccable et une attention aux détails sans pareille.'),
                  _buildValueItem('Authenticité', 'Nous célébrons et mettons en valeur la culture et la gastronomie tunisiennes.'),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Notre Équipe'),
                  const SizedBox(height: 16),
                  _buildTeamGrid(),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Contactez-nous'),
                  const SizedBox(height: 16),
                  _buildContactInfo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/about_header.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.1),
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'CABINO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'L\'expérience unique des cabines flottantes en Tunisie',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        height: 1.5,
      ),
    );
  }

  Widget _buildValueItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.star, color: Colors.orange, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.8,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildTeamMember('Ahmed Karim', 'Fondateur & CEO', 'assets/images/team_1.jpg'),
        _buildTeamMember('Sarra Ben Ali', 'Directrice Marketing', 'assets/images/team_2.jpg'),
        _buildTeamMember('Mehdi Trabelsi', 'Chef des Opérations', 'assets/images/team_3.jpg'),
        _buildTeamMember('Lina Mansour', 'Responsable Client', 'assets/images/team_4.jpg'),
      ],
    );
  }

  Widget _buildTeamMember(String name, String role, String image) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    role,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
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

  Widget _buildContactInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildContactItem(Icons.location_on, 'Adresse', 'Avenue Habib Bourguiba, Tunis 1000, Tunisie'),
          const Divider(),
          _buildContactItem(Icons.phone, 'Téléphone', '+216 71 123 456'),
          const Divider(),
          _buildContactItem(Icons.email, 'Email', 'contact@cabino.tn'),
          const Divider(),
          _buildContactItem(Icons.language, 'Site Web', 'www.cabino.tn'),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}