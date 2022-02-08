import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  imageBlock() {
    return Stack(
      children: [
        Container(
          child: ClipRRect(
            child: Image.network(
                'https://cdn.mos.cms.futurecdn.net/AWgt28uNssYJzkwBRCXBEG-1200-80.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Container(
            padding: EdgeInsets.only(left: 5, top: 7, bottom: 7, right: 7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 13,
            ),
          ),
        )
      ],
    );
  }

  gameInfoBlock() {
    return Transform.translate(
      offset: Offset(0, -16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Horizon: New Dawn',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Guerrilla & Playstation',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.favorite_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF695cd5)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Overview',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Experience Aloy\'s entire legendery quest to unravel the mysterious of a world ruled by deadly Machines',
                  style: TextStyle(
                      height: 1.8,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'An outcast from her tribe, the young hunter fights to uncoverher past, discover her destiny... and stop a catastropic threat to the future  ',
                  style: TextStyle(
                      height: 1.8,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  publisherBlock() {
    return Expanded(
      child: ListView(
        children: [
          PublisherRatings(
            imageUrl:
                'https://static.wikia.nocookie.net/video-game-adventures/images/1/1b/Epic_games_logo.png/revision/latest?cb=20191119040901',
            pubTitle: 'Epic Games',
            pubStatus: 'Available',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: PublisherRatings(
              imageUrl:
                  'https://listimg.pinclipart.com/picdir/s/53-534883_steam-logo-svg-png-icon-free-download-steam.png',
              pubTitle: 'Stream Games',
              pubStatus: 'Unavailable',
            ),
          )
        ],
      ),
    );
  }

  footerBlock() {
    return Container(
      height: 80,
      color: Color(0xFFf2f1f7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      bottom: 5,
                    ),
                    child: Text(
                      'Price',
                      style: TextStyle(
                          color: Color(0xFF2e405f),
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                    ),
                    child: Text(
                      'Rs.30.00',
                      style: TextStyle(
                          height: 1.8,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xFF7e8a9d),
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2),
                child: Text(
                  'Rs.20.00',
                  style: TextStyle(
                      color: Color(0xFF7f74da),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF695cd5),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imageBlock(),
                    gameInfoBlock(),
                    publisherBlock(),
                    footerBlock(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PublisherRatings extends StatelessWidget {
  const PublisherRatings({
    Key? key,
    this.imageUrl = '',
    this.pubTitle = '',
    this.pubStatus = '',
  }) : super(key: key);

  final String imageUrl;
  final String pubTitle;
  final String pubStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                //color: Colors.black87,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(image: NetworkImage(imageUrl), fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$pubTitle',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '$pubStatus',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontSize: 11),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                child: Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  size: 20,
                ),
                Icon(
                  Icons.star_rounded,
                  size: 20,
                ),
                Icon(
                  Icons.star_rounded,
                  size: 20,
                ),
                Icon(
                  Icons.star_rounded,
                  size: 20,
                ),
                Icon(
                  Icons.star_rounded,
                  size: 20,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
