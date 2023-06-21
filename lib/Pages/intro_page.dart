import 'package:converse_in/Pages/home.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'lib/assets/Converse-logo.png',
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Chuck Taylors",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "because you wear them. we don't know where you'll go, but we know you'll take Converse to the future with you.",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Center(
                      child: Text(
                        'Shop now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
