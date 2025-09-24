import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/yapilacaklar.dart';
import 'package:todo_app/data/repo/yapilacaklardao_repository.dart';


class AnasayfaCubit extends Cubit <List<Yapilacaklar>>{
  AnasayfaCubit():super([]);
  var krepo = YapilacaklardaoRepository();

  Future<void> ara(String aramaKelimesi) async{
    var liste = await krepo.ara(aramaKelimesi);
    emit(liste);
  }
  Future<void> yapilacaklariListele() async{
    var liste = await krepo.yapilacaklariListele();
    emit(liste);
  }

  Future <void> sil(int id)async{
    await krepo.sil(id);
    await yapilacaklariListele();
  }
}