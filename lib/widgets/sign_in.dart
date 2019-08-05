import 'package:flutter/material.dart';
import 'package:music_maniac/resources/text_styles.dart';
import 'package:music_maniac/resources/colors.dart';
import './button.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPassVisible = false;

  void togglePassVisibility() {
    setState(() {
      _isPassVisible = !_isPassVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: Form(
        child: Column(
          children: <Widget>[
            Text(
              "Welcome back",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: formInputStyle,
              autofocus: false,
              initialValue: 'support@musicmaniac.com',
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: formInputHintStyle,
                isDense: true,
                prefixIcon: Icon(Icons.email),
                
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              style: formInputStyle,
              autofocus: false,
              obscureText: !_isPassVisible,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: formInputHintStyle,
                isDense: true,
                prefixIcon: IconButton(
                  icon: _isPassVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  onPressed: () => togglePassVisibility(),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            ButtonWidget(
              text: 'Login',
              color: ButtonStyles.ACCENT,
              mode: ButtonStyles.FLAT,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}