import 'package:flutter/material.dart';
import 'package:music_maniac/resources/text_styles.dart';
import 'package:music_maniac/resources/colors.dart';
import './button.dart';
import '../pages/verification.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isPassVisible = false;
  bool _isCPassVisible = false;

  void togglePassVisibility() {
    setState(() {
      _isPassVisible = !_isPassVisible;
    });
  }

  void toggleCPassVisibility() {
    setState(() {
      _isCPassVisible = !_isCPassVisible;
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
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Firstname',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Lastname',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Username',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: !_isPassVisible,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
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
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: !_isCPassVisible,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                prefixIcon: IconButton(
                  icon: _isPassVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  onPressed: () => toggleCPassVisibility(),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.phone,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Location',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w500
              ),
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Music Genre',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 20,),
            ButtonWidget(
              text: 'Sign Up',
              color: ButtonStyles.PRIMARY,
              mode: ButtonStyles.FLAT,
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => VerificationPage()
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}