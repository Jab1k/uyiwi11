import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name;
  final String email;
  final String password;

  const Page2(
      {super.key,
      required this.name,
      required this.email,
      required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: SafeArea(
        child: Column(
          
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff2C2B2B),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              width: 500,
              height: 318,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.04),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Image.asset('asset/Rectangle.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 8),
                    child: Text(
                      email,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 100),
                            child: Text(
                              '778',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 89),
                            child: Text(
                              'Followes',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 100),
                            child: Text(
                              '273',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 89),
                            child: Text(
                              'Followes',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19, left: 28),
              child: Text('Public playlists'),
            )
          ],
        ),
      ),
    );
  }
}
