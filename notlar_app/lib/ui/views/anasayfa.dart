
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notlar_app/data/entity/not.dart';
import 'package:notlar_app/ui/cubit/anasayfa_cubit.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfArama = TextEditingController();
  bool aramaYapiyorMu = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AnasayfaCubit>().notlariListele();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: aramaYapiyorMu ?
      TextField(
        controller: tfArama,
        decoration: InputDecoration(hintText: "Ara..."),
        onChanged: (aramaSonucu) {
          if (aramaSonucu.isNotEmpty) {
            // ara kodu
          } else {
            //listele kodu
          }
        },
      ) :
      Text(
        "Not Defterim", style: TextStyle(fontSize: 20),),
        actions: [
          aramaYapiyorMu ?
              IconButton(onPressed: (){
                print("Temizle butonuna tıklandı");
                setState(() {
                  aramaYapiyorMu = false;
                  // Listele kodu yaz
                });
    }, icon: Icon(Icons.clear)):
              IconButton(onPressed: (){
                setState(() {
                  print("Arama butonuna tıklandı");
                  aramaYapiyorMu = true;
                });
              }, icon: Icon(Icons.search))
        ],
      ),


      body: BlocBuilder <AnasayfaCubit,List<Not>>(
          builder: (context,notlarListesi){
            if(notlarListesi.isNotEmpty){
              return ListView.builder(
                  itemCount: notlarListesi.length,
                  itemBuilder: (context,indeks) {
                    var notlar = notlarListesi[indeks];
                    print(notlar.id);
                    print(notlar.icerik);
                    return Card(
                      child: ListTile(
                        title: Text(notlar.icerik),
                        trailing: IconButton(onPressed: (){

                        }, icon: Icon(Icons.delete),color: Colors.red, ),
                      ),
                    );
                  }
              );
            }else{
              return const Center();
            }
          }),

    );
  }
}
