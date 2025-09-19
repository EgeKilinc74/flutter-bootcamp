import 'package:filmler_app/data/entity/fimler.dart';
import 'package:filmler_app/ui/views/detay_sayfa.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}



class _AnasayfaState extends State<Anasayfa> {

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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler"),),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriYukle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filmListesi = snapshot.data!;
            return GridView.builder(
              itemCount: filmListesi.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // sütun sayısı
                childAspectRatio: 1 / 1.8, // kartların en-boy oranı
              ),
              itemBuilder: (context, index) {//0 , 1, 2, 3, 4, 5, 6
                var film = filmListesi[index];
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film)));
                    },
                    child: Card(
                      color: Colors.black,
                      elevation: 4,
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Image.asset("resimler/${film.resim}"),
                            ),
                          ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text(
                               film.film_ad,
                               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                             ),
                             Text("${film.fiyat} ₺", style: const TextStyle(fontSize: 16, color: Colors.blue)),
                           ],
                         ),
                          ElevatedButton(onPressed: (){
                            print("${film.film_ad} sepete eklendi");
                          }, child: Text("Sepet"))
                        ],
                      ),
                    ),

                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
