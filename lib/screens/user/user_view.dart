import 'package:flutter/material.dart';
import 'package:shopy/model/users.dart';

class UserView extends StatelessWidget {
  const UserView({super.key, required this.user});

  final List<Users> user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 115,
                  width: 115,
                  child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      child: Icon(
                        Icons.person_rounded,
                        size: 80,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text('${user[9].name.firstname.toUpperCase()} ' ' ${user[9].name.lastname.toUpperCase()}',
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone_rounded,
                  color: Colors.indigo,
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(user[9].phone)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.email_rounded,
                  color: Colors.indigo,
                ),
                SizedBox(
                  width: 24,
                ),
                Text('yourname@mail.com')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.home_rounded,
                  color: Colors.indigo,
                ),
                SizedBox(
                  width: 24,
                ),
                Text(user[9].address.number.toString()),
                Text(', '),
                Text(user[9].address.street.toString())
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(user[9].address.city.toString()),
                const Text(', '),
                Text(user[9].address.zipcode.toString())
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(user[9].address.geolocation.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
