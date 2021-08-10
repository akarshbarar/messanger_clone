import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Messenger",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {},
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    var bnb = BottomNavigationBar(
        onTap: (i) {
          setState(() {
            id = i;
          });
        },
        items: [
          BottomNavigationBarItem(title: Text("Chats"), icon: Icon(Icons.chat)),
          BottomNavigationBarItem(
              title: Text("People"), icon: Icon(Icons.verified_user))
        ]);

    var tab = <Widget>[
      Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.grey),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          )),
          Expanded(
              flex: 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          child: FlutterLogo(),
                        ),
                        Text(
                          "Hii",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  })),
          Expanded(
              flex: 9,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int i) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: FlutterLogo(),
                      ),
                      title: Text(
                        "Name $i",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Message $i",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }))
        ],
      ),
      Center(
        child: Text(
          "Hii",
          style: TextStyle(color: Colors.white),
        ),
      )
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          leading: CircleAvatar(
            child: FlutterLogo(),
          ),
          title: Text("Chats"),
          actions: [Icon(Icons.camera), Icon(Icons.create)],
        ),
        body: tab[id],
        bottomNavigationBar: bnb,
      ),
    );
  }
}
