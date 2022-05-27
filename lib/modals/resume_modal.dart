import 'dart:io';

import 'package:flutter/material.dart';

class Resume {
  String? name;
  String? email;
  int? phone;
  String? address;
  String? dob;
  String? status;
  File image;

  Map? language;

  String? nationality;
  String? discripation;
  String? designation;

  List? technicalskills;

  String? discripationdeclaration;
  String? datedeclaration;
  String? placedeclaration;

  String? course;
  String? school;
  String? percentage;
  String? year;

  String? companyname;
  String? clg;
  String? role;
  String? datejoin;
  String? dateexit;

  List? interest;

  String? projecttitle;
  String? roleproject;
  String? technologiesproject;
  String? projectdiscription;
  Map? technologiesprojectcheck;

  List? achivement;

  String? referencename;
  String? designationreference;
  String? organization_institutereference;
  int? technicalskilllength;

  Resume(
      {this.name,
      required this.image,
      this.email,
      this.phone,
      this.address,
      this.dob,
      this.status,
      this.language,
      this.nationality,
      this.designation,
      this.discripation,
      this.technicalskills,
      this.datedeclaration,
      this.discripationdeclaration,
      this.placedeclaration,
      this.course,
      this.percentage,
      this.school,
      this.year,
      this.clg,
      this.companyname,
      this.dateexit,
      this.datejoin,
      this.role,
      this.interest,
      this.projectdiscription,
      this.projecttitle,
      this.roleproject,
      this.technologiesproject,
      this.technologiesprojectcheck,
      this.achivement,
      this.designationreference,
      this.organization_institutereference,
      this.referencename,
      this.technicalskilllength});
}

Resume resume = Resume(image: File(""));
