// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scratch_flutter/palatte.dart';
import 'package:scratch_flutter/widgets/background-image.dart';
// ignore: unused_import
import 'package:scratch_flutter/widgets/rounded-button.dart';
import 'package:scratch_flutter/widgets/text-input.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/forgot_pass.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: const Text(
              'Forgot Password',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),

                    // ignore: sized_box_for_whitespace
                    Container(
                      width: size.width * 0.8,
                      child: const Text(
                        'Enter your email we will send instruction to reset your password',
                        style: kBodyText,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const TextInputFeild(
                        icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done),

                    const SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 115, vertical: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Send',
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'Emailsend');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
