import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key, this.tag = ""}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(.5),
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.green[800]),
              height: 290,
              width: 250,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(5))),
                    height: 250,
                    width: 250,
                    child: Hero(
                      tag: tag,
                      child: Image.network(
                          'https://fnewshub.com/wp-content/uploads/2020/11/FB_IMG_1605666747087.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Xavier',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
