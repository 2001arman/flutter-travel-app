import 'package:flutter/material.dart';
import 'package:flutter_travel_app/constants.dart';

class EventImageItem extends StatelessWidget {
  const EventImageItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.location})
      : super(key: key);

  final String imageUrl, title, location;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 205,
      margin: EdgeInsets.only(top: 20, right: 30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: whiteTextSyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 20,
                color: kWhiteColor,
              ),
              Text(
                location,
                style: whiteTextSyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
