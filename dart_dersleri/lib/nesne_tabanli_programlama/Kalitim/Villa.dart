import 'package:dart_dersleri/nesne_tabanli_programlama/Kalitim/Ev.dart';

class Villa extends Ev{
  bool garajVarMi;

  Villa({required this.garajVarMi,required int pencereSayisi}):super(pencereSayisi : pencereSayisi);
}