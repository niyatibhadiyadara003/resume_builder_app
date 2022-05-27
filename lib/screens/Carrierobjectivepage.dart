import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Carrierobjectivepage extends StatefulWidget {
  const Carrierobjectivepage({Key? key}) : super(key: key);

  @override
  _CarrierobjectivepageState createState() => _CarrierobjectivepageState();
}

class _CarrierobjectivepageState extends State<Carrierobjectivepage> {
  GlobalKey<FormState> carrierobjectivekey = GlobalKey<FormState>();
  GlobalKey<FormState> currentdesignationkey = GlobalKey<FormState>();

  TextEditingController _discripation = TextEditingController();
  TextEditingController _designation = TextEditingController();

  String? discripation;
  String? designation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text("Carrier Objective"),
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(28),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Form(
                        key: carrierobjectivekey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Carrier Objective",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              maxLines: 5,
                              controller: _discripation,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Discription";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                discripation = val;
                              },
                              decoration: InputDecoration(
                                hintText: "Discripation",
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(28),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Form(
                        key: currentdesignationkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current Designation(Experienced \nCandidate)",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _designation,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Current Designation";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                designation = val;
                              },
                              decoration: InputDecoration(
                                hintText: "Software Engineer",
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
                                    if (currentdesignationkey.currentState!
                                            .validate() &&
                                        carrierobjectivekey.currentState!
                                            .validate()) {
                                      currentdesignationkey.currentState!
                                          .save();
                                      carrierobjectivekey.currentState!.save();

                                      resume.discripation = discripation;
                                      resume.designation = designation;

                                      print(resume.discripation);
                                      print(resume.designation);
                                    }
                                  },
                                  child: Text("Submit"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    currentdesignationkey.currentState!.reset();
                                    carrierobjectivekey.currentState!.reset();

                                    _discripation.clear();
                                    _designation.clear();

                                    resume.discripation = '';
                                    resume.designation = "";

                                    discripation = '';
                                    designation = "";

                                    print(resume.discripation);
                                    print(resume.designation);
                                  },
                                  child: Text("Reset"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
