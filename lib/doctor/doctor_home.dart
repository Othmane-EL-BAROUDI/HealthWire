import 'package:flutter/material.dart';

class DoctorHome extends StatelessWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Par exemple, un AppBar pour l’accueil
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Welcome Othmane'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Exemple de zone de recherche
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Titre
            const Text(
              'Upcoming Appointments',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Ici, tu peux lister des cards, un planning, etc.
            // ...
          ],
        ),
      ),
    );
  }
}
