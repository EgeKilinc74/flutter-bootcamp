import 'package:dart_dersleri/nesne_tabanli_programlama/fonksiyonlar.dart';

void main(){
  var f = Fonksiyonlar();
  f.selamla1();
  String gelenSonuc = f.selamla2();
  print(gelenSonuc);
  print(f.selamla2());
  print(f.selamla3("Ege"));

  print(f.toplam(1, 3));
}

