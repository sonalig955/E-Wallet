import 'package:flutter/material.dart';
import 'package:scratch_flutter/palatte.dart';

import 'package:scratch_flutter/widgets/background-image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unnecessary_new
  final TextEditingController emailController = new TextEditingController();
  // ignore: unnecessary_new
  final TextEditingController passwordController = new TextEditingController();

  //final _auth = FirebaseAuth.instance;

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    final emailFeild = TextFormField(
      autofocus: false,
      controller: emailController,
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
        emailController.text = value!;
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
      controller: passwordController,
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
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Password',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
          )),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            Navigator.pushNamed(context, 'MainLoginPage');
          }
        },
        child: const Text(
          'Login',
          textAlign: TextAlign.center,
          style: kBodyText,
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
          body: SingleChildScrollView(
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
                            const Text(
                              'E-Wallet',
                              style: kHeading,
                            ),
                            const SizedBox(
                              height: 90,
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            emailFeild,
                            const SizedBox(
                              height: 25,
                            ),
                            passwordFeild,
                            const SizedBox(
                              height: 35,
                            ),
                            loginButton,
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Don't have an account?",
                                      style: kBodyText,
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.pushNamed(
                                          context, 'CreateNewAccount'),
                                      child: Text(
                                        "Sign Up",
                                        style: kBodyText.copyWith(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 80.0),
                                  child: Text('Powered By Flutter',style: TextStyle(color:Colors.white),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  // login function

}
