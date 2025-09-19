import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit():super(0);

  void toplamaYap(String alinanSayi1,String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1+sayi2;
    emit(toplam);//tetikleme ve veri gönderme
  }
  void carpmaYap(String alinanSayi1,String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int carpma = sayi1*sayi2;
    emit(carpma);//tetikleme ve veri gönderme
  }
}