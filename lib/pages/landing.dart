import 'package:flutter/material.dart';
import 'package:kali2025/widgets/body.dart';
import 'package:kali2025/widgets/header.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Header(), Body()],
          ),
        ),
      ),
    );
  }
}
