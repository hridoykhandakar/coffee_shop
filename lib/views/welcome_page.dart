import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050505),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Image.asset(
                "assets/images/home_cover.png",
                fit: BoxFit.cover,
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(5, 5, 5, 0),
                      Color.fromRGBO(5, 5, 5, 1),
                    ],
                    stops: [0.0, 0.24],
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "Fall in Love with Coffee in Blissful Delight!",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffC67C4E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(16),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          minimumSize: Size(327, 56),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
