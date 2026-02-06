import 'package:flutter/material.dart';
import 'package:projectkit/pages/login_input_page.dart';
import 'package:projectkit/pages/signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8E7),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Intern Kit',
                style: TextStyle(
                  fontFamily: 'JockeyOne',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5B7C8D),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                decoration: BoxDecoration(
                  color: Color(0xFFE8EAF0),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.contain,
                  height: 180,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Supp Bro!',
                  style: TextStyle(
                    fontFamily: 'JockeyOne',
                    letterSpacing: 0.1,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5A7C8C),
                    decorationColor: Color(0xFF5A7C8C),
                    decorationThickness: 2,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginInput(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6B8FA3),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'JockeyOne',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.01,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6B8FA3),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'JockeyOne',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.01,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Or Via social media',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8B9DAA),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Facebook
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF6B8FA3),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.facebook, 
                      color: Colors.white, 
                      size: 15),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 13),
                  // Google
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF6B8FA3),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                        size: 15,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 13),
                  // LinkedIn
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF6B8FA3),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.business, color: 
                      Colors.white, 
                      size: 15),
                      onPressed: () {},
                    ),
                    
                  ),

                ],
              ),
               SizedBox(height:20)
            ],
          ),
        ),
      ),
    );
  }
}
