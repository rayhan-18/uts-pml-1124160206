import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

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
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: colorScheme.primaryContainer,
                    child: Text(
                      'MR',
                      style: textTheme.headlineMedium?.copyWith(
                        color: colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Muhamad Rayhan',
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'NIM: 1124160206',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Program Studi: Teknik Informatika',
                    style: textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),

                  const Card(
                    child: Column(
                      children: [
                        InfoTile(
                          icon: Icons.email_outlined,
                          label: 'Email',
                          value: 'mr0031689@gmail.com',
                        ),
                        InfoTile(
                          icon: Icons.phone_outlined,
                          label: 'Nomor HP',
                          value: '088212448836',
                        ),
                        InfoTile(
                          icon: Icons.class_outlined,
                          label: 'Kelas',
                          value: 'TI-SE-3',
                        ),
                        InfoTile(
                          icon: Icons.code,
                          label: 'GitHub',
                          value: 'github.com/rayhan-18',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  const Card(
                    child: Column(
                      children: [
                        InfoTile(
                          icon: Icons.phone_android,
                          label: 'Mobile Development',
                          value: 'Flutter & Dart',
                        ),
                        InfoTile(
                          icon: Icons.storage_outlined,
                          label: 'Backend & Database',
                          value: 'PHP, Java, MySQL & Supabase',
                        ),
                        InfoTile(
                          icon: Icons.menu_book_outlined,
                          label: 'Hobi',
                          value: 'Membaca Komik',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 72),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up_outlined),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}