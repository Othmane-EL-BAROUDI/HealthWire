import 'package:flutter/material.dart';
import 'package:healthwire/connexions/signup_connexion.dart';
import 'package:healthwire/connexions/patient_signup_connexion.dart'; // <-- Import de la page pour le Patient

class UserSelectionConnexion extends StatelessWidget {
  const UserSelectionConnexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar transparent
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Retour à l'écran précédent (si souhaité)
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "USER SELECTION",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // Bouton Health Professional
            UserCard(
              imagePath: "assets/doctor.png",
              label: "Health Professional",
              onTap: () {
                print("🟢 Health Professional Selected");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupConnexion(),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),

            // Bouton Patient
            UserCard(
              imagePath: "assets/patient.png",
              label: "Patient",
              onTap: () {
                print("🟢 Patient Selected");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PatientSignupConnexion(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Ce composant réutilisable gère l'affichage d'une image + un bouton
class UserCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  const UserCard({
    required this.imagePath,
    required this.label,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Gère le tap sur la carte
      child: Column(
        children: [
          // Encadré de l'image
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.cyan, // Bordure cyan
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          // Bouton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            onPressed: onTap, // Gère le clic sur le bouton
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
