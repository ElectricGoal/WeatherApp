import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({
    Key? key,
    required this.name,
    required this.type,
  }) : super(key: key);

  final String name;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 60,
      color: Colors.white10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              type,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                //letterSpacing: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}