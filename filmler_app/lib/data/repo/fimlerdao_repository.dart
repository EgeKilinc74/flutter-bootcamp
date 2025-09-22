import 'package:filmler_app/data/entity/fimler.dart';

class FilmlerDaoRepository{


  Future<List<Filmler>> filmleriYukle() async{
    var filmListesi = <Filmler>[];
    var f1 = Filmler(film_id: 1, film_ad: "Django", resim: "django.png", fiyat: 24);
    var f2 = Filmler(film_id: 2, film_ad: "Interstellar", resim: "interstellar.png", fiyat: 32);
    var f3 = Filmler(film_id: 3, film_ad: "Inception", resim: "inception.png", fiyat: 16);
    var f4 = Filmler(film_id: 4, film_ad: "The Hateful", resim: "thehatefuleight.png", fiyat: 28);
    var f5 = Filmler(film_id: 5, film_ad: "The Pianist", resim: "thepianist.png", fiyat: 18);
    var f6 = Filmler(film_id: 6, film_ad: "Anadoluda", resim: "anadoluda.png", fiyat: 10);
    filmListesi.add(f1);
    filmListesi.add(f2);
    filmListesi.add(f3);
    filmListesi.add(f4);
    filmListesi.add(f5);
    filmListesi.add(f6);
    return filmListesi;
  }
}