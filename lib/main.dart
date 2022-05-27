import 'package:flutter/material.dart';
import 'package:resumebuilderapp/screens/Achivementspage.dart';
import 'package:resumebuilderapp/screens/Buildoptionpage.dart';
import 'package:resumebuilderapp/screens/Carrierobjectivepage.dart';
import 'package:resumebuilderapp/screens/Contactinfopage.dart';
import 'package:resumebuilderapp/screens/Declarationpage.dart';
import 'package:resumebuilderapp/screens/Educationpage.dart';
import 'package:resumebuilderapp/screens/Experiencepage.dart';
import 'package:resumebuilderapp/screens/Finaleresumepage.dart';
import 'package:resumebuilderapp/screens/Homepage.dart';
import 'package:resumebuilderapp/screens/Interestpage.dart';
import 'package:resumebuilderapp/screens/Projectspage.dart';
import 'package:resumebuilderapp/screens/Referencespage.dart';
import 'package:resumebuilderapp/screens/Technicalskillpage.dart';
import 'package:resumebuilderapp/screens/personaldetailspage.dart';


void main()
{
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context)=>Homepage(),
          'buildoptionpage': (context)=>BuildoptionPage(),
          'contactinfopage': (context)=>Contactinfopage(),
          'carrierobjectivepage': (context)=>Carrierobjectivepage(),
          'personaldetailspage': (context)=>Personaldetailspage(),
          'educationpage': (context)=>Educationpage(),
          'experiencepage': (context)=>Experiencepage(),
          'technicalskillpage': (context)=>Technicalskillpage(),
          'interestpage': (context)=>Interestpage(),
          'projectspage': (context)=>Projectspage(),
          'achivementspage': (context)=>Achivementspage(),
          'referencespage': (context)=>Referencespage(),
          'declarationpage': (context)=>Declarationpage(),
          'finalresumepage': (context)=>Finalresumepage(),
        }
    ),
  );
}