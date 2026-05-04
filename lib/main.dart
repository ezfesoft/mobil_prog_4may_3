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
    );
  }

  Widget _dikeyRehberKarti(String isim, String alan, String telefon) {
    return Card(
    );
  }
}