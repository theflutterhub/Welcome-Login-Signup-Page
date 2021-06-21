import 'package:auth_ui/config/colors.dart';
import 'package:auth_ui/widgets/google_facebook.dart';
import 'package:auth_ui/widgets/my_button.dart';
import 'package:auth_ui/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isCheck = false;
  bool isLogin = false;
  bool isSignup = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: primeryColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isSignup = true;
                      isLogin = false;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: isLogin == true
                          ? Color(0xff454762)
                          : Color(0xff27c7fc),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSignup = false;
                      isLogin = true;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: isLogin ? Color(0xff27c7fc) : Color(0xff454762),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(
                isLogin ? "Log in" : "Sing up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Color(
                    0xffe5e7ed,
                  ),
                ),
              ),
            ),
            isLogin
                ? Container()
                : MyTextField(
                    labText: "full name",
                  ),
            MyTextField(
              labText: "email",
            ),
            MyTextField(
              labText: "password",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value;
                        });
                      },
                    ),
                    Text(
                      isLogin ? "Remember me" : "i agree with private policy",
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  isLogin ? "Forgot password?" : "",
                  style: TextStyle(
                    color: Color(0xff3478a3),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: MyButton(
                height: 48,
                width: 130,
                onTap: () {},
                title:isLogin?"Log in": "Sing up",
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GoogleFacebook(
              title: isLogin?"or enter via sociay networks":"or connent with",
            )
          ],
        ),
      ),
    );
  }
}


//////////////////////// Sing UP is Done Friends I am starting Login Page ////////// Let's Start /////
