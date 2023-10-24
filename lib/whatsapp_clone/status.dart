import 'package:flutter/material.dart';

class WhatsappStatus_UI extends StatelessWidget {
  WhatsappStatus_UI({super.key});
  var name = ['Sherin','Liya','Afi','Abhi','Meenu','Ani','Noel','Rayu','Yazi','Inu'];
  var image = ['assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10, // Replace with the number of status items
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image[index]),
            ),
            title: Text(name[index]),
            subtitle: Text('Today'),
            onTap: () {
              // Handle status item tap
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {
              // Handle the first FAB tap
            },
            child: Icon(Icons.camera_alt),
          ),

          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {
              // Handle the second FAB tap
            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

