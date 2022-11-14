import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                // fit: StackFit.expand,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const RadialGradient(
                      colors: [Colors.black12, Colors.black45],
                    ).createShader(bounds),
                    blendMode: BlendMode.darken,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.95,
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
                            horizontal: 50.0,
                            vertical: 20,
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
                                    height: 130,
                                    child: Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/5977/5977590.png"),
                                  ),
                                ),
                              ),
                              MaterialButton(
                                height: 42,
                                color: const Color(0xFFFF1100),
                                onPressed: () {},
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Unlimited movies, TV \n shows, and more.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 55,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  'Watch anywhere. Cancel anytime.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              const Text(
                                'Ready to watch? Enter your email to create or restart your membership.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 420,
                                        child: TextField(
                                          cursorHeight: 40,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              vertical: 27.0,
                                              horizontal: 15,
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'Email Address',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 65,
                                        width: 220,
                                        color: const Color.fromARGB(
                                            255, 255, 17, 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Get Started',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.0),
                                              child: Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 10,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 30.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Enjoy on your TV.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    'Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 400,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("tvSet.png"),
                              fit: BoxFit.contain,
                            )),
                          ),
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
                      vertical: 30.0,
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 400,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("mobilePhone.jpg"),
                            fit: BoxFit.contain,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Download your shows to watch offline.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Save your favorites easily and always have something to watch.',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                      vertical: 30,
                      horizontal: 100,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Watch everywhere.',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                'Stream unlimited movies and TV shows \non your phone, tablet, laptop, and TV.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 10,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 30,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 400,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("kidsImage.png"),
                              fit: BoxFit.contain,
                            )),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text('Create profiles for kids.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Text(
                                      'Send kids on adventures with their favorite characters in a space made just for them—free with your membership.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      )),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Divider(
                    thickness: 10,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                    ),
                    child: Column(
                      children: [
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
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 25.0,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 420,
                                  child: TextField(
                                    cursorHeight: 40,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 27.0,
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
                                  height: 65,
                                  width: 220,
                                  color: const Color.fromARGB(255, 255, 17, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Get Started',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70.0),
                    child: Divider(
                      thickness: 10,
                      color: Colors.grey[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Questions? Contact Us',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('FAQ',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 12,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25.0),
                                      child: Text('Investor Relations',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                    ),
                                    Text('Privacy',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 12,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25.0),
                                      child: Text('Speed Test',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 110.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Help Center',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 25.0),
                                        child: Text('Jobs',
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 12,
                                            )),
                                      ),
                                      Text('Cookie Preferences',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 25.0),
                                        child: Text('Legal Notice',
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 12,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Account',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 12,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25.0),
                                      child: Text('Ways to watch',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                    ),
                                    Text('Corporate Information',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 12,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25.0),
                                      child: Text('Only on Netflix',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 110.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Media Center',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 25.0),
                                        child: Text('Terms of Use',
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 12,
                                            )),
                                      ),
                                      Text('Contact Us',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                          )),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        Text('Netflix Nigeria',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                            )),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
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
          width: MediaQuery.of(context).size.width * 0.60,
          height: 80,
          color: Colors.grey[800],
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 19.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
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
