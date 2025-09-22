import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});




  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  var tfController = TextEditingController();
  int toplam = 0;

  void resetle(){
    setState(() {
      toplam =0;
      tfController.clear();
    });
  }

  void sayiTopla(){
    setState(() {
      int girilenSayi = int.tryParse(tfController.text) ?? 0;
      toplam +=girilenSayi;
      tfController.clear();
    });
  }
  void sayiCikar(){
    setState(() {
      int girilenSayi = int.tryParse(tfController.text) ?? 0;
      toplam -=girilenSayi;
      tfController.clear();
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hesap Makinesi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: tfController,
              decoration: InputDecoration(hintText: "Sayi",border: OutlineInputBorder(),),
              keyboardType: TextInputType.number,
            ),
            Text("Toplam : $toplam",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  sayiTopla();
                }, child: Text("Topla"),),
                ElevatedButton(onPressed: (){
                  resetle();
                }, child: Text("Resetle",),),
                ElevatedButton(onPressed: (){
                  sayiCikar();
                }, child: Text("Çıkar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

