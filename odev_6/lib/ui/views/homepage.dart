import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Listesi',
      theme: ThemeData.dark(), // Spotify tarzı koyu tema
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> playlists = [
    {"title": "Top Hits", "image": "https://via.placeholder.com/150"},
    {"title": "Chill Vibes", "image": "https://via.placeholder.com/150"},
    {"title": "Workout", "image": "https://via.placeholder.com/150"},
    {"title": "Focus", "image": "https://via.placeholder.com/150"},
  ];

  final List<Map<String, String>> songs = [
    {"title": "Blinding Lights", "artist": "The Weeknd", "image": "https://via.placeholder.com/50"},
    {"title": "Levitating", "artist": "Dua Lipa", "image": "https://via.placeholder.com/50"},
    {"title": "Peaches", "artist": "Justin Bieber", "image": "https://via.placeholder.com/50"},
    {"title": "Save Your Tears", "artist": "The Weeknd", "image": "https://via.placeholder.com/50"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spotify Clone"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Öne Çıkan Playlistler",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: playlists.length,
              itemBuilder: (context, index) {
                var playlist = playlists[index];
                return Container(
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(playlist["image"]!, fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(playlist["title"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Popüler Şarkılar",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                var song = songs[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(song["image"]!, width: 50, height: 50, fit: BoxFit.cover),
                  ),
                  title: Text(song["title"]!),
                  subtitle: Text(song["artist"]!),
                  trailing: Icon(Icons.more_vert, color: Colors.white),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
