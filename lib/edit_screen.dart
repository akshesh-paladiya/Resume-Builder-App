import 'package:resume_build/database_service.dart';
import 'package:flutter/material.dart';

class editData extends StatelessWidget {

  String id;
  String name;
  String mono;
  String email;
  String url;
  String ed;
  String ts;
  String ss;
  String ex;
  String cd;
  String pd;
  String rc;

  editData({Key? key, required this.name,required this.mono, required this.email, required this.url, required this.ed, required this.ts, required this.ss, required this.ex,required this.cd, required this.pd, required this.rc, required this.id}):super(key: key);

  TextEditingController nameC = TextEditingController();
  TextEditingController monoC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController urlC = TextEditingController();
  TextEditingController edC = TextEditingController();
  TextEditingController tsC = TextEditingController();
  TextEditingController ssC = TextEditingController();
  TextEditingController exC = TextEditingController();
  TextEditingController cdC = TextEditingController();
  TextEditingController pdC = TextEditingController();
  TextEditingController rcC = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Resume Builder App"),
        backgroundColor: Colors.black,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    // titleC
                    controller: nameC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Full Name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    // detailC
                    controller: monoC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Mobile No.";
                      }
                      return null;
                    },
                    // maxLines: 8,
                    // minLines: 1,
                    decoration: InputDecoration(
                        labelText: "$mono",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 20,),

                  TextFormField(
                    controller: emailC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Email Id";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: urlC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter LinkedIn Url";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$url",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: edC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Education Detail";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$ed",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: tsC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Technical Skill";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$ts",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: ssC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Soft Skill";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$ss",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: exC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Experience Detail";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$ex",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: cdC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Completed Course";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$cd",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: pdC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Project Detail";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$pd",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextFormField(
                    controller: rcC,
                    validator: (v){
                      if(v!.isEmpty){
                        return "Please Enter Reference";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "$rc",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 20,),

                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                          minimumSize: MaterialStateProperty.all(Size(double.infinity, 40))
                      ),
                      onPressed: (){
                        if(formkey.currentState!.validate()){
                          DataBaseServices.updateData(id!,nameC.text, monoC.text, emailC.text, urlC.text, edC.text, tsC.text, ssC.text, exC.text, cdC.text, pdC.text, rcC.text,);
                        }
                      },
                      child: const Text("UPDATE")
                  )
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
