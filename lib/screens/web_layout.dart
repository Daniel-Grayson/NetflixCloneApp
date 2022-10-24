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
                  Container(
                      width: MediaQuery.of(context).size.width * 0.99999,
                      height: MediaQuery.of(context).size.height * 0.99999,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("backgroundImage.jpg"),
                              fit: BoxFit.cover))),
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
                      padding: EdgeInsets.only(top: 150.0),
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
                      padding: EdgeInsets.symmetric(vertical: 25.0),
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
                                    fontSize: 60,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Watch on Smart TVs, Playstation, Xbox, \nChromecast, Apple TV, Blu-ray players, and \nmore.',
                                  style: TextStyle(
                                    fontSize: 30,
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
                      vertical: 30.0,
                      horizontal: 100,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                  Text(
                                      'Download your shows to \nwatch offline.',
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
                              )
                            ]),
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
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.,
                  //   children: [],)
                ],
              )
            ],
          ),
        ));
  }
}
