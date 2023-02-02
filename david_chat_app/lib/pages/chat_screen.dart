import "package:flutter/material.dart";

class Chatscrenn extends StatefulWidget {
  @override
  State<Chatscrenn> createState() => _ChatscrennState();
}

class _ChatscrennState extends State<Chatscrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.grey,
              child: Center(
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text("Back"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 1,
              ),
              height: 50,
              margin: EdgeInsets.all(0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
