// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:liquid_swipe/liquid_swipe.dart';

class MainServices extends StatefulWidget {
  const MainServices({Key? key}) : super(key: key);

  @override
  _MainServicesState createState() => _MainServicesState();
}

class _MainServicesState extends State<MainServices> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: const Color(0xff3937bf),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/marketing1.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Book Your Movie Tickets',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "With only a few clicks, you can simply purchase or book your favorite movie tickets from anywhere and at any time, online ahead of time.",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlineButton(
                      borderSide: const BorderSide(color: Colors.white),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'MyTicketApp');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: const Color(0xff27b56f),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/marketing2.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Achive Your Goal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlineButton(
                      borderSide: const BorderSide(color: Colors.white),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: const Color(0xfff46d37),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/marketing3.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mobile Recharge',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Prepaid Mobile Recharge: Quick and easy online mobile recharge at MobiKwik. Enjoy free online prepaid recharge for Airtel, Jio, Vodafone, BSNL, MTNL, etc.",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlineButton(
                      borderSide: const BorderSide(color: Colors.white),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'MobileRecharge');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/Flight_tickets.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Book Your Flight Tickets',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Fly Qantas to Sydney & Melbourne with connections to over 60 destinations across Australia. Book with Confidence. Change your travel dates, fee-free. A fare difference may apply. Check Flight Status. Book A Trip. Good Service.",
                    style: TextStyle(color: Colors.indigo),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlineButton(
                      borderSide: const BorderSide(color: Colors.grey),
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'FlightSearchUI');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.amber,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/electricity_bill.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pay Your Electricity Bill',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Paying bills is now a seamless and quick process via online means. A user can easily make online electricity bill payment easily with MobiKwik App/ website.",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlineButton(
                      borderSide: const BorderSide(color: Colors.white),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'ElectricityPage');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableSlideIcon: true,
        positionSlideIcon: 0,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
