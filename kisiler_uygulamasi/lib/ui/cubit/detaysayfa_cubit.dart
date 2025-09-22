import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/repo/ki%C5%9Filerdao_repository.dart';

class DetaysayfaCubit extends Cubit<void>{
  DetaysayfaCubit():super(0);

  var krepo = KisilerDaoRepository();

  Future<void> guncelle(int kisi_id,String kisi_ad,String kisi_tel) async{
    await krepo.guncelle(kisi_id, kisi_ad, kisi_tel);
  }
}