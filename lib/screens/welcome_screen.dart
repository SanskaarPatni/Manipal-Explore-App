import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import './tabs_screen.dart';
import '../models/place.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  final List<Place> favouritePlaces;
  WelcomePage(this.favouritePlaces);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final spinkit = SpinKitChasingDots(
    size: 30,
    duration: Duration(milliseconds: 2000),
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 124, 154, 1),
        ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.explore,
                      size: 50,
                      color: Color.fromRGBO(25, 124, 154, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Text(
                      'Manipal Explore',
                      style: GoogleFonts.montserratSubrayada(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'Your Personal guide!',
                    style: GoogleFonts.andika(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      color: Colors.orange,
                      height: 65,
                      width: 150,
                      child: FlatButton(
                        child: Text(
                          'Explore!',
                          style: TextStyle(
                            fontFamily: 'RobotoCondensed',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return TabsScreen(widget.favouritePlaces);
                          }));
                        },
                      ),
                    ),
                  ),
                  MediaQuery.of(context).size.height > 330
                      ? SizedBox(
                          height: 30,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  MediaQuery.of(context).size.height > 330
                      ? spinkit
                      : SizedBox(
                          height: 0,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
