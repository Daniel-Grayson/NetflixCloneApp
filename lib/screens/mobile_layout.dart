import 'package:flutter/material.dart';

import 'web_layout.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Stack(children: [
            ShaderMask(
              shaderCallback: (bounds) => const RadialGradient(
                colors: [Colors.black12, Colors.black45],
              ).createShader(bounds),
              blendMode: BlendMode.darken,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("backgroundImage1.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black45,
                          BlendMode.darken,
                        )),
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRect(
                        child: Align(
                          widthFactor: 1,
                          heightFactor: 0.5,
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 90,
                            child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/5977/5977590.png"),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 17, 0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Unlimited movies, TV shows, and \nmore.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Watch anywhere. Cancel anytime.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Ready to watch? Enter your email to \ncreate or restart your membership.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: SizedBox(
                    width: 420,
                    child: TextField(
                      // cursorHeight: 40,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 15,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  width: 150,
                  color: const Color.fromARGB(255, 255, 17, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
          Divider(
            thickness: 10,
            color: Colors.grey[800],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              'Enjoy on your TV.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Watch on Smart TVs, Playstation, Xbox, Chromecast, \nApple TV, Blu-ray players, and more.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: 450,
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("tvSet.png"),
              fit: BoxFit.contain,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              'Download your shows to watch \noffline.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Save your favorites easily and always have something \nto watch.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: 470,
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("mobilePhone.jpg"),
              fit: BoxFit.contain,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              'Watch everywhere.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'unlimited movies and TV shows on your \nphone, tablet, laptop, and TV.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              'Create profiles for kids.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Send kids on adventures with their favorite \ncharacters in a space made just for them—free with \nyour membership.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("kidsImage.png"),
              fit: BoxFit.contain,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 40.0),
            child: Text('Frequently Asked Questions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const FrequentlyAskedQuestions(
            label: 'What is Netflix?',
          ),
          const FrequentlyAskedQuestions(
            label: 'How much does Netflix cost?',
          ),
          const FrequentlyAskedQuestions(
            label: 'Where can I watch?',
          ),
          const FrequentlyAskedQuestions(
            label: 'How do I cancel?',
          ),
          const FrequentlyAskedQuestions(
            label: 'What can I watch on Netflix',
          ),
          const FrequentlyAskedQuestions(
            label: 'Is Netflix good for Kids?',
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
                'Ready to watch? Enter your email to create or restart your membership.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
          ),
          SizedBox(
            width: 420,
            child: TextField(
              // cursorHeight: 40,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 15,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Container(
            height: 45,
            width: 150,
            color: const Color.fromARGB(255, 255, 17, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.0),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
