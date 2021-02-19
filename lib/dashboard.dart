import 'package:flutter/material.dart';
import 'package:grid_view/detail_page.dart';

class Dashboard extends StatelessWidget {
  List<String> itemNama = [
    "Ibn Sina",
    "Al-Khawarizmi",
    "Jabir Ibn- Hayyan",
    "Ibnu al-Nafis ",
    "Ibnu Khaldun",
    "Al Zahrawi",
    "Ibnu Haitham",
    "Umar Khayyam",
    "Ibnu al-Baithar",
    "Thbit ibn Qurra",
  ];

  List<String> ItemAsal = [
    "980 – 1037",
    "780-850",
    "721-815",
    "1213 – 1288",
    "1332 – 1406",
    "936 – 1013",
    "965 – 1040",
    "1048 – 1131",
    "1197 – 1248",
    "826 – 901",
  ];

  List<String> itemImage = [
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780109-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780114-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780110-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/786586-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780112-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780113-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780115-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780117-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780116-ilmuwan-muslim-berpengaruh.jpg",
    "https://cdn-brilio-net.akamaized.net/news/2018/06/08/143987/780118-ilmuwan-muslim-berpengaruh.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ilmuan Islam",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(itemNama.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              nama: itemNama[index],
                              image: itemImage[index],
                              asal: ItemAsal[index],
                            )));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 23.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            itemImage[index],
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(itemNama[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(ItemAsal[index], style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
