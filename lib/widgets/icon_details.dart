import 'package:flutter/material.dart';
import 'package:flutter_travel_app/constants.dart';

class IconDetails extends StatelessWidget {
  const IconDetails({Key? key, required this.imageUrl, required this.value})
      : super(key: key);

  final String imageUrl, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xFFFFF9E9),
          ),
          child: Image(
            image: AssetImage(imageUrl),
            color: kYellowColor,
          ),
        ),
        SizedBox(width: 10),
        Text(
          value,
          style: whiteTextSyle.copyWith(
            fontWeight: semiBold,
          ),
        )
      ],
    );
  }
}
