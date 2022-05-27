import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Declarationpage extends StatefulWidget {
  const Declarationpage({Key? key}) : super(key: key);

  @override
  _DeclarationpageState createState() => _DeclarationpageState();
}

class _DeclarationpageState extends State<Declarationpage> {
  bool switchval = false;

  GlobalKey<FormState> declarationkey = GlobalKey<FormState>();

  TextEditingController _discripationdeclaration = TextEditingController();
  TextEditingController _datedeclaration = TextEditingController();
  TextEditingController _placedeclaration = TextEditingController();
  String? discripationdeclaration;
  String? datedeclaration;
  String? placedeclaration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Declaration"),
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
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(28),
                    padding: EdgeInsets.only(left: 12, right: 12),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Declaration",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Switch(
                              value: switchval,
                              onChanged: (val) {
                                setState(() {
                                  switchval = val;
                                });
                              },
                            ),
                          ],
                        ),
                        (switchval == true)
                            ? SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/icons/target.png",
                                      height: 50,
                                    ),
                                    const SizedBox(height: 20),
                                    Form(
                                      key: declarationkey,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller:
                                                _discripationdeclaration,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter Discription";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              discripationdeclaration = val;
                                            },
                                            decoration: InputDecoration(
                                              hintText: "Discripation",
                                              alignLabelWithHint: true,
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          Divider(
                                            color: Colors.grey,
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Date",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 30),
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextFormField(
                                                      controller:
                                                          _datedeclaration,
                                                      validator: (val) {
                                                        if (val!.isEmpty) {
                                                          return "Enter Date";
                                                        }
                                                        return null;
                                                      },
                                                      onSaved: (val) {
                                                        datedeclaration = val;
                                                      },
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "DD/MM/YYYY",
                                                        alignLabelWithHint:
                                                            true,
                                                        border:
                                                            OutlineInputBorder(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Place(interview\nvenue/city)",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextFormField(
                                                      controller:
                                                          _placedeclaration,
                                                      validator: (val) {
                                                        if (val!.isEmpty) {
                                                          return "Enter Place";
                                                        }
                                                        return null;
                                                      },
                                                      onSaved: (val) {
                                                        placedeclaration = val;
                                                      },
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "Eg.Surat",
                                                        alignLabelWithHint:
                                                            true,
                                                        border:
                                                            OutlineInputBorder(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            if (declarationkey.currentState!
                                                .validate()) {
                                              declarationkey.currentState!
                                                  .save();

                                              resume.discripationdeclaration =
                                                  discripationdeclaration;
                                              resume.datedeclaration =
                                                  datedeclaration;
                                              resume.placedeclaration =
                                                  placedeclaration;
                                            }

                                            print(
                                                resume.discripationdeclaration);
                                            print(resume.datedeclaration);
                                            print(resume.placedeclaration);
                                          },
                                          child: Text("Save"),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            declarationkey.currentState!
                                                .reset();
                                            _discripationdeclaration.clear();
                                            _datedeclaration.clear();
                                            _placedeclaration.clear();
                                            resume.discripationdeclaration = "";
                                            resume.datedeclaration = "";
                                            resume.placedeclaration = "";

                                            discripationdeclaration = "";
                                            datedeclaration = "";
                                            placedeclaration = '';
                                          },
                                          child: Text("Reset"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
