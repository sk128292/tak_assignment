import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/talk_to_astrologer_controller.dart';

class TalkToAstrologerView extends GetView<TalkToAstrologerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/hamburger.png",
                height: 40,
              ),
              Image.asset(
                "assets/logo.png",
                height: 60,
              ),
              Image.asset(
                "assets/profile.png",
                height: 40,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Talk to an Astrologer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/search.png",
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/filter.png",
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/sort.png",
                        height: 25,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/logo.png",
                            height: 100,
                            width: 100,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text("25 year"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.home_outlined,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "25 year",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sort_by_alpha,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "25 year",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_membership,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "25 year",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
