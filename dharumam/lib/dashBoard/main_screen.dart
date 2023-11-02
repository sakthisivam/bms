import 'package:dharumam/payment/payment_method.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'incomType/income_type.dart';
import 'offer_plans/offer_plans.dart';
import 'profile_page.dart';
import 'sidemenu.dart';
import 'special_offer.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
 

  bool isDrawerOpen = true;
  // var screen = [const ProfilePage(),];

  @override
  Widget build(BuildContext context) {
    var pageScreen;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // key: context.read<MenuController>().scaffoldKey,
      key: scaffoldKey,
      drawer: const Sidemenu(),
      appBar: AppBar(
        scrolledUnderElevation: 10.0,
        backgroundColor: backButtonIconColor.withOpacity(1.0),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 35,
          hoverColor: Colors.transparent,
          // onPressed: context.read<MenuController>().controlMenu,
          onPressed: () {
            setState(() {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                isDrawerOpen = true;

                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            });
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: backgroundFour.withOpacity(1.0),
              child: Icon(
                Icons.person,
                size: 20,
                color: regular.withOpacity(1.0),
              ),
            ),
            SizedBox(width: width * 0.04),
            Text(
              'Shanthy',
              style: TextStyle(
                  color: btn.withOpacity(1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.018),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              Center(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: referralButtonColor.withOpacity(0.6),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                    // height: height*0.05,
                    // width: width*0.5,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Refferel',
                            style: TextStyle(
                                color: regular.withOpacity(1.0),
                                fontWeight: FontWeight.bold,
                                fontSize: height * 0.018),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.share,
                            size: height * 0.03,
                            color: regular.withOpacity(1.0),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    print(" * \n*" * 8 + "##\t##\n" * 8);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  size: height * 0.03,
                  color: referralButtonColor.withOpacity(1.0),
                ),
              ),
            ],
          ),
        ],
      ),

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              backgroundOne.withOpacity(0.8),
              backgroundFour.withOpacity(0.9),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          alignment: Alignment.topLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      pageScreen = value;
                    });
                  },
                  children: const [
                    ProfilePage(),
                    SpecialOffer(),
                    IncomeType(),
                    OfferPlans(),
                    PaymentMethod()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
