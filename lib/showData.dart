import 'package:resume_build/resume.dart';
import 'package:flutter/material.dart';
import 'database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'edit_screen.dart';


class showData extends StatelessWidget {
  const showData({super.key});

  navigation(BuildContext context, Widget next){
    Navigator.push(context, MaterialPageRoute(builder: (_)=> next));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          Route route = MaterialPageRoute(builder: (context) => resume());
          Navigator.push(context, route);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Resume Data"),
      ),
      body: StreamBuilder(
        stream: firebaseFirestore.collection('notes').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot ){
          if(snapshot.hasData)
          {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index){
                  final res = snapshot.data!.docs[index];

                  return Dismissible(
                      key: UniqueKey(),
                      background: Container(
                        color: Colors.red,
                      ),
                      onDismissed: (v){
                        DataBaseServices.delete(res.id);
                      },
                      child: Card(
                        child: ExpansionTile(
                          title: Text("${res['name']}",

                          ),

                          children: [
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Name : ${res['name']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Contact No: ${res['mono']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Email Id: ${res['email']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("LinkedIn Url: ${res['url']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Education Detail: ${res['ed']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Technical Skill: ${res['ts']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Soft Skill: ${res['ss']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Experience Detail: ${res['ex']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Completd Course: ${res['cd']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Project Detail: ${res['pd']}"
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Reference: ${res['rc']}"
                                )
                            ),

                          ],

                          leading: IconButton(
                            onPressed: (){
                              navigation(context,editData(name: res['name'], mono: res['mono'], email: res['email'], url: res['url'], ed: res['ed'], ts: res['ts'], ss: res['ss'], ex: res['ex'], cd: res['cd'], pd: res['pd'], rc: res['rc'], id: res.id,));
                            },

                            icon: Icon(Icons.edit),
                          ),
                        ),
                      ),
                  );
                }
            );
          }
          else{
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            );

          }

        },
      ),
    );
  }
}
