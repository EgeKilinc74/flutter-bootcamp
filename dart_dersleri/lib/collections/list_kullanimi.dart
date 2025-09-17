void main(){
  //Tanımlama
  var plakalar = [16,23,6];
  var meyveler = <String>[];

  // veri ekleme
  meyveler.add("Muz");
  meyveler.add("Kiraz");
  meyveler.add("Elma");
  print(meyveler);

  //güncelleme
  meyveler[1]="Yeni Kiraz";
  print(meyveler);

  //insert
  meyveler.insert(1, "Portakal");
  print(meyveler);

  //veri okuma
  String meyve = meyveler[2];
  print(meyve);

  print("Boyut : ${meyveler.length}");
  print("Boş Kontrol : ${meyveler.isEmpty}");

  // for each
  for(var meyve in meyveler){
    print(meyve);
  }

  for(var i = 0 ; i<meyveler.length ; i++){
    print("$i. -> ${meyveler[i]}");
  }
  print(meyveler);
  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(0);
  print(meyveler);

  meyveler.clear();
  print(meyveler);

}