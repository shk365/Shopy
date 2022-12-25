import 'package:flutter/material.dart';
import 'package:shopy/model/users.dart';
import 'package:http/http.dart' as http;
import 'package:shopy/screens/login/login_view.dart';

class Login extends StatelessWidget {
  Login({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Users>>(
        future: fetchProducts(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return LoginView(users: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      
    );
  }
}
