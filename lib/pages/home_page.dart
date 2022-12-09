
import 'package:flutter/material.dart';
import 'card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> urls = [
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/8a/e0/b9/bellagio-las-vegas.jpg?w=700&h=-1&s=1",
    "https://www.fairmont.com/assets/0/104/3441/3446/3978/3990/4f36b4e9-e98f-4477-9f33-eb5e0ff6ad23.jpg",
    "https://cdn1.parksmedia.wdprapps.disney.com/resize/mwImage/1/900/360/75/dam/wdpro-assets/dlr/places-to-stay/disneyland-hotel/resort-overview/disneyland-hotel-06-full.jpg?1670020587974",
    "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://static01.nyt.com/images/2022/06/25/travel/25Budget-SE-Asia/merlin_143824509_9682c473-4c88-468c-992c-325286a441ab-videoSixteenByNine3000.jpg",
    "https://www.fairmont.com/assets/0/104/3441/3446/3978/3990/4f36b4e9-e98f-4477-9f33-eb5e0ff6ad23.jpg",
    "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
    "https://files.tripstodiscover.com/files/2015/04/Radisson-Royal-Hotel-Ukrai.jpg",
    "https://i0.wp.com/theluxurytravelexpert.com/wp-content/uploads/2018/06/THE-ST-REGIS-MOSCOW-NIKOLSKAYA.jpg?ssl=1",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF000000),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Meteor Travels",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,

              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(height: 30.0),
            DefaultTabController(
              length: 2,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xFF000000),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFF000000),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Top Picks",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(
                                    urls[0], "Las Vegas", "Bellagio", 3),
                                travelCard(urls[5], "Vancouver", "Fairmont", 4),
                                travelCard(
                                    urls[3], "Cambodia", "Hotel Cambodiana", 5),
                                travelCard(
                                    urls[2], "California", "DisneyLand Hotel", 4),
                                travelCard(
                                    urls[4], "Melbourne", "Riverside Apartments", 4),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(urls[7], "Moscow", "Four Seasons", 4),
                                travelCard(urls[8], "Germany", "Hilton",4),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

