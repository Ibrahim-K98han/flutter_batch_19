import 'package:flutter/material.dart';

class InterestsDividerWidget extends StatelessWidget {
  const InterestsDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade400)),
        const SizedBox(width: 10.0),
        Text(
          'Interests',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),

        const SizedBox(width: 10.0),
        Expanded(child: Divider(color: Colors.grey.shade400)),
      ],
    );
  }
}
