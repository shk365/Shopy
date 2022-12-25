import 'package:flutter/material.dart';
import 'package:shopy/model/users.dart';
import 'package:shopy/nav_bar.dart';
import 'package:shopy/screens/home/homepage.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.users});

  final List<Users> users;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Shopy',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w900,
                        fontSize: 50),
                  )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: const TextField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text('Forgot Password',),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text('LOGIN'),
                    ),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar())),
                  )
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: SizedBox(
                height: 40,
              ),
            )
          ],
        ));
  }
}
