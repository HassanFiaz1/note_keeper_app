import 'package:flutter/material.dart';

class noteDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteDetail();
  }
}

class NoteDetail extends State<noteDetail> {
  static var priority = ['High', 'Low'];
  String priorityy = 'High';
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Edit Your Notes'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Column(
          children: [
            DropdownButton<String>(
              elevation: 20,
              items: priority.map((String priorities) {
                return DropdownMenuItem<String>(
                    value: priorities, child: Text(priorities));
              }).toList(),
              style: textStyle,
              onChanged: (String newPriority) {
                setState(() {
                  this.priorityy = newPriority;
                });
              },
              value: priorityy,
            ),
            TextFormField(
              controller: title,
              decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'Enter Note Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onChanged: (value) {},
            ),
            Container(height: 20.0),
            TextFormField(
              controller: description,
              decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter Note Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onChanged: (value) {},
            ),
            Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Expanded(
                  child: Row(
                    children: [
                      Container(
                        child: Expanded(
                            child: RaisedButton(
                          color: Colors.purple,
                          elevation: 6.0,
                          child: Text(
                            'Save',
                            textScaleFactor: 1.3,
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            setState(() {});
                          },
                        )),
                      ),
                      Container(width: 5.0),
                      Container(
                        child: Expanded(
                            child: RaisedButton(
                          color: Colors.purple,
                          elevation: 6.0,
                          child: Text(
                            'Delete',
                            textScaleFactor: 1.3,
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            setState(() {});
                          },
                        )),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
