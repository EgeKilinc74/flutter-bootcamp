import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/yapilacaklar.dart';
import 'package:todo_app/ui/cubit/anasayfa_cubit.dart';
import 'package:todo_app/ui/views/detaysayfa.dart';
import 'package:todo_app/ui/views/yapilacakkaydet.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';

class Anasayfa extends StatefulWidget {

  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  bool aramaYapiyorMu = false;
  var tfArama = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AnasayfaCubit>().yapilacaklariListele();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: aramaYapiyorMu  ?
      TextField(
        controller: tfArama,
        decoration: InputDecoration(hintText: "Ara..."),
        onChanged: (aramaSonucu){
          if(aramaSonucu.isNotEmpty){
            context.read<AnasayfaCubit>().ara(aramaSonucu);
          }else{
            context.read<AnasayfaCubit>().yapilacaklariListele();
          }
        },
      ) :
      Text(
        "What am I going to do?",style: TextStyle(fontSize: 20),),
        actions: [
          aramaYapiyorMu ? 
              IconButton(onPressed: (){
                print("temizle  butonuna tıklandı");
                setState(() {
                  context.read<AnasayfaCubit>().yapilacaklariListele();
                  aramaYapiyorMu=false;
                });
              }, icon: Icon(Icons.clear)):
              IconButton(onPressed: (){
                print("arama butonuna tıklandı");
                setState(() {
                  aramaYapiyorMu=true;
                });
              }, icon: Icon(Icons.search))
        ],
      ),

      body: BlocBuilder<AnasayfaCubit, List<Yapilacaklar>>(
        builder: (context, yapilacaklarListesi) {
          if (yapilacaklarListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: yapilacaklarListesi.length,
              itemBuilder: (context, indeks) {
                var yapilacak = yapilacaklarListesi[indeks];
                print(yapilacak.id);
                print(yapilacak.yapilacak);
                return SizedBox(
                  width: double.infinity, height: 90,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Detaysayfa(yapilacaklar: yapilacak)));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text(yapilacak.yapilacak),
                        trailing: IconButton(onPressed: (){
                          print("Silme Butonuna tıklandı");
                          showDialog(context: context, builder: (context) => AlertDialog(
                            title: Text("Sil"),
                            content: Text("${yapilacak.yapilacak} silinsin mi?"),
                            actions: [
                              TextButton(onPressed: () => Navigator.pop(context), child: Text("Hayır")),
                              TextButton(onPressed: () {
                                context.read<AnasayfaCubit>().sil(yapilacak.id);
                                Navigator.pop(context);
                              }, child: Text("Evet")),
                            ],
                          )
                          );

                        }, icon: Icon(Icons.delete),color: Colors.red,),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text(
                "Henüz yapılacak iş yok.",
                style: TextStyle(fontSize: 18),
              ),
            );
          }
        },
      ),


      floatingActionButton: FloatingActionButton(onPressed: (){
        print("Do Kayıt Sayfasına gidildi");
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Yapilacakkaydet()) );
      },child: Icon(Icons.add),
      ),

    );
  }
}

