import 'package:flutter/material.dart';

class PatientSignupConnexion extends StatelessWidget {
  const PatientSignupConnexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Même structure que SignupConnexion, adaptée au patient
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "SIGNUP",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Exemple de champs pour un patient
            const SignupTextField(icon: Icons.person, hintText: "First Name"),
            const SignupTextField(icon: Icons.person, hintText: "Last Name"),
            const SignupTextField(icon: Icons.email, hintText: "Email"),
            const SignupTextField(icon: Icons.lock, hintText: "Password", isPassword: true),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                ),
                onPressed: () {
                  print("Patient Signup pressed");
                  // Ici, ta logique d’inscription
                },
                child: const Text(
                  "SIGNUP",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: GestureDetector(
                onTap: () {
                  print("Login patient clicked");
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget réutilisable identique, ou tu peux le déplacer dans un fichier commun
class SignupTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;

  const SignupTextField({
    required this.icon,
    required this.hintText,
    this.isPassword = false,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black),
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
