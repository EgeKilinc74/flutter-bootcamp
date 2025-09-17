import 'package:dart_dersleri/nesne_tabanli_programlama/Composition/filmler.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/Composition/kategoriler.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/Composition/yonetmenler.dart';

void main(){
  var k1 = Kategoriler(kategori_id: 1, kategori_adi: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_adi: "Komedi");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "Christopher Nolan");

  var f1 = Filmler(Film_id: 1, Film_adi: "Django", film_yil: 2013, kategori: k1, yonetmen: y1);
  var f2 = Filmler(Film_id: 2, Film_adi: "Arabalar", film_yil: 2016, kategori: k2, yonetmen: y2);

  print("Film id : ${f1.Film_id}");
  print("Film ad : ${f1.Film_adi}");
  print("Film yıl : ${f1.film_yil}");
  print("Film kategori : ${f1.kategori.kategori_adi}");
  print("Film yönetmen : ${f1.yonetmen.yonetmen_adi}");
}
