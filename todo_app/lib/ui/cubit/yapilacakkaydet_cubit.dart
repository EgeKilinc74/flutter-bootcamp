
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/yapilacaklar.dart';
import 'package:todo_app/data/repo/yapilacaklardao_repository.dart';

class YapilacakkaydetCubit extends Cubit<List<Yapilacaklar>>{
  YapilacakkaydetCubit() : super([]);
  var krepo = YapilacaklardaoRepository();

  Future<void> ekle (String yapilacak) async{
    await krepo.kaydet(yapilacak);
  }

  Future<void> yapilacaklariYukle() async{
    var liste = await krepo.yapilacaklariListele();
    emit(liste);
  }
}