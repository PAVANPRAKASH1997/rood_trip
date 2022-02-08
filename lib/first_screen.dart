import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  backGroundImage() {
    return Container(
      child: Image.network(
        'https://wallpapercave.com/wp/wp4415940.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  logoHeader() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'R ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Icon(
                  Icons.directions_bike_rounded,
                  size: 55,
                ),
                Text(
                  ' D',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 2.0, color: Colors.white))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'T R I P',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  titleHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        alignment: Alignment.topLeft,
        child: Text(
          'Get Ready for next \nROOD TRIP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  titleSubHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Text(
        'Find Thousand of tourist destinations for ready for you to visit',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white70,
            fontSize: 14),
      ),
    );
  }

  startEngine(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 50),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 40, right: 40),
              child: Text(
                'Start Engine...!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.white),
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            backGroundImage(),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  logoHeader(),
                  Container(
                    child: Column(
                      children: [
                        titleHeader(),
                        titleSubHeader(),
                        startEngine(context),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
