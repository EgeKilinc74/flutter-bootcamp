Card(
color: Colors.grey,
child: Row(mainAxisAlignment: MainAxisAlignment.start,
children: [
Image.asset(
"resimler/${album.album_resim}",
width: 80,
height: 80,
),
Text("${album.album_adi}")
],
),
);