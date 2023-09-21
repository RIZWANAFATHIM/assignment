import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerUI1(),
  ));
}

class DrawerUI1 extends StatelessWidget {
  const DrawerUI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellowAccent.shade100,Colors.redAccent.shade100,Colors.pinkAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Sundar Pichai'),
                accountEmail: Text('Ceo of Alphabel Inc.'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.cnbcfm.com/api/v1/image/105621417-1544554475576gettyimages-1071800216.jpeg?v=1582320783&w=740&h=416&ffmt=webp&vtcrop=y'),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
              ),
              ListTile(
                leading: Icon(Icons.leak_add_sharp),
                title: Text('Leads'),
              ),
              ListTile(
                leading: Icon(Icons.person_remove_outlined),
                title: Text('Clients'),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text('Project'),
              ),
              ListTile(
                leading: Icon(Icons.hail),
                title: Text('Patients'),
              ),
              ListTile(
                leading: Icon(Icons.subject),
                title: Text('Subscription'),
              ),
              ListTile(
                leading: Icon(Icons.payments),
                title: Text('Payments'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Users'),
              ),
              ListTile(
                leading: Icon(Icons.layers_clear_outlined),
                title: Text('library'),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){},
                child: Text('Logout',style: TextStyle(),),
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent
                ),
              ),

            ],
          ),
        ),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://tse3.mm.bing.net/th?id=OIP.ijj6VeXqewvcUy91FuS0mwHaE8&pid=Api&P=0&h=180'),
          ),
          SizedBox(height: 20,),
          Text('Sundar Pichai',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
          SizedBox(height: 30,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text("Sundar Pichai, in full Pichai Sundararajan, (born June 10, 1972, Madras [now Chennai], Tamil Nadu, India), Indian-born American executive who was CEO of both Google, Inc. (2015– ), and its holding company, Alphabet Inc. (2019– ).As a boy growing up in Madras, Pichai slept with his brother in the living room of the cramped family home, but his father, an electrical engineer at the British multinational GEC, saw that the boys received a good education. At an early age Pichai displayed an interest in technology and an extraordinary memory, especially for telephone numbers. After earning a degree in metallurgy (B.Tech., 1993) and a silver medal at the Indian Institute of Technology Kharagpur, he was awarded a scholarship to study at Stanford University (M.S. in engineering and materials science, 1995). He remained in the United States thereafter, working briefly for Applied Materials (a supplier of semiconductor materials) and then earning an M.B.A. (2002) from the Wharton School of the University of Pennsylvania. "),
            ),
          ),
        ],

      ) ,
    );
  }
}