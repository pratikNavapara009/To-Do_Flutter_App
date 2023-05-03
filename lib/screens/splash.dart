import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initialization() async {
    await Future.delayed(
      Duration(seconds: 18),
    );
    Navigator.of(context).pushReplacementNamed("/");
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment(-1, -1),
          end: Alignment(1, 1),
          colors: [
            Color(0xff0f0c29),
            Color(0xff24243e),
            Color(0xff302b63),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "TO-DO APP",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 45,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset("assets/images/splash1.gif"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Loading...",
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 1.5,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
