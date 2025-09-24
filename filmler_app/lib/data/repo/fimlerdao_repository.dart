import 'package:filmler_app/data/entity/fimler.dart';
import 'package:filmler_app/data/sqlite/veritabani_yardimcisi.dart';

class FilmlerDaoRepository{


  Future<List<Filmler>> filmleriYukle() async{
  var db = await VeritabaniYardimcisi.veritabaniErisim();
  List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM filmler");

  return List.generate(maps.length, (i){
    var satir = maps[i];
    return Filmler(film_id: satir["film_id"], film_ad: satir["film_ad"], resim: satir["resim"], fiyat: satir["fiyat"]);
  });
  }
}