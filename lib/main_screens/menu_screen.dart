import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF464dfe),
      body: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage('assets/avatar3.png'),
                        maxRadius: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Sonali Gupta',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.home, color: Colors.white),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'MainServices'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.electrical_services_rounded,
                          color: Colors.white),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Services',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'MainProfilePage'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.girl, color: Colors.white),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'MainHelpPage'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Row(
                    children: const [
                      Icon(Icons.help, color: Colors.white),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.exit_to_app, color: Colors.white),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Logout',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
