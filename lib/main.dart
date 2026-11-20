import 'package:flutter/material.dart';
import 'package:tugas6praktikum/homepage.dart';

void main() {
  runApp(const MyApp());
}

final List<Map<String, String>> dataWisata = [
  {
    'nama': 'Sembalun-Rinjani',
    'lokasi': 'Lombok',
    'gambar': 'assets/picture/zidam.jpeg',
    'deskripsi':
        'Jalan yang terkenal di Lombok dengan view Gunung Rinjani dengan suhu yang sejuk dan syahdu.',
  },
  {
    'nama': 'Bukit Seger-Mandalika',
    'lokasi': 'Lombok',
    'gambar': 'assets/picture/zidam2.jpeg',
    'deskripsi':
        'Bukit dengan double view yang indah, Circuit Mandalika Lombok dan Pantai Seger.',
  },
  {
    'nama': 'Patung Garuda Wisnu Kencana',
    'lokasi': 'Bali',
    'gambar': 'assets/picture/zidam3.jpeg',
    'deskripsi':
        'Patung Garuda Wisnu Kencana yang ikonik di Bali yang melambangkan kekuatan dan keadilan.',
  },
  {
    'nama': 'Danau Batur-Kintamani',
    'lokasi': 'Bali',
    'gambar': 'assets/picture/zidam4.jpeg',
    'deskripsi':
        'Danau vulkanik di Pulau Bali yang terkenal dengan pemandangan sunset yang indah.',
  },
  {
    'nama': 'Pantai Pandawa',
    'lokasi': 'Bali',
    'gambar': 'assets/picture/zidam5.jpeg',
    'deskripsi':
        'Pantai yang terkenal di Bali dengan pasir putih dan air laut yang jernih.',
  },
  {
    'nama': 'Bromo-Tengger-Semeru National Park',
    'lokasi': 'Jawa Timur',
    'gambar': 'assets/picture/zidam6.jpeg',
    'deskripsi':
        'Taman nasional yang terkenal dengan pemandangan gunung berapi dan sunset yang indah.',
  },
  {
    'nama': 'Pantai Melasti',
    'lokasi': 'Bali',
    'gambar': 'assets/picture/zidam7.jpeg',
    'deskripsi':
        'Pantai yang terkenal di Bali dengan view sunset yang indah dan mempunya vibes tersendiri, cocok untuk slowliving .',
  },
  {
    'nama': 'Bukit Mantar-Sumbawa',
    'lokasi': 'Nusa Tenggara Barat',
    'gambar': 'assets/picture/zidam8.jpeg',
    'deskripsi':
        'Bukit yang terkenal dengan view laut flores dan 3 bukit yang terbentuk seperti gunung yang berjajar rapih dengan sunrise & sunsetyang indah.',
  },
];
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      title: 'Explore Wisata Indonesia',
      debugShowCheckedModeBanner: false,
    ); // MaterialApp
  }
}