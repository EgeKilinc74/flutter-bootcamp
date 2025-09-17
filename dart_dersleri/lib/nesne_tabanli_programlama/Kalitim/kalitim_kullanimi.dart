import 'package:dart_dersleri/nesne_tabanli_programlama/Kalitim/Ev.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/Kalitim/Saray.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/Kalitim/Villa.dart';
import 'package:flutter/cupertino.dart';

void main(){
  var topkapiSaray = Saray(kuleSayisi: 10, pencereSayisi: 300);
  print(topkapiSaray.kuleSayisi);
  print(topkapiSaray.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 50);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);

  //Tip Kontrolü
  if(topkapiSaray is Saray){
    print("Saraydır");
  }else{
    print("Saray Değildir");
  }

  //Downcasting

  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray; // Ev to saray

  //Upcasting

  var villa = Villa(garajVarMi: true, pencereSayisi: 100);
  Ev e = villa; //villa to ev
}