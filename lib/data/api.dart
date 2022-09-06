import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/Photo.dart';

class PixabayApi {
  final baseUrl = 'https://pixabay.com/api/';
  final key = '23092054-b36e9b0a8b519cdbc545308e7';

  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse(
        '$baseUrl?key=$key&q=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];

    return hits.map((e) => Photo.fromJson(e)).toList();
    // return hits.map((e) => Photo.fromJson(e)).toList();
  }
}