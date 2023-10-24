import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  await Hive.initFlutter();
  await Hive.openBox('to_do Hive');
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: HiveCrud_todo(),));
}
class HiveCrud_todo extends StatefulWidget {
  @override
  State<HiveCrud_todo> createState() => _HiveCrud_todoState();
}

class _HiveCrud_todoState extends State<HiveCrud_todo> {
  List<Map<String,dynamic>> notes = [];
  final mybox = Hive.box('to_do Hive');
  @override
  void initState() {
    Load_notes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Todo')),),
      body: notes.isEmpty ?

      Column(
        children: [
          SizedBox(height: 100,),
          Image.network('data:image/png;base64,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'),
          Text("Today's Notes",style: TextStyle(
              color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 15),)
        ],
      )
          :
      ListView.builder(
          itemCount: notes.length,
          itemBuilder: (ctx,index){
            final mynotes=notes[index];
            return Card(
              child: ListTile(
                title: Text(mynotes['title']),
                subtitle: Text(mynotes['date']),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {
                          showNotes(context, mynotes['id']);
                        }, icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          deleteNotes(mynotes['id']);
                        }, icon: const Icon(Icons.delete))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(onPressed: ()=>
          showNotes(context, null),
        label: Text('Create'),
        icon: Icon(Icons.add),
      ),
    );
  }
  final title_controller=TextEditingController();
  final detail_controller=TextEditingController();
  final date_controller=TextEditingController();

  void showNotes(BuildContext context, int? key) {
    if(key!=null){
      final currentnotes= notes.firstWhere((element) => element['id']==key);
      title_controller.text=currentnotes['title'];
      detail_controller.text=currentnotes['details'];
      date_controller.text=currentnotes['date'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.top+300 ),
            child: Column(mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: title_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Title"),
                ),
                const SizedBox(height: 15),
                Container(height: 250,
                  child: TextField(
                    expands: true,
                    controller: detail_controller,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Details"),
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: date_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Date"),
                ),
                ElevatedButton(
                    onPressed: (){
                      if(title_controller.text.isNotEmpty &&
                          detail_controller.text.isNotEmpty &&
                          date_controller.text.isNotEmpty){
                        if(key==null){
                          createnote({
                            'title':title_controller.text.trim(),
                            'details': detail_controller.text.trim(),
                            'date': date_controller.text.trim()
                          });
                        }else{
                          updatenotes(key,{
                            'title':title_controller.text.trim(),
                            'details': detail_controller.text.trim(),
                            'date': date_controller.text.trim()
                          });
                        }
                      }
                      title_controller.text="";
                      detail_controller.text="";
                      date_controller.text="";
                      Navigator.of(context).pop();
                    },
                    child: Text(key==null? 'create': 'update'  ))
              ],
            ),
          );
        });


  }

  Future<void> createnote(Map<String, dynamic>notedata ) async {
    await mybox.add(notedata);
    Load_notes();

  }

  void updatenotes(int? key, Map<String, String>updatedata ) async{
    await mybox.put(key, updatedata);
    Load_notes();
  }

  void Load_notes() {
    final notes_data = mybox.keys.map((id) {
      final value = mybox.get(id);
      return {
        'id': id,
        'title': value['title'],
        'details': value['details'],
        'date': value['date'],
      };
    }).toList();

    setState(() {
      notes = notes_data.reversed.toList();
    });
  }

  Future<void> deleteNotes(int? key) async {
    await mybox.delete(key);
    Load_notes();

  }

}

