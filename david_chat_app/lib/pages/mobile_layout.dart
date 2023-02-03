import 'package:david_chat_app/models/message_models.dart';
import 'package:david_chat_app/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
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

  @override
  Widget build(BuildContext context) {
    List theMessages = messages;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Searchbar
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Chatscrenn(theMessages[index].sender),
                        ));
                  },
                  title: Text(
                      "${theMessages[index].sender.firstName} ${theMessages[index].sender.lastName}"),
                  subtitle: Text("${theMessages[index].theText}"),
                  leading: GestureDetector(
                    onTap: () {
                      showProfilePic(theMessages[index].sender.profilePic);
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
    );
  }
}
