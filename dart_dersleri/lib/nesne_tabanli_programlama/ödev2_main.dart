double KmToMil(int km) {
  return km * 0.621;
}
double dikdortgenAlan(double kisaKenar,double uzunKenar){
  return (kisaKenar*uzunKenar);
}
double faktoriyel(double sayi){
  double sonuc=1;
  while(sayi>0){
    sonuc *= sayi;
    sayi--;
  }
  return sonuc;
}
int kacE(String kelime){
  int sayac = 0;
  for (int i = 0; i < kelime.length; i++) {
    if (kelime[i] == 'e' || kelime[i] == 'E') {
      sayac++;
    }
  }
  return sayac;
}
double icAci(int kenarSayisi) {
  if (kenarSayisi < 3) {
    throw Exception("Bir çokgenin kenar sayısı en az 3 olmalı!");
  }
  return ((kenarSayisi - 2) * 180) / kenarSayisi;
}
double maasHesapla(int gunSayisi) {
  int toplamSaat = gunSayisi * 8;
  double maas = 0;

  if (toplamSaat <= 150) {
    maas = toplamSaat * 40;
  } else {
    int mesaiSaati = toplamSaat - 150;
    maas = (150 * 40) + (mesaiSaati * 80);
  }

  return maas;
}
int otoparkUcreti(int saat) {
  if (saat <= 0) return 0;
  if (saat == 1) {
    return 50;
  } else {
    return 50 + ((saat - 1) * 10);
  }
}

void main(){
  print(KmToMil(6));
  print(dikdortgenAlan(12, 10));
  print(faktoriyel(4));
  print(kacE("Ege"));
  print(icAci(5));
}