// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:outshade/pages/userdetail.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Signin extends StatefulWidget {
  Signin({super.key, required this.eid, required this.etype});

  var eid;
  var etype;
  @override
  State<Signin> createState() => _SigninState();
}

TextEditingController _age = TextEditingController();
TextEditingController _gender = TextEditingController();

class _SigninState extends State<Signin> {
  @override
  // _SigninState();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign in page'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    const Text(
                      "WELCOME",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 8.0),
                            child: const Text(
                              "sign in page",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          TextField(
                              controller: _age,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_outline,
                                  size: 20,
                                ),
                                hintText: 'Age',
                                contentPadding:
                                    EdgeInsets.only(bottom: 8.0, top: 8.0),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              )),
                          TextField(
                              controller: _gender,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_outline,
                                  size: 20,
                                ),
                                hintText: 'Gender',
                                contentPadding:
                                    EdgeInsets.only(bottom: 8.0, top: 8.0),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(10)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xffF3AB0D)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )),
                              ),
                              onPressed: _signin,
                              child: Text(
                                "SIGNUP".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
            ),
          ),
        ));
  }

  Future<void> _signin() async {
    if (_age.text.isNotEmpty && _gender.text.isNotEmpty) {
      // setState(() {
      //   isLoading = true;
      // });

      SharedPreferences prefs = await SharedPreferences.getInstance();
      Future.delayed(const Duration(seconds: 1), () {
        // prefs.setBool('user', true);
        prefs.setString('Age', _age.text.toString());
        prefs.setString('Gender', _gender.text.toString());

        // late String? sample = prefs.getString('username');
        // print(sample);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const UserDetail()));
      });
    }
  }
}
