import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPage extends StatelessWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Padding(
          padding: const EdgeInsets.only(top: 220,left: 70),
          child: Column(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: QrImage(data: 'data',
                              version: QrVersions.auto,
                              size: 220.0,


                            ),
                          ),
                          Text('Scan my QR code to pay'),

                        ],


                      ),
                      Text('Sonali Gupta',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)

                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('+91 1234567890')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
