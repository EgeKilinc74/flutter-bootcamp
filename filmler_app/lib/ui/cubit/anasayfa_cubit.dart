import 'package:filmler_app/data/entity/fimler.dart';
import 'package:filmler_app/data/repo/fimlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<List<Filmler>>{
  AnasayfaCubit():super(<Filmler>[]);

  var frepo = FilmlerDaoRepository();

  Future<void> filmleriYukle() async{
    var liste = await frepo.filmleriYukle();
    emit(liste);
  }

}