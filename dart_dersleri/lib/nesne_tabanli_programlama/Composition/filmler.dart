import 'package:dart_dersleri/nesne_tabanli_programlama/Composition/kategoriler.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/Composition/yonetmenler.dart';

class Filmler{
  int Film_id;
  String Film_adi;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler({required this.Film_id,
    required this.Film_adi,
    required this.film_yil,
    required this.kategori,
    required this.yonetmen});

}