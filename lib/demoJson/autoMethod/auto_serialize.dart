import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_demo/demoJson/autoMethod/model/address.dart';
import 'package:json_demo/demoJson/autoMethod/model/person.dart';

class Autoserialize extends StatefulWidget {
  const Autoserialize({Key? key}) : super(key: key);

  @override
  State<Autoserialize> createState() => _AutoserializeState();
}

class _AutoserializeState extends State<Autoserialize> {

  Person person = Person("Mujjafar", 12, Address("Jaipur", "Rajastan"));
  String personJson='{"name":"Mujjafar","age":12 ,"address":{"city":"Jaipur","state":"Rajastan"}}';
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
              Map<String, dynamic> userMap =
              person.toJson();
              var json = jsonEncode(userMap);
              debugPrint(json.toString());
            },
            child: const Text(
              "Serialize",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Map<String,dynamic> decodedMap=jsonDecode(personJson);
              Person newPerson= Person.fromJson(decodedMap);
              debugPrint(newPerson.address.state.toString());

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
