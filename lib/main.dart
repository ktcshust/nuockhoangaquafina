import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'profile',
    ],
  );
  final storage = FlutterSecureStorage();

  Future<String> _loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final response = await http.get(
        Uri.parse('http://your-django-backend/auth/google/callback/?code=' +
            googleAuth.accessToken!),
      );
      if (response.statusCode == 200) {
        final token = response.body;
        await storage.write(key: 'token', value: token);
        return token;
      } else {
        throw Exception("Failed to login with Google");
      }
    } catch (error) {
      throw Exception("Failed to login with Google: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login with Google'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Login with Google'),
            onPressed: () async {
              final token = await _loginWithGoogle();
              print('Token: $token');
              // TODO: Xử lý token
            },
          ),
        ),
      ),
    );
  }
}

