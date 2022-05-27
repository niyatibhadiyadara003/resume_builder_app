import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Achivementspage extends StatefulWidget {
  const Achivementspage({Key? key}) : super(key: key);

  @override
  _AchivementspageState createState() => _AchivementspageState();
}

class _AchivementspageState extends State<Achivementspage> {
  List<Widget> inputachivement = [];
  List<TextEditingController> textEditingControllers = [];

  @override
  void initState() {
    super.initState();
    textEditingControllers.add(TextEditingController());
    textEditingControllers.add(TextEditingController());

    inputachivement.add(getInput(Container(), 0));
    inputachivement.add(getInput(Container(), 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Achivements"),
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
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Enter Achivements",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: inputachivement
                          .map((e) => getInput(e, inputachivement.indexOf(e)))
                          .toList(),
                    ),
                    const SizedBox(height: 30),
                    OutlinedButton(
                      onPressed: () {
                        textEditingControllers.add(TextEditingController());
                        inputachivement
                            .add(getInput(Container(), inputachivement.length));
                        setState(() {});
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        padding:
                            EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        resume.achivement =
                            textEditingControllers.map((e) => e.text).toList();
                        setState(() {});
                        print(resume.achivement);
                      },
                      child: Text("Save"),
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

  Widget getInput(Widget w, int i) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: TextField(
            controller: textEditingControllers[i],
            decoration: InputDecoration(
              hintText: "Exceeded sales 17% average",
              border: UnderlineInputBorder(),
            ),
          ),
        ),
        Expanded(
            child: IconButton(
          onPressed: () {
            setState(() {
              textEditingControllers.removeAt(i);
              inputachivement.remove(w);
            });
          },
          icon: Icon(Icons.delete),
        ))
      ],
    );
  }
}
