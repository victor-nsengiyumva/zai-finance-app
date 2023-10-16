import 'package:flutter/material.dart';
import 'package:tai/screens/onBoarding/onBoardingScreen2.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 2, child: Image.asset("assets/images/Frame.png")),
              SizedBox(
                height: 150,
              ),
              Expanded(flex: 1, child: Image.asset("assets/images/Frame.png")),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          height: 440, width: 170, "assets/images/girl_1.png"),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          "assets/images/sittingGuy_1.png",
                          height: 190,
                          width: 170,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Manage your finances", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Forget everything you know bout the", style: TextStyle(color: Colors.grey),),
                              Text(
                                  "chaotic world of finance. We make it easy.", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/bigRect.png"),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset("assets/images/smallRect.png"),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset("assets/images/smallRect.png"),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            FloatingActionButton(
                                shape: CircleBorder(),
                                // materialTapTargetSize:
                                //     MaterialTapTargetSize.shrinkWrap,
                                clipBehavior: Clip.none,
                                // mini: true,
                                child: const Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 25,
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OnBoarding2()

                                  ));
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ))
        ],
      ),
    );
  }
}