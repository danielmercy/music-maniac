import 'package:flutter/material.dart';
import 'package:music_maniac/models/user.dart';
import './fan_page.dart';
import './artiste_page.dart';

class ProfilePage extends StatelessWidget {

  final User user;

  ProfilePage({Key key, this.user}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return user.role == Role.ARTISTE ? ArtistePage(user: user,) : FanPage(user: user,);
  }
}