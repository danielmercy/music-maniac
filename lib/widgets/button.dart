import 'package:flutter/material.dart';
import 'package:music_maniac/resources/colors.dart';
import 'package:music_maniac/resources/text_styles.dart';

class ButtonWidget extends StatelessWidget {

  final String text;
  final String color;
  final Function onPressed;
  final String mode;
  double width = double.infinity;

  ButtonWidget({
    this.text,
    this.color,
    this.mode,
    this.onPressed,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadius buttonRadius = BorderRadius.circular(50);
    if(mode == ButtonStyles.GRADIENT) {
      return Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: buttonRadius,
          gradient: LinearGradient(
            colors: color == ButtonStyles.PRIMARY ? 
            <Color>[Colors.purple[400], MyTheme.primary] : 
            (color == ButtonStyles.ACCENT ? <Color>[MyTheme.accent, Colors.blue[800]] : <Color>[MyTheme.secondary, Colors.yellow[800]])
          ),
        ),
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: buttonRadius
          ),
          child: InkWell(
            onTap: onPressed,
            borderRadius: buttonRadius,
            child: Center(
              child: Text(text, style: buttonTextStyle),
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: buttonRadius,
          color: color == ButtonStyles.PRIMARY ? MyTheme.primary : 
            (color == ButtonStyles.ACCENT ? MyTheme.accent : MyTheme.secondary)
        ),
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: buttonRadius
          ),
          child: InkWell(
            onTap: onPressed,
            borderRadius: buttonRadius,
            child: Center(
              child: Text(text, style: buttonTextStyle),
            ),
          ),
        ),
      );
    }
  }
}

class ButtonStyles {
  static const PRIMARY = 'PRIMARY';
  static const ACCENT = 'ACCENT';
  static const SECONDARY = 'SECONDARY';

  static const FLAT = "FLAT";
  static const GRADIENT = "GRADIENT";
}
