import 'package:flutter/material.dart';
import 'package:kali2025/widgets/typewriter_title.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [TypewriterTitle()]);
  }
}
