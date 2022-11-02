// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:outshade/pages/signin.dart';
import 'package:outshade/data/userData.dart';

class userList extends StatefulWidget {
  const userList({Key? key}) : super(key: key);

  @override
  State<userList> createState() => _userListState();
}

class _userListState extends State<userList> {
  @override
  Widget build(BuildContext context) {
    // var a = 4;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: Text('${userData.a}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Signin(
                            eid: '${userData.a}',
                            etype: 'permanent',
                          ))));
            },
          ),
          const Divider(
            height: 5.0,
          ),
          // const SizedBox(
          //   height: 20.0,
          // ),
        ],
      )),
    );
  }
}
