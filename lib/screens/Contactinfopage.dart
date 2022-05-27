import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:resumebuilderapp/modals/resume_modal.dart';
//import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class Contactinfopage extends StatefulWidget {
  const Contactinfopage({Key? key}) : super(key: key);

  @override
  _ContactinfopageState createState() => _ContactinfopageState();
}

class _ContactinfopageState extends State<Contactinfopage> {
  int _currentindex = 0;

  GlobalKey<FormState> contactinfokey = GlobalKey<FormState>();

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _address1 = TextEditingController();
  TextEditingController _address2 = TextEditingController();
  TextEditingController _address3 = TextEditingController();

  ImagePicker _picker = ImagePicker();
  File? _image;

  String? name;
  String? email;
  int? phone;
  String? address;

  Color mycolor = Colors.yellow.shade100;
  Color mycolor1 = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text("Resume Workspace"),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentindex = 0;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Contact",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          (_currentindex == 0)
                              ? Container(
                                  color: Colors.yellow.shade100,
                                  height: 3,
                                  width: MediaQuery.of(context).size.width,
                                )
                              : SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentindex = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment(0, 0.6),
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Photo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          (_currentindex == 1)
                              ? Container(
                                  color: Colors.yellow.shade100,
                                  height: 3,
                                  width: MediaQuery.of(context).size.width,
                                )
                              : SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 9,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IndexedStack(
                      index: _currentindex,
                      children: [
                        Container(
                          margin: EdgeInsets.all(35),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Form(
                            key: contactinfokey,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Image.asset(
                                          "assets/icons/user.png",
                                          height: 20,
                                        )),
                                    Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        controller: _name,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter name first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          name = val;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Name",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                      "assets/icons/email.png",
                                      height: 20,
                                    )),
                                    Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        controller: _email,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter email first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          email = val;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Email",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        "assets/icons/smartphone-call.png",
                                        height: 20,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        controller: _phone,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter phone number first";
                                          } else if (val.length != 10) {
                                            return "Enter valid number lenght";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          phone = int.parse(val!);
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: "phone",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                      "assets/icons/pin.png",
                                      height: 20,
                                    )),
                                    Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        controller: _address1,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter address first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          address = val;
                                        },
                                        decoration: InputDecoration(
                                          hintText:
                                              "Address(Street,Building No)",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        controller: _address2,
                                        onSaved: (val) {
                                          address = (address! + " , " + val!)!;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Address line2",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        controller: _address3,
                                        validator: (val) {},
                                        onSaved: (val) {
                                          address = (address! + " , " + val!)!;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Address line3",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        if (contactinfokey.currentState!
                                            .validate()) {
                                          contactinfokey.currentState!.save();
                                          resume.name = name;
                                          resume.email = email;
                                          resume.phone = phone;
                                          resume.address = address;

                                          print(resume.name);
                                          print(resume.phone);
                                        }
                                      },
                                      child: Text("Submit"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        contactinfokey.currentState!.reset();

                                        _name.clear();
                                        _email.clear();
                                        _phone.clear();
                                        _address1.clear();
                                        _address2.clear();
                                        _address3.clear();

                                        resume.name = '';
                                        resume.email = "";
                                        resume.phone = 0;
                                        resume.address = '';

                                        name = '';
                                        email = "";
                                        phone = 0;
                                        address = '';

                                        print(resume.name);
                                        print(resume.phone);
                                      },
                                      child: Text("Reset"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(28),
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.grey.shade400,
                              backgroundImage:
                                  (_image != null) ? FileImage(_image!) : null,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  (_image != null)
                                      ? Container()
                                      : Text(
                                          "Add",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                  (_image != null)
                                      ? Container()
                                      : Align(
                                          alignment: Alignment(0.9, 0.8),
                                          child: FloatingActionButton(
                                            child: Icon(Icons.add),
                                            onPressed: () async {
                                              XFile? xfile =
                                                  await _picker.pickImage(
                                                      source:
                                                          ImageSource.camera);
                                              String path = xfile!.path;
                                              File file = File(path);

                                              setState(() {
                                                _image = file;
                                                resume.image = _image!;
                                              });
                                            },
                                            mini: true,
                                          ),
                                        )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
