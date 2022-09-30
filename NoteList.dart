import 'package:flutter/material.dart';
import 'package:notekeeper_app/screens/noteDetail.dart';

class noteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return notes();
  }
}

class notes extends State<noteList> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return noteDetail();
          }));
        },
      ),
      appBar: AppBar(
        title: Text('Your Notes'),
        backgroundColor: Colors.purple,
      ),
      body: noteListView(),
    );
  }

  ListView noteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext, int position) {
        return Card(
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellowAccent,
            ),
            title: Text('Your Notes', style: titleStyle),
            subtitle: Text('Time and Date'),
            trailing: Icon(Icons.delete, color: Colors.grey),
            onTap: () {
            },
          ),
        );
      },
    );
  }
}
