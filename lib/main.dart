import 'package:flutter/material.dart';

void main() {
  runApp(const MobilProgramlamaHafta12());
}

class MobilProgramlamaHafta12 extends StatelessWidget {
  const MobilProgramlamaHafta12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hafta 12: Kapsamlı Listeler',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Üniversite İletişim & Duyurular'),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. BÖLÜM: YATAY KAYDIRILABİLİR LİSTE (Örn: Hikayeler)
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Öne Çıkan Birimler',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              children: [
                _yatayBirimKarti(Icons.computer, "Bilgi İşlem", Colors.blue),
                _yatayBirimKarti(Icons.balance, "Öğr. İşleri", Colors.orange),
                _yatayBirimKarti(Icons.book, "Kütüphane", Colors.red),
                _yatayBirimKarti(Icons.sports, "Spor", Colors.green),
                _yatayBirimKarti(Icons.restaurant, "Yemekhane", Colors.purple),
              ],
            ),
          ),
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- YATAY LİSTE KODLARI BURAYA GELECEK ------------------

          // 2. BÖLÜM: DİKEY KAYDIRILABİLİR LİSTE (Örn: Telefon Rehberi)
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Akademik Personel Rehberi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          Expanded(
            child: ListView(
              children: [
                _dikeyRehberKarti("Ahmet Yılmaz", "Bilişim", "+905554441122"),
                _dikeyRehberKarti("Ayşe Ölmez", "Moda", "+905554441133"),
                _dikeyRehberKarti("Mehmet Doğan", "Elektrik", "+905554441144"),
                _dikeyRehberKarti("Süleyman Ezdemir", "Gıda", "+905554441155"),
                _dikeyRehberKarti("Özgür", "Yapay Zeka", "+905554441166"),
              ],
            ),
          ),
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
          //-------------------------------- DİKEY LİSTE KODLARI BURAYA GELECEK ------------------
        ],
      ),
    );
  }

  Widget _yatayBirimKarti(IconData ikon, String baslik, Color renk) {
    return Container(
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: renk.withOpacity(0.2),
            child: Icon(ikon, size: 35, color: renk),
          ),
          SizedBox(height: 8),
          Text(
            baslik,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _dikeyRehberKarti(String isim, String alan, String telefon) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(isim, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$alan\n$telefon"),
        leading: CircleAvatar(
          backgroundColor: Colors.indigo,
          child: Icon(Icons.person_outline, color: Colors.white),
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              print("$isim aranıyor...");
            },
            icon: Icon(Icons.call, color: Colors.green),
          ),
        ),
        isThreeLine: true,
      ),
    );
  }
}
