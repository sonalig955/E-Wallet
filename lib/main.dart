import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratch_flutter/login.dart';
import 'package:scratch_flutter/movie_tickets/main_ticket_page.dart';
import 'package:scratch_flutter/screens/create-new-account.dart';
import 'package:scratch_flutter/screens/forgot-password.dart';
import 'package:scratch_flutter/servicespages/main_service.dart';

import 'Electricity Bill/electricity_main_page.dart';
import 'Help Page Folder/main_help_page.dart';
import 'Mobile Recharge/Sim Pages/airtel.dart';
import 'Mobile Recharge/Sim Pages/bsnlpage.dart';
import 'Mobile Recharge/Sim Pages/jio.dart';
import 'Mobile Recharge/Sim Pages/Vodafone.dart';
import 'Mobile Recharge/mobile_recharge.dart';

import 'Profile Folder/main_profile_page.dart';
import 'Q R CODE/qr_code_main_page.dart';
import 'main_screens/FlightTickets/flight_tickets_main.dart';
import 'main_screens/emailsend.dart';
import 'main_screens/home_screen.dart';
import 'main_screens/main_login_page.dart';
import 'movie_tickets/model.dart';
import 'movie_tickets/screens/buy_ticket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  get zoomDrawerController => null;
  get title => null;
  

  @override
  Widget build(BuildContext context) {
    var widget;
    return MaterialApp(
      title: 'Flutter LoginPage',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        'ForgotPassword': (context) => const ForgotPassword(),
        'CreateNewAccount': (context) => const CreateNewAccount(),
        'MainLoginPage': (context) => const MyLoginPage(title: 'abc',),
        'Emailsend': (context) => const Emailsend(),
        'MainServices': (context) => const MainServices(),
        'MobileRecharge': (context) => const MobileRecharge(),
        'MyTicketApp': (context) => const MyTicketApp(),
        'FlightSearchUI': (context) => FlightSearchUI(),
        'MainProfilePage': (context) => MainProfilePage(),
        'MainHelpPage' : (context) => const MainHelpPage(),
        'JioPage' : (context) => const JioPage(),
        'VodafonePage': (context) => const VodafonePage(),
        'AirtelPage': (context) => const AirtelPage(),
        'HomeScreen': (context) => HomeScreen(zoomDrawerController),
        'ElectricityPage':(context) => ElectricityPage(),
        'BsnlPage':(context) => BsnlPage(),
        'QrPage' : (context) => QrPage(),
        'BuyTicket':(context) =>BuyTicket(movies[widget.index].title),

      },
    );
  }
}
