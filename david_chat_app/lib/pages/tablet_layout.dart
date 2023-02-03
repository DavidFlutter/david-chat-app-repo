import 'package:flutter/material.dart';

import '../models/message_models.dart';

class CenterBlank extends StatefulWidget {
  @override
  State<CenterBlank> createState() => _CenterBlankState();
}

class _CenterBlankState extends State<CenterBlank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 20,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Select a chat to start messageing",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CenterScreen extends StatefulWidget {
  var sender;

  CenterScreen(this.sender);
  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
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
                )
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.grey.shade300,
            ),
          ),
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
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.deepPurple,
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

Widget theCenter = CenterBlank();

class TabletLayout extends StatefulWidget {
  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  void showProfilePic(var profilePic) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          content: Container(
            color: Colors.black,
            height: 300,
            width: 200,
            child: Image.asset(
              profilePic,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }

  List theMessages = messages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Messages list
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7,
                    ),
                    height: 40,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: theMessages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            theCenter = CenterScreen(theMessages[index].sender);
                          });
                        },
                        title: Text(
                            "${theMessages[index].sender.firstName} ${theMessages[index].sender.lastName}"),
                        subtitle: Text(
                          "${theMessages[index].theText}",
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        ),
                        leading: GestureDetector(
                          onTap: () {
                            showProfilePic(
                                theMessages[index].sender.profilePic);
                          },
                          child: theMessages[index].isRead
                              ? Container(
                                  // padding: EdgeInsets.all(2),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.asset(
                                    theMessages[index].sender.profilePic,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.all(2),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset(
                                        theMessages[index].sender.profilePic,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // padding: EdgeInsets.all(2),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              size: 15,
                              color: theMessages[index].sender.isProUser
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                            Text(
                              theMessages[index].timeSent,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Chatscreen
          Expanded(flex: 3, child: theCenter),
        ],
      ),
    );
  }
}
