import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/martin_fowler.png'),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Martin Fowler',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 32,
            ),
            const ListTile(
              title: Text('Profession'),
              subtitle: Text('Software Engineer'),
              trailing: Icon(Icons.computer),
            ),
            const ListTile(
              title: Text('Skills'),
              subtitle: Text('Communication, Coding (Java, C#, GO)'),
            ),
            const ListTile(
              title: Text('Address'),
              subtitle: Text('130 FT. Saint road, California, US'),
              trailing: Icon(Icons.location_history),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Call'),
                      icon: const Icon(Icons.call),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Email'),
                      icon: const Icon(Icons.email),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            RichText(
              text: const TextSpan(
                text: '@copyright by ',
                children: [
                  TextSpan(
                    text: 'Martin Fowler',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
