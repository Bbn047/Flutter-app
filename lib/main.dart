import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'create_page.dart';
import 'forgot_page.dart';
import 'home_page.dart';

void main() => runApp(VoiceVisionApp());

class VoiceVisionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        '/': (context) => VoiceVisionHome(),
        '/login': (context) => LoginPage(), //login page
        '/create': (context) => CreatePage(), // create page
        '/forgot': (context) => ForgotPage(),// forgot page
        '/home': (context) => HomePage(), //homepage
      },
    );
  }
}

class VoiceVisionHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ✅ Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pic1.png'),
              fit: BoxFit.cover,
              alignment: Alignment(0.2, 0),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(
                  0.8,
                ), // 0.0 = no darkening, 1.0 = fully black
                BlendMode.darken,
              ),
            ),
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),

                Spacer(),

                // ✅ Center logo and text
                Column(
                  children: [
                    Image.asset('assets/images/app logo.png', height: 80),
                    SizedBox(height: 25),
                    Text(
                      'Voice Vision',
                      style: GoogleFonts.leckerliOne(
                        // optional
                        fontSize: 26,
                        letterSpacing: 8,
                        color: Colors.greenAccent,
                      ),
                    ),
                    SizedBox(height: 100),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 25, 141, 219).withOpacity(1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                      ),
                      child: Text(
                        'Get  Started',
                        style:  GoogleFonts.lemon(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 1,
          
                        ),
                      ),
                    ),
                  ],
                ),

                Spacer(),

                // ✅ Footer
                Column(
                  children: [
                    Image.asset('assets/images/authorlogo.png', height: 40),
                    SizedBox(height: 8),
                    Text(
                      '@ ciyagozz',
                      style: TextStyle(
                        color: const Color.fromARGB(238, 245, 242, 242),
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
