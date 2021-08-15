import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("User Name"),
            actions: [
              Icon(Icons.call),
              Icon(Icons.video_call),
              Icon(Icons.info)
            ],
          ),
          body: Column(
            children: [
              Expanded(
                  flex: 8,
                  child: ListView.builder(
                      reverse: true,
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        return chatBubble(context, index);
                      })),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.app_blocking,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.image,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(helperText: "Aa"),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Icon(Icons.thumb_up, color: Colors.white)
                    ],
                  ))
            ],
          )),
    );
  }
}

Widget chatBubble(BuildContext context, int index) {
  if (index % 2 == 0) {
    return Padding(
        padding: const EdgeInsets.only(left: 150, top: 10, bottom: 10.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.grey),
          child: Text(
            "Hii",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ));
  } else {
    return Padding(
      padding: EdgeInsets.only(right: 150),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.red),
        child: Text(
          "Hii",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
