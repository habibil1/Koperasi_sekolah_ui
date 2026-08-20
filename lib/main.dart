import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  int stok = 202;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Koperasi Sekolah')),
        body: Card(
          margin: const EdgeInsets.all(12),
          child: ListTile(
            leading: const Icon(Icons.inventory_2),
            title: const Text(
              'Buku tulis',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Anggota Rp5.000 | Umum Rp5.500'),
            trailing: Text(
              'Stok ' + stok.toString(),
              style: TextStyle(color: stok == 0 ? Colors.red : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}