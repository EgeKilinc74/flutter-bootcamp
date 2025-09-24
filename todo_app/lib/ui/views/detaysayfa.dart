import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/yapilacaklar.dart';
import 'package:todo_app/ui/cubit/anasayfa_cubit.dart';
import 'package:todo_app/ui/cubit/detaysayfa_cubit.dart';

class Detaysayfa extends StatefulWidget {
  Yapilacaklar yapilacaklar;
  Detaysayfa({ required this.yapilacaklar});

  @override
  State<Detaysayfa> createState() => _DetaysayfaState();
}

class _DetaysayfaState extends State<Detaysayfa> {

  var tfController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var yapilacaklar = widget.yapilacaklar;
    tfController.text = yapilacaklar.yapilacak;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yapılacakları Güncelleme..."),),

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
                      //print("Kaydet tıklandı: ${tfController.text}");
                      context.read<Detaysayfa_Cubit>().guncelle(widget.yapilacaklar.id, tfController.text);
                      context.read<AnasayfaCubit>().yapilacaklariListele();
                      Navigator.pop(context);

                    }, icon: Icon(Icons.update),color: Colors.green,iconSize: 40,),
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
