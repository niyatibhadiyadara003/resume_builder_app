import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Finalresumepage extends StatefulWidget {
  const Finalresumepage({Key? key}) : super(key: key);
  @override
  _FinalresumepageState createState() => _FinalresumepageState();
}

int i = 0;
int y = resume.technicalskills!.length;
List k = resume.language!.keys.toList();
int n = resume.language!.length;
int m = resume.interest!.length;

class _FinalresumepageState extends State<Finalresumepage> {
  @override
  Widget build(BuildContext context) {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.SizedBox(width: 10),
                  //  pw.CircleAvatar(
                  //   radius: 60,
                  //  child: FileImage(resume.image),
                  //  ),
                  pw.SizedBox(width: 20),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Name:${resume.name}",
                        style: pw.TextStyle(
                            fontSize: 20, fontWeight: pw.FontWeight.bold),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        "Email:${resume.email}",
                        style: pw.TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        "Date Of Birth:${resume.dob}",
                        style: pw.TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Divider(
                indent: 150,
                endIndent: 30,
                thickness: 2,
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    //  height: MediaQuery.of(context).size.height*0.2,
                    //  width: MediaQuery.of(context).size.width*0.3,
                    decoration: pw.BoxDecoration(
                      // color: Colors.white.withOpacity(0.2),
                      border: pw.Border.all(
                          // color: Colors.white,
                          ),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            alignment: pw.Alignment.center,
                            width: 300,
                            // width: MediaQuery.of(context).size.width*0.3,
                            height: 30,
                            //color: Colors.blue,
                            child: pw.Text(
                              "CONTACT",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            )),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          "Phone:${resume.phone}",
                          style: pw.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          "Marital Status:${resume.status}",
                          style: pw.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          "Address:${resume.address}",
                          style: pw.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(width: 10),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    // height: MediaQuery.of(context).size.height*0.2,
                    //width: MediaQuery.of(context).size.width*0.5,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "ABOUT ME",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            "My name is ${resume.name}.I am study in ${resume.school} and\nI am ${resume.nationality}\n${resume.discripation}\n"
                            "Current Designation:${resume.designation}")
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    // height: MediaQuery.of(context).size.height*0.2,
                    //  width: MediaQuery.of(context).size.width*0.3,
                    decoration: pw.BoxDecoration(
                      //   color: Colors.white.withOpacity(0.2),
                      border: pw.Border.all(
                          //   color: Colors.white,
                          ),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            alignment: pw.Alignment.center,
                            width: 300,
                            //width: MediaQuery.of(context).size.width*0.3,
                            height: 30,
                            //  color: Colors.blue,
                            child: pw.Text(
                              "SKILLS",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            )),
                        pw.SizedBox(height: 10),
                        if (y != null)
                          for (i = 0; i < y; i++)
                            pw.Text(
                              "${resume.technicalskills![i]}",
                              style: pw.TextStyle(
                                fontSize: 15,
                              ),
                            ),
                      ],
                    ),
                  ),
                  pw.SizedBox(width: 10),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    //  height: MediaQuery.of(context).size.height*0.2,
                    //  width: MediaQuery.of(context).size.width*0.5,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "EDUCATION",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            "I am belong to ${resume.school} with ${resume.percentage} in year ${resume.year}\n"
                            "Now,I am learning ${resume.course}")
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    // height: MediaQuery.of(context).size.height*0.2,
                    height: 200,
                    width: 200,
                    //width: MediaQuery.of(context).size.width*0.3,
                    decoration: pw.BoxDecoration(
                      //  color: Colors.white.withOpacity(0.2),
                      border: pw.Border.all(
                          //   color: Colors.white,
                          ),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            alignment: pw.Alignment.center,
                            width: 300,
                            // width: MediaQuery.of(context).size.width*0.3,
                            height: 45,
                            // color: Colors.blue,
                            child: pw.Text(
                              "Languages Known",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            )),
                        pw.SizedBox(height: 10),
                        if (n != null)
                          for (i = 0; i < n; i++)
                            pw.Text(
                              "${k[i]}",
                              style: pw.TextStyle(
                                fontSize: 15,
                              ),
                            ),
                      ],
                    ),
                  ),
                  pw.SizedBox(width: 10),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    // height: MediaQuery.of(context).size.height*0.2,
                    // width: MediaQuery.of(context).size.width*0.5,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "EXPERIENCE",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            "I was work in ${resume.companyname} as ${resume.clg} as ${resume.role}\n"
                            "During ${resume.datejoin} to Since ${resume.dateexit}"),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    // height: MediaQuery.of(context).size.height*0.2,
                    // width: MediaQuery.of(context).size.width*0.3,
                    decoration: pw.BoxDecoration(
                      // color: Colors.white.withOpacity(0.2),
                      border: pw.Border.all(
                          //   color: Colors.white,
                          ),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            alignment: pw.Alignment.center,
                            width: 300,
                            // width: MediaQuery.of(context).size.width*0.3,
                            height: 30,
                            // color: Colors.blue,
                            child: pw.Text(
                              "INTEREST",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            )),
                        pw.SizedBox(height: 10),
                        if (m != null)
                          for (i = 0; i < m; i++)
                            pw.Text(
                              "${resume.interest![i]}",
                              style: pw.TextStyle(
                                fontSize: 15,
                              ),
                            ),
                      ],
                    ),
                  ),
                  pw.SizedBox(width: 10),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    //height: MediaQuery.of(context).size.height*0.2,
                    //  width: MediaQuery.of(context).size.width*0.5,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "PROJECTS",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            "I was working on ${resume.projecttitle} as ${resume.roleproject} with using  ${resume.technologiesproject}\n"
                            "about ${resume.projectdiscription} using technologies like ${resume.technologiesprojectcheck!.keys}"),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    // height: MediaQuery.of(context).size.height*0.2,
                    // width: MediaQuery.of(context).size.width*0.3,
                    decoration: pw.BoxDecoration(
                      // color: Colors.white.withOpacity(0.2),
                      border: pw.Border.all(
                          //  color: Colors.white,
                          ),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            alignment: pw.Alignment.center,
                            width: 300,
                            //  width: MediaQuery.of(context).size.width*0.3,
                            height: 30,
                            // color: Colors.blue,
                            child: pw.Text(
                              "ACHIVEMENT",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            )),
                        pw.SizedBox(height: 10),
                        if (m != null)
                          for (i = 0; i < m; i++)
                            pw.Text(
                              "${resume.achivement![i]}",
                              style: pw.TextStyle(
                                fontSize: 15,
                              ),
                            ),
                      ],
                    ),
                  ),
                  pw.SizedBox(width: 10),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 200,
                    width: 200,
                    // height: MediaQuery.of(context).size.height*0.2,
                    //width: MediaQuery.of(context).size.width*0.5,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "REFERENCES",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            "I would use reference of ${resume.referencename} who was ${resume.designationreference} in  ${resume.organization_institutereference}"),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Container(
                alignment: pw.Alignment.center,
                height: 200,
                width: 200,
                // height: MediaQuery.of(context).size.height*0.2,
                // width: MediaQuery.of(context).size.width,
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Text(
                      "DECLARATION",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                        "${resume.discripationdeclaration} at ${resume.datedeclaration} in  ${resume.placedeclaration}"),
                  ],
                ),
              ),
            ],
          );
        }));
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () async {
              final output = await getExternalStorageDirectory();
              print("path:" + output!.path);
              final file = File("${output.path}/n_resume.pdf");
              await file.writeAsBytes(await pdf.save());
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed("buildoptionpage");
            });
          },
        ),
      ),
      body: (resume.technicalskills == null)
          ? Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.white,
                  ],
                ),
              ),
              child: const Text(
                "Sorry!,you did not type any information",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.white,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(resume.image),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name:${resume.name}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Email:${resume.email}",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Date Of Birth:${resume.dob}",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      indent: 150,
                      endIndent: 30,
                      thickness: 2,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 30,
                                  color: Colors.blue,
                                  child: Text(
                                    "CONTACT",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(height: 10),
                              Text(
                                "Phone:${resume.phone}",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Marital Status:${resume.status}",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Address:${resume.address}",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ABOUT ME",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                  "My name is ${resume.name}.I am study in ${resume.school} and\nI am ${resume.nationality}\n${resume.discripation}\n"
                                  "Current Designation:${resume.designation}")
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 30,
                                  color: Colors.blue,
                                  child: Text(
                                    "SKILLS",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(height: 10),
                              if (y != null)
                                for (i = 0; i < y; i++)
                                  Text(
                                    "${resume.technicalskills![i]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EDUCATION",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                  "I am belong to ${resume.school} with ${resume.percentage} in year ${resume.year}\n"
                                  "Now,I am learning ${resume.course}")
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 45,
                                  color: Colors.blue,
                                  child: Text(
                                    "Languages Known",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(height: 10),
                              if (n != null)
                                for (i = 0; i < n; i++)
                                  Text(
                                    "${k[i]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EXPERIENCE",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                  "I was work in ${resume.companyname} as ${resume.clg} as ${resume.role}\n"
                                  "During ${resume.datejoin} to Since ${resume.dateexit}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 30,
                                  color: Colors.blue,
                                  child: Text(
                                    "INTEREST",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(height: 10),
                              if (m != null)
                                for (i = 0; i < m; i++)
                                  Text(
                                    "${resume.interest![i]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PROJECTS",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                  "I was working on ${resume.projecttitle} as ${resume.roleproject} with using  ${resume.technologiesproject}\n"
                                  "about ${resume.projectdiscription} using technologies like ${resume.technologiesprojectcheck!.keys}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 30,
                                  color: Colors.blue,
                                  child: Text(
                                    "ACHIVEMENT",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(height: 10),
                              if (m != null)
                                for (i = 0; i < m; i++)
                                  Text(
                                    "${resume.achivement![i]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "REFERENCES",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                  "I would use reference of ${resume.referencename} who was ${resume.designationreference} in  ${resume.organization_institutereference}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "DECLARATION",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                              "${resume.discripationdeclaration} at ${resume.datedeclaration} in  ${resume.placedeclaration}"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
