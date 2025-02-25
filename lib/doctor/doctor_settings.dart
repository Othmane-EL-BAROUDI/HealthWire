import 'package:flutter/material.dart';

class DoctorSettings extends StatelessWidget {
  const DoctorSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // En-tête de profil
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/doctor.png'),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Dr. Othmane",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("Heart Specialist"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Liste d’options
          ListTile(
            title: const Text("Your Profile"),
            leading: const Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: const Text("History Transaction"),
            leading: const Icon(Icons.history),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Change password"),
            leading: const Icon(Icons.lock),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Forgot password"),
            leading: const Icon(Icons.lock_open),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Notification"),
            leading: const Icon(Icons.notifications),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Language"),
            leading: const Icon(Icons.language),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Help and Support"),
            leading: const Icon(Icons.help),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
