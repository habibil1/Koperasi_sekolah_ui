import 'package:flutter/material.dart';

void main() => runApp(MyApp());

IconData pilihIkon(String kategori) {
  switch (kategori.toLowerCase()) {
    case 'atk':
      return Icons.edit;
    case 'makanan':
      return Icons.fastfood;
    case 'minuman':
      return Icons.local_drink;
    default:
      return Icons.inventory_2;
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int stokcard1 = 0;
  int stokcard2 = 0;
  String kategori = 'ATK';

  final List<Map<String, dynamic>> daftarBarang = [
    {'nama': 'deathnote', 'anggota': 4000, 'umum': 4300, 'stok': 1},
    {'nama': 'kipas', 'anggota': 90000, 'umum': 90300, 'stok': 2},
    {'nama': 'baret', 'anggota': 10000, 'umum': 10300, 'stok': 3},
    {'nama': 'raja', 'anggota': 4000, 'umum': 4300, 'stok': 4},
    {'nama': 'riji', 'anggota': 90000, 'umum': 90300, 'stok': 5},
    {'nama': 'ruju', 'anggota': 10000, 'umum': 10300, 'stok': 6},
    {'nama': 'reje', 'anggota': 4000, 'umum': 4300, 'stok': 7},
    {'nama': 'rojo', 'anggota': 90000, 'umum': 90300, 'stok': 8},
    {'nama': 'laptop', 'anggota': 4000, 'umum': 4300, 'stok': 9},
    {'nama': 'lampu', 'anggota': 90000, 'umum': 90300, 'stok': 10},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Koperasi Sekolah')),
        body: ListView.builder(
          itemCount: daftarBarang.length,
          itemBuilder: (context, index) {
            final barang = daftarBarang[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: const Icon(Icons.inventory_2),
                title: Text(barang['nama']),
                subtitle: Text('anggota Rp' + barang['anggota'].toString()),
                trailing: Text('stok' + barang['stok'].toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}