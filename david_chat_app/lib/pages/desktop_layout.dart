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
  List<String> myMessages = [];

  CenterScreen(this.sender);
  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  var myTextController = TextEditingController();
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
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.grey.shade300,
              child: ListView.builder(
                itemCount: widget.myMessages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: 200),
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.myMessages[index]),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.purple.shade300,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  );
                },
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
              height: 40,
              margin: EdgeInsets.all(0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                controller: myTextController,
                decoration: InputDecoration(
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        widget.myMessages.add(myTextController.text);
                        myTextController.clear();
                      });
                    },
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

class DesktopLayout extends StatefulWidget {
  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  var userProfilePic = "lib/images/user_profile_pics/user11.jpg";
  var userFirstName = "David";
  var userLastName = "Haastrup";
  var userEmail = "david@gmail.com";
  var userPhoneNumber = "08023564534";

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
            flex: 3,
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
                            userFirstName = theMessages[index].sender.firstName;
                            userLastName = theMessages[index].sender.lastName;
                            userProfilePic =
                                theMessages[index].sender.profilePic;
                            userEmail = theMessages[index].sender.email;
                            userPhoneNumber =
                                theMessages[index].sender.phoneNumber;
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
          Expanded(
            flex: 6,
            child: theCenter,
          ),
          // User details
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      userProfilePic,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 50),
                  ListTile(
                      title: Text("First name:"),
                      subtitle: Text(userFirstName)),
                  ListTile(
                    title: Text("Lats name:"),
                    subtitle: Text(userLastName),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Phone:"),
                    subtitle: Text(userPhoneNumber),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Email:"),
                    subtitle: Text(userEmail),
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                    height: 50,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.edit,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Edit profile"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                    title: Text("View pofile"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.groups,
                      color: Colors.deepPurple,
                    ),
                    title: Text("Communities"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
