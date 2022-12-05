import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 27, right: 90),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 0.03)),
                        child: Center(child: const Icon(Icons.arrow_back_ios)),
                      ),
                    ),
                    Image.asset('asset/vector.png')
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'If you need any support ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Click Here',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                child: TextFormField(
                    controller: name,
                    decoration: const InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38)),
                      focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      disabledBorder: OutlineInputBorder(),
                      focusedErrorBorder: OutlineInputBorder(),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      hintText: 'Enter email',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38)),
                      focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      disabledBorder: OutlineInputBorder(),
                      focusedErrorBorder: OutlineInputBorder(),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                child: TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38)),
                      focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      disabledBorder: OutlineInputBorder(),
                      focusedErrorBorder: OutlineInputBorder(),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 33, horizontal: 29),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Page2(
                          name: name.text,
                          email: email.text,
                          password: password.text,
                        );
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    height: 80,
                    child: Center(
                      child: Text(
                        'creat account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.white,
                      height: 4,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.white,
                      height: 4,
                    )),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 50, left: 150),
                    child: Image.asset('asset/group.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 47,
                      right: 50,
                    ),
                    child: Image.asset('asset/Vector (1).png'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Do you have an account? ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
