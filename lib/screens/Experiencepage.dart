import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Experiencepage extends StatefulWidget {
  const Experiencepage({Key? key}) : super(key: key);

  @override
  _ExperiencepageState createState() => _ExperiencepageState();
}

class _ExperiencepageState extends State<Experiencepage> {
  GlobalKey<FormState> Experiencekey = GlobalKey<FormState>();

  TextEditingController _companyname = TextEditingController();
  TextEditingController _clg = TextEditingController();
  TextEditingController _role = TextEditingController();
  TextEditingController _datejoin = TextEditingController();
  TextEditingController _dateexit = TextEditingController();

  String? companyname;
  String? clg;
  String? role;
  String? datejoin;
  String? dateexit;

  dynamic grpval = "Employee_status";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Experience"),
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
              child: Form(
                key: Experiencekey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _companyname,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Company name";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          companyname = val;
                        },
                        decoration: InputDecoration(
                          hintText: "New Enterprise,San francisco",
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
                        controller: _clg,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter School/College/Institute";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          clg = val;
                        },
                        decoration: InputDecoration(
                          hintText: "Quality Test Engineer",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Roles(optional)",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        maxLines: 3,
                        controller: _role,
                        validator: (val) {},
                        onSaved: (val) {
                          role = val;
                        },
                        decoration: InputDecoration(
                          hintText:
                              "Working with team member to come up with new components and product analysis",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Employee Status",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: "Previously employee",
                                groupValue: grpval,
                                onChanged: (val) {
                                  setState(() {
                                    grpval = val;
                                  });
                                },
                              ),
                              Text(
                                "Previously employee",
                                style: (grpval == "Previously employee")
                                    ? TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(
                            children: [
                              Radio(
                                value: "Currently employee",
                                groupValue: grpval,
                                onChanged: (val) {
                                  setState(() {
                                    grpval = val;
                                  });
                                },
                              ),
                              Text(
                                "Currently employee",
                                style: (grpval == "Currently employee")
                                    ? TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 50,
                                width: 130,
                                child: TextFormField(
                                  controller: _datejoin,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Date";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    datejoin = val;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    label: Text("DD/MM/YYYY"),
                                    hintText: "Date",
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          (grpval == "Previously employee")
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Date Exit",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      height: 50,
                                      width: 130,
                                      child: TextFormField(
                                        controller: _dateexit,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter date";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          dateexit = val;
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          label: Text("DD/MM/YYYY"),
                                          hintText: "exit date",
                                          alignLabelWithHint: true,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            if (Experiencekey.currentState!.validate()) {
                              Experiencekey.currentState!.save();

                              resume.companyname = companyname;
                              resume.clg = clg;
                              resume.role = role;
                              resume.datejoin = datejoin;
                              resume.dateexit = dateexit;

                              print(resume.companyname);
                              print(resume.clg);
                              print(resume.role);
                              print(resume.datejoin);
                              print(resume.dateexit);
                            }
                          },
                          child: Text("Save")),
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
