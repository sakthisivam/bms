import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../../constants/colors.dart';

class IncomeType extends StatefulWidget {
  const IncomeType({super.key});

  @override
  State<IncomeType> createState() => _IncomeTypeState();
}

class _IncomeTypeState extends State<IncomeType> {
  @override
  void initState() {
    super.initState();
    checkingInternetConnection();
  }

  Future<bool> isInternetConnected() async {
    try {
      final response = await http.get(Uri.parse('https://www.google.com'));
      return response.statusCode == 200;
    } catch (e) {
      print("Error checking internet connection: $e");
      return false;
    }
  }

  void checkingInternetConnection() async {
    bool isConnected = await isInternetConnected();

    if (isConnected) {
      print("Connected");
      // Internet is available.
    } else {
      print("Not Connected");
      // No internet connection.
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Calculate a base font size based on both the screen's width and height
    final baseFontSize = (screenWidth + screenHeight) / 40;

    // You can define scaling factors for different screen sizes
    double fontSize;

    if (screenWidth < 360 || screenHeight < 640) {
      // Small screen
      fontSize = baseFontSize * 0.8;
    } else if (screenWidth < 720 || screenHeight < 1280) {
      // Medium screen
      fontSize = baseFontSize;
    } else {
      // Large screen
      fontSize = baseFontSize * 1.2;
    }
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardIncmTypeColor.withOpacity(0.6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Investment Income",
                          style: TextStyle(
                              color: cardIncmTextColor.withOpacity(1.0),
                              fontFamily: 'Roboto-Bold',
                              fontSize: fontSize * 0.8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: fontSize * 0.4,
                            color: Colors.black,
                            wordSpacing: 0.1,
                            fontFamily: "Roboto-Regular",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'What is Investment Income ?',
                              style: TextStyle(
                                  fontSize: fontSize * 0.6,
                                  color: Colors.black,
                                  fontFamily: "Roboto-Bold"),
                            ),
                            const TextSpan(
                              text:
                                  '\n\t\tInvestment income refers to the earnings generated from various types of investments, including stocks, bonds, real estate, and other financial assets.It plays a crucial role in building wealth and achieving financial goals, such as funding retirement or meeting other long-term financial objectives.\n\nInvestment income is essential for investors as it contributes to their overall financial well-being and helps in achieving long-term financial goals. It can also serve as a passive income source, providing a steady cash flow and supplementing other income streams. Investment income comes in various forms, including dividends, interest, capital gains, rental income, royalties, and annuities. Each type of investment income has its characteristics and tax implications',
                            ),
                            // TextSpan(text: ' example.'),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: referIncmcontainerColor.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: fontSize * 0.4,
                                color: Colors.black,
                                fontFamily: "Roboto-Regular"),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Example of Investment Income? ',
                                style: TextStyle(
                                    fontSize: fontSize * 0.6,
                                    color: Colors.black,
                                    fontFamily: "Roboto-Bold"),
                              ),
                              const TextSpan(
                                text:
                                    '\n\tIf you choose any of the Offer Plans you need to invest the capital based on the plan. After investing you will start to recieve the specified percentage of amount every day/ week At one time within the duration you will receive the capital amount and the amount recieving after capital is reached will be the interest for your investment.',
                              ),
                              const TextSpan(
                                text: '\nIf you choose ',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const TextSpan(
                                text: 'Elite Pack ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto-Bold"),
                              ),
                              const TextSpan(
                                text: 'you invest',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const TextSpan(
                                text: ' RS 5000 ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto-Bold"),
                              ),
                              const TextSpan(
                                text:
                                    'as a capital amount. Every week you will recieve Rs.2000 which is 5% of capital amount. The total duration for this plan is 40 weeks. You will get back the invested amount in',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const TextSpan(
                                text: '25 weeks.',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    'The amount you receive in the remaining duration time i.e 15 weeks will be your interest. Now the',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const TextSpan(
                                text: ' interest ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto-Bold"),
                              ),
                              const TextSpan(
                                text: 'for this plan type is',
                              ),
                              const TextSpan(
                                text: ' Rs.30000 (2000 * 15)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto-Bold"),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardIncmTypeColor.withOpacity(0.6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Refferal Income",
                          style: TextStyle(
                              fontSize: fontSize * 0.4,
                              color: Colors.black,
                              fontFamily: "Roboto-Regular"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: fontSize * 0.4,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'What is Refferal Income? ',
                              style: TextStyle(
                                  fontSize: fontSize * 0.6,
                                  fontFamily: "Roboto-Bold"),
                            ),
                            const TextSpan(
                              text:
                                  '\n\n A referral income is a commission paid to an individual who brings new customers to your business. Occasionally, businesses pay referral fees in exchange for a client introduction. But more often, a referral income is tied directly to a sale.Referral income are sometimes called finder’s fees, and they are used throughout a wide range of industries. These income are usually paid in cash.',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: referIncmcontainerColor.withOpacity(0.4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: height * 0.013,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Example Of Referral Income ? ',
                                    style: TextStyle(
                                        fontSize: height * 0.02,
                                        color: Colors.black,
                                        fontFamily: "Roboto-Bold"),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\nYour referral amount will be credited to your ',
                                    style: TextStyle(),
                                  ),
                                  const TextSpan(
                                    text: 'bank account within 3 hrs.',
                                    style: TextStyle(fontFamily: "Roboto-Bold"),
                                  ),
                                  const TextSpan(
                                    text:
                                        ' Eg. If the person who invested plan of',
                                  ),
                                  const TextSpan(
                                    text: ' capital Rs.100000',
                                    style: TextStyle(fontFamily: "Roboto-Bold"),
                                  ),
                                  const TextSpan(
                                    text:
                                        ' by your referrence then you will be paid',
                                  ),
                                  const TextSpan(
                                    text: ' Rs.20000 which is 20% ',
                                    style: TextStyle(fontFamily: "Roboto-Bold"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: width * 0.04,
                                vertical: height * 0.02),
                            height: height * 0.05,
                            child: TextFormField(
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
                                suffixIcon: Icon(
                                  Icons.link_rounded,
                                  color: btn.withOpacity(1.0),
                                  size: fontSize * 0.8,
                                ),
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
                                labelText: 'Your Refferal Link',
                                contentPadding: const EdgeInsets.all(10),
                                labelStyle: TextStyle(
                                    color: btn.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.013),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Share your friends & family",
                              style: TextStyle(
                                  color: btn.withOpacity(1.0),
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: height * 0.013),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: width * 0.04,
                                vertical: height * 0.02),
                            height: height * 0.05,
                            child: TextFormField(
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
                                suffixIcon: Icon(
                                  Icons.link_rounded,
                                  color: btn.withOpacity(1.0),
                                  size: height * 0.03,
                                ),
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
                                labelText: 'Your Referral code',
                                contentPadding: const EdgeInsets.all(10),
                                labelStyle: TextStyle(
                                    color: btn.withOpacity(1.0),
                                    fontFamily: 'Roboto-Bold',
                                    fontSize: height * 0.013),
                              ),
                            ),
                          ),
                        ],
                      ),
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
