import 'package:flutter/material.dart';

class Hesapmakinesitustakimli extends StatefulWidget {
  const Hesapmakinesitustakimli({super.key});

  @override
  State<Hesapmakinesitustakimli> createState() => _HesapmakinesitustakimliState();
}

class _HesapmakinesitustakimliState extends State<Hesapmakinesitustakimli> {
  var tfController = TextEditingController();
  int toplam = 0;

  // Sayı butonlarına basınca
  void sayiEkle(String sayi) {
    setState(() {
      tfController.text += sayi; // yazılan sayının sonuna ekler
    });
  }

  // Topla butonu
  void sayiTopla() {
    setState(() {
      int girilenSayi = int.tryParse(tfController.text) ?? 0;
      toplam += girilenSayi;
      tfController.clear();
    });
  }

  // Reset
  void resetle() {
    setState(() {
      toplam = 0;
      tfController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tuş Takımlı Toplama Makinesi")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // TextField (klavyeden yazılamaz)
            TextField(
              controller: tfController,
              readOnly: true,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Sayı",
              ),
            ),
            SizedBox(height: 20),

            // Sonuç
            Text(
              "Toplam: $toplam",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for(int i = 1 ; i<4 ;i++)
                  ElevatedButton(onPressed: (){
                    sayiEkle(i.toString());
                  }, child: Text("$i",style: TextStyle(fontSize: 24),)
                  ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for(int i = 4 ; i<7 ;i++)
                  ElevatedButton(onPressed: (){
                    sayiEkle(i.toString());
                  }, child: Text("$i",style: TextStyle(fontSize: 24),)
                  ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for(int i = 7 ; i<10 ;i++)
                  ElevatedButton(onPressed: (){
                    sayiEkle(i.toString());
                  }, child: Text("$i",style: TextStyle(fontSize: 24),)
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    sayiEkle("0");
                  },
                  child: Text("0", style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    sayiTopla();
                  },
                  child: Text("+", style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    resetle();
                  },
                  child: Text(" ", style: TextStyle(fontSize: 24)),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}