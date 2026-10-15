import 'package:flutter/material.dart';

class InterestsContainerWidget extends StatefulWidget {
  const InterestsContainerWidget({
    super.key,
    required this.type,
    required this.unit,
    required this.bloodGroup,
    required this.address,
  });

  final String type;
  final String unit;
  final String bloodGroup;
  final String address;

  @override
  State<InterestsContainerWidget> createState() =>
      _InterestsContainerWidgetState();
}

class _InterestsContainerWidgetState extends State<InterestsContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Container(
            width: 5.0,
            height: 140.0,
            decoration: BoxDecoration(
              color: widget.type.toLowerCase() == 'urgent'
                  ? Colors.red
                  : Colors.green,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 2.0,
                        ),
                        decoration: BoxDecoration(
                          color: widget.type.toLowerCase() == 'urgent'
                              ? Colors.red.shade100
                              : Colors.green.shade100,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          widget.type.toUpperCase(),
                          style: TextStyle(
                            color: widget.type.toLowerCase() == 'urgent'
                                ? Colors.red
                                : Colors.green,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.bloodtype, color: Colors.red, size: 16.0),
                          Text(
                            widget.unit,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '${widget.bloodGroup} Blood Needed',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),

                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey, size: 16.0),
                      SizedBox(width: 4.0),
                      Expanded(
                        child: Text(
                          widget.address,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),
                  Center(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: const Color(0xFFE0E0E0),
                          width: 1.0,
                        ),
                      ),
                      child: const Text(
                        'View Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
