import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(
                  "Test",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListTile(
                leading: const Icon(Icons.mail),
                title: Text(
                  "test@test.com",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: Text(
                  "+913215201452",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            const SizedBox(height: 50,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "LOGOUT",
                  )),
            )
          ],
        ),
      )),
    );
  }
}
