import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}


class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //test();
    sayacKontrol();
  }

  Future<void> sayacKontrol() async{
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("Sayac") ?? 0;
    setState(() {
      sayac ++;
    });
    sp.setInt("Sayac", sayac);
  }

  Future<void> test() async{
    var sp = await SharedPreferences.getInstance();

    // Veri Kaydı
    sp.setString("ad", "Ahmet");
    sp.setInt("yas", 32);
    sp.setDouble("boy", 1.78);
    sp.setBool("bekar", true);

    var arkadasListesi = <String>[];
    arkadasListesi.add("Ali");
    arkadasListesi.add("Ece");
    sp.setStringList("arkadasListesi", arkadasListesi);

    //Veri silme
    //sp.remove("ad");

    //Veri Okuma
    String gelenAd = sp.getString("ad") ?? "isim yok";
    int gelenYas = sp.getInt("yas") ?? 0 ;
    double gelenBoy = sp.getDouble("boy") ?? 0.0;
    bool gelenBekar = sp.getBool("bekar") ?? false;
    print("Gelen Ad : $gelenAd");
    print("Gelen Yas : $gelenYas");
    print("Gelen Boy : $gelenBoy");
    print("Gelen Bekar : $gelenBekar");

    var gelenArkadasListesi = sp.getStringList("arkadasListesi") ?? null ;
    if(gelenArkadasListesi != null){
      for(var a in arkadasListesi){
        print("Arkadas : $a");
      }
    }
    //Veri Okuma

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared Performance"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Açılış Sayısı : $sayac",style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
