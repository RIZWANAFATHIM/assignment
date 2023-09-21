import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main (){
  runApp(MaterialApp(home: Staggred_grid_ui(),));
}
class Staggred_grid_ui extends StatelessWidget {
  const Staggred_grid_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Staggred Grid UI'),),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/universe.jpeg',fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      Text('Mysteries of the Universe',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('20 June 2013'),
                      Text('Carl Sagan')
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/empire state.jpeg',fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      Text('An Empire State of Building',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('19 June 2013'),
                      Text('Earnest Hemingway')
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/tea and books.jpeg',fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      Text('10 Tips for Hipster Therapy',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('10 May 2013'),
                      Text('Vincent Van Gogh')
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/himalaya.jpeg',fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      Text('My Story of Climbing Himalaya',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('10/05/2018'),
                      Text('jessica jones')
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/pug_dog.jpeg',fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      Text('Dog',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('29/9/2009'),
                      Text('Tyler durden')
                    ],
                  ),
                )
            ),
          ],
        ),
      ),

    );
  }
}