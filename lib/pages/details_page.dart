import 'package:flutter/material.dart';
import 'package:flutter_travel_app/constants.dart';
import 'package:flutter_travel_app/widgets/icon_details.dart';
import 'package:flutter_travel_app/widgets/icon_item.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget jumbotron() {
      return Container(
        color: kBackgroundColor,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_big_bali.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              )),
        ),
      );
    }

    Widget locationDetails() {
      return Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bali, Indonesia",
              style: yellowTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconDetails(
                  imageUrl: "assets/icon_star.png",
                  value: "4.92",
                ),
                IconDetails(
                  imageUrl: "assets/icon_cloud.png",
                  value: "27 C",
                ),
                IconDetails(
                  imageUrl: "assets/icon_plane.png",
                  value: "9 Jan",
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget textDetails() {
      return Container(
        width: double.infinity,
        color: kDarkLightColor,
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: whiteTextSyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Bali is famous for beaches, countless, waves for surfing scuba diving, natural sites to visit and explore tremely fascinating Hindus culture with colorfuls cemeronies and magnificent temples gifted artists the producing",
              style: whiteTextSyle.copyWith(fontSize: 13),
            ),
          ],
        ),
      );
    }

    Widget bottomBar() {
      return Container(
        width: double.infinity,
        color: kBackgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Starting Now",
                  style: whiteTextSyle.copyWith(fontSize: 13),
                ),
                SizedBox(height: 3),
                Text(
                  "\$500 - 750",
                  style: yellowTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: kYellowColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Book Now",
                  style: whiteTextSyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kDarkLightColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                jumbotron(),
                locationDetails(),
                textDetails(),
                bottomBar(),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: IconItem(imageUrl: "assets/icon_back.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
