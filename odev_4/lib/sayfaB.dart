import 'package:flutter/material.dart';
import 'package:odev_4/sayfaY.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    print("Sayfa B");
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
