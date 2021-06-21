import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final Function onTap;
  MyButton({this.onTap,this.height, this.width,this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: MaterialButton(
        color: Color(0xff27c7fc),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xffe5e7ed),
          ),
        ),
      ),
    );
  }
}
