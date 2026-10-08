import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {
        "name": "Rahim Ahmed",
        "phone": "+8801712345678",
        "email": "rahim@gmail.com",
      },
      {
        "name": "Karim Hasan",
        "phone": "+8801812345678",
        "email": "karim@gmail.com",
      },
      {
        "name": "Sakib Khan",
        "phone": "+8801912345678",
        "email": "sakib@gmail.com",
      },
      {
        "name": "Nusrat Jahan",
        "phone": "+8801612345678",
        "email": "nusrat@gmail.com",
      },
      {
        "name": "Tanjim Rahman",
        "phone": "+8801512345678",
        "email": "tanjim@gmail.com",
      },
      {
        "name": "Sumaiya Akter",
        "phone": "+8801312345678",
        "email": "sumaiya@gmail.com",
      },
      {
        "name": "Fahim Chowdhury",
        "phone": "+8801412345678",
        "email": "fahim@gmail.com",
      },
      {
        "name": "Mehedi Hasan",
        "phone": "+8801711223344",
        "email": "mehedi@gmail.com",
      },
      {
        "name": "Jannatul Ferdous",
        "phone": "+8801811223344",
        "email": "jannatul@gmail.com",
      },
      {
        "name": "Arif Hossain",
        "phone": "+8801911223344",
        "email": "arif@gmail.com",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Contact List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                fixedSize: Size(MediaQuery.of(context).size.width - 30, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {},
              child: const Text('Add', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 15.0),

            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        title: Text(
                          contacts[index]['name']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        subtitle: Text(
                          contacts[index]['phone']!,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.call, color: Colors.blue),
                          onPressed: () {
                            // Handle call action
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
