import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detaysayfa extends StatefulWidget {
  String sehirAdi;
  Detaysayfa({required this.sehirAdi});
  @override
  State<Detaysayfa> createState() => _DetaysayfaState();
}

class _DetaysayfaState extends State<Detaysayfa> {
  String apiKey = "975e63272d667ceb066bb411be27bfad";
  Map<String, dynamic>? veri;
  Dio dio = Dio();

  Future<void> havaDurumuGetir(String sehirAdi) async {
    try {
      var response = await dio.get(
        "https://api.openweathermap.org/data/2.5/weather",
        queryParameters: {
          "q": sehirAdi,
          "appid": apiKey,
          "units": "metric",
          "lang": "tr",
        },
      );

      if (response.statusCode == 200) {
        setState(() {
          veri = response.data;
        });
      }
    } catch (e) {
      print("Hata : $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Şehir bulunamadı veya hata oluştu")),
      );
    }
  }
  String havaDurumuResmi(String durum) {
    switch (durum) {
      case "Clear":
        return "resimler/sunny.png";
      case "Clouds":
        return "resimler/cloudy.png";
      case "Rain":
        return "resimler/rainy.png";
      case "Snow":
        return "resimler/snow.png";
      case "Thunderstorm":
        return "resimler/stormy.png";
      default:
        return "resimler/cloudy.png"; // fallback
    }
  }

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    havaDurumuGetir(widget.sehirAdi);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hava Durumu ${widget.sehirAdi}"),
          backgroundColor: Colors.blueAccent
      ),
      body: Center(
        child: veri == null
            ? const CircularProgressIndicator() // veri gelene kadar loading
            : Card(
          elevation: 8, // gölge
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  havaDurumuResmi(veri!["weather"][0]["main"]),
                  width: 150,height: 150,
                  fit:  BoxFit.contain,
                ),
                Text(
                  "${veri!["name"]}", // şehir adı
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "${veri!["main"]["temp"]} °C", // sıcaklık
                  style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(height: 10),
                Text(
                  "${veri!["weather"][0]["description"]}", // açıklama
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "Nem: ${veri!["main"]["humidity"]}%", // nem oranı
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}