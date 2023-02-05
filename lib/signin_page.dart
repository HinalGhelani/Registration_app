import 'package:flutter/material.dart';
import 'package:login_page/GlobalVar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: GlobalVar.signIn,
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
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: GlobalVar.sinName,
                        onChanged: (val) {
                          setState(() {
                            GlobalVar.sName = val;
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
                          hintText: "Username",
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
                        controller: GlobalVar.sinPassword,
                        onChanged: (val) {
                          setState(() {
                            GlobalVar.sPass = val;
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
                    if (GlobalVar.signIn.currentState!.validate()) {
                      GlobalVar.signIn.currentState!.save();

                      if (GlobalVar.password.text ==
                              GlobalVar.sinPassword.text) {

                        Navigator.of(context).pushNamed('homePage');
                      }
                      else{
                        Navigator.of(context).pushNamed('/');
                      }
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
                      "Sign In",
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
                          Navigator.of(context).pushNamed('/');
                        });
                      },
                      child: const Text(
                        " Sing up",
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 250),
              Container(
                margin: const EdgeInsets.only(left: 35),
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
              const SizedBox(height: 10),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 50,
                    color: Color(0xff237468),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "  back",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff237468),
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 80, bottom: 10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff237468),
                ),
                alignment: Alignment.center,
                child:  Text(
                  "Login as ${GlobalVar.sName}",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xffC1D797),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                      GlobalVar.username.clear();
                      GlobalVar.password.clear();
                      GlobalVar.sinName.clear();
                      GlobalVar.sinPassword.clear();
                      GlobalVar.name = '';
                      GlobalVar.pass = '';
                      GlobalVar.sName = '';
                      GlobalVar.sPass = '';
                    });
                  },
                  child: const Text(
                    " Delete account",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: Color(0xff237468),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
