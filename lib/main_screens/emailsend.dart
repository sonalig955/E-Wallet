import 'package:flutter/material.dart';

class Emailsend extends StatelessWidget {
  const Emailsend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const Scaffold(
          body: Center(
            child: Text(
              'Check Your Mail',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.10,
          left: size.width * 0.29,
          child: const CircleAvatar(
            radius: 100,
            backgroundColor: Colors.lightBlueAccent,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/forgot_pass.png'),
              radius: 90,
            ),
          ),
        ),
      ],
    );
  }
}
