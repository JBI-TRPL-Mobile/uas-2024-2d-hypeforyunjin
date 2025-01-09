import 'package:flutter/material.dart';
import 'package:template_project/components/drawer_component.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'halo selamat datang di ujian praktikum mobile',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 32),

                const Text('Enter Email'),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: 'email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                const Text('Password'),
                const SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility),
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DrawerComponent(),));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Sign In'),
                  ),
                ),
                
                const SizedBox(height: 16),

                const Center(child: Text('or sign in with')),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata, size: 40),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(Icons.facebook, size: 40, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                      Navigator.pop(context); 
                      Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        'Sign Up Now',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
