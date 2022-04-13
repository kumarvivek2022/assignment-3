import 'package:flutter/material.dart';
class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
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
          Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
            Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/image/image4.jpeg", width: size.width * 0.3,),

          ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset("assets/image/image2.jpeg", width: size.width * 0.2,),

              ),
               const Positioned(
                top: 80,

                child: Text('SIGNUP',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                  top: 160,
                  child: Image.asset('assets/image/signup.jpeg', width: size.width *0.8,)
              ),
          ]

          ),),

          Container(
                height: 130,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: 'name@mail.com',
                            prefixIcon: Icon(Icons.person),
                            suffixIcon: emailController.text.isEmpty
                                ?Container(height: 0,width: 0,)
                                :IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () => emailController.clear(),
                            ),
                            filled: true,
                            fillColor: Colors.purple.shade100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            )
                        ),
                      ),
                       const SizedBox(height: 10,),
                      TextField(
                        onChanged: (value) => setState(() => this.password = value),
                        onSubmitted: (value) => setState(() => this.password = value),
                        decoration: InputDecoration(
                            hintText: 'password',
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: isPasswordVisible
                                  ?const Icon(Icons.visibility_off)
                                  :const Icon(Icons.visibility),
                              onPressed: () =>
                                  setState(() => isPasswordVisible = !isPasswordVisible),
                            ),
                            filled: true,
                            fillColor: Colors.purple.shade100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            )
                        ),
                        obscureText: isPasswordVisible,
                      ),]),
             ),
    ]),
      ),
    );
  }
}
