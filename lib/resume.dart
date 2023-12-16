import 'package:resume_build/database_service.dart';
import 'package:flutter/material.dart';

class resume extends StatelessWidget {

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
                       labelText: "Full Name",
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


                   decoration: InputDecoration(
                       labelText: "Contact Number",
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
                       labelText: "Email",
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
                       labelText: "LinkedIn Url",
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
                   maxLines: 4,
                   decoration: InputDecoration(
                       labelText: "Education Detail",
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
                   maxLines: 6,
                   decoration: InputDecoration(
                       labelText: "Technical Skill",
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
                   maxLines: 6,
                   decoration: InputDecoration(
                       labelText: "Soft Skill",
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
                   maxLines: 4,
                   decoration: InputDecoration(
                       labelText: "Experience Detail",
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
                   maxLines: 3,
                   decoration: InputDecoration(
                       labelText: "Completed Course",
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
                   maxLines: 4,
                   decoration: InputDecoration(
                       labelText: "Project Detail",
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
                       labelText: "Reference",
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
                         DataBaseServices.addData(nameC.text, monoC.text, emailC.text, urlC.text, edC.text, tsC.text, ssC.text, exC.text, cdC.text, pdC.text, rcC.text, );


                       }
                     },
                     child: const Text("ADD")
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
