import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController _usernameControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurepassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: AppBar(title: Text('Sign in'),),
      body: Center(
        child: SingleChildScrollView(    
          child: Padding(
            padding: const EdgeInsets.all(16),       
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _usernameControler,
                    decoration: InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordControler,
                    decoration: InputDecoration(
                      labelText: "kata Sandi",
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: Icon(
                          _obscurepassword ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obscurepassword,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text('Sign In'),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Belum Punya Akun? ',
                      style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Daftar di sini. ',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {},
                        )
                      ]
                    )
                  ),               
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}
