import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("assets/images/farm-house.webp"),
                //Title
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    'FARM HOUSE LEMBANG',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                //Icons
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const <Widget>[
                          Icon(Icons.calendar_today),
                          SizedBox(height: 8),
                          Text(
                            "Open Everyday",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Icon(Icons.access_time),
                          SizedBox(height: 8),
                          Text(
                            '09.00 - 20.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Icon(Icons.currency_exchange),
                          SizedBox(height: 8),
                          Text(
                            'Rp. 25.000',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Desc
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Text(
                    "Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto instagramable",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                    textAlign: TextAlign.center,
                  ),
                ),
                //ListView Gambar
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                          ),
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(16),
                          child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(16),
                          child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
