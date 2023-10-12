import 'package:country_list_pick/country_list_pick.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController doorNumberController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();

  String? selectedCountryCode;
  List<Map<String, String>> countriesEnglish = [];

  @override
  void initState() {
    super.initState();
    // countries = countryCodeList.map((country) {
    //   return {
    //     'name': country.name,
    //     'code': country.code,
    //   };
    // }).toList();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,
      key: scaffoldKey,
      // drawer: Container(color: Colors.amber, child: const Sidemenu()),
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
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   margin: EdgeInsets.symmetric(
                      //       horizontal: width * 0.02, vertical: height * 0.015),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       CircleAvatar(
                      //         radius: 15,
                      //         backgroundColor: background_four.withOpacity(1.0),
                      //         child: Icon(
                      //           Icons.person,
                      //           size: 20,
                      //           color: regular.withOpacity(1.0),
                      //         ),
                      //       ),
                      //       SizedBox(width: width * 0.04),
                      //       Text(
                      //         'Shanthy',
                      //         style: TextStyle(
                      //             color: btn.withOpacity(1.0),
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: height * 0.013),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Image.asset(
                      //   'assets/add_hide.png',
                      //   width: 120,
                      //   height: 120,
                      // ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          reverse: true,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: bottom),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: firstNameController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          firstNameController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'Name',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: lastNameController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          lastNameController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'Last Name',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: width * 0.08,
                                            ),
                                            height: height * 0.05,
                                            child: TextFormField(
                                              controller: countryCodeController,
                                              decoration: InputDecoration(
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                counterText: '',
                                                labelText: 'Country code',
                                                contentPadding:
                                                    const EdgeInsets.all(10),
                                                labelStyle: TextStyle(
                                                    fontFamily:
                                                        'Roboto-Regular',
                                                    color: btn.withOpacity(1.0),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                              horizontal: width * 0.08,
                                            ),
                                            height: height * 0.05,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                counterText: '',
                                                labelText: 'Phone Number*',
                                                contentPadding:
                                                    const EdgeInsets.all(10),
                                                labelStyle: TextStyle(
                                                    fontFamily:
                                                        'Roboto-Regular',
                                                    color: btn.withOpacity(1.0),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: width * 0.08,
                                      ),
                                      // width: width,
                                      child: Row(
                                        children: [
                                          CountryListPick(
                                            theme: CountryTheme(
                                              labelColor: btn.withOpacity(1.0),
                                              isShowFlag: true,
                                              isShowTitle: false,
                                              isShowCode: true,
                                              isDownIcon: true,
                                              showEnglishName: true,
                                            ),
                                            initialSelection: 'US',
                                            onChanged: (CountryCode? code) {
                                              countryCodeController.text =
                                                  code!.name!;
                                              print(code.name);
                                              print(code.code);
                                              print(code.dialCode);
                                              print(code.flagUri);
                                            },
                                          ),
                                          // SizedBox(width: width * 0.1),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: doorNumberController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          doorNumberController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'House Number',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: streetController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          streetController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'Street / Road',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: districtController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          districtController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'District',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: stateController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          stateController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'State',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: pinCodeController,
                                    maxLength: 6,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          pinCodeController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'PIN Code',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: emailController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          emailController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'Email',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    controller: phoneController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          phoneController.text == ""
                                              ? FloatingLabelBehavior.auto
                                              : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'Phone',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.08,
                                      vertical: height * 0.02),
                                  height: height * 0.05,
                                  child: TextFormField(
                                    // controller: nameController,
                                    maxLength: 100,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(
                                            r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                      ),
                                    ],
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: height * 0.013),
                                    decoration: InputDecoration(
                                      // floatingLabelBehavior: nameController.text == ""
                                      //     ? FloatingLabelBehavior.auto
                                      //     : FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: btn.withOpacity(0.8),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      counterText: '',
                                      labelText: 'Alternative Phone Number',
                                      contentPadding: const EdgeInsets.all(10),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: width * 0.1,
                                  ),
                                  // height: height * 0.05,
                                  child: Text(
                                    "Bank Details",
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Bold',
                                        color: btn.withOpacity(1.0),
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.024),
                                  ),
                                ),
                                Container(
                                  // height: height*0.5,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.04,
                                      vertical: height * 0.02),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: height * 0.002,
                                      color: txtfld.withOpacity(1.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Name Of Bank',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Branch *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Account Number *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText:
                                                'Account in the Name(s) of *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,

                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'IFSC Code *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,

                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'UPI Id',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: width * 0.1,
                                  ),
                                  // height: height * 0.05,
                                  child: Text(
                                    "Re Enter Bank Details",
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Bold',
                                        color: btn.withOpacity(1.0),
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.024),
                                  ),
                                ),
                                Container(
                                  // height: height*0.5,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.04,
                                      vertical: height * 0.02),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: height * 0.002,
                                      color: txtfld.withOpacity(1.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,

                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Name Of Bank *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,

                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Branch *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Account Number *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText:
                                                'Account in the Name(s) of *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'IFSC Code *',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,

                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'UPI Id',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: width * 0.1,
                                  ),
                                  // height: height * 0.05,
                                  child: Text(
                                    "Nominee",
                                    style: TextStyle(
                                        color: btn.withOpacity(1.0),
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.024),
                                  ),
                                ),
                                Container(
                                  // height: height*0.5,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.04,
                                      vertical: height * 0.02),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: height * 0.002,
                                      color: txtfld.withOpacity(1.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,

                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Name',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: width * 0.04,
                                            vertical: height * 0.02),
                                        height: height * 0.05,
                                        child: TextFormField(
                                          // controller: nameOfBank,
                                          maxLength: 100,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                                            ),
                                          ],
                                          style: TextStyle(
                                              color: btn.withOpacity(1.0),
                                              fontFamily: 'Roboto-Bold',
                                              fontSize: height * 0.013),
                                          decoration: InputDecoration(
                                            // floatingLabelBehavior: nameOfBank.text == ""
                                            //     ? FloatingLabelBehavior.auto
                                            //     : FloatingLabelBehavior.always,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: btn.withOpacity(0.8),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            counterText: '',
                                            labelText: 'Relationship',
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            labelStyle: TextStyle(
                                                fontFamily: 'Roboto-Bold',
                                                color: btn.withOpacity(1.0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.013),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 4,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                    left: width * 0.04,
                                                  ),
                                                  height: height * 0.05,
                                                  child: TextFormField(
                                                    controller:
                                                        countryCodeController,
                                                    decoration: InputDecoration(
                                                      floatingLabelBehavior:
                                                          FloatingLabelBehavior
                                                              .always,
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      counterText: '',
                                                      labelText: 'Country code',
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      labelStyle: TextStyle(
                                                          fontFamily:
                                                              'Roboto-Bold',
                                                          color: btn
                                                              .withOpacity(1.0),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 6,
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: width * 0.04,
                                                  ),
                                                  height: height * 0.05,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      floatingLabelBehavior:
                                                          FloatingLabelBehavior
                                                              .always,
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      counterText: '',
                                                      labelText:
                                                          'Phone Number*',
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      labelStyle: TextStyle(
                                                          fontFamily:
                                                              'Roboto-Bold',
                                                          color: btn
                                                              .withOpacity(1.0),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                              horizontal: width * 0.04,
                                            ),
                                            // width: width,
                                            child: Row(
                                              children: [
                                                CountryListPick(
                                                  theme: CountryTheme(
                                                    labelColor:
                                                        btn.withOpacity(1.0),
                                                    isShowFlag: false,
                                                    isShowTitle: false,
                                                    isShowCode: true,
                                                    isDownIcon: true,
                                                    showEnglishName: true,
                                                  ),
                                                  initialSelection: 'US',
                                                  onChanged:
                                                      (CountryCode? code) {
                                                    countryCodeController.text =
                                                        code!.name!;
                                                    print(code.name);
                                                    print(code.code);
                                                    print(code.dialCode);
                                                    print(code.flagUri);
                                                  },
                                                ),
                                                // SizedBox(width: width * 0.1),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.red)),
                                    onPressed: () {
                                      // Save profile details
                                      saveProfile();
                                    },
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Bold',
                                          color: btn.withOpacity(1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: height * 0.013),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void saveProfile() {
    // Implement your logic to save profile details to the backend/database
    // String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;

    // Replace the following print statements with your data-saving code.
    // print('Name: $name');
    print('Email: $email');
    print('Phone: $phone');
  }
}
