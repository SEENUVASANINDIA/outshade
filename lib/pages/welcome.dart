import 'package:flutter/material.dart';
import 'package:outshade/pages/list_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}





class WelcomePage extends StatelessWidget {
 const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text('Welcome'),
  centerTitle: true,
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [ 
      const SizedBox(height: 20.0),
            const Text('get started'),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const userList()));
                },
                child: const Text('click me')),
    ],
  ),
),


    );
  }
}
