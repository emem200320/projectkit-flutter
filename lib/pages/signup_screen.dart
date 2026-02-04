import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFF5F3E8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Logo
              const Text(
                'Project.Kit',
                style: TextStyle(
                  fontFamily: 'JockeyOne',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5B8FA3),
                ),
              ),

              const SizedBox(height: 90),

              // Title
              const Text(
                'Create Account  ',
                style: TextStyle(
                  fontFamily: 'JockeyOne',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5B8FA3),
                ),
              ),

              const SizedBox(height: 20),
              
              // Full Name
              _buildLabel('Full Name',),

              const SizedBox(height: 5),
              
              _buildTextField(),
              
              const SizedBox(height: 20),
              
              // Email
              _buildLabel('Email'),
              const SizedBox(height: 5),
              _buildTextField(),
              
              const SizedBox(height: 20),

              // Password
              _buildLabel('Password'),
              const SizedBox(height: 5),
              _buildTextField(isPassword: true),
              
              const SizedBox(height: 20),
              
              // Phone No
              _buildLabel('Phone No.'),
              const SizedBox(height: 5),
              _buildTextField(),
              
              const SizedBox(height: 40),

              // Sign Up Button
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    // Add sign up logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5B8FA3),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),

                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'JockeyOne',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            const SizedBox(height: 40),
            ]
          ),
        ),
      ),
    );
  }
}

Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'JockeyOne',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF5B8FA3),
      ),
    );
  }
  Widget _buildTextField({bool isPassword = false}) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF5B8FA3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        ),
      ),
    );
  }