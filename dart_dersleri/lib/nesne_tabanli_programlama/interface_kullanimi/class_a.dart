import 'package:dart_dersleri/nesne_tabanli_programlama/interface_kullanimi/my_interface.dart';

class ClassA implements MyInterface{
  @override
  int degisken=10;

  @override
  void metod1() {
    // TODO: implement metod1
    print("Metod 1 çalıştı");
  }

  @override
  String metod2() {
    // TODO: implement metod2
    return "Metod 2 Çalıştı";
    throw UnimplementedError();
  }

}