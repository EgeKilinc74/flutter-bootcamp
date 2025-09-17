import 'package:flutter/material.dart';
import 'package:odev_4/sayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    print("Sayfa A");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaB()));
                }, child: Text("Git B")),
          ],
        ),
      ),
    );
  }
}
