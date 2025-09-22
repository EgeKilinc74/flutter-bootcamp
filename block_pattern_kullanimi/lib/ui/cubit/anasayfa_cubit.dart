import 'package:block_pattern_kullanimi/data/repo/MatematikRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit():super(0);
  
  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi1,String alinanSayi2){
    int sonuc = mrepo.toplamaYap(alinanSayi1, alinanSayi2);
    emit(sonuc);//tetikleme ve veri gönderme
  }
  void carpmaYap(String alinanSayi1,String alinanSayi2){
    int sonuc = mrepo.carpmaYap(alinanSayi1, alinanSayi2);
    emit(sonuc);
  }
}