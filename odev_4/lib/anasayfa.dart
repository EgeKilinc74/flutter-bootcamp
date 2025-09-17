import 'package:flutter/material.dart';
import 'package:odev_4/sayfaA.dart';
import 'package:odev_4/sayfaX.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    print("Anasayfadasın");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA()));
                }, child: Text("Git A")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaX()));
                }, child: Text("Git X")),
          ],
        )
      ),
    );
  }
}
