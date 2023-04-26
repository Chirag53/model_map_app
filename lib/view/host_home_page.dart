import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:module_map_app/data/progress_data.dart';
import 'package:module_map_app/model/progress_two_model.dart';
import 'package:module_map_app/res/common/earning_common.dart';

class HostHomePage extends StatefulWidget {
  const HostHomePage({Key? key}) : super(key: key);

  @override
  State<HostHomePage> createState() => _HostHomePageState();
}

class _HostHomePageState extends State<HostHomePage> {
  Welcome? welcome;

  @override
  void initState() {
    welcome = welcomeFromMap(jsonEncode(progressContainerData));
    super.initState();
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFBFB),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_back, size: 24),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Feed',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                    )
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Offers",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 99,
                    width: 358,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Weekly Progress',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 128,
                  width: 500,
                  child: ListView.separated(
                    itemCount: welcome!.progressData!.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 15,
                    ),
                    itemBuilder: (context, index) => EarningCommon(
                      hedging: welcome!.progressData![index].hedging,
                      secondName: welcome!.progressData![index].secondName,
                      rupay: welcome!.progressData![index].rupay,
                      pay: welcome!.progressData![index].pay,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Improve your medal',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 112,
                    width: 358,
                    decoration: BoxDecoration(
                      color: const Color(0xffCAD7FB),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100)),
                              )),
                          Column(
                            children: const [
                              Text('Silver Partner',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'For this month',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                              'Learn more on how you can improve your \nperformance and get diamond medal.'),
                        ),
                      ),
                    ]),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Refer & Earn',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 99,
                    width: 358,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Earn up to RS 5000 for each referral ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              const Text(
                                'Use Code',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/Group 33726.png',
                                height: 32,
                                width: 99,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/feed.png",
                height: 18,
              ),
              label: 'Feed',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/Earnings.png",
                height: 18,
              ),
              label: 'Earnings',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'More',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
