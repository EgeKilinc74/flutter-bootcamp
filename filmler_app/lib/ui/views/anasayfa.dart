import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:filmler_app/data/entity/fimler.dart';
import 'package:filmler_app/ui/cubit/anasayfa_cubit.dart';
import 'package:filmler_app/ui/views/detay_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}



class _AnasayfaState extends State<Anasayfa> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read()<AnasayfaCubit>().filmleriYukle();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler"),),

      body: BlocBuilder<AnasayfaCubit,List<Filmler>>(
        builder: (context, filmlerListesi) {
          if (filmlerListesi.isNotEmpty) {
            return GridView.builder(
              itemCount: filmlerListesi.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // sütun sayısı
                childAspectRatio: 1 / 1.8, // kartların en-boy oranı
              ),
              itemBuilder: (context, index) {//0 , 1, 2, 3, 4, 5, 6
                var film = filmlerListesi[index];
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film)));
                    },
                    child: Card(
                      color: Colors.black,
                      elevation: 4,
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Image.asset("resimler/${film.resim}"),
                            ),
                          ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text(
                               film.film_ad,
                               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                             ),
                             Text("${film.fiyat} ₺", style: const TextStyle(fontSize: 16, color: Colors.blue)),
                           ],
                         ),
                          ElevatedButton(onPressed: (){
                            print("${film.film_ad} sepete eklendi");
                          }, child: Text("Sepet"))
                        ],
                      ),
                    ),

                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
