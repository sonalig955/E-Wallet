import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scratch_flutter/movie_tickets/main_ticket_page.dart';


class HomeScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final zoomDrawerController;

  // ignore: use_key_in_widget_constructors
  const HomeScreen(this.zoomDrawerController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Welcome To E-Wallet',style: TextStyle(color: Colors.black, ),),
        leading: InkWell(
          onTap: () => zoomDrawerController.toggle(),
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Center(
              child: Lottie.asset(
                  'assets/animations/101459-mobile-feature-overview.json'),
            ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, 'MainServices'),
                child: Text('Services',style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 30,
                ),),
              ),
            SizedBox(height: 30,),
            Column(
              children: [
                SingleChildScrollView(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, 'MyTicketApp'),
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                child: Icon(Icons.movie_filter_rounded,size: 60,color: Colors.deepOrangeAccent,),
                              ),
                            ),
                            Text("Movie ticket"),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, 'MobileRecharge'),
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                child: Icon(Icons.mobile_screen_share,size: 60,color: Colors.amber,),
                              ),
                            ),
                            Text("Recharge")
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, 'FlightSearchUI'),
                        child: Column(
                          children: [
                            Container(     //wrap kro isko  column se
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                child: Icon(Icons.airplane_ticket,size: 60,color: Colors.green,),
                              ),
                            ),
                            Text('Book Flight Tickets')
                          ],
                        ),
                      ),








                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, 'ElectricityPage'),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Icon(Icons.electrical_services,size: 60,color: Colors.blueAccent,),
                            ),
                          ),
                          Text('Electricity Bill')
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, 'QrPage'),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Icon(Icons.qr_code,size: 60,color: Colors.blueGrey,),
                            ),
                          ),
                          Text('QR code')
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Icon(Icons.more,size: 60,),
                          ),
                        ),
                        Text('More')
                      ],
                    ),
                  ],
                ),


              ],
            )
          ],
        )),
      ),
    );
  }
}
