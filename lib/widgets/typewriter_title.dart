import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class TypewriterTitle extends StatefulWidget {
  const TypewriterTitle({super.key});

  @override
  State<TypewriterTitle> createState() => _TypewriterTitleState();
}

class _TypewriterTitleState extends State<TypewriterTitle>
    with TickerProviderStateMixin {
  late AnimationController _cursorController;
  late Timer _typewriterTimer;

  String _displayText = '';
  int _currentPhase =
      0; // 0: typing kali.nyc, 1: backspacing, 2: typing software engineer, 3: backspacing
  int _currentIndex = 0;

  final List<String> _texts = ['kali.nyc', 'software engineer'];
  final int _typingSpeed = 120; // milliseconds
  final int _backspaceSpeed = 100; // milliseconds
  final int _pauseDuration = 2000; // milliseconds

  @override
  void initState() {
    super.initState();

    // Initialize cursor animation
    _cursorController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _cursorController.repeat(reverse: true);

    // Start the typewriter animation
    _startTypewriterAnimation();
  }

  void _startTypewriterAnimation() {
    _typewriterTimer = Timer.periodic(
      Duration(milliseconds: _typingSpeed),
      _handleTypewriterTick,
    );
  }

  void _handleTypewriterTick(Timer timer) {
    setState(() {
      switch (_currentPhase) {
        case 0: // Typing kali.nyc
          if (_currentIndex < _texts[0].length) {
            _displayText = _texts[0].substring(0, _currentIndex + 1);
            _currentIndex++;
          } else {
            // Pause before backspacing
            timer.cancel();
            Timer(Duration(milliseconds: _pauseDuration), () {
              _currentPhase = 1;
              _currentIndex = _displayText.length;
              _typewriterTimer = Timer.periodic(
                Duration(milliseconds: _backspaceSpeed),
                _handleTypewriterTick,
              );
            });
          }
          break;

        case 1: // Backspacing kali.nyc
          if (_currentIndex > 0) {
            _currentIndex--;
            _displayText = _texts[0].substring(0, _currentIndex);
          } else {
            // Start typing software engineer
            _currentPhase = 2;
            _currentIndex = 0;
            timer.cancel();
            _typewriterTimer = Timer.periodic(
              Duration(milliseconds: _typingSpeed),
              _handleTypewriterTick,
            );
          }
          break;

        case 2: // Typing software engineer
          if (_currentIndex < _texts[1].length) {
            _displayText = _texts[1].substring(0, _currentIndex + 1);
            _currentIndex++;
          } else {
            // Pause before backspacing
            timer.cancel();
            Timer(Duration(milliseconds: _pauseDuration), () {
              _currentPhase = 3;
              _currentIndex = _displayText.length;
              _typewriterTimer = Timer.periodic(
                Duration(milliseconds: _backspaceSpeed),
                _handleTypewriterTick,
              );
            });
          }
          break;

        case 3: // Backspacing software engineer
          if (_currentIndex > 0) {
            _currentIndex--;
            _displayText = _texts[1].substring(0, _currentIndex);
          } else {
            // Reset to start typing kali.nyc again
            _currentPhase = 0;
            _currentIndex = 0;
            timer.cancel();
            _typewriterTimer = Timer.periodic(
              Duration(milliseconds: _typingSpeed),
              _handleTypewriterTick,
            );
          }
          break;
      }
    });
  }

  @override
  void dispose() {
    _cursorController.dispose();
    _typewriterTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _displayText,
          style: GoogleFonts.firaCode(
            fontSize: 32,
            color: const Color.fromARGB(255, 30, 37, 41),
          ),
        ),
        AnimatedBuilder(
          animation: _cursorController,
          builder: (context, child) {
            return Container(
              width: 2,
              height: 24,
              margin: const EdgeInsets.only(left: 2),
              color: _cursorController.value > 0.5
                  ? Theme.of(context).textTheme.headlineLarge?.color ??
                        Colors.black
                  : Colors.transparent,
            );
          },
        ),
      ],
    );
  }
}
