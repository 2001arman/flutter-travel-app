import 'package:flutter/material.dart';
import 'package:flutter_travel_app/constants.dart';
import 'package:flutter_travel_app/pages/details_page.dart';
import 'package:flutter_travel_app/widgets/events_image_item.dart';
import 'package:flutter_travel_app/widgets/icon_item.dart';
import 'package:flutter_travel_app/widgets/item_header.dart';
import 'package:flutter_travel_app/widgets/popular_image_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget myBottomNavBar() {
      return Container(
        width: double.infinity,
        height: 68,
        color: kDarkLightColor,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconItem(imageUrl: "assets/icon_home.png"),
                SizedBox(width: 2),
                Text(
                  "Home",
                  style: yellowTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            IconItem(imageUrl: "assets/icon_notif.png"),
            IconItem(imageUrl: "assets/icon_dot.png"),
            IconItem(imageUrl: "assets/icon_setting.png"),
          ],
        ),
      );
    }

    Widget profilHeader() {
      return Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 15, left: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_profile.jpeg"),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Arman",
                  style: whiteTextSyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  "Good Morning",
                  style: whiteTextSyle.copyWith(
                    color: kWhiteColor.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          IconItem(imageUrl: "assets/icon_search.png"),
          SizedBox(width: 30),
        ],
      );
    }

    Widget titleHeader() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "Les's Enjoy your\nVacation",
              style: whiteTextSyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(height: 25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 30),
                ItemHeader(name: "All", isActive: true),
                ItemHeader(name: "Asia"),
                ItemHeader(name: "Africa"),
                ItemHeader(name: "Europe"),
                ItemHeader(name: "North"),
                ItemHeader(name: "America")
              ],
            ),
          )
        ],
      );
    }

    Widget popularCountry() {
      return Column(
        children: [
          Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  "Popular Countries",
                  style: whiteTextSyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Text(
                "See All",
                style: whiteTextSyle.copyWith(
                  fontWeight: medium,
                  color: kWhiteColor.withOpacity(0.5),
                ),
              ),
              SizedBox(width: 30),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(),
                      ),
                    );
                  },
                  child: PopularImageItem(
                    imageUrl: "assets/image_thumb_bali.png",
                    location: "Bali",
                  ),
                ),
                PopularImageItem(
                  imageUrl: "assets/image_thumb_paris.png",
                  location: "Paris",
                ),
                PopularImageItem(
                  imageUrl: "assets/image_thumb_england.png",
                  location: "England",
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget ongoingEvents() {
      return Column(
        children: [
          // Note title
          Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  "Ongoing Events",
                  style: whiteTextSyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Text(
                "See All",
                style: whiteTextSyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              SizedBox(width: 30),
            ],
          ),
          // Note: Image
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 30),
                EventImageItem(
                  imageUrl: "assets/image_event_brazil.png",
                  title: "Rio Carnival, Rio\nde Janiro",
                  location: "Brazil",
                ),
                EventImageItem(
                  imageUrl: "assets/image_event_japan.png",
                  title: "Sapporo Snow Festival",
                  location: "Japan",
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: myBottomNavBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              profilHeader(),
              SizedBox(height: 25),
              titleHeader(),
              SizedBox(height: 35),
              popularCountry(),
              SizedBox(height: 40),
              ongoingEvents(),
            ],
          ),
        ),
      ),
    );
  }
}
