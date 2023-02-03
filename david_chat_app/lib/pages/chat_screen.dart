import "package:flutter/material.dart";

class Chatscrenn extends StatefulWidget {
  var sender;

  Chatscrenn(this.sender);
  @override
  State<Chatscrenn> createState() => _ChatscrennState();
}

class _ChatscrennState extends State<Chatscrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple,
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 10),
                Container(
                  width: 3,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.sender.isOnline
                      ? [
                          Text(
                            "${widget.sender.firstName} ${widget.sender.lastName}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            "online",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ]
                      : [
                          Text(
                            "${widget.sender.firstName} ${widget.sender.lastName}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ],
                ),
                Spacer(),
                IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
                SizedBox(width: 0),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.shade300,
              child: Center(),
            ),
          ),
          //
          //Bottom text input
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 1,
              ),
              height: 40,
              margin: EdgeInsets.all(0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffix: Column(
                    children: [
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
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
