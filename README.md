# flutter_glasseffect_button

In Flutter, a glass button was designed by giving a click feature inside the glass container.

## GLASS EFFECT BUTTON 
<img src="https://github.com/Allahverdyy/flutter_glasseffect_button/blob/main/assets/images/png/glass.png" width="300" height="600" />

# Features
-Glass button effect

# Technologies Used

- Flutter
- Dart

# Usaged
To use the GlassEffectButton, you can follow the steps below:

1. Here is the code for the GlassEffectButton. If you want to customize it, you can review the code

```
import 'dart:ui';

import 'package:flutter/material.dart';

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
                    border: Border.all(color: Colors.white.withOpacity(0.13)),
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.white.withOpacity(0.5)
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

```
2.The code you need to run if you want to get the image and colors:
-image:
```
const String flutterbg = 'assets/images/png/flutter_bg.png';
```
-colors:
```
import 'package:flutter/material.dart';

Color whiteteam1 = Colors.white.withOpacity(0.5) ;
Color whiteteam2 = Colors.white.withOpacity(0.15);
Color whiteteam3 = Colors.white.withOpacity(0.13);

```
3.Here is the code for the HomeView Page. If you want to customize it, you can review the code.

```
import 'package:flutter/material.dart';
import 'package:flutter_glasseffect_button/constants/images_constants.dart';
import 'package:flutter_glasseffect_button/widgets/glass_effect_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(flutterbg) , fit: BoxFit.cover)
          ),
          child: const Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 400,
                ),
                GlassEffectButton(
                  text: 'FLUTTER',
                ),
                SizedBox(
                  height: 20,
                ),
                GlassEffectButton(
                  text: 'EXAMPLE',
                )
              ],
            ),
          ),
        ),
      );
  }
}
```

This project includes a sample button for educational purposes that demonstrates the glass effect.


|Name          | Version |  
|--------------|---------|
| Flutter      | 3.13.0  |
| Dart         | 3.1.0   |


## Contributors 💻🖱️

Creators of the Flutter Glass Effect Button

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<p align="center">
<td align="center"><br/></a><br /><a href="https://github.com/allahverdyy" title="Code">Abdulsamed Tanriverdi</a></td>
</p>
