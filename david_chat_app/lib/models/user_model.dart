import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class User {
  var firstName;
  var lastName;
  var isOnline;
  var isProUser;
  var profilePic;

  User({
    this.firstName,
    this.lastName,
    this.isOnline,
    this.isProUser,
    this.profilePic,
  });
}

List<User> users = [
  User(
    firstName: "Sandra",
    isOnline: true,
    isProUser: true,
    lastName: "Emile",
    profilePic: "lib/images/user_profile_pics/user1",
  ),
  User(
    firstName: "Joan",
    isOnline: true,
    isProUser: false,
    lastName: "Tuder",
    profilePic: "lib/images/user_profile_pics/user2",
  ),
  User(
    firstName: "Sean",
    isOnline: false,
    isProUser: false,
    lastName: "Helenise",
    profilePic: "lib/images/user_profile_pics/user3",
  ),
  User(
    firstName: "Mitch",
    isOnline: true,
    isProUser: true,
    lastName: "Koko",
    profilePic: "lib/images/user_profile_pics/user4",
  ),
  User(
    firstName: "Ashanti",
    isOnline: true,
    isProUser: false,
    lastName: "Thabilu",
    profilePic: "lib/images/user_profile_pics/user6",
  ),
  User(
    firstName: "Jamal",
    isOnline: true,
    isProUser: true,
    lastName: "Arami",
    profilePic: "lib/images/user_profile_pics/user7",
  ),
  User(
    firstName: "Madaline",
    isOnline: false,
    isProUser: true,
    lastName: "Husselle",
    profilePic: "lib/images/user_profile_pics/user8",
  ),
  User(
    firstName: "Lewis",
    isOnline: true,
    isProUser: false,
    lastName: "Carlton",
    profilePic: "lib/images/user_profile_pics/user9",
  ),
  User(
    firstName: "Shannon",
    isOnline: true,
    isProUser: false,
    lastName: "Resus",
    profilePic: "lib/images/user_profile_pics/user10",
  ),
  User(
    firstName: "Emily",
    isOnline: false,
    isProUser: true,
    lastName: "Balsomi",
    profilePic: "lib/images/user_profile_pics/user11",
  ),
  User(
    firstName: "Brad",
    isOnline: false,
    isProUser: true,
    lastName: "Johnson",
    profilePic: "lib/images/user_profile_pics/user12",
  ),
  User(
    firstName: "Mkioko",
    isOnline: true,
    isProUser: false,
    lastName: "Jiuon",
    profilePic: "lib/images/user_profile_pics/user13",
  )
];
