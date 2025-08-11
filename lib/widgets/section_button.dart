import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kali2025/controllers/navigation_controller.dart';
import 'package:kali2025/definitions/enums.dart';
import 'package:watch_it/watch_it.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({required this.page, super.key});
  final DisplayPage page;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => di.get<NavigationController>().setCurrentPage(page),
      child: Text(
        page.name,
        style: GoogleFonts.firaCode(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
