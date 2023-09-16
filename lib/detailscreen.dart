import 'package:flutter/material.dart';
import 'model.dart'; //import model.dart

/// Detail Screen don't have main function

class detailscreen extends StatelessWidget {
  final User userlist; //Declare new Obj From class User
  detailscreen({super.key, required this.userlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("${userlist.image}"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
