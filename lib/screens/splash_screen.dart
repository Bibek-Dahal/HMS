import 'package:flutter/material.dart';
import 'package:hms/screens/login.dart';
import 'package:hms/screens/my_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> isAuthenticated() async {
    print("is authenticated called");
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }

  @override
  initState() {
    print("initState Called");
    super.initState();
    isAuthenticated().then((value) {
      // Navigator.push<void>(
      //   context,
      //   MaterialPageRoute<void>(
      //     builder: (BuildContext context) => const LoginScreen(),
      //   ),
      // );
      if (value) {
        Navigator.pushAndRemoveUntil<void>(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => const LoginScreen()),
          ModalRoute.withName('/'),
        );
      }
    }).catchError((value) => Center(
          child: Text("Error"),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image(
        image: AssetImage('assets/images/HMS_logo.png'),
      ),
    ));
  }
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   Future<bool> isAuthenticated() async {
//     print("is authenticated called");
//     await Future.delayed(const Duration(seconds: 2));
//     return true;
//   }

  

  

//   @override
//   initState() {
//     print("initState Called");
//     super.initState();
//     isAuthenticated().then((value) {
//       Navigator.push<void>(
//         context,
//         MaterialPageRoute<void>(
//           builder: (BuildContext context) => const HomePage(),
//         ),
//       );
//       // if (value) {
//       //   Navigator.pushAndRemoveUntil<void>(
//       //     context,
//       //     MaterialPageRoute<void>(
//       //         builder: (BuildContext context) => const HomePage()),
//       //     ModalRoute.withName('/'),
//       //   );
//       // }
//     }).catchError((value) => Center(
//           child: Text("Error"),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//         body: Center(
//       child: Image(
//         image: AssetImage('assets/images/KU.jpg'),
//       ),
//     ));
//   }
// }
