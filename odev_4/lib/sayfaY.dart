import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    print("Sayfa Y");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.popUntil(context, (route) => route.isFirst);
                }, child: Text("Git Anasayfa")),

          ],
        ),
      ),
    );
  }
}
