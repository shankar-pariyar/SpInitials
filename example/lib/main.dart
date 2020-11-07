import 'package:flutter/material.dart';
import 'package:sp_initials/sp_initials.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> nameList = ["Shankar Pariyar", "Tom Cat", "Jerry Mouse"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpInitials Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Text(
              'SpInitials.getInitials()',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            getInitialsDemo(context),
            Divider(),
            Text(
              'SpInitials.getInitialsWithShape()',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            getInitialsWithShape(context),
          ],
        ),
      ),
    );
  }

  Widget getInitialsDemo(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      height: MediaQuery.of(context).size.height / 2.5,
      child: ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              leading: Text(SpInitials.getInitials(nameList[index]),
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
              title: Text(nameList[index]),
            );
          }),
    );
  }

  Widget getInitialsWithShape(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      height: MediaQuery.of(context).size.height / 2.5,
      child: ListView(
        children: [
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            leading: SpInitials.getInitialsWithShape(
              context: context,
              fullName: nameList[0],
              fontSize: 25.0,
              isCircle: true,
              fontColor: Colors.white,
            ),
            title: Text(nameList[0]),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            leading: SpInitials.getInitialsWithShape(
              context: context,
              fullName: nameList[1],
              fontSize: 25.0,
              fontColor: Colors.white,
              borderRadius: 10.0,
            ),
            title: Text(nameList[1]),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            leading: SpInitials.getInitialsWithShape(
              context: context,
              fullName: nameList[2],
              fontSize: 25.0,
              fontColor: Theme.of(context).primaryColor,
              borderRadius: 10.0,
              borderColor: Theme.of(context).primaryColor,
              borderWidth: 2.0,
              backgroundColor: Colors.transparent,
            ),
            title: Text(nameList[2]),
          ),
        ],
      ),
    );
  }
}
