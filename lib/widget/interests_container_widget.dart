import 'package:flutter/material.dart';

class InterestsContainerWidget extends StatefulWidget {
  const InterestsContainerWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  State<InterestsContainerWidget> createState() =>
      _InterestsContainerWidgetState();
}

class _InterestsContainerWidgetState extends State<InterestsContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.image,
                  width: double.infinity,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              widget.subTitle,
              style: TextStyle(color: Colors.grey[700], fontSize: 12.0),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 1.0,
                    ),
                  ),
                  child: const Text(
                    'View More',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
