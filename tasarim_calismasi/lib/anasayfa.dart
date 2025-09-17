import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

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
        title: Text("Pizza",style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: ekranGenisligi/19),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: ekranYuksekligi/43),
            child: Text("Beef Cheese", style: TextStyle(fontSize:36,color: anaRenk,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: ekranYuksekligi/43),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding:  EdgeInsets.only(top: ekranYuksekligi/43),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip("Beef Cheese"),
                Chip("Sausage"),
                Chip("Olive"),
                Chip("Pepper"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("20 Min", style: TextStyle(fontSize:22,color: yaziRenk2,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Delivery", style: TextStyle(fontSize:22,color: anaRenk,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text("Meat lover,get ready to meet your pizza!!!",
                    style: TextStyle(fontSize:22,color: yaziRenk2,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("\$ 5.98", style: TextStyle(fontSize:44,color: anaRenk,fontWeight: FontWeight.bold),),
              SizedBox(width: ekranGenisligi/2,height: ekranYuksekligi/14,
                child: TextButton(
                  onPressed: () {},
                  child: Text("ADD TO CART", style: TextStyle(color: yaziRenk1,fontSize: 18),),
                  style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),

                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip(this.icerik);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(icerik, style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}

