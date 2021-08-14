import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Me",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: FlutterLogo(),
          ),
          Text(
            "UserName",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Accounts",
            style: TextStyle(color: Colors.white),
          ),
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text("Switch Account"),
            tileColor: Colors.white,
          ),
          Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text("Dark Mode"),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text("Message Request"),
            tileColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
