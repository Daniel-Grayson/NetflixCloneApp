import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Stack(children: [
                ShaderMask(
                  shaderCallback: (bounds) => const RadialGradient(
                    colors: [Colors.black12, Colors.black45],
                  ).createShader(bounds),
                  blendMode: BlendMode.darken,
                  child: AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.99999,
                        height: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("backgroundImage1.jpg"),
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                Colors.black45,
                                BlendMode.darken,
                              )),
                        )),
                  ),
                ),
              ])
            ])));
  }
}
