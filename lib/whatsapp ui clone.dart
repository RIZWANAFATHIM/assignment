import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsApp(),));
}
class WhatsApp extends StatelessWidget {
  var name = ['Sherin','Liya','Afi','Abhi','Meenu','Ani','Noel','Rayu','Yazi','Inu'];
  var image = ['assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png','assets/images/contact.png'];
  var time=['1:10 pm','3:16 pm','1:56 pm','8:10 am','6:59 am','7:10 pm','9:10 am','2:30 pm','4:45 pm','5:21 am',];
  var msg=['sticker','long time no see','kooi','hei','Da','sugalle','entha parupadi','are u bzy','hey', 'hoi'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 40,),
            Icon(Icons.search),
            SizedBox(width: 20,),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Broadcast')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Stared messages')),
                PopupMenuItem(child: Text('Payment')),
                PopupMenuItem(child: Text('Settings'))
              ];
            })

          ],
          title: Text('WhatsApp')),
      body: ListView(

        children: List.generate(10, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(msg[index]),
            trailing: Wrap(
                direction: Axis.vertical,
                children:[
                  Text(time[index]),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                        minRadius: 2,
                        maxRadius: 10,
                        backgroundColor: Colors.teal,
                        child: Text('2')
                    ),
                  )
                ]
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
          ),
        )),
      ),
    );
  }
}