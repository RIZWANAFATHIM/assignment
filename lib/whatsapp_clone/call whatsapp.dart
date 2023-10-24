import 'package:flutter/material.dart';

class WhatspCalls extends StatelessWidget {
  var cname = ['Sherin','Liya','Afi','Abhi','Meenu','Ani','Noel','Rayu','Yazi','Inu'];
  var cimage = ['assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png'];
  var ctime=["50 minutes ago","Today, 11.50 AM","Today, 7:14 AM","October 6, 12:23 PM","September 30, 9:36 AM","September 28, 6:56 PM",
    "July 29, 11:23 AM","July 27, 10:53 AM",];



  var cicons=[
    Icons.videocam,
    Icons.call,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children:
          List.generate(7, (index) => Card(
            child: ListTile(
              title: Text(cname[index]),
              subtitle: Text(ctime[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(cimage[index]),
              ),
              trailing: Icon(cicons[index],color: Colors.teal,),
            ),
          ))),

      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,
        onPressed: (){},

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        mini: true,
        elevation: 2.0,
        child: Icon(Icons.add_call),),
    );
  }
}