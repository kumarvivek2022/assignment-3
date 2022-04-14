import 'package:flutter/material.dart';
import 'package:auth_ui/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 270,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      width: 100,
                      height: 93,
                      child: Image.asset('assets/image/image4.jpeg')),
                  const Positioned(
                    top: 50,
                    left: 160,
                    child: Text(
                      "SIGNUP",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Positioned(
                      top: 75,
                      left: 90,
                      width: 200,
                      height: 183,
                      child: Image.asset('assets/image/signup.jpeg')),
                ],
              ),
            ),
            Container(
              height: 350,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: 'abc@xzymail.com',
                        prefixIcon: const Icon(Icons.person),
                        suffixIcon: emailController.text.isEmpty
                            ? const SizedBox(
                          height: 0,
                          width: 0,
                        )
                            : IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => emailController.clear(),
                        ),
                        filled: true,
                        fillColor: Colors.purple.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) => setState(() => this.password = value),
                    onSubmitted: (value) =>
                        setState(() => this.password = value),
                    decoration: InputDecoration(
                        hintText: 'password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: isPasswordVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () => setState(
                                  () => isPasswordVisible = !isPasswordVisible),
                        ),
                        filled: true,
                        fillColor: Colors.purple.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        )),
                    obscureText: isPasswordVisible,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("SIGNUP"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        fixedSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.black),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    child: const Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(color: Colors.purple, fontSize: 12)),
                      TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.purple))
                    ])),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin:
                            const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      const Text(
                        "OR",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(
                            margin:
                            const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.1),
                        child: Image.asset('assets/image/facebook.png',
                          height: 20, width: 20,),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.1),
                        child: Image.asset('assets/image/twitter.png',
                          height: 20, width: 20,),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.1),
                        child: Image.asset('assets/image/google.png',
                          height: 20, width: 20,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}