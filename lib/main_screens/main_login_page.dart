import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:scratch_flutter/main_screens/home_screen.dart';
import 'menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        mainScreen: HomeScreen(drawerController),
        controller: drawerController,
        style: DrawerStyle.Style7,
        menuScreen: const MenuScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        backgroundColor: Colors.grey[300]!,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
