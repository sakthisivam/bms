
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'movie_provider.dart';
import 'my_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var myList = context.watch<MovieProvider>().myList;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const MyListScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.favorite,
                size: 30.0,
              ),
              label: Text(
                "Go To my List(${myList.length})",
                style: TextStyle(fontSize: 24),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.red),
                padding: MaterialStateProperty.resolveWith(
                  (states) =>
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final currentMovie = movies[index];
                return Card(
                  key: ValueKey(currentMovie.title),
                  color: Colors.blue,
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      currentMovie.title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      currentMovie.duration ?? "No Information",
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: myList.contains(currentMovie)
                            ? Colors.red
                            : Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        if (!myList.contains(currentMovie)) {
                          context.read<MovieProvider>().addToList(currentMovie);
                        } else {
                          context
                              .read<MovieProvider>()
                              .removeFromList(currentMovie);
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
