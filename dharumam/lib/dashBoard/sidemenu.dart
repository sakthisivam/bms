import 'package:dharumam/dashBoard/main_screen.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

final pageController = PageController();

class Sidemenu extends StatefulWidget {
  const Sidemenu({super.key});

  @override
  State<Sidemenu> createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  bool isAccueil = false;
  bool isInformation = false;
  bool isContrats = false;
  bool isDemarches = false;

  @override
  int isSelected = 0;

  @override
  void initState() {
    super.initState();

    print("sideeee");

    // if (isLogin == false) {
    // s1.getData("token").then(
    //   (value) {
    //     print("corr - token");
    //     singletonService.token = value;
    //   },
    // );
    // s1.getData("userId").then(
    //   (value) {
    //     print("corr - user");
    //     singletonService.userId = value;
    //   },
    // );
    // // } else {
    // print("login is not true");
    // }
  }

  drawerCloseOpen() {
    setState(() {
      if (scaffoldKey.currentState!.isDrawerOpen) {
        scaffoldKey.currentState!.closeDrawer();
        //close drawer, if drawer is open
      } else {
        // isDrawerOpen = true;

        scaffoldKey.currentState!.openDrawer();
        //open drawer, if drawer is closed
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (isInformation == true || isContrats == true || isDemarches == true) {
    //   isAccueil = false;
    //   if (isInformation) {
    //     setState(() {
    //       isSelected = 1;
    //       // changePage(1);
    //     });
    //   }
    //   if (isContrats) {
    //     setState(() {
    //       isSelected = 2;
    //       // changePage(2);
    //     });
    //   }
    //   if (isDemarches) {
    //     setState(() {
    //       isSelected = 3;
    //       // changePage(3);
    //     });
    //   }
    // } else {
    //   isAccueil = true;
    // }
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: drawerBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 50),
                Container(
                  // color: Colors.amber,
                  height: 150,
                  width: 300,
                  // child: Image.asset(
                  //   "assets/images/logo.png",
                  // ),
                ),
                const SizedBox(height: 20),
                if (screenWidth < 1024) ...[
                  const Center(child: ProfileCard()),
                  const SizedBox(height: 25),
                ],
                DrawerListTile(
                  title: "Profile",
                  // svgSrc: "assets/icons/home.svg",
                  selectedColor:
                      isSelected == 0 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 0
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 0
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      changePage(0);
                      drawerCloseOpen();
                    });
                  },
                ),
                DrawerListTile(
                  title: "Special Offer",
                  // svgSrc: "assets/icons/mes-icon.svg",
                  selectedColor:
                      isSelected == 1 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 1
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 1
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      // isInformation = true;
                      // if (isAccueil == true ||
                      //     isContrats == true ||
                      //     isDemarches == true) {
                      //   isAccueil = false;
                      //   isContrats = false;
                      //   isDemarches = false;
                      // }
                      // if (mesDemarches = true) {
                      //   mesDemarches = false;
                      // }
                      // agreementType = false;
                      // aggrementTypeComplete = false;
                      // stepOne = false;
                      // premiumInformationComplete = false;
                      // stepTwo = false;
                      // isDirect = false;
                      // stepThreeDirect = false;
                      // isRecover = false;
                      // stepThreeRecover = false;
                      // isSplit = false;
                      // stepThreeSplit = false;
                      // directStepFourCompleted = false;
                      // stepFourDirect = false;
                      // directStepFiveCompleted = false;
                      // stepFiveDirect = false;

                      changePage(1);
                      drawerCloseOpen();
                    });
                  },
                ),
                DrawerListTile(
                  title: "Income Type",
                  // svgSrc: "assets/icons/contrats.svg",
                  selectedColor:
                      isSelected == 2 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 2
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 2
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      isContrats = true;
                      if (isAccueil == true ||
                          isInformation == true ||
                          isDemarches == true) {
                        isAccueil = false;
                        isInformation = false;
                        isDemarches = false;
                      }
                      // if (mesDemarches = true) {
                      //   mesDemarches = false;
                      // }
                      drawerCloseOpen();
                      changePage(2);
                    });
                  },
                ),
                DrawerListTile(
                  title: "Offer Plan",
                  // svgSrc: "assets/icons/mes-icon.svg",
                  selectedColor:
                      isSelected == 3 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 3
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 3
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      isDemarches = true;
                      if (isAccueil == true ||
                          isInformation == true ||
                          isContrats == true) {
                        isAccueil = false;
                        isInformation = false;
                        isContrats = false;
                      }
                      // agreementType = false;
                      // aggrementTypeComplete = false;
                      // stepOne = false;
                      // premiumInformationComplete = false;
                      // stepTwo = false;
                      // isDirect = false;
                      // stepThreeDirect = false;
                      // isRecover = false;
                      // stepThreeRecover = false;
                      // isSplit = false;
                      // stepThreeSplit = false;
                      // directStepFourCompleted = false;
                      // stepFourDirect = false;
                      // directStepFiveCompleted = false;
                      // stepFiveDirect = false;
                      drawerCloseOpen();
                      changePage(3);
                    });
                  },
                ),
                const SizedBox(height: 100),
                DrawerListTile(
                  title: "My Currernt Plans",
                  // svgSrc: "assets/icons/messages.svg",
                  selectedColor:
                      isSelected == 4 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 4
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 4
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      drawerCloseOpen();
                      changePage(4);
                    });
                  },
                ),
                DrawerListTile(
                  title: "Pending Payment",
                  // svgSrc: "assets/icons/aide.svg",
                  selectedColor:
                      isSelected == 5 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 5
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 5
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      changePage(5);
                    });
                  },
                ),
                DrawerListTile(
                  title: "Completed Plan",
                  // svgSrc: "assets/icons/parametres.svg",
                  selectedColor:
                      isSelected == 6 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 6
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 6
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      // changePage(6);
                    });
                  },
                ),
                DrawerListTile(
                  title: "Referrer Member List",
                  // svgSrc: "assets/icons/parametres.svg",
                  selectedColor:
                      isSelected == 6 ? primaryColor : drawerBackgroundColor,
                  selectedIconColor: isSelected == 6
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  selectedTextColor: isSelected == 6
                      ? selectedTextColor
                      : unselectedTextColor.withOpacity(0.7),
                  press: () {
                    setState(() {
                      // changePage(6);
                    });
                  },
                ),
              ],
            ),
          ),
          InkWell(
            child: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: primaryColor,
                    size: 30,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Logout",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 24,
                        color: primaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                // singletonService.userId = null;
                // singletonService.token = null;

                // print("is not Clear");
                // s1.getData("token").then((value) {
                //   print("number 1");
                //   print(value);
                // });

                // s1.clearSharedPreferences();

                // print("is Clear");
                // s1.getData("token").then((value) {
                //   print("number 2");
                //   print(value);
                // });
                // // Navigator.pushReplacementNamed(context, 'Login');
                // // context.go('/');
                // // GoRouter.of(context).go('/');
                // AuthService.authenticated = false;
                // GoRouter.of(context).go(AppRoutes.loginRoute);

                // GoRouter.of(context).pushNamed('/Login');
              });
            },
          ),
          const SizedBox(height: 10),
          // SizedBox(
          //   width: screenWidth,
          //   // child: Image.asset(
          //   //   "assets/images/side-pic.png",
          //   //   // height: 120,
          //   //   fit: BoxFit.cover,
          //   // ),
          // ),
        ],
      ),
    );
  }

  void changePage(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 1), curve: Curves.ease);

    isSelected = index;
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    // required this.svgSrc,
    required this.selectedColor,
    required this.selectedIconColor,
    required this.selectedTextColor,
    required this.press,
  }) : super(key: key);

  final String title;
  final Color selectedColor, selectedIconColor, selectedTextColor;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            tileColor: selectedColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onTap: press,
            horizontalTitleGap: 0.0,
            minLeadingWidth: 30,
            // leading: SvgPicture.asset(
            //   svgSrc,
            //   color: selectedIconColor,
            //   height: 16,
            // ),
            title: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: selectedTextColor,
                        fontFamily: 'Calibri',
                        fontSize: 17),
                  ),
                  if (title == "Mes Informations")
                    Icon(
                      Icons.error,
                      color: const Color(0x00F51111).withOpacity(1.0),
                    )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   "assets/images/profile-women.png",
          //   height: 50,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FOREX",
                style: TextStyle(
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: primaryColor),
              ),
              Text(
                "Directeur marketing",
                style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 16,
                    color: unselectedTextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
