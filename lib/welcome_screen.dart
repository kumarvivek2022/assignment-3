

import 'package:auth_ui/login_screen.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget> [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset("assets/image/image1.jpeg", width: size.width * 0.3,),

              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset("assets/image/image2.jpeg", width: size.width * 0.2,),

              ),
              const Positioned(
                top: 100,

                  child: Text('WELCOME TO EDU',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
              ),
              Positioned(
                top: 160,
                  child: Image.asset('assets/image/welcome.jpeg', width: size.width *0.8,)
              ),
              Positioned(
                bottom: 220,
                height: 50,
                width: 300,
                child: ElevatedButton(
                child: const Text('LOGIN'),
                style:  ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20),
                 ),
                  primary: Colors.deepPurpleAccent,
                  onPrimary: Colors.white,
                ),
                  onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
              ),
              ),
              Positioned(
                bottom: 150,
                height: 50,
                width: 300,

                child: ElevatedButton(
                  child: const Text('SIGNUP'),
                  style:  ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Colors.white70,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {},
                ),

              )
            ],

          ),

        ),



    ),
    );
  }
}
