import 'package:flutter/material.dart';

class DoctorWallet extends StatelessWidget {
  const DoctorWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Exemple : Encadré avec solde
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/doctor.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Your Balance\n\$1805",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Liste des transactions
            Expanded(
              child: ListView(
                children: const [
                  WalletTransactionItem(
                    type: "Receive",
                    amount: 440,
                    dateTime: "07/10/2024 14:30",
                  ),
                  WalletTransactionItem(
                    type: "Receive",
                    amount: 325,
                    dateTime: "11/10/2024 11:20",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Petit widget pour afficher une transaction
class WalletTransactionItem extends StatelessWidget {
  final String type; // "Receive" ou "Pay"
  final double amount;
  final String dateTime;

  const WalletTransactionItem({
    required this.type,
    required this.amount,
    required this.dateTime,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          type == "Receive" ? Icons.check_circle : Icons.arrow_upward,
          color: Colors.green,
        ),
        title: Text("$type +\$$amount"),
        subtitle: Text(dateTime),
      ),
    );
  }
}
