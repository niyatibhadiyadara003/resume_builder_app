import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';
class Projectspage extends StatefulWidget {
  const Projectspage({Key? key}) : super(key: key);

  @override
  _ProjectspageState createState() => _ProjectspageState();
}

class _ProjectspageState extends State<Projectspage> {

  GlobalKey<FormState> projectkey = GlobalKey<FormState>();

  TextEditingController _projecttitle = TextEditingController();
  TextEditingController _roleproject = TextEditingController();
  TextEditingController _technologies= TextEditingController();
  TextEditingController _projectdiscription = TextEditingController();

  String? projecttitle;
  String? roleproject;
  String? technologiesproject;
  String? projectdiscription;
Map<String,bool>? technologiesprojectcheck={};
  bool val1 =false;
  bool val2 =false;
  bool val3 =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Projects"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body:Column(
        children:[
          Expanded(
            flex: 1,
            child:
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              margin: EdgeInsets.all(28),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: projectkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Project Title",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height:10),
                      TextFormField(
                        controller: _projecttitle,
                        validator: (val){

                          if(val!.isEmpty)
                          {
                            return "Enter title";
                          }
                          return null;
                        },
                        onSaved: (val){
                          projecttitle = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Resume Builder App",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),

                      ),
                      const SizedBox(height:20),
                      Text("Technologies",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height:10),
                      Row(
                        children: [
                          Checkbox(
                              value: this.val1,
                              onChanged:(val){
                                setState(() {
                                  this.val1 = val!;
                                  technologiesprojectcheck!['C']=val1;
                                });
                              }
                          ),
                          Text("C programming",style:(val1!=false) ?TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ):TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: this.val2,
                              onChanged:(val){
                                setState(() {
                                  this.val2 = val!;
                                  technologiesprojectcheck!['C++']=val2;
                                });
                              }
                          ),
                          Text("C++",style:(val2!=false) ?TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ):TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: this.val3,
                              onChanged:(val){
                                setState(() {
                                  this.val3 = val!;
                                  technologiesprojectcheck!['Flutter']=val3;
                                });
                              }
                          ),
                          Text("Flutter",style:(val3!=false) ?TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ):TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                        ],
                      ),
                      const SizedBox(height:20),
                      Text("Roles",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height:10),
                      TextFormField(
                        controller: _roleproject,
                        validator: (val){

                          if(val!.isEmpty)
                          {
                            return "Enter role";
                          }
                          return null;
                        },
                        onSaved: (val){
                          roleproject = val;
                        },
                        decoration: InputDecoration(
                          hintText: "organize team member project analisis",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),

                      ),
                      const SizedBox(height:20),
                      Text("Technologies",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height:10),
                      TextFormField(
                        controller: _technologies,
                        validator: (val){

                          if(val!.isEmpty)
                          {
                            return "Enter technologies";
                          }
                          return null;
                        },
                        onSaved: (val){
                          technologiesproject = val;
                        },
                        decoration: InputDecoration(
                          hintText: "5-programmers",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),

                      ),
                      const SizedBox(height:20),
                      Text("Project Discription",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height:10),
                      TextFormField(
                        controller: _projectdiscription,
                        validator: (val){

                          if(val!.isEmpty)
                          {
                            return "Enter projects discription";
                          }
                          return null;
                        },
                        onSaved: (val){
                          projectdiscription = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your projects discription",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),

                      ),
                      const SizedBox(height:10),
                      ElevatedButton(
                        onPressed: () {
    if (projectkey.currentState!
        .validate()) {
   projectkey.currentState!.save();
    resume.projectdiscription = projectdiscription;
    resume.projecttitle = projecttitle;
    resume.roleproject = roleproject;
    resume.technologiesproject = technologiesproject;
    resume.technologiesprojectcheck=technologiesprojectcheck;
    print(resume.projectdiscription);
    print(resume.projecttitle);
    print(resume.roleproject);
    print(resume.technologiesproject);
    print(resume.technologiesprojectcheck);
                          }
                        },
                        child: Text("Submit"),
                      ),
                    ],
                  ),
                ),
              ),
            ),)
        ],
      ),
    );
  }
}
