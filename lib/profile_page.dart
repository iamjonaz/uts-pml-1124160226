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
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                // HEADER PROFIL
                Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue,
                        child: Text(
                          'AM',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        'Arjuna Meiureksa',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall,
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'NIM: 1124160226',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium,
                      ),

                      const SizedBox(height: 4),

                      Text(
                        'Teknik Informatika',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // CARD KONTAK
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          'Informasi Kontak',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge,
                        ),

                        const SizedBox(height: 12),

                        const InfoTile(
                          icon: Icons.email,
                          label: 'Email',
                          value: 'jonazhell06@gmail.com',
                        ),

                        const InfoTile(
                          icon: Icons.phone,
                          label: 'Nomor HP',
                          value: '085697136932',
                        ),

                        const InfoTile(
                          icon: Icons.school,
                          label: 'Prodi',
                          value: 'Teknik Informatika',
                        ),

                        const InfoTile(
                          icon: Icons.code,
                          label: 'GitHub',
                          value: 'https://github.com/iamjonaz',
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // CARD KEAHLIAN DAN HOBI
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          'Keahlian dan Hobi',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge,
                        ),

                        const SizedBox(height: 12),

                        const InfoTile(
                          icon: Icons.code,
                          label: 'Language',
                          value: 'HTML, CSS, JavaScript, Dart, Python',
                        ),

                        const InfoTile(
                          icon: Icons.computer,
                          label: 'Keahlian',
                          value: 'Pemrograman',
                        ),

                        const InfoTile(
                          icon: Icons.sports_esports,
                          label: 'Hobi',
                          value: 'Bermain Game',
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      // FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Terima kasih telah melihat profil saya',
              ),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

// WIDGET REUSABLE INFOTILE
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