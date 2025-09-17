import 'package:dart_dersleri/nesne_tabanli_programlama/araba.dart';

void main(){
  //nesne oluşturma

  var bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true);

  print("---------------------");
  print("Renk : ${bmw.renk}");
  print("Renk : ${bmw.hiz}");
  print("Renk : ${bmw.calisiyorMu}");
  //değer atama
  bmw.renk = "Yeşil";
  bmw.hiz=0;
  bmw.calisiyorMu=false;
  print("---------------------");
  print("Renk : ${bmw.renk}");
  print("Renk : ${bmw.hiz}");
  print("Renk : ${bmw.calisiyorMu}");

  var sahin = Araba(renk: "Kırmızı", hiz: 40, calisiyorMu: false);

  print("---------------------");
  print("Renk : ${sahin.renk}");
  print("Renk : ${sahin.hiz}");
  print("Renk : ${sahin.calisiyorMu}");
  //değer atama
  sahin.renk = "Beyaz";
  sahin.hiz=999;
  sahin.calisiyorMu=false;
  print("---------------------");
  print("Renk : ${sahin.renk}");
  print("Renk : ${sahin.hiz}");
  print("Renk : ${sahin.calisiyorMu}");

  sahin.bilgiAl();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();
  bmw.hizlan(14);
  bmw.bilgiAl();

}