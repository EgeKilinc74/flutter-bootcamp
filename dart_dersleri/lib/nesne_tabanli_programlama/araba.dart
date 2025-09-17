class Araba {
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba({required this.renk, required this.hiz, required this.calisiyorMu});
  //constructor
  void bilgiAl() {
    print("---------------------");
    print("Renk : ${renk}");
    print("Renk : ${hiz}");
    print("Renk : ${calisiyorMu}");
  }
  void calistir(){ //side effect
    calisiyorMu = true;
    hiz = 5;
  }
  void durdur(){
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm){
    hiz += kacKm;
  }
  void yavasla (int kacKm){

  }
}