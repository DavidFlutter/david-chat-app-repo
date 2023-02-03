import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class User {
  var firstName;
  var lastName;
  var isOnline;
  var isProUser;
  var profilePic;
  var phoneNumber;
  var email;

  User({
    this.firstName,
    this.lastName,
    this.isOnline,
    this.isProUser,
    this.profilePic,
    this.phoneNumber,
    this.email,
  });
}

List<User> users = [
  User(
    firstName: "Sandra",
    isOnline: true,
    isProUser: true,
    lastName: "Emile",
    profilePic: "lib/images/user_profile_pics/user1.jpg",
    phoneNumber: "09134563738",
    email: "sandra@gmail.com",
  ),
  User(
    firstName: "Joan",
    isOnline: true,
    isProUser: false,
    lastName: "Tuder",
    profilePic: "lib/images/user_profile_pics/user2.jpg",
    phoneNumber: "08133623738",
    email: "Joan@gmail.com",
  ),
  User(
    firstName: "Sean",
    isOnline: false,
    isProUser: false,
    lastName: "Helenise",
    profilePic: "lib/images/user_profile_pics/user3.jpg",
    email: "Sean@gmail.com",
    phoneNumber: "08035474124",
  ),
  User(
    firstName: "Mitch",
    isOnline: true,
    isProUser: true,
    lastName: "Koko",
    profilePic: "lib/images/user_profile_pics/user4.jpg",
    email: "Mitch@gmail.com",
    phoneNumber: "08153584832",
  ),
  User(
    firstName: "Ashanti",
    isOnline: true,
    isProUser: false,
    lastName: "Thabilu",
    profilePic: "lib/images/user_profile_pics/user6.jpg",
    email: "Ashanti@gmail.com",
    phoneNumber: "09054332687",
  ),
  User(
    firstName: "Jamal",
    isOnline: true,
    isProUser: true,
    lastName: "Arami",
    profilePic: "lib/images/user_profile_pics/user7.jpg",
    email: "Jamal@gmail.com",
    phoneNumber: "090356352764",
  ),
  User(
    firstName: "Madaline",
    isOnline: false,
    isProUser: true,
    lastName: "Husselle",
    profilePic: "lib/images/user_profile_pics/user8.jpg",
    email: "Madi@gmail.com",
    phoneNumber: "07024653257",
  ),
  User(
    firstName: "Lewis",
    isOnline: true,
    isProUser: false,
    lastName: "Carlton",
    profilePic: "lib/images/user_profile_pics/user9.jpg",
    email: "Lewis@gmail.com",
    phoneNumber: "07086453765",
  ),
  User(
    firstName: "Shannon",
    isOnline: true,
    isProUser: false,
    lastName: "Resus",
    profilePic: "lib/images/user_profile_pics/user10.jpg",
    email: "Resus@gmail.com",
    phoneNumber: "08035645397",
  ),
  User(
    firstName: "Emily",
    isOnline: false,
    isProUser: true,
    lastName: "Balsomi",
    profilePic: "lib/images/user_profile_pics/user11.jpg",
    email: "Emi@gmail.com",
    phoneNumber: "091653464575",
  ),
  User(
    firstName: "Brad",
    isOnline: false,
    isProUser: true,
    lastName: "Johnson",
    profilePic: "lib/images/user_profile_pics/user12.jpg",
    email: "Brad@gamil.com",
    phoneNumber: "09087653487",
  ),
  User(
    firstName: "Mkioko",
    isOnline: true,
    isProUser: false,
    lastName: "Jiuon",
    profilePic: "lib/images/user_profile_pics/user13.jpg",
    email: "Jiuon@gmail.com",
    phoneNumber: "07046535426",
  )
];
