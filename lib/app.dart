import 'package:flutter/material.dart';

import 'widget/interests_container_widget.dart';
import 'widget/interests_divider_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {
        "type": "Urgent",
        "unit": "3 Units",
        "bloodGroup": "A+",
        "address": "123 Main St, Cityville",
      },
      {
        "type": "Normal",
        "unit": "2 Units",
        "bloodGroup": "B-",
        "address": "456 Elm St, Townsville",
      },
      {
        "type": "Urgent",
        "unit": "1 Unit",
        "bloodGroup": "O+",
        "address": "789 Oak St, Villageville",
      },
      {
        "type": "Normal",
        "unit": "4 Units",
        "bloodGroup": "AB-",
        "address": "321 Pine St, Hamletville",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Blood Request',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: InterestsContainerWidget(
                      type: contacts[index]['type']!,
                      unit: contacts[index]['unit']!,
                      bloodGroup: contacts[index]['bloodGroup']!,
                      address: contacts[index]['address']!,
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
