import 'package:flutter/material.dart';

import 'widget/interests_container_widget.dart';
import 'widget/interests_divider_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {
        "image":
            "https://www.internationalinsurance.com/wp-content/uploads/2021/08/travel-lessons.jpg",
        "title": "Travel",
        "subTitle": "Explore the world and discover new places",
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTethWk8lF4T57OuXV5J_IPtbdO0kGffq3bzfnSwvK1JQ&s=10",
        "title": "Photography",
        "subTitle": "Capture moments that last a lifetime",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            ///Profile Card
            Container(
              width: double.infinity,
              height: 365,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  ClipOval(
                    child: Image.network(
                      'https://img.magnific.com/free-photo/handsome-bearded-guy-posing-against-white-wall_273609-20597.jpg?semt=ais_hybrid&w=740&q=80',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Text('Flutter Developer', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10.0),
                  Text(
                    'Passionate about creating user-friendly and engaging digital experiences',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    thickness: 1.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Colors.black),
                        SizedBox(width: 5.0),
                        Text(
                          'john.doe@example.com',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: Colors.black),
                        SizedBox(width: 5.0),
                        Text(
                          '+1 (555) 123-4567',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFFE0E0E0),
                            width: 1.0,
                          ),
                          // Rounds off the edges
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'Message',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 15.0),

            /// Interests Section Start
            const InterestsDividerWidget(),

            const SizedBox(height: 10.0),
            Expanded(
              child: GridView.builder(
                itemCount: contacts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return InterestsContainerWidget(
                    image: contacts[index]['image']!,
                    title: contacts[index]['title']!,
                    subTitle: contacts[index]['subTitle']!,
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
