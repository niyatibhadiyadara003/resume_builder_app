import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Personaldetailspage extends StatefulWidget {
  const Personaldetailspage({Key? key}) : super(key: key);

  @override
  _PersonaldetailspageState createState() => _PersonaldetailspageState();
}

class _PersonaldetailspageState extends State<Personaldetailspage> {
  GlobalKey<FormState> personaldetailkey = GlobalKey<FormState>();

  TextEditingController _dob = TextEditingController();
  TextEditingController _nationality = TextEditingController();

  dynamic grpval = "Marital_status";
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  Map<String, bool> language = {};
  String? dob;
  String? nationality;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text("Personal Details"),
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
                    key: personaldetailkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DOB",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _dob,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Date Of Birth";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            dob = val;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "DD/MM/YYYY",
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Marital Status",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Radio(
                              value: "Single",
                              groupValue: grpval,
                              onChanged: (val) {
                                setState(() {
                                  grpval = val;
                                });
                              },
                            ),
                            Text(
                              "Single",
                              style: (grpval == "Single")
                                  ? TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: "Married",
                              groupValue: grpval,
                              onChanged: (val) {
                                setState(() {
                                  grpval = val;
                                });
                              },
                            ),
                            Text("Married",
                                style: (grpval == "Married")
                                    ? TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ))
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Language Known",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                                value: this.val1,
                                onChanged: (val) {
                                  setState(() {
                                    this.val1 = val!;
                                    language['English'] = val1;
                                  });
                                }),
                            Text("English",
                                style: (val2 != false)
                                    ? TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(
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
                                onChanged: (val) {
                                  setState(() {
                                    this.val2 = val!;
                                    language['Hindi'] = val2;
                                  });
                                }),
                            Text("Hindi",
                                style: (val2 != false)
                                    ? TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(
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
                                onChanged: (val) {
                                  setState(() {
                                    this.val3 = val!;
                                    language['Gujarati'] = val3;
                                  });
                                }),
                            Text("Gujarati",
                                style: (val3 != false)
                                    ? TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Nationality",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _nationality,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Nationality";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            nationality = val;
                          },
                          decoration: InputDecoration(
                            hintText: "Indian",
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                              if (personaldetailkey.currentState!.validate()) {
                                personaldetailkey.currentState!.save();
                                resume.dob = dob;
                                resume.nationality = nationality;
                                resume.status = grpval;
                                resume.language = language;
                                print(resume.dob);
                                print(resume.nationality);
                                print(resume.status);
                                print(resume.language);
                              }
                            },
                            child: Text("Save"))
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
