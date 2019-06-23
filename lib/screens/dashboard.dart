import 'package:flutter/material.dart';
import 'package:lsc_siswa/screens/profilepage.dart';
import 'package:lsc_siswa/transitions/transitions.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF736AB7),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                color: Color(0xFF333366),
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.only(top: 20, left: 17, right:17),
                    leading: Icon(Icons.mood, size: 50, color: Colors.white54,),
                    title: Text('Nurfi Agnia', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text('Hati seorang ibu adalah ruang kelas tempat anaknya belajar.', style: TextStyle(color: Colors.white70),),
                  ),
                  ButtonTheme.bar( // make buttons use the appropriate styles for cards
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('LOGOUT', style: TextStyle(color: Colors.white70),),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                      splashColor: Color(0xFF333366).withAlpha(100),
                      onTap: () {
                        Navigator.push(context, EnterExitRoute(exitPage: Dashboard(), enterPage: ProfilePage()));
                      },
                      child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFF736AB7),
                            radius: 20.0,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            'Profil',
                            style: TextStyle(
                              color: Color(0xFF736AB7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                      splashColor: Color(0xFF333366).withAlpha(100),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFF736AB7),
                            radius: 20.0,
                            child: Icon(
                              Icons.book,
                              color: Colors.white,
                              size: 20.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            'Asses..',
                            style: TextStyle(
                              color: Color(0xFF736AB7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                      splashColor: Color(0xFF333366).withAlpha(100),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFF736AB7),
                            radius: 20.0,
                            child: Icon(
                              Icons.history,
                              color: Colors.white,
                              size: 20.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            'Histori',
                            style: TextStyle(
                              color: Color(0xFF736AB7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              child: InkWell(
                splashColor: Color(0xFF333366).withAlpha(100),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            color: Color(0xFF736AB7),
                            size: 30,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Color(0xFF736AB7),
                            size: 50,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Color(0xFF736AB7),
                            size: 30,
                          ),
                        ],
                      ),
                      Text(
                        'Achievements',
                        style: TextStyle(
                          color: Color(0xFF736AB7),
                        ),
                      )
                    ],
                  ),
                )
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                      splashColor: Color(0xFF333366).withAlpha(100),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                      width: 160,
                      height: 160,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFF736AB7),
                            radius: 20.0,
                            child: Icon(
                              Icons.book,
                              color: Colors.white,
                              size: 20.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            'Asses..',
                            style: TextStyle(
                              color: Color(0xFF736AB7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Card(
                  color: Color(0xFF333366),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                      splashColor: Color(0xFF736AB7).withAlpha(100),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                      width: 160,
                      height: 160,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFF736AB7),
                            radius: 20.0,
                            child: Icon(
                              Icons.history,
                              color: Color(0xFF333366),
                              size: 20.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            'Histori',
                            style: TextStyle(
                              color: Color(0xFF736AB7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),
            ]
          );
        }
      )
    );
  }
}