import 'package:flutter/material.dart';

class MyShop extends StatelessWidget {
  const MyShop({Key? key, required this.title, required this.cookie}) : super(key: key);
  final String title;
  final int cookie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
            child: Text(
                'Welcome to the shop! Cookie: $cookie',
                style: TextStyle(color: Colors.black.withOpacity(1), fontSize: 20)
            )
        )
    );
  }
}
