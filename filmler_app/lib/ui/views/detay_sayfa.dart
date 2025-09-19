import 'package:filmler_app/data/entity/fimler.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film ;
  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.film.film_ad),),
      body:  Center(
        child:Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.film.resim}"),
            Text("${widget.film.fiyat} ₺", style: const TextStyle(fontSize: 50, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
