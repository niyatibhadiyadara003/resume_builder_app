import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resume Builder"),centerTitle: true,elevation: 0,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed("buildoptionpage");
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Text("RESUMES",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),),
              )),
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 1),
                  Image.asset("assets/icons/open-cardboard-box.png",height: 40,),
                  const SizedBox(height: 10,),
                  Text("No Resumes + Create new resume.",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,

                  ),),
                  Spacer(flex: 6),
                ],

              ))
        ],

      ),
    );
  }
}
