import 'package:flutter/material.dart';

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
                  height: MediaQuery.of(context).size.height * 0.80,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 20,
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
                            backgroundColor:
                                const Color.fromARGB(255, 255, 17, 0),
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
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Unlimited movies, TV shows, and more.',
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
                      'Watch anywhere. Cancel anytime.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: SizedBox(
                      width: 450,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: const TextField(
                          cursorHeight: 40,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFBAC1D0),
                                  width: 0.3,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.zero),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 15,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email address',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Container(
                      height: 37,
                      width: 130,
                      color: const Color(0xFFFF1100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.0),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Divider(
            thickness: 10,
            color: Colors.grey[800],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 30,
            ),
            child: Column(
              children: [
                const Text(
                  'Enjoy on your TV.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.',
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 30,
            ),
            child: Column(
              children: [
                const Text(
                  'Download your shows to watch offline.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Save your favorites easily and always have something to watch.',
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 30,
            ),
            child: Column(
              children: const [
                Text(
                  'Watch everywhere.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'unlimited movies and TV shows on your phone, tablet, laptop, and TV.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 30,
            ),
            child: Column(
              children: [
                const Text(
                  'Create profiles for kids.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Send kids on adventures with their favorite characters in a space made just for them—free with your membership.',
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
              ],
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
            padding: EdgeInsets.only(
              bottom: 40.0,
              top: 50,
            ),
            child: Text('Frequently Asked Questions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
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
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
                'Ready to watch? Enter your email to \ncreate or restart your membership.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: SizedBox(
              width: 330,
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
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Divider(
              thickness: 10,
              color: Colors.grey[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterText(
                  footer: 'Questions? Contact Us.',
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          FooterText(
                            footer: 'FAQ',
                          ),
                          FooterText(
                            footer: 'Account',
                          ),
                          FooterText(
                            footer: 'Investor Relations',
                          ),
                          FooterText(
                            footer: 'Ways to Watch',
                          ),
                          FooterText(
                            footer: 'Privacy',
                          ),
                          FooterText(
                            footer: 'Corporate Information',
                          ),
                          FooterText(
                            footer: 'Speed Test',
                          ),
                          FooterText(
                            footer: 'Only on Netflix',
                          ),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          FooterText(
                            footer: 'Help Center',
                          ),
                          FooterText(
                            footer: 'Media Center',
                          ),
                          FooterText(
                            footer: 'Jobs',
                          ),
                          FooterText(
                            footer: 'Terms of Use',
                          ),
                          FooterText(
                            footer: 'Cookie Preferences',
                          ),
                          FooterText(
                            footer: 'Contact Us',
                          ),
                          FooterText(
                            footer: 'Legal Notices',
                          ),
                        ]),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: FooterText(
                    footer: 'Netflix Nigeria',
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class FooterText extends StatelessWidget {
  const FooterText({
    Key? key,
    required this.footer,
  }) : super(key: key);
  final footer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10,
      ),
      child: Text(footer,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 12,
          )),
    );
  }
}

class FrequentlyAskedQuestions extends StatelessWidget {
  const FrequentlyAskedQuestions({
    Key? key,
    required this.label,
  }) : super(key: key);
  final label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.99999,
          height: 50,
          color: Colors.grey[800],
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                const Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          )),
    );
  }
}
