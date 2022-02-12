import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.network('https://picsum.photos/250?image=9'),
          Image.asset(
            'assets/images/gate.gif',
            height: 200,
            width: 200,
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'User Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              suffixIcon: Icon(Icons.clear),
              border: OutlineInputBorder(),
              hintText: 'abc@mail.com',
              label: Text('Email'),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
              hintText: 'Enter your password',
              label: Text('Password'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
