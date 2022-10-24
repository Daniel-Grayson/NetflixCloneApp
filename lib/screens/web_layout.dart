import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.99,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/backgroundImage.jpeg"),
                        fit: BoxFit.cover))),
            SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('NETFLIX',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 17, 0),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
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
                )
              ]),
            ),
          ],
        ));
  }
}
