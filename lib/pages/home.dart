import 'package:flutter/material.dart';
import './login.dart';
import 'package:music_maniac/resources/colors.dart';
import 'package:music_maniac/widgets/video_card.dart';
import './profile.dart';
import './settings.dart';
import 'package:music_maniac/repositories/mock.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffold_key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold_key,
      backgroundColor: Color(0xFF2F0367),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: Drawer(
          child: Container(
            color: Colors.yellow,
            child: ListView(
              children: <Widget>[
                ListTile( 
                  title: Text(
                    "Timeline",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  dense: true,
                  leading: Icon(Icons.timeline),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile( 
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  dense: true,
                  leading: Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ProfilePage({
                        user: users[4]
                      })
                    ));
                  },
                ),
                ListTile( 
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  dense: true,
                  leading: Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => SettingsPage()
                    ));
                  },
                ),
                ListTile( 
                  title: Text(
                    "Log out",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  dense: true,
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image2.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color(0xFF000000).withOpacity(.8)
                  ),
                ),
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: Icon(
                      Icons.menu,  
                    ),
                    onPressed: () => _scaffold_key.currentState.openDrawer(),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )
                  ],
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 320,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 0,),
                        Container(
                          width: 200,
                          height: 75,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 20,),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage("${users[4].avatar}"),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text("Lorem ipsim dit amor sit amorir lorem ipsim dit amor sit amorir", 
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              color: Color(0xFF00FFF0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            // backgroundColor: Colors.white,
                            backgroundImage: AssetImage("${users[index].avatar}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("${users[index].rank}", style: TextStyle(fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, i) => SizedBox(width: 5,),
              ),
            ),

            for (var i = 0; i < 10; i++) 
              // print(users.length),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,),
                child: VideoCard(
                  user: users[i],
                ),
              )
            
          ]
        )
      )
    );
  }
}

