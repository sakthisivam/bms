
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'plans_lists.dart';

class OfferPlans extends StatefulWidget {
  const OfferPlans({super.key});

  @override
  State<OfferPlans> createState() => _OfferPlansState();
}

class _OfferPlansState extends State<OfferPlans> {
  List<OfferPlansList> offerPlans = OffersMenu.getOfferPlansMenu();
  List<OfferPlansList1> offerPlans1 = OffersMenu1.getOfferPlans1Menu();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  backgroundOne.withOpacity(0.8),
                  backgroundFour.withOpacity(0.9),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
          ),
          SingleChildScrollView(
            reverse: false,
            child: Column(
              children: [
                Container(
                  // height: height,
                  color: Colors.amber,
                  width: width,
                  child: GridView.builder(
                    shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: offerPlans.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          
                          // height: height * 4,
                          
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border.all(
                                color: gridViewBorderColor.withOpacity(1.0),
                                ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: width * 0.05,
                                    child: Text(
                                      offerPlans[index].packHeader ?? "",
                                      style: TextStyle(
                                          color: regular.withOpacity(1.0),
                                          fontSize: height * 0.02),
                                    ),
                                  ),
                                  SizedBox(width: width * 0.01),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        offerPlans[index].packName ?? "",
                                        style: TextStyle(
                                            color: btn.withOpacity(1.0),
                                            fontSize: height * 0.02),
                                      ),
                                      Text(
                                        "100% Capital guarantee",
                                        style: TextStyle(
                                            color: btn.withOpacity(1.0),
                                            fontSize: height * 0.013),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                height: height * 0.1,
                                // width: width,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/${offerPlans[index].image}.jpg",
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              // SizedBox(
                              //   height: height * 0.02,
                              // ),
                              Column(
                                children: [
                                  Text(
                                    "${offerPlans[index].value}",
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontSize: height * 0.018),
                                  ),
                                  Text(
                                    "5 %(RS.250/week)",
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontSize: height * 0.013),
                                  ),
                                  Text(
                                    "Duration:40 Weeks ",
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontSize: height * 0.013),
                                  ),
                                  Text(
                                    "PayOut Saturday and Sunday",
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontSize: height * 0.013),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: width*0.04,vertical: height*0.04),
                                    height: height * 0.05,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.0),
                                      border: Border.all(color: Colors.blue),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.thumb_up,
                                          color: Colors.blue,
                                          size: height * 0.018,
                                        ),
                                        Text(
                                          "Click here",
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontSize: height * 0.013),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          // color: Colors.amber,
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      mainAxisSpacing: 10.0, // Spacing between rows
                      crossAxisSpacing: 10.0,
                      mainAxisExtent: 200, // Spacing between columns
                    ),
                  ),
                ),
                Container(
                  // height: height * 0.8,
                  width: width,
                  child: GridView.builder(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: offerPlans1.length,
                    itemBuilder: (BuildContext context, int index) {
                      // String? imgName = '';
                      // String? packName = '';
                      // String? packHeader = '';
                      // String? duration = '';
                      // for (OfferPlansList offer in offerPlans) {
                      //   imgName = offer.image;
                      //   packName = offer.packName;
                      //   packHeader = offer.packHeader;
                      //   print("packHeader");
                      //   print(packHeader);
                      // }
                      return Column(
                        children: [
                          Container(
                            // height: 10,
                            // width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: gridViewBorderColor.withOpacity(1.0),
                                  width: width * 0.001),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: width * 0.05,
                                      child: Text(
                                        offerPlans1[index].packHeader ?? "",
                                        style: TextStyle(
                                            color: regular.withOpacity(1.0),
                                            fontSize: height * 0.02),
                                      ),
                                    ),
                                    Text(
                                      offerPlans1[index].packName ?? "hi",
                                      style: TextStyle(
                                          color: btn.withOpacity(1.0),
                                          fontSize: height * 0.02),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            // color: Colors.amber,
                          ),
                        ],
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      mainAxisSpacing: 10.0, // Spacing between rows
                      crossAxisSpacing: 10.0, // Spacing between columns
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
