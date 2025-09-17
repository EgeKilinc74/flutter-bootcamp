import 'package:dart_dersleri/nesne_tabanli_programlama/konserve_boyut.dart';

void main(){
  ucretHesapla(KonserveBoyut.orta, 20);
}

void ucretHesapla(KonserveBoyut boyut , int adet){
  switch(boyut){
    case KonserveBoyut.kucuk:{
      print("Toplam maaliyet : ${adet*32}₺");
    }
    break;
    case KonserveBoyut.orta:{
      print("Toplam maaliyet : ${adet*45}₺");
    }
    break;
    case KonserveBoyut.buyuk:{
      print("Toplam maaliyet : ${adet*67}₺");
    }
    break;
  }
}