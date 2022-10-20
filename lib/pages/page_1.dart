import 'package:flutter/material.dart';
import 'package:sms_ios_android/pages/natification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    NatificationWidget.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 200,
            height: 80,
            color: Colors.white,
            child: TextButton(
                onPressed: (() {
                  NatificationWidget.showNotification(
                    title: 'Topilov_1',
                    body: 'Assalomu alaykum',
                  );
                }),
                child: const Text(
                  '🇺🇿',
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                )),
          )),
        ],
      ),
    );
  }
}
