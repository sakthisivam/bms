import 'dart:math';
import 'package:flutter/material.dart';

import 'movie.dart';

final List<Movie> initialData = List.generate(
  50,
  (index) => Movie(
      title: "Movie  $index", duration: "${Random().nextInt(100) + 60}Miutes"),
);

class MovieProvider with ChangeNotifier {
  final List<Movie> _movies = initialData;
  List<Movie> get movies => _movies;
  final List<Movie> _myList = [];
  List<Movie> get myList => _myList;

  void addToList(Movie movie) {
    _myList.add(movie);
    notifyListeners();
  }

  void removeFromList(Movie movie) {
    _myList.remove(movie);
    notifyListeners();
  }
}
