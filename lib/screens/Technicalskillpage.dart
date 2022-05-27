import 'package:flutter/material.dart';
import 'package:resumebuilderapp/modals/resume_modal.dart';

class Technicalskillpage extends StatefulWidget {
  const Technicalskillpage({Key? key}) : super(key: key);

  @override
  _TechnicalskillpageState createState() => _TechnicalskillpageState();
}

class _TechnicalskillpageState extends State<Technicalskillpage> {
  List<Widget> input = [];
  List<TextEditingController> textEditingControllers = [];

  @override
  void initState() {
    super.initState();
    textEditingControllers.add(TextEditingController());
    textEditingControllers.add(TextEditingController());

    input.add(getInput(Container(), 0));
    input.add(getInput(Container(), 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Technical Skills"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  color: Colors.blue,
                )),
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
                          "Enter your skill",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: input
                              .map((e) => getInput(e, input.indexOf(e)))
                              .toList(),
                        ),
                        const SizedBox(height: 30),
                        OutlinedButton(
                          onPressed: () {
                            textEditingControllers.add(TextEditingController());
                            input.add(getInput(Container(), input.length));
                            setState(() {});
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                            padding: EdgeInsets.symmetric(
                                horizontal: 150, vertical: 20),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            resume.technicalskills = textEditingControllers
                                .map((e) => e.text)
                                .toList();
                            resume.technicalskilllength = input.length;
                            setState(() {});
                            print(resume.technicalskills);
                            print(resume.technicalskilllength);
                          },
                          child: Text("Save"),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
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
              hintText: "C programming",
              border: UnderlineInputBorder(),
            ),
          ),
        ),
        Expanded(
            child: IconButton(
          onPressed: () {
            setState(() {
              textEditingControllers.removeAt(i);
              input.remove(w);
            });
          },
          icon: Icon(Icons.delete),
        ))
      ],
    );
  }
}
