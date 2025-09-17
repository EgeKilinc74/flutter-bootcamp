class Fonksiyonlar {
  //void
  void selamla1(){
    print("Selamlar Void");
  }
  String selamla2(){
    String sonuc = "Selamlar Return";
    return sonuc;
  }
  String selamla3(String isim){
    String sonuc = "Selamlar $isim";
    return sonuc;
  }
  int toplam(int sayi1,int sayi2){
    int toplam = sayi1+sayi2;
    return toplam;
  }
}