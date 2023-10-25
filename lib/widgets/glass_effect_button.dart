import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glasseffect_button/constants/colors_constants.dart';

class GlassEffectButton extends StatelessWidget {
  final String text;
  const GlassEffectButton({
    super.key,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 4 / 5,
        height: MediaQuery.sizeOf(context).height / 6,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: whiteteam3),
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      whiteteam2,
                      whiteteam1
                    ])),
                child: Center(
                    child: Text(
                  text,
                  style: const TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
