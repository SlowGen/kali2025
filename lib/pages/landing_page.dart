import 'package:flutter/material.dart';
import 'package:kali2025/widgets/body.dart';
import 'package:kali2025/widgets/header.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        // this has to stay center to have the image
        // fill the whole screen
        child: Center(
          child: Column(
            children: [Header(), Body()],
          ),
        ),
      ),
    );
  }
}
