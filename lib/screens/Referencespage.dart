import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Referencespage extends StatefulWidget {
  const Referencespage({Key? key}) : super(key: key);

  @override
  _ReferencespageState createState() => _ReferencespageState();
}

class _ReferencespageState extends State<Referencespage> {
  GlobalKey<FormState> Referencekey = GlobalKey<FormState>();

  TextEditingController _referencename = TextEditingController();
  TextEditingController _designationreference = TextEditingController();
  TextEditingController _organization_institutereference =
      TextEditingController();

  String? referencename;
  String? designationreference;
  String? organization_institutereference;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("References"),
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
            child: Container(
              margin: EdgeInsets.all(28),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: Referencekey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reference Name",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _referencename,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Reference name";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          referencename = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Suresh Shah",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Designation",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _designationreference,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Designation";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          designationreference = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Marketing Manager.ID-342332",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Organization/Institute",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _organization_institutereference,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Organization/Institute";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          organization_institutereference = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Green Energy Pvtsd.Ltd",
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
                              if (Referencekey.currentState!.validate()) {
                                Referencekey.currentState!.save();

                                resume.referencename = referencename;
                                resume.designationreference =
                                    designationreference;
                                resume.organization_institutereference =
                                    organization_institutereference;

                                print(resume.referencename);
                                print(resume.designationreference);
                                print(resume.organization_institutereference);
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
