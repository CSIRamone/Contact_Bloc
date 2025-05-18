import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(8.0),  
        child: Center(
          child: Wrap(
            children: [
              _ButtonCard(
                title: 'Example',
                onTap: () {
                  Navigator.of(context).pushNamed('/bloc/example');// Add your onTap functionality here
                },
              ),
              _ButtonCard(
                title: 'Contact',
                onTap: () {
                  Navigator.of(context).pushNamed('/bloc/example/contact');// Add your onTap functionality here
                },
              ),
              _ButtonCard(
                title: 'Example Freezed',
                onTap: () {
                  Navigator.of(context).pushNamed('/bloc/example/freezed');// Add your onTap functionality here
                },
              ),
              _ButtonCard(
                title: 'Contact Cubit',
                onTap: () {
                  Navigator.of(context).pushNamed('/bloc/example/cubit');// Add your onTap functionality here
                },
              ),
            ],
          ),
        ),),
      ),
    );
  }
}
class _ButtonCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _ButtonCard({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 150,
          height: 200,
          alignment: Alignment.center,
          child: Text(title),
        ),
      ),
    );
  }
}
  