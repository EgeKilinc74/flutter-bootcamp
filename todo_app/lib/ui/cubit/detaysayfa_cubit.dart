import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/yapilacaklar.dart';
import 'package:todo_app/data/repo/yapilacaklardao_repository.dart';

class Detaysayfa_Cubit extends Cubit<List<Yapilacaklar>>{
  Detaysayfa_Cubit():super([]);

var krepo = YapilacaklardaoRepository();

Future<void> guncelle (int id , String yapilacaklar) async{
  await krepo.guncelle(id, yapilacaklar);
}

}