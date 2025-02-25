import 'package:flutter/material.dart';
// Importe les autres fichiers Dart
import 'package:healthwire/doctor/doctor_home.dart';
import 'package:healthwire/doctor/doctor_appointment.dart';
import 'package:healthwire/doctor/doctor_wallet.dart';
import 'package:healthwire/doctor/doctor_settings.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({Key? key}) : super(key: key);

  @override
  DoctorDashboardState createState() => DoctorDashboardState();
}

class DoctorDashboardState extends State<DoctorDashboard> {
  // Index de l’onglet sélectionné
  int _selectedIndex = 0;

  // Liste des écrans correspondant aux 4 onglets
  final List<Widget> _pages = [
    const DoctorHome(),
    const DoctorAppointment(),
    const DoctorWallet(),
    const DoctorSettings(),
  ];

  // Méthode appelée quand on clique sur un bouton du BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Affiche la page correspondant à l’onglet choisi
      body: _pages[_selectedIndex],

      // Barre de navigation en bas
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.cyan, // Couleur de l'item sélectionné
        unselectedItemColor: Colors.grey, // Couleur des autres items
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
