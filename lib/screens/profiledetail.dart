import 'package:flutter/material.dart';
import 'package:ks_task/widgets/post_widget.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Column(
            children: [
              Text(
                "랭킹 1위",
                style: TextStyle(
                    color: Color(0Xff868686),
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
              Text(
                "베스트 리뷰어",
                style: TextStyle(
                    color: Color(0Xff1D1D1D),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/profilecat.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Name01",
                    style: TextStyle(
                        color: Color(0Xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/crown.png",
                        height: 15,
                      ),
                      const Text(
                        "골드",
                        style: TextStyle(
                            color: Color(0XffFFD233),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color(0XffF0F0F0),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "조립컴 업체를 운영하며 리뷰를 작성합니다",
                      style: TextStyle(
                          color: Color(0Xff868686),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "작성한 리뷰",
                              style: TextStyle(
                                  color: Color(0Xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              " 총 35개",
                              style: TextStyle(
                                  color: Color(0Xff616161),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0Xff868686)),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            children: [
                              Text(
                                "최신순",
                                style: TextStyle(
                                    color: Color(0Xff868686),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: const Color(0XffF5F5F5),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: postUI())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
