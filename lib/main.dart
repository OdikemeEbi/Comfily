import 'package:comfily/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pic01.png"))),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.blue,
            // child: Center(
            //   child: Container(
            //     width: 40,
            //     height: 40,
            //     child: const CircularProgressIndicator(
            //       color: Colors.white,
            //       backgroundColor: Colors.amber,
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
