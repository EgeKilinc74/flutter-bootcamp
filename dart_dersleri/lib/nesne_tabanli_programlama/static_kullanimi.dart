import 'package:dart_dersleri/nesne_tabanli_programlama/a_sinifi.dart';

void main(){
  var a = Asinifi();

  //Standart Kullanımı
  //print(a.degisken);
  //a.metod();

  //Sanal nesne - isimsiz nesne
  //print(Asinifi().degisken); // 2. nesne
  //Asinifi().metod(); // 1. nesne

  //Static kullanım

  print(Asinifi.degisken);
  Asinifi.metod();

}