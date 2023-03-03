import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/widgets/colors_class.dart';

class AccountPageScreen extends StatefulWidget {
  const AccountPageScreen({super.key});

  @override
  State<AccountPageScreen> createState() => _AccountPageScreen();
}

class _AccountPageScreen extends State<AccountPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/loginwelcome.png"),
            Divider(
              //adding divider line below login image
              height: 2,
              indent: 1,
              endIndent: 2,
              thickness: 1,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Login",
              style: TextStyle(
                  color: AppsColors.darkFontColor,
                  fontFamily: GoogleFonts.alice().fontFamily,
                  fontSize: 30,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Enter Your Userame',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                          child: const Text('Login'),
                          onPressed: () => {},
                        ),
                      ),
                    ),
                    RichText(
                        //adding different color for text in same line
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Forget Password? ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      TextSpan(
                        text: "Reset Password",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: GoogleFonts.sanchez().fontFamily),
                      )
                    ])),
                    Divider(
                      //adding divider line below forget password text
                      height: 30,
                      // indent: 1,
                      // endIndent: 2,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
