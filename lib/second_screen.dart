import 'package:flutter/material.dart';
import 'package:my_app/profile_photo.dart';
import 'third_screen.dart';
import 'profile_photo.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  Widget placeCard(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 5, right: 10, bottom: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ThirdScreen(tag: 'BigTile$index');
                    },
                  ),
                );
              },
              child: Container(
                height: 250,
                width: 200,
                child: Hero(
                  tag: 'BigTile$index',
                  child: Image.network(
                    'https://worldblaze.in/wp-content/uploads/2015/09/Nandi-Hills.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(right: 20, top: 20),
                  child: ToggleLike(),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Nandi Hills, Bangalore',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15,
                              color: Colors.white,
                            ),
                            Text(
                              'Chikkaballapur, Bangalore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  bottomIconList() {
    return Container(
        child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[500],
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(
            Icons.home_rounded,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.favorite_border_outlined),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.location_pin),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.settings_outlined),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            profileInfo(context),
            searchBar(),
            Expanded(
              child: ListView(
                children: [
                  cardsRowList(context),
                  cardsColumnList(),
                  popularPlaceTile(),
                  popularPlaceTile(),
                  popularPlaceTile()
                ],
              ),
            ),
            bottomIconList(),
          ],
        ),
      ),
    );
  }

  Container cardsColumnList() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Populare Place',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularPlaceTile() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.black12,
              offset: Offset(0, 12), // Shadow position
            ),
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
                color: Colors.white,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 100,
                          width: 90,
                          child: Image.network(
                            'https://www.trawell.in/admin/images/upload/116649112Bangalore_Ramanagara_Main.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 20, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ramanagar Hills, Ramanagar',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                'Adventure enthusiasts can also engage in the challenging and rewarding sport of Rock Climbing in Ramanagara.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            Text(
                              'Rs.245/-',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }

  Container cardsRowList(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special for you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 290,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    width: 200,
                    child: placeCard(context, 1),
                  ),
                  Container(
                    width: 200,
                    child: placeCard(context, 2),
                  ),
                  Container(
                    width: 200,
                    child: placeCard(context, 3),
                  ),
                  Container(
                    width: 200,
                    child: placeCard(context, 4),
                  ),
                  Container(
                    width: 200,
                    child: placeCard(context, 5),
                  ),
                  Container(
                    width: 200,
                    child: placeCard(context, 6),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container searchBar() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 15),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 18,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  label: Text(
                    'Search your place',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container profileInfo(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        child: Row(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ProfilePhoto(tag: 'photo');
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Hero(
                  tag: 'Photo',
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(18), // Image radius
                      child: Image.network(
                          'https://fnewshub.com/wp-content/uploads/2020/11/FB_IMG_1605666747087.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Hi, Xavier',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Spacer(),
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('No Notification'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Close'),
                            ),
                          ],
                        ),
                      ),
                  icon: Icon(
                    Icons.notifications_active_outlined,
                    size: 23,
                  ));
            })
          ],
        ),
      ),
    );
  }
}
// ,

class ToggleLike extends StatefulWidget {
  ToggleLike({Key? key, this.likesize = 20}) : super(key: key);

  final double likesize;

  @override
  State<ToggleLike> createState() => _ToggleLikeState();
}

class _ToggleLikeState extends State<ToggleLike> {
  bool _likeTile = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      width: widget.likesize + 15,
      height: widget.likesize + 15,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            _likeTile = !_likeTile;
          });
        },
        child: Icon(
          Icons.favorite_outlined,
          size: widget.likesize,
          color: _likeTile ? Colors.redAccent : Colors.black,
        ),
      ),
    );
  }
}
