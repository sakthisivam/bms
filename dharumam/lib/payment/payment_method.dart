import 'package:flutter/material.dart';

import '../constants/colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List<String> exposee = ["Yes", "No"];
  String exposeeType = "Yes";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Text(
            "data",
            style: TextStyle(
                color: btn.withOpacity(1.0), fontSize: height * 0.013),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              children: [
                exposeeType == exposee[0]
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.amber.shade900),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              activeColor: btn.withOpacity(1.0),
                              value: exposee[0],
                              groupValue: exposeeType,
                              onChanged: (String? newValue) {
                                setState(() {
                                  exposeeType = newValue!;
                                });
                              },
                            ),
                            Text(
                              'UPI ID',
                              style: TextStyle(
                                  color: Colors.red, fontSize: height * 0.018),
                            ),
                          ],
                        ),
                      )
                    : Radio(
                        activeColor: btn.withOpacity(1.0),
                        value: exposee[0],
                        groupValue: exposeeType,
                        onChanged: (String? newValue) {
                          setState(() {
                            exposeeType = newValue!;
                          });
                        },
                      ),
                exposeeType == exposee[1]
                    ? Row(
                        children: [
                          Radio(
                              activeColor: btn.withOpacity(1.0),
                              value: exposee[1],
                              groupValue: exposeeType,
                              onChanged: (String? newValue) {
                                setState(() {
                                  exposeeType = newValue!;
                                });
                              }),
                          Text(
                            'UPI ID',
                            style: TextStyle(
                                color: Colors.red, fontSize: height * 0.018),
                          ),
                        ],
                      )
                    : Radio(
                        activeColor: btn.withOpacity(1.0),
                        value: exposee[1],
                        groupValue: exposeeType,
                        onChanged: (String? newValue) {
                          setState(() {
                            exposeeType = newValue!;
                          });
                        }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
