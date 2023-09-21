import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MusicPlayer()));
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  int index = 0;
  var imagee = [
    "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fHBvcCUyMHVwJTIwbXVzaWMlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1509335919466-c196457ea95a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fHBvcCUyMHVwJTIwbXVzaWMlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjV8fHBvcCUyMHVwJTIwbXVzaWMlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1619983081563-430f63602796?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fHBvcCUyMHVwJTIwbXVzaWMlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1483000805330-4eaf0a0d82da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTJ8fHBvcCUyMHVwJTIwbXVzaWMlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1420161900862-9a86fa1f5c79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvcCUyMHVwJTIwbXVzaWMlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://plus.unsplash.com/premium_photo-1674875072587-e1caa5f934a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Playlists',
            style: TextStyle(
              fontSize: 28,
              color: Colors.pink.shade100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.grey,
        currentIndex: index,
        onTap: (tappedindex) {
          setState(() {
            index = tappedindex;
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              selectedColor: Colors.pink.shade100),
          SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              selectedColor: Colors.pink.shade100),
          SalomonBottomBarItem(
              icon: Icon(Icons.playlist_play_sharp),
              title: Text('Playlists'),
              selectedColor: Colors.pink.shade100),
          SalomonBottomBarItem(
              icon: Icon(Icons.menu),
              title: Text('Menu'),
              selectedColor: Colors.pink.shade100),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.pink.shade100),
                  fillColor: Colors.grey,
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.pink.shade100,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10),
                children: List.generate(
                    6,
                        (index) => Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(imagee[index]),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}