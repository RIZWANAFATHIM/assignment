import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Mausam_ui(), debugShowCheckedModeBanner: false,
  ));
}

class Mausam_ui extends StatelessWidget {
  List names=['My Account','Load E-seva','payment','Fund Transfer','Scedule payment','Scan to pay'];
  List<IconData> iconss = [Icons.account_circle, FontAwesomeIcons.e, Icons.send_to_mobile,
    FontAwesomeIcons.peopleGroup, Icons.timelapse_rounded, Icons.qr_code_scanner];
  List num=['10,000','2000','5866','8000','15000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome MAUSAM'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.qr_code_scanner)],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(height: 185),
                    Container(
                      height: 100,
                      color: Colors.red,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        child: SizedBox(
                          height: 160,
                          child: Card(
                            color: Colors.white,
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                CircleAvatar(radius: 40,
                                  backgroundImage: AssetImage('assets/images/boy cartoon.jpeg',),
                                ),
                                SizedBox(width: 25,),
                                Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("SAMMUNATI BACHAT KHATA",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('NPR. 1,00,999.45',),
                                    Text('281656484161548651',style: TextStyle(fontWeight: FontWeight.bold),),

                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        right: 120, top: 70,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(fit: BoxFit.cover,image: NetworkImage("data:image/png;base64,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")),
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Icon(Icons.local_atm_outlined,color: Colors.red,),
                    SizedBox(width: 10,),
                    Text('WOULD YOU LIKE TO ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
              ]
              )
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Containergridd(lname: names[index], myicon: iconss[index]);
              },childCount: 6),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 15,bottom: 15),
            sliver: SliverList(delegate: SliverChildListDelegate([
              Row(
                children: [
                  SizedBox(width: 15,),
                  Icon(Icons.local_atm_outlined,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text('LAST TRANSACTIONS ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              )
            ])),
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Cardlist(dname: num[index],);
          },childCount: 5
          ))
        ],
      ),
    );
  }
}
class Containergridd extends StatelessWidget {
  String lname;
  IconData myicon;

  Containergridd({super.key,required this.lname,required this.myicon});

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,width: 40,color: Colors.white70,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(myicon,color: Colors.red,size: 17,),
          SizedBox(height: 15,),
          Text(lname,style: TextStyle(color: Colors.black,fontSize: 17),),

        ],
      ),
    );
  }
}
class Cardlist extends StatelessWidget {

  String dname;
  Cardlist({Key? key,required this.dname});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 10,
              color: Colors.red,
            ),
            SizedBox(width: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CWDR/',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('976425/5655616897',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('3-09-2023',style: TextStyle(fontSize: 10),),
              ],
            ),
            SizedBox(width: 150,),
            Text('NPR.$dname',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
          ],
        ),
      ),
    );
  }
}


