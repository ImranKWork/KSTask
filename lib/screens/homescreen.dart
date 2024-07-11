import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ks_task/screens/profiledetail.dart';
import 'package:ks_task/widgets/product_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white, width: 0.5),
    borderRadius: BorderRadius.circular(14),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient:
        const LinearGradient(colors: [Color(0XFF74FBDE), Color(0XFF3C41BF)]),
    border: Border.all(color: Colors.transparent, width: 0.5),
    borderRadius: BorderRadius.circular(14),
  );

  int _current = 0;
  final CarouselController _controller = CarouselController();

  List catlist = [
    {"image": "assets/cat2.png", "name": "Name01"},
    {"image": "assets/cat1.png", "name": "Name02"},
    {"image": "assets/cat3.png", "name": "Name03"},
    {"image": "assets/cat4.png", "name": "Name04"},
    {"image": "assets/cat5.png", "name": "Name05"},
    {"image": "assets/cat6.png", "name": "Name06"},
    {"image": "assets/cat7.png", "name": "Name07"},
    {"image": "assets/cat8.png", "name": "Name08"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            title: Text(
              widget.title,
              style: const TextStyle(
                  color: Color(0Xff5D5FEF),
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1,
                color: Colors.grey.shade400,
              ),
              Container(
                height: 50,
                decoration: kGradientBoxDecoration,
                margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: kInnerDecoration,
                    child: TextFormField(
                      autofocus: false,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(10.0),
                        hintText: "검색어를 입력하세요",
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: const Image(
                              image: AssetImage(
                                "assets/searchbar.png",
                              ),
                              color: Color(0Xff3E3DC5),
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },

                      // autoPlay: false,
                    ),
                    items: [
                      "assets/bn1.png",
                      "assets/bn2.png",
                      "assets/bn3.png"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Expanded(
                              child: Image.asset(
                            i,
                            fit: BoxFit.cover,
                          ));
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "assets/bn1.png",
                          "assets/bn2.png",
                          "assets/bn3.png"
                        ].asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: _current == entry.key ? 15.0 : 8.0,
                              height: _current == entry.key ? 7.0 : 8.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: _current == entry.key
                                    ? BoxShape.rectangle
                                    : BoxShape.circle,
                                color: _current == entry.key
                                    ? Colors.white
                                    : Colors.white54,
                                borderRadius: _current == entry.key
                                    ? BorderRadius.circular(5)
                                    : null,
                              ),
                            ),
                          );
                        }).toList(),
                      ))
                ],
              ),
              Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "제일 핫한 리뷰를 만나보세요",
                                style: TextStyle(
                                    color: Color(0Xff616161),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              Text(
                                "리뷰️  랭킹⭐ top 3",
                                style: TextStyle(
                                    color: Color(0Xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      productlist(
                          "assets/img1.png",
                          "LG전자 스탠바이미 27ART10AKPL (스",
                          "화면을 이동할 수 있고 전환도 편리하다는",
                          "스탠바이미는 사랑입니다!️",
                          "4.89",
                          "(216)"),
                      const SizedBox(
                        height: 15,
                      ),
                      productlist(
                          "assets/img3.png",
                          "LG전자  울트라HD 75UP8300KNA (스",
                          "화면 잘 나오고... 리모컨 기능 좋습니다.",
                          "넷플 아마존 등 버튼하나로 바로 접속 되고",
                          "4.36",
                          "(136)"),
                      const SizedBox(
                        height: 15,
                      ),
                      productlist(
                          "assets/img2.png",
                          "라익미 스마트 DS4001L NETRANGE",
                          "반응속도 및 화질이나 여러면에서도 부족함",
                          "중소기업TV 라익미 제품을 사용해보았는",
                          "3.98",
                          "(98)"),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
              Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "골드 계급 사용자들이예요",
                              style: TextStyle(
                                  color: Color(0Xff616161),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            Text(
                              "베스트 리뷰어 🏆 Top10",
                              style: TextStyle(
                                  color: Color(0Xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 95,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: catlist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ProfileDetail(),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            catlist[index]["image"],
                                            height: 62,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            catlist[index]["name"],
                                            style: const TextStyle(
                                                color: Color(0Xff616161),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          )
                                        ],
                                      )));
                            })),
                    const SizedBox(
                      height: 20,
                    ),
                  ])),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "LOGO Inc.",
                        style: TextStyle(
                            color: Color(0Xff868686),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "회사 소개",
                            style: TextStyle(
                                color: Color(0Xff868686),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          Container(
                            color: const Color(0XffC8C8C8),
                            height: 9,
                            width: 1,
                          ),
                          const Text(
                            "인재 채용",
                            style: TextStyle(
                                color: Color(0Xff868686),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          Container(
                            color: const Color(0XffC8C8C8),
                            height: 9,
                            width: 1,
                          ),
                          const Text(
                            "기술 블로그",
                            style: TextStyle(
                                color: Color(0Xff868686),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          Container(
                            color: const Color(0XffC8C8C8),
                            height: 9,
                            width: 1,
                          ),
                          const Text(
                            "리뷰 저작권",
                            style: TextStyle(
                                color: Color(0Xff868686),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "review@logo.com",
                        style: TextStyle(
                            color: Color(0Xff868686),
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(height: 1, color: const Color(0XffC8C8C8)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구",
                        style: TextStyle(
                            color: Color(0Xff868686),
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
