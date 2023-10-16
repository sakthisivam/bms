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
  bool highRisk = false;
  bool safePlans = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //
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
          SafeArea(
            child: SingleChildScrollView(
              reverse: false,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            safePlans = !safePlans;
                          });
                        },
                        child: Text(
                          "Safe Plans",
                          style: TextStyle(
                              color: btn.withOpacity(1.0),
                              fontSize: height * 0.013),
                        ),
                      ),
                    ),
                    if (safePlans) ...[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                        height: height * 1.1,
                        // color: Colors.amber,
                        // width: width,
                        child: Expanded(
                          child: GridView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
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
                                  // height: height * 8,

                                  decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    border: Border.all(
                                      color:
                                          gridViewBorderColor.withOpacity(1.0),
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: height * 0.02,
                                              child: Text(
                                                offerPlans[index].packHeader ??
                                                    "",
                                                style: TextStyle(
                                                    color: regular
                                                        .withOpacity(1.0),
                                                    fontSize: height * 0.014),
                                              ),
                                            ),
                                            // SizedBox(width: width * 0.01),
                                            Column(
                                              children: [
                                                Text(
                                                  offerPlans[index].packName ??
                                                      "",
                                                  style: TextStyle(
                                                      color:
                                                          btn.withOpacity(1.0),
                                                      fontSize: height * 0.02),
                                                ),
                                                Text(
                                                  "100% Capital guarantee",
                                                  style: TextStyle(
                                                      color:
                                                          btn.withOpacity(1.0),
                                                      fontSize: height * 0.013),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          // width: 100,
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
                                            SizedBox(height: height * 0.02),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                    color: Colors.blue),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.thumb_up,
                                                      color: Colors.blue,
                                                      size: height * 0.018,
                                                    ),
                                                    Text(
                                                      "Click here",
                                                      style: TextStyle(
                                                          color: btn
                                                              .withOpacity(1.0),
                                                          fontSize:
                                                              height * 0.013),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  // color: Colors.amber,
                                ),
                              );
                            },
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  2, // Number of columns in the grid
                              mainAxisSpacing: 10.0, // Spacing between rows
                              crossAxisSpacing: 10.0,
                              mainAxisExtent: 280, // Spacing between columns
                            ),
                          ),
                        ),
                      ),
                    ],
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            highRisk = !highRisk;
                          });
                        },
                        child: Text(
                          "High Risk Plans",
                          style: TextStyle(
                              color: btn.withOpacity(1.0),
                              fontSize: height * 0.013),
                        ),
                      ),
                    ),
                    if (highRisk) ...[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                        height: height * 1.1,
                        // color: Colors.amber,
                        // width: width,
                        child: Expanded(
                          child: GridView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: offerPlans1.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  // height: height * 8,

                                  decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    border: Border.all(
                                      color:
                                          gridViewBorderColor.withOpacity(1.0),
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: height * 0.02,
                                              child: Text(
                                                offerPlans1[index].packHeader ??
                                                    "",
                                                style: TextStyle(
                                                    color: regular
                                                        .withOpacity(1.0),
                                                    fontSize: height * 0.014),
                                              ),
                                            ),
                                            // SizedBox(width: width * 0.01),
                                            Column(
                                              children: [
                                                Text(
                                                  offerPlans1[index].packName ??
                                                      "",
                                                  style: TextStyle(
                                                      color:
                                                          btn.withOpacity(1.0),
                                                      fontSize: height * 0.02),
                                                ),
                                                Text(
                                                  "100% Capital guarantee",
                                                  style: TextStyle(
                                                      color:
                                                          btn.withOpacity(1.0),
                                                      fontSize: height * 0.013),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          // width: 100,
                                          decoration: BoxDecoration(
                                            // color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/${offerPlans1[index].image}.jpg",
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
                                              "${offerPlans1[index].value}",
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
                                            SizedBox(height: height * 0.02),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                    color: Colors.blue),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.thumb_up,
                                                      color: Colors.blue,
                                                      size: height * 0.018,
                                                    ),
                                                    Text(
                                                      "Click here",
                                                      style: TextStyle(
                                                          color: btn
                                                              .withOpacity(1.0),
                                                          fontSize:
                                                              height * 0.013),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  // color: Colors.amber,
                                ),
                              );
                            },
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  2, // Number of columns in the grid
                              mainAxisSpacing: 10.0, // Spacing between rows
                              crossAxisSpacing: 10.0,
                              mainAxisExtent: 280, // Spacing between columns
                            ),
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
