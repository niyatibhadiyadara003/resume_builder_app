import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BuildoptionPage extends StatefulWidget {
  const BuildoptionPage({Key? key}) : super(key: key);

  @override
  _BuildoptionPageState createState() => _BuildoptionPageState();
}

class _BuildoptionPageState extends State<BuildoptionPage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Row(
                children: [
                  const SizedBox(width: 140),
                  Text(
                    "Build Options",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 90),
                  IconButton(
                    onPressed: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("You Want to show your Rsume?"),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context)
                                            .pushNamed("finalresumepage");
                                      });
                                    },
                                    child: Text("Yes")),
                                OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pop();
                                      });
                                    },
                                    child: Text("No")),
                              ],
                            );
                          });
                    },
                    icon: Icon(
                      Icons.apps,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  displayoption(
                    img: "assets/icons/contact_detail.png",
                    pagename: "contactinfopage",
                    title: "Contact Info       ",
                  ),
                  displayoption(
                    img: "assets/icons/briefcase.png",
                    pagename: "carrierobjectivepage",
                    title: "Carrier Objective",
                  ),
                  displayoption(
                    img: "assets/icons/account.png",
                    pagename: "personaldetailspage",
                    title: "Personal Details",
                  ),
                  displayoption(
                    img: "assets/icons/graduation-cap.png",
                    pagename: "educationpage",
                    title: "Education            ",
                  ),
                  displayoption(
                    img: "assets/icons/logical-thinking.png",
                    pagename: "experiencepage",
                    title: "Experiences        ",
                  ),
                  displayoption(
                    img: "assets/icons/certificate.png",
                    pagename: "technicalskillpage",
                    title: "Technical Skills  ",
                  ),
                  displayoption(
                    img: "assets/icons/open-book.png",
                    pagename: "interestpage",
                    title: "Interest/Hobbies",
                  ),
                  displayoption(
                    img: "assets/icons/project-management.png",
                    pagename: "projectspage",
                    title: "Projects               ",
                  ),
                  displayoption(
                    img: "assets/icons/experience.png",
                    pagename: "achivementspage",
                    title: "Achivements       ",
                  ),
                  displayoption(
                    img: "assets/icons/handshake.png",
                    pagename: "referencespage",
                    title: "References           ",
                  ),
                  displayoption(
                    img: "assets/icons/declaration.png",
                    pagename: "declarationpage",
                    title: "Declaration          ",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displayoption(
      {required String img, required String title, required String pagename}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(pagename);
          },
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Image.asset(
                  img,
                  height: 25,
                ),
                const SizedBox(width: 20),
                Text(title),
                const SizedBox(width: 170),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
