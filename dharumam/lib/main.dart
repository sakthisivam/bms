import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dashBoard/main_screen.dart';
import 'dashBoard/profile_page.dart';
import 'dashBoard/provider/movie_provider.dart';
import 'dashBoard/sidemenu.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MovieProvider>(
      child: const MyApp(),
      create: (context) => MovieProvider(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: const [
            Locale('en', 'US'),
          ],
          initialRoute: 'main',
          routes: {
           
            'offer': (context) => const Sidemenu(),
            'main': (context) => const MainScreen(),
            'profile': (context) => const ProfilePage(),
            
          },
        ));
  }
}
