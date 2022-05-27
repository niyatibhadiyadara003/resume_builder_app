import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Educationpage extends StatefulWidget {
  const Educationpage({Key? key}) : super(key: key);

  @override
  _EducationpageState createState() => _EducationpageState();
}

class _EducationpageState extends State<Educationpage> {
  GlobalKey<FormState> Educationkey = GlobalKey<FormState>();

  TextEditingController _course = TextEditingController();
  TextEditingController _school = TextEditingController();
  TextEditingController _percentage = TextEditingController();
  TextEditingController _year = TextEditingController();

  String? course;
  String? school;
  String? percentage;
  String? year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Education"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(28),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Form(
                  key: Educationkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course/Degree",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _course,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Course";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          course = val;
                        },
                        decoration: InputDecoration(
                          hintText: "B.Tech Information Technology",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "School/College/Institute",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _school,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter School/College/Institute";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          school = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Bhagavan Mahair University",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Percentage",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _percentage,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Percentage";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          percentage = val;
                        },
                        decoration: InputDecoration(
                          hintText: "70% or 7.0 CGPA",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Year of Pass",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _year,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Year of Pass";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          year = val;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "2019",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (Educationkey.currentState!.validate()) {
                                Educationkey.currentState!.save();

                                resume.course = course;
                                resume.school = school;
                                resume.percentage = percentage;
                                resume.year = year;

                                print(resume.course);
                                print(resume.school);
                                print(resume.percentage);
                                print(resume.year);
                              }
                            },
                            child: Text("Submit"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
