import 'package:flutter/material.dart';
import 'package:odev_4/sayfaY.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    print("Sayfa X");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaY()));
                }, child: Text("Git Y")),
          ],
        ),
      ),
    );
  }
}
