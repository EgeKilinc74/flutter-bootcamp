import 'package:flutter/material.dart';
import 'package:odev_3/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği $ekranYuksekligi");
    print("Ekran Genisliği $ekranGenisligi");



    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cars",
          style: TextStyle(
              color: anaRenk,
              fontFamily: "Pacifico",
              fontSize: ekranGenisligi/19,
          ),
        ),
        centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0), // çizginin yüksekliği
            child: Container(
              color: anaRenk, // çizgi rengi
              height: ekranGenisligi/200,       // kalınlığı
            ),
          ),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KarakterVeAciklama("McQueen", "resimler/5903861c61361f28088e6604.webp"),
              KarakterVeAciklama("Sally", "resimler/5903865061361f28088e6640.webp"),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KarakterVeAciklama("Mater", "resimler/5903866d61361f28088e6656.webp"),
              KarakterVeAciklama("Mack", "resimler/Profile-Mack.webp"),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KarakterVeAciklama("Doc Hudson", "resimler/HUDSON_HORNET_51.webp"),
              KarakterVeAciklama("Ramone", "resimler/Ramone.webp")
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text("Merhaba",style: TextStyle(color: yaziRenk1),),
                  style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class KarakterVeAciklama extends StatelessWidget {
  String karakterIsmi;
  String resimYolu;

  KarakterVeAciklama(this.karakterIsmi, this.resimYolu);

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Column(
      children: [
        Image.asset(
          resimYolu,
          width: ekranGenisligi/8,
          height: ekranYuksekligi/8,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            karakterIsmi,style: TextStyle(fontWeight: FontWeight.bold,color: anaRenk),

          ),
        ),
      ],
    );
  }
}
