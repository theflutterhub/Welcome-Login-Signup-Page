import 'package:auth_ui/config/colors.dart';
import 'package:flutter/material.dart';

class GoogleFacebook extends StatelessWidget {
  final String title;
  GoogleFacebook({this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$title\n\n",
        style: TextStyle(color: textColor),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55,
            width: 140,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: textColor,
              ),
            ),
            child: Center(
              child: Text(
                "f",
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 55,
            width: 140,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: textColor,
              ),
            ),
            child: Center(
              child: Text(
                "G",
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
