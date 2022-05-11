import 'package:flutter/material.dart';
import 'package:scratch_flutter/movie_tickets/const.dart';
import 'package:scratch_flutter/movie_tickets/screens/buy_ticket.dart';
import 'package:scratch_flutter/movie_tickets/screens/home_screen.dart';

import '../Q R CODE/qr_code_main_page.dart';


void main() => runApp(const MyTicketApp());

class MyTicketApp extends StatelessWidget {
  const MyTicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Movie Ticket app ',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MyHomePage(),
      routes: {
        'QrPage':(context) => QrPage(),
        'MyHomePage':(context) => MyHomePage(),
      },
    );
  }
}