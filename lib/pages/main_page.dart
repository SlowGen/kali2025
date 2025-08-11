import 'package:flutter/material.dart';
import 'package:kali2025/definitions/enums.dart';
import 'package:kali2025/widgets/section_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Wrap(
            spacing: 16,
            children: [
              SectionButton(page: DisplayPage.about),
              SectionButton(page: DisplayPage.projects),
            ],
          ),
          Wrap(
            spacing: 16,
            children: [
              SectionButton(page: DisplayPage.gallery),
              SectionButton(page: DisplayPage.contact),
            ],
          ),
        ],
      ),
    );
  }
}
