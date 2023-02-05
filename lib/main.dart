import 'package:flutter/material.dart';
import 'package:login_page/GlobalVar.dart';
import 'package:login_page/signin_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registration Page",
      routes: {
        '/': (context) => const MyApp(),
        'signIn': (context) => const SignInPage(),
        'homePage': (context) => const HomePage(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xffC3D597),
              Color(0xff3DB2A9),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: GlobalVar.signUp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color(0xff237468),
                    shape: BoxShape.circle,
                  ),
                  alignment: const Alignment(0.5, 0),
                  child: Image(
                    image: Image.asset(
                      "assets/images/arrow1.png",
                      color: const Color(0xffC3D597),
                    ).image,
                    height: 90,
                    color: const Color(0xffC3D597),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      "Create",
                      style: TextStyle(
                          fontSize: 50,
                          color: Color(0xff237468),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff237468),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: GlobalVar.username,
                        onChanged: (val) {
                          setState(() {
                            GlobalVar.name = val;
                          });
                        },
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "please enter this";
                          }
                          return null;
                        },
                        style: const TextStyle(
                          color: Color(0xff237468),
                        ),
                        decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Color(0xff237468),
                          ),
                          fillColor: Colors.pink,
                          suffixIcon: Icon(
                            Icons.mail,
                            color: Color(0xff237468),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: GlobalVar.password,
                        onChanged: (val) {
                          setState(() {
                            GlobalVar.pass = val;
                          });
                        },
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "please enter this";
                          }
                          return null;
                        },
                        style: const TextStyle(
                          color: Color(0xff237468),
                        ),
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                            color: Color(0xff237468),
                          ),
                          hintText: "Password",
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff237468),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (GlobalVar.signUp.currentState!.validate()) {
                      GlobalVar.signUp.currentState!.save();

                      Navigator.of(context).pushNamed('signIn');
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff237468),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffC1D797),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1D403B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed('signIn');
                        });
                      },
                      child: const Text(
                        " Sing in",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Color(0xff237468),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
