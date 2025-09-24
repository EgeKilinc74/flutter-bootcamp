import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/ui/cubit/anasayfa_cubit.dart';
import 'package:todo_app/ui/cubit/yapilacakkaydet_cubit.dart';

class Yapilacakkaydet extends StatefulWidget {
  const Yapilacakkaydet({super.key});

  @override
  State<Yapilacakkaydet> createState() => _YapilacakkaydetState();
}

class _YapilacakkaydetState extends State<Yapilacakkaydet> {

  var tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Neler Yapıcaksın?"),),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      minLines: 20,
                      maxLines: 20,
                      decoration: const InputDecoration(hintText: "Yapmak istediklerinizi yazınız..."),
                      controller: tfController,
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){
                      print("Kaydet tıklandı: ${tfController.text}");
                      context.read<YapilacakkaydetCubit>().ekle(tfController.text);
                      context.read<AnasayfaCubit>().yapilacaklariListele();
                      Navigator.pop(context);
                    }, icon: Icon(Icons.check),color: Colors.green,iconSize: 40,),
                    IconButton(onPressed: (){
                      tfController.clear();
                    }, icon: Icon(Icons.delete),color: Colors.red,iconSize: 40, ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
