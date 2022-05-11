import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';


class MainHelpPage extends StatefulWidget {
  const MainHelpPage({Key? key}) : super(key: key);

  @override
  State<MainHelpPage> createState() => _MainHelpPageState();
}

class _MainHelpPageState extends State<MainHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: const Text('Frequently Asked Questions ?',
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(25.0),
              padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueAccent,),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)
                ),

              ),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Q1. Is there any service available for booking a movie tickets ?', style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    )
                    ),
                    TextSpan(text: '\n\n Ans. Yes, We have given a service option, you can reach there through this option.', style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    )
                    ),
                  ],
                ),
              )

            ),

            Container(
                margin: const EdgeInsets.all(25.0),
                padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueAccent,),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)
                  ),

                ),
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Q2. Can we edit our profile ?', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                      TextSpan(text: '\n\n Ans. Yes, you can edit your profile by clicking on your profile you will get navigated to other page and then you can edit your profile and save it.', style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                    ],
                  ),
                )

            ),

            Container(
                margin: const EdgeInsets.all(25.0),
                padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueAccent,),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)
                  ),

                ),
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Q3. Can we do a mobile recharge ?', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                      TextSpan(text: '\n\n Ans. Yes, you can do your as well as your friends mobile recharge.', style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                    ],
                  ),
                )

            ),

            Container(
                margin: const EdgeInsets.all(25.0),
                padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueAccent,),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)
                  ),

                ),
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Q4. Can we pay money to friends ?', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                      TextSpan(text: '\n\n Ans. No, but we are looking for this feature in our app so that you can pay your friends easily and securely', style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                    ],
                  ),
                )

            ),

            Container(
                margin: const EdgeInsets.all(25.0),
                padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueAccent,),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)
                  ),

                ),
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Q5. Who can use this app ?', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                      TextSpan(text: '\n\n Ans. Anyone can use this app only you need to have an account.', style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                    ],
                  ),
                )

            ),

            Container(
                margin: const EdgeInsets.all(25.0),
                padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueAccent,),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)
                  ),

                ),
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Q6. Can we edit our profile photo ?', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                      TextSpan(text: '\n\n Ans. Yes, you can change it but recently we are facing some backend problem we will sort out and reach you with smooth option.', style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                      ),
                    ],
                  ),
                )

            ),



          ],
        ),
      )
    );



  }
}
