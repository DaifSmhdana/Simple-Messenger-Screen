import 'dart:ffi';

import 'package:flutter/material.dart';

class userModel {
  final int id;
  final String name;
  final String phone;

  userModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UserScreen extends StatelessWidget {
  List<userModel> users = [
    userModel(
      id: 1,
      name: "daif allah samhdana", 
      phone: "+972567661000"
    ),
    userModel(
      id: 2,
      name: "joe abo alrous", 
      phone: "+972567086704"
    ),
    userModel(
      id: 3,
      name: "karam Ashour", 
      phone: "+972597549907"
    ),
    userModel(
    
      id: 4,
      name: "Jamal abo Hashim", 
      phone: "+972592602001"
    ),
    userModel(
      id: 1,
      name: "daif allah samhdana", 
      phone: "+972567661000"
    ),
    userModel(
      id: 2,
      name: "joe abo alrous", 
      phone: "+972567086704"
    ),
    userModel(
      id: 3,
      name: "karam Ashour", 
      phone: "+972597549907"
    ),
    userModel(
      id: 1,
      name: "daif allah samhdana", 
      phone: "+972567661000"
    ),
    userModel(
      id: 2,
      name: "joe abo alrous", 
      phone: "+972567086704"
    ),
    userModel(
      id: 3,
      name: "karam Ashour", 
      phone: "+972597549907"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "USERS",
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 30.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(userModel users) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: Text(
                "${users.id}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${users.name}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "${users.phone}",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
