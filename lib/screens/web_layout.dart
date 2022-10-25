import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const RadialGradient(
                      colors: [Colors.black12, Colors.black45],
                    ).createShader(bounds),
                    blendMode: BlendMode.darken,
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.99999,
                        height: MediaQuery.of(context).size.height * 0.99999,
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
                  Column(children: [
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
                                height: 150,
                                child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/5977/5977590.png"),
                              ),
                            ),
                          ),
                          MaterialButton(
                            color: const Color.fromARGB(255, 255, 17, 0),
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
                      padding: EdgeInsets.only(top: 120.0),
                      child: Text(
                        'Unlimited movies, TV \n shows, and more.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 55,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 450,
                            height: 55,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          Container(
                            color: const Color.fromARGB(255, 255, 17, 0),
                            width: 200,
                            height: 48,
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
                                  padding: EdgeInsets.only(left: 4.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
              Column(
                children: [
                  Divider(
                    thickness: 10,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 100,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Enjoy on your TV.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Watch on Smart TVs, Playstation, Xbox, \nChromecast, Apple TV, Blu-ray players, and \nmore.',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                        Container(
                          width: 500,
                          height: 400,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("tvSet.png"),
                            fit: BoxFit.cover,
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
                      vertical: 25.0,
                      horizontal: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 500,
                          height: 400,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("mobilePhone.jpg"),
                            fit: BoxFit.cover,
                          )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Download your shows to \nwatch offline.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Text(
                                'Save your favorites easily and always have \nsomething to watch.',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
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
                      vertical: 70,
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
                      vertical: 70,
                      horizontal: 100,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 500,
                            height: 400,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("kidsImage.png"),
                              fit: BoxFit.cover,
                            )),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('Create profiles for kids.',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 50)),
                              Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                    'Send kids on adventures with their favorite \ncharacters in a space made just for them—free \nwith your membership.',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                              )
                            ],
                          )
                        ]),
                  ),
                  Divider(
                    thickness: 10,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                      bottom: 30,
                    ),
                    child: Column(
                      children: [
                        const Text('Frequently Asked Questions',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 60,
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('What is Netflix?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 60,
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('How much does Netflix cost?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 60,
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('Where can I watch?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 60,
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('How do I cancel?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 60,
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('What can I watch on Netflix?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 60,
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('Is Netflix good for kids?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
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
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 430,
                                height: 55,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Email Address',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                              ),
                              // ignore: deprecated_member_use
                              Container(
                                color: const Color.fromARGB(255, 255, 17, 0),
                                width: 200,
                                height: 48,
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
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 90.0),
                    child: Divider(
                      thickness: 10,
                      color: Colors.grey[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 250,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('FAQ',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                child: Text('Investor Relations',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                              ),
                              Text('Privacy',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                child: Text('Speed Test',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Help Center',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0),
                                  child: Text('Jobs',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 12,
                                      )),
                                ),
                                Text('Cookie Preferences',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0),
                                  child: Text('Legal Notice',
                                      style: TextStyle(
                                        color: Colors.grey[800],
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
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                child: Text('Ways to watch',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                              ),
                              Text('Corporate information',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                child: Text('Only on Netflix',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Media Center',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0),
                                  child: Text('Terms of Use',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 12,
                                      )),
                                ),
                                Text('Contact Us',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          )
                        ]),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
