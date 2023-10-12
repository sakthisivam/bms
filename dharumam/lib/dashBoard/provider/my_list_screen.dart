// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'movie_provider.dart';

// class MyListScreen extends StatefulWidget {
//   const MyListScreen({super.key});

//   @override
//   State<MyListScreen> createState() => _MyListScreenState();
// }

// class _MyListScreenState extends State<MyListScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // var myList = context.watch<MovieProvider>().myList;
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: myList.length,
//               itemBuilder: (context, index) {
//                 final currentMovie = myList[index];
//                 return Card(
//                   key: ValueKey(currentMovie.title),
//                   color: Colors.blue,
//                   elevation: 5,
//                   child: ListTile(
//                     title: Text(
//                       currentMovie.title,
//                       style: const TextStyle(color: Colors.white),
//                     ),
//                     subtitle: Text(
//                       currentMovie.duration ?? "No Information",
//                       style: const TextStyle(color: Colors.white),
//                     ),
//                     trailing: TextButton(
//                       child: const Text(
//                         "Remove",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                       onPressed: () {
//                         context
//                             .read<MovieProvider>()
//                             .removeFromList(currentMovie);
//                       },
//                     ),
//                   ),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
