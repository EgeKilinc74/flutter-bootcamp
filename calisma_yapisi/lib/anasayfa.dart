import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  Future<int>toplama(int sayi1,int sayi2) async{
    int toplam = sayi1+sayi2;
    return toplam;
  }


  @override
  Widget build(BuildContext context) {
    print("build() çalıştı");
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac++;
              });
            }, child: Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Ege", yas: 21, boy: 1.87, bekar: false);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi: kisi)));
            }, child: Text("Başla")),
            Visibility(visible : kontrol ,child: Text("Merhaba")),
            Text(kontrol ? "Merhaba ":"Güle Güle",style: TextStyle(color: kontrol ? Colors.blue : Colors.green),),
            Text("Merhaba"),
            ElevatedButton(onPressed: (){
              setState(() { kontrol = true; });
            }, child: Text("Durum 1 True")),
            ElevatedButton(onPressed: (){
              setState(() { kontrol = false; });
            }, child: Text("Durum 1 false")),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context,snapshot){
                if(snapshot.hasError){
                 return const Text("Hata oluştu");
                }
                if(snapshot.hasData){
                  return Text("Sonuç : ${snapshot.data}");
                }else{
                  return const Text("Sonuç Yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
