void main(){
  //1.Compile error
  String x = "Hello";
  // x =100;

  //2.Runtime excetion (error)
  var liste = <String>[];
  liste.add("Ahmet");
  liste.add("Zeynep");

  //String isim = liste[4]; //Hata burda indekste
  //print("Gelen isim : $isim");

  //try catch
  try{
    String isim = liste[4];
    print("Gelen isim : $isim");
  }catch(e){
    print("Liste boyutu aşıldı");
  }
}