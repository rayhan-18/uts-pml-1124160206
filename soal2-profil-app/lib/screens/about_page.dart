import 'package:flutter/material.dart';
import '../models/profile.dart';

class AboutPage extends StatelessWidget {
  final Profile? profile;

  const AboutPage({super.key, this.profile});

  @override
  Widget build(BuildContext context) {
    final data = profile ?? Profile.initialData();
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              'Keahlian & Hobi',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const SizedBox(height: 8),
            ...data.keahlianHobi.map(
              (skill) => Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: Icon(
                    Icons.workspace_premium_outlined,
                    color: colorScheme.primary,
                  ),
                  title: Text(
                    skill.judul,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(skill.keterangan),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Riwayat Pendidikan',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const SizedBox(height: 8),
            ...data.riwayatPendidikan.map(
              (edu) => Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: Icon(
                    Icons.school_outlined,
                    color: colorScheme.primary,
                  ),
                  title: Text(
                    edu.institusi,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('${edu.jurusan}\n${edu.tahun}'),
                  isThreeLine: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}