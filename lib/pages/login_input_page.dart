import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({super.key});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  bool rememberMe = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5E8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),

                const Text(
                  'Reliable.Kit',
                  style: TextStyle(
                    fontFamily: 'JockeyOne',
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF5B8399),
                    letterSpacing: 0.5,
                  ),
                ),

                const SizedBox(height: 60),
                
                // Welcome Back
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontFamily: 'JockeyOne',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A6B7C),
                  ),
                ),

                const SizedBox(height: 8),
                
                // Subtitle
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    fontFamily: 'JockeyOne',
                    fontSize: 16,
                    color: Color(0xFF5B8399),
                  ),
                ),

                const SizedBox(height: 48),
                
                // Username Label
                const Text(
                  'Username',
                  style: TextStyle(
                    fontFamily: 'JockeyOne',
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF5B8399),
                    letterSpacing:(2)
                  ),
                ),

                const SizedBox(height: 12),
                
                // Username Input
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF5B8399),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: usernameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),

                 const SizedBox(height: 32),
                
                // Password Label
                const Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'JockeyOne',
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF5B8399),
                    letterSpacing:(2),
                  ),
                ),
                const SizedBox(height: 12),

                // Password Input
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF5B8399),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                // Remember me & Forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value ?? false;
                              });
                            },
                            activeColor: const Color(0xFF5B8399),
                            side: const BorderSide(
                              color: Color(0xFF5B8399),
                              width: 2,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                            fontFamily: 'JockeyOne',
                            fontSize: 14,
                            color: Color(0xFF5B8399),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password?',
                        style: TextStyle(
                          fontFamily: 'JockeyOne',
                          fontSize: 14,
                          color: Color(0xFF5B8399),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),
                
                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5B8399),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'JockeyOne',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Sign up link
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(
                        fontFamily: 'JockeyOne',
                        fontSize: 14,
                        color: Color(0xFF5B8399),
                      ),
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              // Navigate to sign up
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontFamily: 'JockeyOne',
                                fontSize: 14,
                                color: Color(0xFFD9946B),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    ); 
  }
        @override
        void dispose() {
          usernameController.dispose();
          passwordController.dispose();
          super.dispose();
        }
}


