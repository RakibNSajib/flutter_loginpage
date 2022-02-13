import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mailControler = TextEditingController();

  TextEditingController passwordControler = TextEditingController();

  bool isVisible = true;
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
          TextField(
            onChanged: (value) {
              setState(() {});
            },
            controller: mailControler,
            decoration: InputDecoration(
                isDense: true,
                prefixIcon: Icon(Icons.mail),
                suffixIcon: mailControler.text.isEmpty
                    ? null
                    : IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          mailControler.clear();
                          setState(() {});
                        }),
                // border: OutlineInputBorder(),
                hintText: 'abc@mail.com',
                label: Text('Email'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35))),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            onChanged: (value) {
              setState(() {});
            },
            obscureText: isVisible,
            controller: passwordControler,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: passwordControler.text.isEmpty
                  ? null
                  : GestureDetector(
                      onTap: () {
                        isVisible = !isVisible;
                        setState(() {});
                      },
                      child: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
              hintText: 'Enter your password',
              label: Text('Password'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            onPressed: () {
              print(mailControler.text);
              print(passwordControler.text);
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}



//jekono widget ke gesture dector or inkwell diye clickable banay