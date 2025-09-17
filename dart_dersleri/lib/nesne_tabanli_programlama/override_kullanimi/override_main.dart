import 'package:dart_dersleri/nesne_tabanli_programlama/override_kullanimi/hayvan.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/override_kullanimi/kedi.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/override_kullanimi/kopek.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/override_kullanimi/memeli.dart';

void main(){
 var hayvan = Hayvan();
 var memeli = Memeli();
 var kedi = Kedi();
 var kopek = Kopek();

 hayvan.sesCikar(); //kalıtım uok kendi metodu
 memeli.sesCikar(); //kalıtım var üst sınıftaki metod çalıştı
 kedi.sesCikar();   //override
 kopek.sesCikar(); //override
}