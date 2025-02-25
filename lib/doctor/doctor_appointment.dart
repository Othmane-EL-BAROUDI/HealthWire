import 'package:flutter/material.dart';

class DoctorAppointment extends StatelessWidget {
  const DoctorAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Appointments'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Par exemple, un bandeau pour choisir "Upcoming" ou "Past"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("Upcoming", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Past"),
            ],
          ),
          const SizedBox(height: 20),

          // Exemple de rendez-vous
          const AppointmentCard(
            patientName: "Ziad El Baroudi",
            time: "1:30pm to 2:30pm",
          ),
          const AppointmentCard(
            patientName: "Simo Kerroumi",
            time: "2:30pm to 3:30pm",
          ),
          // ... etc.
        ],
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String patientName;
  final String time;

  const AppointmentCard({
    required this.patientName,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan.shade100,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        title: Text(patientName),
        subtitle: Text(time),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {
                // Logique d’appel
              },
            ),
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                // Logique de message
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                // Logique like/favori
              },
            ),
          ],
        ),
      ),
    );
  }
}
