// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:scratch_flutter/movie_tickets/components/background_gradient_image.dart';
import 'package:scratch_flutter/movie_tickets/components/dark_borderless_button.dart';
import 'package:scratch_flutter/movie_tickets/components/movie_app_bar.dart';
import 'package:scratch_flutter/movie_tickets/components/movie_card.dart';
import 'package:scratch_flutter/movie_tickets/components/primary_rounder_button.dart';
import 'package:scratch_flutter/movie_tickets/components/red_rounded_action_button.dart';
import 'package:scratch_flutter/movie_tickets/const.dart';
import 'package:scratch_flutter/movie_tickets/model.dart';
import 'package:scratch_flutter/movie_tickets/screens/buy_ticket.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  int index = 1;

  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final String backgroundImage = movies[widget.index].imageURL;
    final String age = movies[widget.index].age;
    final String rating = movies[widget.index].rating.toString();
    final String year = movies[widget.index].date.year.toString();
    final String categories = movies[widget.index].categorires;
    final String technology = movies[widget.index].technology;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundGradientImage(
            image: Image.network(
              backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(10.0)),
                const MovieAppBar(),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                const Text(
                  'NEW.MOVIE',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(movies[widget.index].logo),
                const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: const Text("Popular with Friends"),
                      color: Colors.black.withOpacity(0.05),
                    ),
                    DarkBorderlessButton(
                      text: age,
                      callback: () {},
                    ),
                    PrimaryRoundedButton(
                      text: rating,
                      callback: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 28.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          year,
                          style: kSmallMainTextStyle,
                        ),
                        Text('•', style: kPromaryColorTextStyle),
                        Text(
                          categories,
                          style: kSmallMainTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('•', style: kPromaryColorTextStyle),
                        Text(technology, style: kSmallMainTextStyle),
                      ],
                    ),
                  ),
                ),
                Image.asset('assets/images/divider.png'),
                RedRoundedActionButton(
                    text: 'BUY TICKET',
                    callback: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BuyTicket(movies[widget.index].title),
                        ),
                      );
                    }),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return MovieCard(
                              title: movies[index].title,
                              imageLink: movies[index].imageURL,
                              active: index == widget.index ? true : false,
                              callBack: () {
                                setState(() {
                                  widget.index = index;
                                });
                              });
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
