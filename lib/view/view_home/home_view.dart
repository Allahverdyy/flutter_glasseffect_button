import 'package:flutter/material.dart';
import 'package:flutter_glasseffect_button/constants/images_constants.dart';
import 'package:flutter_glasseffect_button/widgets/glass_effect_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    // Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(
    //       begin: Alignment.topCenter,
    //       end: Alignment.bottomCenter,
    //       colors: [
    //         Colors.blueAccent,
    //         Colors.white
    //       ]
    //     )
    //   ),
    //   child: const 
      
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
    // );
  }
}