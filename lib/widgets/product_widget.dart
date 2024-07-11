import 'package:flutter/material.dart';

Widget productlist(image, headline, point1, point2, rating, ratingof) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(image),
      const SizedBox(
        width: 10,
      ),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Color(0Xff000000),
                fontWeight: FontWeight.w700,
                fontSize: 14),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "\u2022 $point1",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Color(0Xff000000),
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
          Text(
            "\u2022  $point2",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Color(0Xff000000),
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset("assets/star.png"),
              Text(
                " $rating",
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color(0XffFFD233),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              Text(
                ratingof,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color(0XffC4C4C4),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: Color(0XffF0F0F0),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Text(
                  "LG전자",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color(0Xff868686),
                      fontWeight: FontWeight.w400,
                      fontSize: 11),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: Color(0XffF0F0F0),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Text(
                  "편리성",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color(0Xff868686),
                      fontWeight: FontWeight.w400,
                      fontSize: 11),
                ),
              )
            ],
          )
        ],
      )),
    ],
  );
}
