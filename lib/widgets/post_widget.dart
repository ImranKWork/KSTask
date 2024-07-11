import 'package:flutter/material.dart';

Widget postUI() {
  return Column(
    children: [
      Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              "assets/proryzen.png",
              height: 100,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const Text(
                    "AMD 라이젠 5 5600X 버미어",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0Xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  const Text(
                    "정품 멀티팩",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0Xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/rartingimg.png",
                        height: 18,
                        width: 90,
                      ),
                      const Text(
                        " 4.07",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0Xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ],
                  )
                ]))
          ])),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 1,
        color: const Color(0XffF5F5F5),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/profilecat.png",
                height: 35,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name01",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0Xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  Row(children: [
                    Image.asset(
                      "assets/rartingimg.png",
                      height: 11,
                      width: 55,
                    ),
                    const Text(
                      " 2022.12.09",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color(0Xff868686),
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                  ])
                ],
              )
            ],
          ),
          Image.asset(
            "assets/bookmark.png",
            height: 21,
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "“가격 저렴해요”",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(0XffA0A0A0),
                fontWeight: FontWeight.w700,
                fontSize: 10),
          ),
          Text(
            "“CPU온도 고온”",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(0XffA0A0A0),
                fontWeight: FontWeight.w700,
                fontSize: 10),
          ),
          Text(
            "“서멀작업 가능해요”",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(0XffA0A0A0),
                fontWeight: FontWeight.w700,
                fontSize: 10),
          ),
          Text(
            "“게임 잘 돌아가요”",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(0XffA0A0A0),
                fontWeight: FontWeight.w700,
                fontSize: 10),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(children: [
        Image.asset("assets/stormimg.png"),
        const Expanded(
            child: Text(
          " 멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
          maxLines: 2,
          style: TextStyle(
              color: Color(0XffA0A0A0),
              fontWeight: FontWeight.w700,
              fontSize: 10),
        )),
      ]),
      const SizedBox(
        height: 15,
      ),
      Row(children: [
        Image.asset(
          "assets/stormimg.png",
          color: const Color(0XffD7D7D7),
        ),
        const Expanded(
            child: Text(
          " 3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
          maxLines: 2,
          style: TextStyle(
              color: Color(0XffA0A0A0),
              fontWeight: FontWeight.w700,
              fontSize: 10),
        )),
      ]),
      const SizedBox(
        height: 15,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "assets/frame1.png",
          height: 70,
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          "assets/frame2.png",
          height: 70,
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          "assets/frame3.png",
          height: 70,
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 1,
        color: const Color(0XffF5F5F5),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(children: [
        Image.asset(
          "assets/comment.png",
          color: const Color(0XffD7D7D7),
        ),
        const Text(
          " 댓글 달기..",
          maxLines: 2,
          style: TextStyle(
              color: Color(0XffA0A0A0),
              fontWeight: FontWeight.w400,
              fontSize: 10),
        ),
      ]),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
