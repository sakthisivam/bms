import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../constants/colors.dart';

class SpecialOffer extends StatefulWidget {
  const SpecialOffer({super.key});

  @override
  State<SpecialOffer> createState() => _SpecialOfferState();
}

class _SpecialOfferState extends State<SpecialOffer> {
  TextEditingController offerStartDate = TextEditingController();
  TextEditingController offerEndDate = TextEditingController();
  double borderRadius = 6.0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            child: Padding(
              padding: EdgeInsets.only(bottom: bottom),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.02),
                      height: height * 0.05,
                      child: TextFormField(
                        // controller: nameOfBank,
                        maxLength: 100,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z0-9@#$%&*()+\-\\/_=<>{}\[\]|\s]'),
                          ),
                        ],
                        style: TextStyle(
                            color: btn.withOpacity(1.0),
                            fontFamily: 'Roboto-Regular',
                            fontSize: height * 0.013),
                        decoration: InputDecoration(
                          // floatingLabelBehavior: nameOfBank.text == ""
                          //     ? FloatingLabelBehavior.auto
                          //     : FloatingLabelBehavior.always,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: btn.withOpacity(0.8),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          counterText: '',
                          labelText: 'Referrel Business Target',
                          contentPadding: const EdgeInsets.all(10),
                          labelStyle: TextStyle(
                              color: btn.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.013),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Within Date",
                            style: TextStyle(
                                fontSize: height * 0.018,
                                color: btn.withOpacity(1.0),
                                fontFamily: 'Roboto-Bold'),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.04,
                                    vertical: height * 0.02),
                                height: height * 0.05,
                                child: TextFormField(
                                  controller: offerStartDate,
                                  readOnly: true,
                                  cursorColor: btn.withOpacity(1.0),
                                  style: TextStyle(
                                      color: btn.withOpacity(1.0),
                                      fontFamily: 'Roboto-Bold',
                                      fontSize: 11),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(borderRadius),
                                      borderSide: BorderSide(
                                        color: btn.withOpacity(1.0),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(borderRadius),
                                    ),
                                    labelText: "Start Date",
                                    labelStyle: TextStyle(
                                      color: btn.withOpacity(1.0),
                                      fontFamily: 'Roboto-Bold',
                                      fontSize: 11,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.calendar_today_rounded,
                                      color: btn.withOpacity(1.0),
                                      size: height * 0.02,
                                    ),
                                  ),
                                  onTap: () async {
                                    DateTime? pickeddate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2100),
                                        builder: (context, child) => Theme(
                                              data: ThemeData().copyWith(
                                                colorScheme: ColorScheme.light(
                                                  primary: btn.withOpacity(1.0),
                                                  onPrimary: regular,
                                                  surface: btn.withOpacity(1.0),
                                                  onSurface:
                                                      shadow.withOpacity(1.0),
                                                ),
                                                dialogBackgroundColor:
                                                    regular.withOpacity(1.0),
                                              ),
                                              child: child!,
                                            ));
                                    if (pickeddate != null) {
                                      setState(() {
                                        offerStartDate.text =
                                            DateFormat('dd-MM-yyyy')
                                                .format(pickeddate);
                                        // _dat = DateFormat(
                                        //         'yyyy-MM-dd')
                                        //     .format(
                                        //         pickeddate);
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.04,
                                    vertical: height * 0.02),
                                height: height * 0.05,
                                child: TextFormField(
                                  controller: offerEndDate,
                                  readOnly: true,
                                  cursorColor: btn.withOpacity(1.0),
                                  style: TextStyle(
                                      color: btn.withOpacity(1.0),
                                      fontFamily: 'Roboto-Bold',
                                      fontSize: 11),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(borderRadius),
                                      borderSide: BorderSide(
                                        color: btn.withOpacity(1.0),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(borderRadius),
                                    ),
                                    labelText: "End Date",
                                    labelStyle: TextStyle(
                                      color: btn.withOpacity(1.0),
                                      fontFamily: 'Roboto-Bold',
                                      fontSize: 11,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.calendar_today_rounded,
                                      color: btn.withOpacity(1.0),
                                      size: height * 0.02,
                                    ),
                                  ),
                                  onTap: () async {
                                    DateTime? pickeddate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2100),
                                        builder: (context, child) => Theme(
                                              data: ThemeData().copyWith(
                                                colorScheme: ColorScheme.light(
                                                  primary: btn.withOpacity(1.0),
                                                  onPrimary: regular,
                                                  surface: btn.withOpacity(1.0),
                                                  onSurface:
                                                      shadow.withOpacity(1.0),
                                                ),
                                                dialogBackgroundColor:
                                                    regular.withOpacity(1.0),
                                              ),
                                              child: child!,
                                            ));
                                    if (pickeddate != null) {
                                      setState(() {
                                        offerEndDate.text =
                                            DateFormat('dd-MM-yyyy')
                                                .format(pickeddate);
                                        // _dat = DateFormat(
                                        //         'yyyy-MM-dd')
                                        //     .format(
                                        //         pickeddate);
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Target Achivement Reward",
                            style: TextStyle(
                                fontSize: height * 0.018,
                                color: btn.withOpacity(1.0),
                                fontFamily: 'Roboto-Bold'),
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
                                fontFamily: 'Roboto-Regular',
                                fontSize: height * 0.013),
                            decoration: InputDecoration(
                              // floatingLabelBehavior: nameOfBank.text == ""
                              //     ? FloatingLabelBehavior.auto
                              //     : FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: btn.withOpacity(0.8),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              counterText: '',
                              labelText: 'Cash',
                              contentPadding: const EdgeInsets.all(10),
                              labelStyle: TextStyle(
                                  color: btn.withOpacity(1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.013),
                              prefixIcon: Icon(
                                Icons.currency_rupee,
                                color: btn.withOpacity(1.0),
                                size: height * 0.02,
                              ),
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
                                fontFamily: 'Roboto-Regular',
                                fontSize: height * 0.013),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.card_giftcard,
                                color: btn.withOpacity(1.0),
                                size: height * 0.02,
                              ),
                              // floatingLabelBehavior: nameOfBank.text == ""
                              //     ? FloatingLabelBehavior.auto
                              //     : FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: btn.withOpacity(0.8),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              counterText: '',
                              labelText: 'Gift',
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
                                fontFamily: 'Roboto-Regular',
                                fontSize: height * 0.013),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.flight,
                                color: btn.withOpacity(1.0),
                                size: height * 0.02,
                              ),
                              // floatingLabelBehavior: nameOfBank.text == ""
                              //     ? FloatingLabelBehavior.auto
                              //     : FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: btn.withOpacity(0.8),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              counterText: '',
                              labelText: 'Trip',
                              contentPadding: const EdgeInsets.all(10),
                              labelStyle: TextStyle(
                                  color: btn.withOpacity(1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.013),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Your Referrel ID & Link",
                            style: TextStyle(
                                fontSize: height * 0.018,
                                color: btn.withOpacity(1.0),
                                fontFamily: 'Roboto-Bold'),
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
                                fontFamily: 'Roboto-Regular',
                                fontSize: height * 0.013),
                            decoration: InputDecoration(
                              // floatingLabelBehavior: nameOfBank.text == ""
                              //     ? FloatingLabelBehavior.auto
                              //     : FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: btn.withOpacity(0.8),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              counterText: '',
                              labelText: 'Code',
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
                                fontFamily: 'Roboto-Regular',
                                fontSize: height * 0.013),
                            decoration: InputDecoration(
                              // floatingLabelBehavior: nameOfBank.text == ""
                              //     ? FloatingLabelBehavior.auto
                              //     : FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: btn.withOpacity(0.8),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              counterText: '',
                              labelText: 'Link',
                              contentPadding: const EdgeInsets.all(10),
                              labelStyle: TextStyle(
                                  color: btn.withOpacity(1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.013),
                            ),
                          ),
                        ),
                      ],
                    ),
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
