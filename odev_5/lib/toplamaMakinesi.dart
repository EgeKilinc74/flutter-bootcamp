import 'package:flutter/material.dart';

class ToplamaMakinesi extends StatefulWidget {
  @override
  _ToplamaMakinesiState createState() => _ToplamaMakinesiState();
}

class _ToplamaMakinesiState extends State<ToplamaMakinesi> {
  int toplam = 0;

  void sayiEkle(int sayi) {
    setState(() {
      toplam += sayi;
    });
  }

  void resetle() {
    setState(() {
      toplam = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toplama Makinesi")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Toplam: $toplam",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),

          // Sayılar
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(10, (index) {
              return ElevatedButton(
                onPressed: () => sayiEkle(index),
                child: Text("$index", style: TextStyle(fontSize: 20)),
              );
            }),
          ),

          SizedBox(height: 20),

          // Reset tuşu
          ElevatedButton(
            onPressed: resetle,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text("Reset", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
