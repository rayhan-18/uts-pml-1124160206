
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                const CircleAvatar(
                  radius: 55,
                  child: Text(
                    'MR',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  'Muhamad Rayhan',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                const SizedBox(height: 8),

                Text(
                  '1124160206',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 5),

                Text(
                  'Teknik Informatika',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 25),

                const Divider(),

                const SizedBox(height: 15),

                Text(
                  'Profil Mahasiswa',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
