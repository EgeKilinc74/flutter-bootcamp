import 'package:flutter/material.dart';
import 'package:odev_6/data/entity/albumler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  Future<List<Album>> albumListele() async {
    var albumListesi = <Album>[];
    albumListesi.addAll([
      Album(album_id: 1, album_adi: "Pop", album_resim: "foto.jpg"),
      Album(album_id: 2, album_adi: "Beğenilen Şarkılar", album_resim: "foto.jpg"),
      Album(album_id: 3, album_adi: "Jet Baba", album_resim: "foto.jpg"),
      Album(album_id: 4, album_adi: "Don't stop the party", album_resim: "foto.jpg"),
      Album(album_id: 5, album_adi: "Paşa ve Pekmez hüzünlü", album_resim: "foto.jpg"),
      Album(album_id: 6, album_adi: "Vuuhuu", album_resim: "foto.jpg"),
      Album(album_id: 7, album_adi: "Kop Kop", album_resim: "foto.jpg"),
      Album(album_id: 8, album_adi: "ABP 207", album_resim: "foto.jpg"),
    ]);
    return albumListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB954),
        title: Text("Spotify Clone"),
        leading: CircleAvatar(
          backgroundImage: AssetImage("resimler/foto.jpg"),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Container(
            color: Colors.white,
            height: 1.0,
          ),
        ),
      ),

      body: FutureBuilder<List<Album>>(
        future: albumListele(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var albumListesi = snapshot.data!;
            return GridView.builder(
              padding: EdgeInsets.all(8),
              itemCount: albumListesi.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1/1,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                mainAxisExtent: 60,
              ),
              itemBuilder: (context, indeks) {
                var album = albumListesi[indeks];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: double.infinity,
                        child: Image.asset(
                          "resimler/${album.album_resim}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          album.album_adi,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
