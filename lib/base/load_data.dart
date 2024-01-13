import 'dart:convert';

import 'package:flutter/services.dart';

import 'models/book_model.dart';
import 'models/video_model.dart';

class BookData {
  List<BookModel> books = [];

  Future bookData() async {
    books.clear();
    String jsonString = await rootBundle.loadString("lib/base/jsons/book.json");
    final jsonData = json.decode(jsonString);
    books = (jsonData as List<dynamic>)
        .map((json) => BookModel(
              json["urlImage"] as String,
              json["name"] as String,
              json["about"] as String,
              json["urlBook"] as String,
              json["discribtion"] as String,
              json["stars"] as int,
            ))
        .toList();
  }
}
class VideoData {
  List<VideoModel> videos = [];

  Future videoData() async {
    videos.clear();
    String jsonString = await rootBundle.loadString("lib/base/jsons/video.json");
    final jsonData = json.decode(jsonString);
    videos = (jsonData as List<dynamic>)
        .map((json) => VideoModel(
      json["urlVideo"] as String,
      json["urlImage"] as String,
      json["name"] as String,
      json["about"] as String,
    ))
        .toList();
  }
}
