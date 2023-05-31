import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_demo/demoJson/manualMethod/model/user.dart';

class ManualSerialize extends StatefulWidget {
  const ManualSerialize({Key? key}) : super(key: key);

  @override
  State<ManualSerialize> createState() => _ManualSerializeState();
}

class _ManualSerializeState extends State<ManualSerialize> {
  User user = User("Mujjafar", "Momin", "123");
  String userJson = '{"firstName":"Mujjafar","lastName":"Momin","phone":"123"}';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Map<String, dynamic> userMap = user.toJson();
              var json = jsonEncode(userMap);
              debugPrint(json.toString());
            },
            child: const Text(
              "Serialize",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 20,),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Map<String,dynamic> decodedMap=jsonDecode(userJson);
              User newUser= User.fromJson(decodedMap);
              debugPrint(newUser.firstName.toString());
            },
            child: const Text(
              "Deserialize",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
