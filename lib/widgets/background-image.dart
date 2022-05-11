// ignore: file_names
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => const LinearGradient(
            colors: [Colors.black, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
