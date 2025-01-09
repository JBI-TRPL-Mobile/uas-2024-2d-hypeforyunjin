import 'package:flutter/material.dart';
import 'package:template_project/components/drawer_component.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60), // Spasi untuk header
              // Header
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'halo selamat datang di ujian praktikum mobile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 32),

              // Input Nama
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),

              // Input Email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  hintText: 'email',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),

              // Input Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 16),

              // Input Konfirmasi Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 32),

              // Tombol Sign Up
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
                  child: const Text('Sign up'),
                ),
              ),
              const SizedBox(height: 16),

              // Atau Masuk dengan
              const Text(
                'or sign in with',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Tombol Google dan Facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // TODO: Tambahkan logika untuk Google
                    },
                    icon: const Icon(Icons.g_mobiledata, size: 40),
                  ),
                  const SizedBox(width: 24),
                  IconButton(
                    onPressed: () {
                      // TODO: Tambahkan logika untuk Facebook
                    },
                    icon: const Icon(Icons.facebook, size: 40, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Sudah punya akun? Sign In
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); 
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: const Text(
                      'Sign in Now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
