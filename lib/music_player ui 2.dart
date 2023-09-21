import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MusicUI2()));
}

class MusicUI2 extends StatefulWidget {
  const MusicUI2({Key? key}) : super(key: key);

  @override
  _MusicUI2State createState() => _MusicUI2State();
}

class _MusicUI2State extends State<MusicUI2> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Musify.',
            style: GoogleFonts.albertSans(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade100,
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.pink.shade100,
          currentIndex: index,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.music_note_list),label: 'Playlist'),
            BottomNavigationBarItem(icon: Icon(Icons.more_vert),label: 'More'),
          ]),

      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'Suggested playlistS',
                style: GoogleFonts.albertSans(
                  color: Colors.pink.shade100,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Image.network('https://tse2.mm.bing.net/th?id=OIP._MWbSQ7p-TLW-vYhFpXYewHaHa&pid=Api&P=0&h=180'),
              Image.network('https://tse3.mm.bing.net/th?id=OIP.Mz_3xHxtUyYPZQ_So2Tz_AHaHa&pid=Api&P=0&h=180'),
              Image.network('https://tse4.mm.bing.net/th?id=OIP.SrBsOWnug7XzEdCAr3RqjwHaEf&pid=Api&P=0&h=180'),
              Image.network('https://tse4.mm.bing.net/th?id=OIP.wteEY8GkREnxpy0nLeE0NgHaHa&pid=Api&P=0&h=180'),
              Image.network('https://tse1.mm.bing.net/th?id=OIP.BqM3vq596heR7udY7Mn1WwHaEK&pid=Api&P=0&h=180'),
            ],
            options: CarouselOptions(
              initialPage: 0,
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: .5,
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.easeInOutQuad,
              enlargeCenterPage: true,
              enlargeFactor: .4,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text('Recommended for you',
                  style: GoogleFonts.jost(color: Colors.pink.shade100, fontSize: 18)),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Column(
                children: [
                  PlaylistCard(myimage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.3omTVYPJ5EisKuo68xE3qgHaEK&pid=Api&P=0&h=180'), Lname: 'Hero'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.V0v1h7lU8YoHgnLlEYKa3QHaLH&pid=Api&P=0&h=180'), Lname: 'Unholy'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.MX1ZhDQ1swimryj46cox3AHaLh&pid=Api&P=0&h=180'), Lname: 'Lift Me Up'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.ub0tr2mPFTljZoF6J1b5hwHaE8&pid=Api&P=0&h=180'), Lname: '"Depression"'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.BQ4uFtosYWJNq46vMmLmzAHaEK&pid=Api&P=0&h=180'), Lname: 'Im Good'),
                  SizedBox(height: 10,),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  final ImageProvider myimage;
  final String Lname;

  PlaylistCard({Key? key, required this.myimage, required this.Lname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 80,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: myimage),
              )),
          SizedBox(width: 10,),
          Text(
            Lname,
            style: GoogleFonts.kanit(color: Colors.pink.shade100, fontSize: 18),
          ),
          SizedBox(width: 240),
          Icon(
            CupertinoIcons.star,
            color: Colors.pink.shade100,
          ),
          SizedBox(width: 10),
          Icon(
            CupertinoIcons.down_arrow,
            color: Colors.pink.shade100,
          )
        ],
      ),
    );
  }
}
