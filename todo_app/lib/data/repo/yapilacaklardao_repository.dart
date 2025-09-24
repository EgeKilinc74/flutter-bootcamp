import 'package:todo_app/data/entity/yapilacaklar.dart';
import 'package:todo_app/sqlite/veritabani_yardimcisi.dart';

class YapilacaklardaoRepository {

  Future<void> kaydet(String yapilacak) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var yeniYapilacak = Map<String,dynamic>();
    yeniYapilacak["yapilacak"] = yapilacak;
    await db.insert("yapilacaklar", yeniYapilacak );
  }

  Future<List<Yapilacaklar>> yapilacaklariListele () async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM yapilacaklar");

    return List.generate( maps.length, (i){
      var satir = maps[i];
      return Yapilacaklar(id: satir["id"], yapilacak: satir["yapilacak"]);
    });
  }


  Future<void> sil(int id)async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    await db.delete(
      "yapilacaklar",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<List<Yapilacaklar>> ara (String aramaKelimesi) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM yapilacaklar WHERE yapilacak like '%$aramaKelimesi%'");

    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Yapilacaklar(id: satir["id"], yapilacak: satir["yapilacak"]);
    });
  }


   Future<void> guncelle (int id,String yapilacaklar) async{
    var db= await VeritabaniYardimcisi.veritabaniErisim();

    var guncellenenKisi = Map<String,dynamic>();
    guncellenenKisi["yapilacak"] = yapilacaklar;
    await db.update("yapilacaklar", guncellenenKisi,where: "id = ?",whereArgs: [id]);

}


}