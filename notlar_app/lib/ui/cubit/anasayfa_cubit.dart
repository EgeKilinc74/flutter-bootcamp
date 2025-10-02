import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notlar_app/data/entity/not.dart';
import 'package:notlar_app/data/repo/notdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Not>>{
  AnasayfaCubit():super([]);

  var nrepo = NotdaoRepository();

  Future <void> notlariListele() async{
      var liste = await nrepo.notlariListele();
      emit(liste);
    }

}