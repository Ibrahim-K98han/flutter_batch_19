import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('My Profile'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        ],
      ),
      body: Container(
        color: Colors.lightGreen.withValues(alpha: 0.5),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.4,
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipOval(
              child: Image.network(
                'https://t3.ftcdn.net/jpg/06/19/40/62/360_F_619406204_iFaak6Ik8k9Iee8WHPeRBzZoktwT2RWD.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ice cream is very delicious right?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr8eaZDtAhweMJCr4OuouTY3C-pnUfrzIWV0PxPbrXDUFpLQWXh3PGb3w&s=10',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Programming is not boring if you love it.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
