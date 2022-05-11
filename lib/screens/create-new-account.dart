// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:scratch_flutter/palatte.dart';

import '../widgets/background-image.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unnecessary_new
  final firstNamedEditingController = new TextEditingController();
  // ignore: unnecessary_new
  final secondNamedEditingController = new TextEditingController();
  // ignore: unnecessary_new
  final emailEditingController = new TextEditingController();
  // ignore: unnecessary_new
  final passwordEditingController = new TextEditingController();
  // ignore: unnecessary_new
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameFeild = TextFormField(
      autofocus: false,
      controller: firstNamedEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your first name';
        }
        return null;
      },
      onSaved: (value) {
        firstNamedEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          hintText: 'First Name',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0))),
    );

    final secondNameFeild = TextFormField(
      autofocus: false,
      controller: secondNamedEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your second name';
        }
        return null;
      },
      onSaved: (value) {
        secondNamedEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          hintText: 'Second Name',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0))),
    );

    final emailFeild = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please Enter Your Email');
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@gmail+.com").hasMatch(value)) {
          return ('Please Enter a Valid Email');
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          hintText: 'Email',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0))),
    );

    final passwordFeild = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        // ignore: unnecessary_new
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          hintText: 'Password',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0))),
    );

    final confirmPasswordFeild = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        // ignore: unnecessary_new, unused_local_variable
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Confirm Password is required for login");
        }
        // ignore: avoid_print
        print(passwordEditingController.text);
        // ignore: avoid_print
        print(confirmPasswordEditingController.text);
        if (passwordEditingController.text !=
            confirmPasswordEditingController.text) {
          return ("Password does not match");
        }
      },
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          hintText: 'Confirm Password',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0))),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processing Data')),
            );
          }
        },
        child: const Text(
          'SignUp',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    const SizedBox(
      height: 80,
    );

    return Stack(
      children: [
        const BackgroundImage(
          image: 'assets/login.jpg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(36.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            firstNameFeild,
                            const SizedBox(
                              height: 20,
                            ),
                            secondNameFeild,
                            const SizedBox(height: 20),
                            emailFeild,
                            const SizedBox(height: 20),
                            passwordFeild,
                            const SizedBox(height: 20),
                            confirmPasswordFeild,
                            const SizedBox(height: 20),
                            signUpButton,
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an accont?',
                                  style: kBodyText,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/');
                                  },
                                  child: Text(
                                    'Login',
                                    style: kBodyText.copyWith(
                                        color: kBlue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        )
      ],
    );
  }
}
