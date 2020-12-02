import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {
  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue ='Carpenter';

    String dropdownVal='10-11';
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Complaint Box'),
      ),
    body:
        new Container(
      padding: EdgeInsets.all(20.00),
      child: new Column(
        children: <Widget>[
          new Divider(
            height: 100.0,
          ),
    new Text('Worker Needed'),
    Container(
      child: DropdownButton<String>(
      value: dropdownValue,
      underline: Container(
      height: 2,
      color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
      setState(() {
      dropdownValue = newValue;
      });
      },
      items: <String>['Carpenter', 'Plumber', 'Servant', 'Other']
          .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
      );
      }).toList(),
      ),
    ),
        new Divider(
          height: 60.0,
        ),
          new Text('Favourable Time'),
        DropdownButton<String>(
    value: dropdownVal='10-11',
    icon: Icon(Icons.arrow_downward),
    iconSize: 24,
    elevation: 16,
    style: TextStyle(color: Colors.deepPurple),
    underline: Container(
    height: 2,
    color: Colors.deepPurpleAccent,
    ),
    onChanged: (String newValue) {
    setState(() {
    dropdownVal = newValue;
    });
    },
    items: <String>['10-11', '11-12', '12-1', '2-3','3-4','4-5']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    ),
          new Divider(
            height: 50.0,
          ),

          
        Container(
          child: new TextField(
            onChanged: (String textinput) {
              setState(() {
                var inputstr = textinput ;
              });
            },
            decoration: InputDecoration(
              hintText: "Details about the complaint (optional)",
              border: OutlineInputBorder(),
            ),
          ),

        ),
          new Divider(
            height: 20.0,
          ),
          RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.blue)
            ),
            onPressed: () {},
            child: const Text('Submit', style: TextStyle(fontSize: 20)),
          ),]
    ),)
    );
  }
}


