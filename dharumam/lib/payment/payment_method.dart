import 'package:flutter/material.dart';

import '../constants/colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
