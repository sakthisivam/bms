import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool page1 = true;
  bool page2 = false;
  bool page3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (page1 == true) ...[
                 
                ],
                if (page2 == true) ...[
                  // Accout info ui
                  // Container(
                  //   child: Column(children: [
                  //     Text("Page 2"),
                  //     IconButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           page1 = false;
                  //           page2 = false;
                  //           page3 = true;
                  //         });
                  //       },
                  //       icon: Icon(Icons.backspace),
                  //     )
                  //   ]),
                  // )
                ],
                if (page3 == true) ...[
                  Container(
                    child: Column(children: [
                      Text("Page 3"),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            page1 = true;
                            page2 = false;
                            page3 = false;
                          });
                        },
                        icon: Icon(Icons.backspace),
                      )
                    ]),
                  )
                ]
              ]),
        ),
      ),
    );
  }
}
