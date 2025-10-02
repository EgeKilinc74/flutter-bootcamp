import 'package:notlar_app/data/entity/not.dart';
import 'package:notlar_app/sqlite/veritabanii_yardimcisi.dart';

class NotdaoRepository{

  Future <List<Not>> notlariListele() async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM notlar");

    return List.generate(maps.length, (i){
      var satir = maps[i];
      return Not(id: satir["id"], icerik: satir["icerik"]);
    });
  }
}