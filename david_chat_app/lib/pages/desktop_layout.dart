import 'package:flutter/material.dart';

import '../models/message_models.dart';

class DesktopLayout extends StatefulWidget {
  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
      appBar: AppBar(
        title: Text("2Ter Hub Chat"),
      ),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: theMessages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            "${theMessages[index].sender.firstName} ${theMessages[index].sender.lastName}"),
                        subtitle: Text("${theMessages[index].theText}"),
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
                        trailing: Icon(
                          Icons.star_rounded,
                          size: 15,
                          color: theMessages[index].sender.isProUser
                              ? Colors.yellow
                              : Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
