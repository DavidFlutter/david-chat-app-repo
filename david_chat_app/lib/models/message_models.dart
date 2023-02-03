import 'package:david_chat_app/models/user_model.dart';
import 'package:flutter/material.dart';

class Message {
  var theText;
  var isRead;
  var timeSent;
  var sender;

  Message({
    this.theText,
    this.isRead,
    this.timeSent,
    this.sender,
  });
}

List<Message> messages = [
  Message(
    isRead: true,
    sender: users[0],
    theText:
        "Hey David, I really need about 7 mil, could you send it by tomorrow",
    timeSent: "10:45 pm",
  ),
  Message(
    isRead: false,
    sender: users[1],
    theText: "No, I'll come tomorrow ",
    timeSent: "8:20 pm",
  ),
  Message(
      isRead: true,
      sender: users[2],
      theText: "Thank God for His mercy",
      timeSent: "8:03 pm"),
  Message(
    isRead: false,
    sender: users[3],
    theText: "That's very good David",
    timeSent: "7:32 pm",
  ),
  Message(
    isRead: false,
    sender: users[4],
    theText: "That's my guy",
    timeSent: "7:02 pm",
  ),
  Message(
    isRead: true,
    sender: users[5],
    theText: "There is strength for you",
    timeSent: "6:54 pm",
  ),
  Message(
    isRead: false,
    sender: users[6],
    theText: "Please can I come in tomorroww sir",
    timeSent: "6:40 pm",
  ),
  Message(
    isRead: false,
    sender: users[7],
    theText: "No, I'll come tomorrow ",
    timeSent: "8:20 am",
  ),
  Message(
    isRead: true,
    sender: users[8],
    theText: "Thank you for the cash",
    timeSent: "8:12 am",
  ),
  Message(
    isRead: false,
    sender: users[9],
    theText: "That's very good David",
    timeSent: "7:32 am",
  ),
  Message(
    isRead: false,
    sender: users[10],
    theText: "That's it",
    timeSent: "7:02 am",
  ),
  Message(
    isRead: true,
    sender: users[11],
    theText: "For you",
    timeSent: "6:45 am",
  ),
];
