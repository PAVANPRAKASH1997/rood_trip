import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                  ),
                  Icon(
                    Icons.search_outlined,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: RichText(
                text: TextSpan(
                    text: 'Lavelle Road',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Text(
                'Upmarket residential area in the heart of Bangalore. The surrounded lush greenery & vicinity to Cubbon Park, makes it desirable.',
                style: TextStyle(color: Colors.black45, fontSize: 13),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "152 HOMES",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text(
                            'Filter',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Container(width: 5),
                          Icon(
                            Icons.menu_outlined,
                            size: 13,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: ListView(
                  children: [
                    FeedPost(
                      imageURL:
                          'https://images.moneycontrol.com/static-mcnews/2021/02/Lodha-sample-flat-770x433.jpeg?impolicy=website&width=770&height=431',
                      title: '6 BR luxury penthouse',
                      price: 60000,
                    ),
                    FeedPost(
                      imageURL:
                          'https://miro.medium.com/max/672/1*xVIlwH6-u_qZqv_hdTvkDg.gif',
                      title: 'Frustated Cat',
                      price: 25000,
                    ),
                    FeedPost(
                      imageURL:
                          'https://media0.giphy.com/media/V4NSR1NG2p0KeJJyr5/giphy.gif',
                      title: 'Binary Codes',
                      price: 1000000,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class FeedPost extends StatelessWidget {
  const FeedPost({
    Key? key,
    this.imageURL = '',
    this.title = '',
    this.price = 0,
  }) : super(key: key);

  final String imageURL;
  final String title;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                  image: NetworkImage(imageURL),
                  height: 150,
                  width: 300,
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 3, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Icon(
                  Icons.favorite_border,
                  size: 20,
                ),
              ],
            ),
          ),
          Text(
            "Rs.$price/-",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
