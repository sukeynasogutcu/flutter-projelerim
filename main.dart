import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Derslerim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DerslerSayfasi(),
    );
  }
}
class DerslerSayfasi extends StatefulWidget {
  const DerslerSayfasi({super.key});

  @override
  State<DerslerSayfasi> createState() => _DerslerSayfasiState();
}

class _DerslerSayfasiState extends State<DerslerSayfasi> {
  TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> dersler = [
    {'isim': 'Mobil Yazılım Geliştirme', 'ikon': Icons.phone_android},
    {'isim': 'Yazılım Tasarım Mimarisi', 'ikon': Icons.architecture},
    {'isim': 'Mantık Devreleri', 'ikon': Icons.memory},
  ];
  List<IconData> randomIkonlar = [
    Icons.book,
    Icons.computer,
    Icons.science,
    Icons.lightbulb,
    Icons.calculate,
    Icons.code,
    Icons.sports_esports,
    Icons.language,
    Icons.star,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey[800],
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  const Icon(Icons.school, color: Colors.white, size: 30),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Derslerim',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Yeni Ders Ekle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Ders adı yazın',
                  hintStyle: TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.blueGrey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  if (_controller.text.isNotEmpty) {
                    setState(() {
                      var random = Random();
                      dersler.add({
                        'isim': _controller.text,
                        'ikon': randomIkonlar[random.nextInt(randomIkonlar.length)],
                      });
                      _controller.clear();
                    });
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      '+ Ekle',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 20),
                itemCount: dersler.length + 1,
                itemBuilder: (context, index) {
                  if (index == dersler.length) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Henüz eklenen ders yok',
                            style: TextStyle(color: Colors.white70, fontSize: 16),
                          ),

                        ),
                      ),
                    );
                  }
                  return Card(
                    color: Colors.blueGrey[800],
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    child: ListTile(
                      leading: Icon(
                        dersler[index]['ikon'],
                        color: Colors.white,
                        size: 28,
                      ),
                      title: Text(
                        dersler[index]['isim'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.redAccent),
                        onPressed: () {
                          setState(() {
                            dersler.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}

